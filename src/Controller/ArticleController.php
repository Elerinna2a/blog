<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Form\ArticleFormType;
use App\Form\ArticleUpdateFormType;
use App\Form\CommentFormType;
use App\Repository\ArticleRepository;
use App\Repository\CommentRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\Attribute\Autowire;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Twig\Environment;

class ArticleController extends AbstractController
{

    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    #[Route('/', name: 'homepage')]
    public function index(Environment $twig, ArticleRepository $articleRepository, Request $request): Response
    {
        $offset = max(0, $request->query->getInt('offset', 0));
        $paginator = $articleRepository->getArticlePaginator($offset);

        return $this->render('article/index.html.twig', [
            'articles' => $paginator,
            'previous' => $offset - $articleRepository::PAGINATOR_PER_PAGE,
            'next' => min(count($paginator), $offset + $articleRepository::PAGINATOR_PER_PAGE),
        ]);
    }

    #[Route('/article/{id}', name: 'showAction')]
    public function show(Article $article, Request $request, CommentRepository $commentRepository): Response
    {

        $offset = max(0, $request->query->getInt('offset', 0));
        $paginator = $commentRepository->getCommentPaginator($article, $offset);

        $comment = new Comment();
        $form = $this->createForm(CommentFormType::class, $comment);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $comment->setArticle($article);
            $this->entityManager->persist($comment);
            $this->entityManager->flush();
            return $this->redirectToRoute('showAction', ['id' => $article->getId()]);
        }
        return $this->render('article/show.html.twig', [
            'article' => $article,
            'comment_form' => $form,
            'comments' => $paginator,
            'previous' => $offset - CommentRepository::PAGINATOR_PER_PAGE,
            'next' => min(count($paginator), $offset + CommentRepository::PAGINATOR_PER_PAGE),
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/new_article', name: 'newAction')]
    public function new(Request $request): Response
    {
        $article = new Article();
        $form = $this->createForm(ArticleFormType::class, $article);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $this->entityManager->persist($article);
            $this->entityManager->flush();
            return $this->redirectToRoute('homepage');
        }
        return $this->render('article/create.html.twig', [
            'article' => $article,
            'form' => $form->createView(),
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/article/{id}/edit', name: 'editAction')]
    public function edit(Request $request, Article $article): Response
    {
        $form = $this->createForm(ArticleFormType::class, $article);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $this->entityManager->flush();
            return $this->redirectToRoute('homepage');
        }
        return $this->render('article/update.html.twig', [
            'article' => $article,
            'form' => $form->createView(),
        ]);
    }

    #[IsGranted('ROLE_ADMIN')]
    #[Route('/article/{id}/delete', name: 'deleteAction')]
    public function delete(Article $article): Response
    {
        foreach ($article->getComments() as $comment) {
            $this->entityManager->remove($comment);
        }
        $this->entityManager->remove($article);
        $this->entityManager->flush();
        return $this->redirectToRoute('homepage');
    }
}

// , ['id' => $article->getId()]

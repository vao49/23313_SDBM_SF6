<?php

namespace App\Controller;

use App\Entity\Vendre;
use App\Form\VendreType;
use App\Repository\VendreRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/vendre')]
class VendreController extends AbstractController
{
    #[Route('/{annee}/{no}', name: 'app_vendre_index', methods: ['GET'])]
    public function index($annee, $no,VendreRepository $vendreRepository): Response
    {
        // return $this->render('vendre/index.html.twig', [
        //     'vendres' => $vendreRepository->findAll(),
        // ]);
        // return $this->render('vendre/index.html.twig', [
        //     'vendres' => $vendres, 'annee' =>$annee, 'no' =>$no,
        // ]);

        return $this->render('vendre/index.html.twig', [
            'vendres' =>  $vendreRepository
            // ->findAll();
            ->findByTicketId($annee, $no),
        ]);

    }

    #[Route('/new', name: 'app_vendre_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $vendre = new Vendre();
        $form = $this->createForm(VendreType::class, $vendre);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($vendre);
            $entityManager->flush();

            return $this->redirectToRoute('app_vendre_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('vendre/new.html.twig', [
            'vendre' => $vendre,
            'form' => $form,
        ]);
    }

    #[Route('/{annee}', name: 'app_vendre_show', methods: ['GET'])]
    public function show(Vendre $vendre): Response
    {
        return $this->render('vendre/show.html.twig', [
            'vendre' => $vendre,
        ]);
    }

    #[Route('/{annee}/edit', name: 'app_vendre_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Vendre $vendre, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(VendreType::class, $vendre);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_vendre_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('vendre/edit.html.twig', [
            'vendre' => $vendre,
            'form' => $form,
        ]);
    }

    #[Route('/{annee}', name: 'app_vendre_delete', methods: ['POST'])]
    public function delete(Request $request, Vendre $vendre, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$vendre->getAnnee(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($vendre);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_vendre_index', [], Response::HTTP_SEE_OTHER);
    }
}

<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
 
class LangueController extends AbstractController
{
 
    #[Route('/langue/anglais', name: 'app_langue_anglais')]
    public function anglais(Request $request): Response
    {
 
        $request->getSession()->set('_locale', 'en');
 
        return $this->redirect($request->server->get('HTTP_REFERER'));
    }

    #[Route('/langue/francais', name: 'app_langue_francais')]
    public function francais(Request $request): Response
    {
 
        $request->getSession()->set('_locale', 'fr');
 
        return $this->redirect($request->server->get('HTTP_REFERER'));
    }

    #[Route('/langue/espagnol', name: 'app_langue_espagnol')]
    public function espagnol(Request $request): Response
    {
 
        $request->getSession()->set('_locale', 'es');
 
        return $this->redirect($request->server->get('HTTP_REFERER'));
    }
}
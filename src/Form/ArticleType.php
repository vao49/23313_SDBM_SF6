<?php

namespace App\Form;

use App\Entity\Article;
use App\Entity\Couleur;
use App\Entity\Marque;
use App\Entity\Typebiere;
use App\Repository\MarqueRepository;
use App\Repository\CouleurRepository;
use App\Repository\TypebiereRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Translation\TranslatableMessage;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
 

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nomArticle', TextType::class, [
                'label' => new TranslatableMessage('nomArticle'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control' ]
            ])
            ->add('prixAchat', NumberType::class, [
                'label' => new TranslatableMessage('prixAchat'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control' ]
            ])
            ->add('volume', IntegerType::class, [
                'label' => new TranslatableMessage('volume'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control' ]
            ])
            ->add('titrage', NumberType::class, [
                'label' => new TranslatableMessage('titrage'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control' ]
            ])
            ->add('marques', null, [
                'label' => new TranslatableMessage('nomMarque'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control'],
                'query_builder' => function(MarqueRepository $repository) { 
                    return $repository->createQueryBuilder('u')->orderBy('u.nomMarque', 'ASC');
                },
                'choice_label' => function (Marque $marque): string {
                    return $marque ? strtoupper($marque->getNomMarque()) : '';
                }
            ])
            ->add('couleurs', null, [
                'label' => new TranslatableMessage('nomCouleur'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control'],
                'query_builder' => function(CouleurRepository $repository) { 
                    return $repository->createQueryBuilder('u')->orderBy('u.nomCouleur', 'ASC');
                },
                'choice_label' => function (Couleur $couleur): string {
                    return $couleur ? strtoupper($couleur->getNomCouleur()) : '';
                }
            ])     
            ->add('types', null, [
                'label' => new TranslatableMessage('nomType'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control'],
                'query_builder' => function(TypebiereRepository $repository) { 
                    return $repository->createQueryBuilder('u')->orderBy('u.nomType', 'ASC');
                },
                'choice_label' => function (Typebiere $type): string {
                    return $type ? strtoupper($type->getNomType()) : '';
                }
            ])               
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}

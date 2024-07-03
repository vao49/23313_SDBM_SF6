<?php

namespace App\Form;

use App\Entity\Fabricant;
use App\Entity\Marque;
use App\Entity\Pays;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Translation\TranslatableMessage;
use app\Repository\FabricantRepository;
use app\Repository\PaysRepository;


class MarqueType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nomMarque', TextType::class, [
                'label' => new TranslatableMessage('nomMarque'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control']
            ])
            // ->add('pays', null, [
            //     'class' => Pays::class,
            //     'attr' => ['class' => 'form-control']
            // ])

            ->add('pays', null, [
                'label' => new TranslatableMessage('Pays'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control'],
                'query_builder' => function(PaysRepository $repository) { 
                    return $repository->createQueryBuilder('u')->orderBy('u.nomPays', 'ASC');
                },
                'choice_label' => function (Pays $pays): string {
                    return $pays ? strtoupper($pays->getNomPays()) : '';
                }
            ])

            // ->add('fabricants', null, [
            //     'class' => Fabricant::class,
            //     'attr' => ['class' => 'form-control']
            // ])
  
            ->add('fabricants', null, [
                'label' => new TranslatableMessage('Fabricant'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control'],
                'query_builder' => function(FabricantRepository $repository) { 
                    return $repository->createQueryBuilder('u')->orderBy('u.nomFabricant', 'ASC');
                },
                'choice_label' => function (Fabricant $fabricant): string {
                    return $fabricant ? strtoupper($fabricant->getNomFabricant()) : '';
                }
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Marque::class,
        ]);
    }
}

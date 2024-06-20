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


class MarqueType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nomMarque', TextType::class, [
                'attr' => ['class' => 'form-control']
            ])
            ->add('pays', null, [
                'class' => Pays::class,
                'attr' => ['class' => 'form-control']
            ])
            ->add('fabricants', null, [
                'class' => Fabricant::class,
                'attr' => ['class' => 'form-control']
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

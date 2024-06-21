<?php

namespace App\Form;

use App\Entity\Ticket;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Translation\TranslatableMessage;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;

class TicketType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('annee',  IntegerType::class ,  [
                'label' => new TranslatableMessage('annee'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control']
            ])
            ->add('numeroTicket',  IntegerType::class ,  [
                'label' => new TranslatableMessage('numeroTicket'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control']
            ])
            // ->add('dateVente', null, [
            //     'widget' => 'single_text',
            // ])            
            ->add('dateVente',  DateTimeType::class ,  [
                'label' => new TranslatableMessage('dateVente'),
                'label_attr' => ['class' => 'fw-bold'],
                'attr' => ['class' => 'form-control'],
                'widget' => 'single_text',
                // 'input'  => 'datetime_immutable'
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Ticket::class,
        ]);
    }
}

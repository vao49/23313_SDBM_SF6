<?php

namespace App\Entity;

use App\Repository\TicketRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TicketRepository::class)]
class Ticket
{
    // #[ORM\Id]
    // #[ORM\GeneratedValue]
    // #[ORM\Column]
    // private ?int $id = null;

    #[ORM\Column]
    #[ORM\Id]
    private ?int $annee = null;

    #[ORM\Column]
    #[ORM\Id]
    private ?int $numeroTicket = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $dateVente = null;


    /**
     * Constructor
     */
    public function __construct()
    {
        $this->dateVente = new \DateTime();
    }

    // public function getId(): ?int
    // {
    //     return $this->id;
    // }

    public function getAnnee(): ?int
    {
        return $this->annee;
    }

    public function setAnnee(int $annee): static
    {
        $this->annee = $annee;

        return $this;
    }

    public function getNumeroTicket(): ?int
    {
        return $this->numeroTicket;
    }

    public function setNumeroTicket(int $numeroTicket): static
    {
        $this->numeroTicket = $numeroTicket;

        return $this;
    }

    public function getDateVente(): ?\DateTimeInterface
    {
        return $this->dateVente;
    }

    public function setDateVente(\DateTimeInterface $dateVente): static
    {
        $this->dateVente = $dateVente;

        return $this;
    }
}

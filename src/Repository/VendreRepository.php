<?php

namespace App\Repository;

use App\Entity\Vendre;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Vendre>
 */
class VendreRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Vendre::class);
    }


       /**
    * @return Vendre[] Returns an array of Vendre objects
    */
   public function findByTicketId($annee, $no): array
   {
       return $this->createQueryBuilder('v')
           ->andWhere('v.annee = :annee')
           ->andWhere('v.numeroTicket = :no')
           ->setParameter('annee', $annee)
           ->setParameter('no', $no)
        //    ->orderBy('v.article.id', 'ASC')
        //    ->setMaxResults(10)
           ->getQuery()
           ->getResult()
       ;

 
   }

    //    /**
    //     * @return Vendre[] Returns an array of Vendre objects
    //     */
    //    public function findByExampleField($value): array
    //    {
    //        return $this->createQueryBuilder('v')
    //            ->andWhere('v.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->orderBy('v.id', 'ASC')
    //            ->setMaxResults(10)
    //            ->getQuery()
    //            ->getResult()
    //        ;
    //    }

    //    public function findOneBySomeField($value): ?Vendre
    //    {
    //        return $this->createQueryBuilder('v')
    //            ->andWhere('v.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->getQuery()
    //            ->getOneOrNullResult()
    //        ;
    //    }
}

<?php

namespace App\Repository;

use App\Entity\Curriculum;
use App\Model\PageDto;
use App\Model\CurriculumDto;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\Tools\Pagination\Paginator;
USE Doctrine\Common\Collections\ArrayCollection;

/**
 * @extends ServiceEntityRepository<Curriculums>
 *
 * @method Curriculum|null find($id, $lockMode = null, $lockVersion = null)
 * @method Curriculum|null findOneBy(array $criteria, array $orderBy = null)
 * @method Curriculum[]    findAll()
 * @method Curriculum[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CurriculumRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Curriculum::class);
    }

    public function save(Curriculum $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Curriculum $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function findBySubject(string $s, int $offset = 0, int $limit = 20): PageDto
    {
        $query = $this->createQueryBuilder("c")
            ->andWhere("c.subject like :s")
            ->setParameter('s', "%" . $s . "%")
            ->setMaxResults($limit)
            ->setFirstResult($offset)
            ->getQuery();

        $paginator = new Paginator($query, $fetchJoinCollection = false);
        $total = count($paginator);

        $content = new ArrayCollection();
        foreach ($paginator as $c) {
            $content->add(CurriculumDto::of($c));
        }
        return PageDto::of ($content, $total, $offset, $limit);
    }

//    /**
//     * @return Curriculums[] Returns an array of Curriculums objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('c.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Curriculums
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}

<?php

namespace App\Repository;

use App\Entity\Resource;
use App\Model\PageDto;
use App\Model\ResourceDto;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\Tools\Pagination\Paginator;
USE Doctrine\Common\Collections\ArrayCollection;

/**
 * @extends ServiceEntityRepository<Resource>
 *
 * @method Resource|null find($id, $lockMode = null, $lockVersion = null)
 * @method Resource|null findOneBy(array $criteria, array $orderBy = null)
 * @method Resource[]    findAll()
 * @method Resource[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ResourceRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Resource::class);
    }

    public function save(Resource $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Resource $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function findByCurriculumId(int $cID, int $offset = 0, int $limit = 20): PageDto
    {
// SELECT * FROM curriculum.resource r
// JOIN curriculum.curriculum_has_resource ON curriculum.curriculum_has_resource.resource_id = r.id
// JOIN curriculum.curriculum c ON curriculum.curriculum_has_resource.curriculum_id = C.id
//  and c.id= 595

        $query = $this->createQueryBuilder('c')
            ->innerJoin('c.curriculum', 's', 'WITH', 's.id = :curriculumId')
            ->setParameter('curriculumId', $cID)
            ->setMaxResults($limit)
            ->setFirstResult($offset)
            ->getQuery();

        $paginator = new Paginator($query, $fetchJoinCollection = false);
        $total = count($paginator);

        $content = new ArrayCollection();
        foreach ($paginator as $c) {
            $content->add(ResourceDto::of($c));
        }
        return PageDto::of ($content, $total, $offset, $limit);
    }

//    /**
//     * @return Resource[] Returns an array of Resource objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('r')
//            ->andWhere('r.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('r.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Resource
//    {
//        return $this->createQueryBuilder('r')
//            ->andWhere('r.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}

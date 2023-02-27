<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Curriculum;
use App\Entity\Resource;
use App\Model\CurriculumDto;
use Nelmio\ApiDocBundle\Annotation\Model;
use Nelmio\ApiDocBundle\Annotation\Security;
use OpenApi\Attributes as OA;

#[Route(path: "/api", name: "api_")]
class CurriculumController extends AbstractController
{

    #[Route(path: "/curriculum", name: "getAll", methods: ["GET"])]
    // #[OA\Response(
    //     response: 200,
    //     description: 'Returns the rewards of an user',
    //     content: new OA\JsonContent(
    //         type: 'array',
    //         items: new OA\Items(ref: new Model(type: AlbumDto::class, groups: ['full']))
    //     )
    // )]
    #[OA\Parameter(
        name: 'subject',
        in: 'query',
        description: 'The field used to filter data',
        schema: new OA\Schema(type: 'string')
    )]
    #[OA\Parameter(
        name: 'offset',
        in: 'query',
        description: 'For paging',
        schema: new OA\Schema(type: 'int')
    )]
    #[OA\Parameter(
        name: 'limit',
        in: 'query',
        description: 'For paging',
        schema: new OA\Schema(type: 'int')
    )]
    public function getAll(ManagerRegistry $doctrine, Request $req): JsonResponse
    {
        $subject = $req->query->get('subject')??'';
        $offset = $req->query->get('offset')??0;
        $limit = $req->query->get('limit')??10;

        $data = $doctrine
            ->getRepository(Curriculum::class)
            ->findBySubject($subject, $offset, $limit);
        return $this->json($data->asArray());


        // $data = $doctrine
        //     ->getRepository(Curriculum::class)
        //     ->findAll();
        //  return $this->json($data, 200, ["Content-Type" => "application/json"]);
    }

    #[Route(path: "/curriculum/{id}", name: "getById", methods: ["GET"])]
    public function getById(ManagerRegistry $doctrine, int $id): JsonResponse
    {
        $data = $doctrine
            ->getRepository(Curriculum::class)
            ->find($id);
            
        return $this->json(CurriculumDto::of($data));
    }

    #[Route(path: "/curriculum/{id}/resources", name: "getAllResourcesById", methods: ["GET"])]
    #[OA\Parameter(
        name: 'offset',
        in: 'query',
        description: 'For paging',
        schema: new OA\Schema(type: 'int')
    )]
    #[OA\Parameter(
        name: 'limit',
        in: 'query',
        description: 'For paging',
        schema: new OA\Schema(type: 'int')
    )]
    public function getAllResourcesById(ManagerRegistry $doctrine, int $id, Request $req): JsonResponse
    {

        $offset = $req->query->get('offset')??0;
        $limit = $req->query->get('limit')??10;
        
        $data = $doctrine
            ->getRepository(Resource::class)
            ->findByCurriculumId($id, $offset, $limit);
        return $this->json($data->asArray());

    }
}

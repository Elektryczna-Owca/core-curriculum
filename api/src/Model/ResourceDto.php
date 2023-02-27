<?php

namespace App\Model;

use App\Entity\Resource;

class ResourceDto
{
    public ?int $id = null;

    public ?string $comment = null;
    
    public ?string $url = null;


    public static function of(?Resource $r): ResourceDto
    {
        $dto = new ResourceDto();
        $dto->id=$r->getId(0);
        $dto->comment=$r->getComment();
        $dto->url=$r->getUrl();
        
        return $dto;
    }
    
}

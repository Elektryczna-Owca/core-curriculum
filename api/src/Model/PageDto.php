<?php

namespace App\Model;
use Doctrine\Common\Collections\Collection;
USE Doctrine\Common\Collections\ArrayCollection;

class PageDto
{
    public Collection $content;
    public int $totalElements;
    public int $offset;
    public int $limit;

    #[Pure] public function __construct()
    {
        $this->content = new ArrayCollection();
    }


    public static function of(Collection $content, int $totalElements, int $offset = 0, int $limit = 20): PageDto
    {
        $page = new PageDto();
        $page->setContent($content)
            ->setTotalElements($totalElements)
            ->setOffset($offset)
            ->setLimit($limit);

        return $page;
    }

    public function setContent(Collection $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function setTotalElements(int $totalElements): self
    {
        $this->totalElements = $totalElements;

        return $this;
    }

    public function setOffset(int $offset): self
    {
        $this->offset = $offset;

        return $this;
    }

    public function setLimit(int $limit): self
    {
        $this->limit = $limit;

        return $this;
    }
  
    public function asArray(): array
    {
        return [
            'totalElements' => $this->totalElements,
            'offset' => $this->offset,
            'limit' =>$this->limit,
            'content' => $this->content->toArray()
        ];
    }
}    
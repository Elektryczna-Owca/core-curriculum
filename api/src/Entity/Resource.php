<?php

namespace App\Entity;

use App\Repository\ResourceRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

#[ORM\Entity(repositoryClass: ResourceRepository::class)]
class Resource
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    public ?int $id = null;

    #[ORM\Column(length: 65535)]
    private ?string $comment = null;

    #[ORM\Column(length: 1024)]
    private ?string $url = null;

    #[ORM\ManyToMany(targetEntity: Curriculum::class)]
	#[ORM\JoinTable(name: 'curriculum_has_resource')]
    #[ORM\JoinColumn(name: 'resource_id', referencedColumnName: 'id')]
    #[ORM\InverseJoinColumn(name: 'curriculum_id', referencedColumnName: 'id')]
    private Collection $curriculum;

    public function __construct()
    {
        $this->curriculum = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getComment(): ?string
    {
        return $this->comment;
    }

    public function setComment(string $comment): self
    {
        $this->comment = $comment;

        return $this;
    }
	
	public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(string $url): self
    {
        $this->url = $url;

        return $this;
    }

    /**
     * @return Collection<int, Curriculum>
     */
    public function getCurriculum(): Collection
    {
        return $this->curriculum;
    }

    public function addCurriculum(Curriculum $curriculum): self
    {
        if (!$this->curriculum->contains($curriculum)) {
            $this->curriculum->add($curriculum);
        }

        return $this;
    }

    public function removeCurriculum(Curriculum $curriculum): self
    {
        $this->curriculum->removeElement($curriculum);

        return $this;
    }
	
}

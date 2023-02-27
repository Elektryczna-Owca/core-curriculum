<?php

namespace App\Entity;

use App\Repository\CurriculumRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Table(name: 'Curriculum')]
#[ORM\Entity(repositoryClass: CurriculumRepository::class)]
class Curriculum
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade0 = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade1 = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade2 = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade3 = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade4 = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade5 = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade6 = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade7 = null;

    #[ORM\Column(type: Types::SMALLINT)]
    private ?int $grade8 = null;

    #[ORM\Column(type: Types::SMALLINT, nullable: true)]
    private ?int $obligatory = null;

    #[ORM\Column(length: 45)]
    private ?string $subject = null;

    #[ORM\Column(length: 45)]
    private ?string $symbol = null;

    #[ORM\Column(name: 'text_level1', length: 1024, nullable: true)]
    private ?string $textLevel1 = null;

    #[ORM\Column(name: 'text_level2', length: 65535, nullable: true)]
    private ?string $textLevel2 = null;

    #[ORM\Column(name: 'text_level3', length: 65535, nullable: true)]
    private ?string $textLevel3 = null;

    #[ORM\Column(name: 'text_level4', length: 65535, nullable: true)]
    private ?string $textLevel4 = null;

    #[ORM\ManyToMany(targetEntity: Resource::class)]
	#[ORM\JoinTable(name: 'curriculum_has_resource')]
    #[ORM\JoinColumn(name: 'curriculum_id', referencedColumnName: 'id')]
    #[ORM\InverseJoinColumn(name: 'resource_id', referencedColumnName: 'id')]
    private Collection $resource;

    public function __construct()
    {
        $this->resource = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getGrade0(): ?int
    {
        return $this->grade0;
    }

    public function setGrade0(int $grade0): self
    {
        $this->grade0 = $grade0;

        return $this;
    }

    public function getGrade1(): ?int
    {
        return $this->grade1;
    }

    public function setGrade1(int $grade1): self
    {
        $this->grade1 = $grade1;

        return $this;
    }

    public function getGrade2(): ?int
    {
        return $this->grade2;
    }

    public function setGrade2(int $grade2): self
    {
        $this->grade2 = $grade2;

        return $this;
    }

    public function getGrade3(): ?int
    {
        return $this->grade3;
    }

    public function setGrade3(int $grade3): self
    {
        $this->grade3 = $grade3;

        return $this;
    }

    public function getGrade4(): ?int
    {
        return $this->grade4;
    }

    public function setGrade4(int $grade4): self
    {
        $this->grade4 = $grade4;

        return $this;
    }

	public function getGrade5(): ?int
    {
        return $this->grade5;
    }

    public function setGrade5(int $grade5): self
    {
        $this->grade5 = $grade5;

        return $this;
    }

	public function getGrade6(): ?int
    {
        return $this->grade6;
    }

    public function setGrade6(int $grade6): self
    {
        $this->grade6 = $grade6;

        return $this;
    }

	public function getGrade7(): ?int
    {
        return $this->grade7;
    }

    public function setGrade7(int $grade7): self
    {
        $this->grade7 = $grade7;

        return $this;
    }

	public function getGrade8(): ?int
    {
        return $this->grade8;
    }

    public function setGrade8(int $grade8): self
    {
        $this->grade8 = $grade8;

        return $this;
    }
	
	public function getObligatory(): ?int
    {
        return $this->obligatory;
    }

    public function setObligatory(?int $obligatory): self
    {
        $this->obligatory = $obligatory;

        return $this;
    }

    public function getSubject(): ?string
    {
        return $this->subject;
    }

    public function setSubject(string $subject): self
    {
        $this->subject = $subject;

        return $this;
    }

    public function getSymbol(): ?string
    {
        return $this->symbol;
    }

    public function setSymbol(string $symbol): self
    {
        $this->symbol = $symbol;

        return $this;
    }
	
	public function getTextLevel1(): ?string
    {
        return $this->textLevel1;
    }

    public function setTextLevel1(string $textLevel1): self
    {
        $this->textLevel1 = $textLevel1;

        return $this;
    }

	public function getTextLevel2(): ?string
    {
        return $this->textLevel2;
    }

    public function setTextLevel2(string $textLevel2): self
    {
        $this->textLevel2 = $textLevel2;

        return $this;
    }

	public function getTextLevel3(): ?string
    {
        return $this->textLevel3;
    }

    public function setTextLevel3(string $textLevel3): self
    {
        $this->textLevel3 = $textLevel3;

        return $this;
    }
	
	public function getTextLevel4(): ?string
    {
        return $this->textLevel4;
    }

    public function setTextLevel4(string $textLevel4): self
    {
        $this->textLevel4 = $textLevel4;

        return $this;
    }

    /**
     * @return Collection<int, Resource>
     */
    public function getResource(): Collection
    {
        return $this->resource;
    }

    public function addResource(Resource $resource): self
    {
        if (!$this->resource->contains($resource)) {
            $this->resource->add($resource);
        }

        return $this;
    }

    public function removeResource(Resource $resource): self
    {
        $this->resource->removeElement($resource);

        return $this;
    }	  
}

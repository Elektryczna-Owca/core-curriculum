<?php

namespace App\Model;

use App\Entity\Curriculum;

class CurriculumDto
{
    public ?int $id = null;

    public ?int $grade0 = null;

    public ?int $grade1 = null;

    public ?int $grade2 = null;

    public ?int $grade3 = null;

    public ?int $grade4 = null;

    public ?int $grade5 = null;

    public ?int $grade6 = null;

    public ?int $grade7 = null;

    public ?int $grade8 = null;

    public ?int $obligatory = null;

    public ?string $subject = null;

    public ?string $symbol = null;

    public ?string $textLevel1 = null;

    public ?string $textLevel2 = null;

    public ?string $textLevel3 = null;

    public ?string $textLevel4 = null;

    public static function of(?Curriculum $c): CurriculumDto
    {
        $dto = new CurriculumDto();
        $dto->id=$c->getId();
        $dto->grade0=$c->getGrade0();
        $dto->grade1=$c->getGrade1();
        $dto->grade2=$c->getGrade2();
        $dto->grade3=$c->getGrade3();
        $dto->grade4=$c->getGrade4();
        $dto->grade5=$c->getGrade5();
        $dto->grade6=$c->getGrade6();
        $dto->grade7=$c->getGrade7();
        $dto->grade8=$c->getGrade8();
        $dto->obligatory=$c->getObligatory();
        $dto->subject=$c->getSubject();
        $dto->symbol=$c->getSymbol();
        $dto->textLevel1=$c->getTextLevel1();
        $dto->textLevel2=$c->getTextLevel2();
        $dto->textLevel3=$c->getTextLevel3();
        $dto->textLevel4=$c->getTextLevel4();

        return $dto;
    }
    
}

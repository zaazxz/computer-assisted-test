<?php

namespace App\Imports;

use App\Models\Question;
use Maatwebsite\Excel\Concerns\ToModel;

class QuestionImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Question([
            'detail' => $row[1], 
            'image_id' => $row[2], 
            'option_A' => $row[3], 
            'option_B' => $row[4], 
            'option_C' => $row[5], 
            'option_D' => $row[6], 
            'option_E' => $row[7], 
            'answer' => $row[8], 
            'explanation' => $row[9]
        ]);

        //     $table->foreignId('subject_id');
        //     $table->text('detail');
        //     $table->string('image_id')->nullable();
        //     $table->string('option_A')->nullable();
        //     $table->string('option_B')->nullable();
        //     $table->string('option_C')->nullable();
        //     $table->string('option_D')->nullable();
        //     $table->string('option_E')->nullable();
        //     $table->text('answer');
        //     $table->text('explanation')->nullable();
        //     $table->string('created_by');
        //     $table->timestamps();

    }
}

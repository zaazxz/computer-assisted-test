<?php

namespace App\Imports;

use App\Models\Image;
use Maatwebsite\Excel\Concerns\ToModel;

class ImageImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Image([
            'title' => $row[1],
            'caption' => $row[2],
            'link' => $row[3]
        ]);
    }
}

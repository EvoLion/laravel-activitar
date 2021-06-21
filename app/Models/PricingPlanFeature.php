<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PricingPlanFeature extends Model
{
    use HasFactory;

    public function pricingPlan()
    {
        return $this->belongsTo(PricingPlan::class);
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePricingPlansFeachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pricing_plan_features', function (Blueprint $table) {
            $table->id();
            $table->string('feature');
            
            $table->unsignedBigInteger('pricing_plan_id')->index();
            $table->foreign('pricing_plan_id')->references('id')->on('pricing_plans')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pricing_plans_feachers');
    }
}

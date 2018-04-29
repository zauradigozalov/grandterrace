<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddLanguageToItems extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('items', function (Blueprint $table) {
            //
            $table->string('name_en');
            $table->string('name_ru');
            $table->string('description_en')->nullable();
            $table->string('description_ru')->nullable();
            $table->string('warning_en')->nullable();
            $table->string('warning_ru')->nullable();
            $table->string('composition_en')->nullable();
            $table->string('composition_ru')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('items', function (Blueprint $table) {
            $table->dropColumn('name_en');
            $table->dropColumn('name_ru');
            $table->dropColumn('description_en');
            $table->dropColumn('description_ru');
            $table->dropColumn('warning_en');
            $table->dropColumn('warning_ru');
            $table->dropColumn('composition_en');
            $table->dropColumn('composition_ru');
        });
    }
}

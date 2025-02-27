<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('competition_participants', function (Blueprint $table) {
            if (!Schema::hasColumn('competition_participants', 'game_id')) {
                $table->unsignedBigInteger('game_id')->nullable();
            }
        });
    }

public function down()
{
    Schema::table('competition_participants', function (Blueprint $table) {
        $table->dropForeign(['game_id']);
        $table->dropColumn('game_id'); 
    });
}

};

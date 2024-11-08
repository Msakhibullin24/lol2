<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();
			$table->integer('user_id');
			$table->integer('type'); 	// физ.лицо, ИП, юрлицо (0,1,2)
			$table->string('fio');
			$table->string('fio_name');
			$table->string('fio_otch');
			$table->string('inn');
			$table->string('snils');
			$table->string('grazhd');
			$table->text('passport');
			$table->text('address');
			$table->string('ur_name');
			$table->string('ur_address');
			$table->string('inn_kpp');
			$table->string('ogrn_ogrnip');
			$table->string('phone');
			$table->string('email');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('profiles');
    }
};

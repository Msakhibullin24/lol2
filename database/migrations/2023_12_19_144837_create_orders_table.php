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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->unsigned();
            $table->integer('profile_id')->unsigned();
            $table->integer('type_order')->unsigned();
            $table->integer('status')->unsigned();
            $table->integer('pay_status')->unsigned();
            $table->string('type_z')->nullable();
            $table->string('fam')->nullable();
            $table->string('name')->nullable();
            $table->string('otch')->nullable();
            $table->string('grazhd')->nullable();
            $table->string('inn')->nullable();
            $table->string('vidp')->nullable();
            $table->string('ogrnip')->nullable();
            $table->string('snils')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();

            $table->string('ul_name')->nullable();
            $table->string('inn2')->nullable();
            $table->string('ogrn')->nullable();
            $table->string('phone2')->nullable();
            $table->string('email2')->nullable();
            $table->string('name_ruk_org')->nullable();
            $table->string('fio_ruk')->nullable();

            $table->text('descr')->nullable();
            $table->date('date_s')->nullable();
            $table->date('date_p')->nullable();
            $table->text('mesto_p')->nullable();
            $table->text('soavt')->nullable();
            $table->text('passp')->nullable();
            $table->text('uraddr')->nullable();
            $table->text('uraddr2')->nullable();
            $table->text('kor_addr')->nullable();
            $table->text('kor_addr2')->nullable();

            $table->text('per_tov')->nullable();
            $table->text('slov_oboz')->nullable();
            $table->string('izo_oboz')->nullable();

            $table->string('name_prom')->nullable();
            $table->text('descr_po')->nullable();
            $table->text('addr_prozh')->nullable();
            $table->text('addr_prozh2')->nullable();
            $table->string('gos_mun_contract')->nullable();
            $table->date('date_contract')->nullable();
            $table->string('num_contract')->nullable();
            $table->string('fio_author')->nullable();
            $table->text('desc_prom')->nullable();
            $table->string('izo_izd')->nullable();
            $table->string('izo_chert')->nullable();
			
			$table->string('dolzh')->nullable();
			$table->string('personal_data')->nullable();
			$table->string('num_reestr')->nullable();
			$table->integer('count_copyright_holders_u')->nullable();
			$table->integer('count_copyright_holders_f')->nullable();
			$table->integer('all_f_authors')->nullable();
			$table->string('osnovanie')->nullable();
			$table->string('osnovanie_inoe')->nullable();
			$table->string('opf')->nullable();
			$table->string('p_ur_name')->nullable();
			$table->string('fam2')->nullable();
			$table->string('name2')->nullable();
			$table->string('otch2')->nullable();
			$table->string('inn3')->nullable();
			$table->string('name_evm')->nullable();
			$table->string('year_sozd')->nullable();
			$table->string('is_world')->nullable();
			$table->string('iw2_country')->nullable();
			$table->string('iw_year')->nullable();
			$table->text('naznach')->nullable();
			$table->string('lp')->nullable();
			$table->string('size_c')->nullable();
			$table->integer('count_authors')->nullable();
			$table->string('date_r_author')->nullable();
			$table->string('snils2')->nullable();
			$table->text('passp2')->nullable();
			$table->text('kotv')->nullable();
			$table->string('doverka')->nullable();
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
        Schema::dropIfExists('orders');
    }
};

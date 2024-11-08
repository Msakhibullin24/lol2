<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;

class Order extends Model
{
    use HasFactory;
	use Sortable;
	 
    protected $fillable = [
        'user_id',
        'profile_id',
        'type_order',
        'status',
		'fam',
		'name',
		'otch',
		'grazhd',
		'inn',
		'vidp',
		'descr',
		'date_s',
		'date_p',
		'mesto_p',
		'soavt',
		'type_z',
		'ogrnip',
		'snils',
		'phone',
		'email',
		'passp',
		'uraddr',
		'kor_addr',
		'ul_name',
		'uraddr2',
		'kor_addr2',
		'inn2',
		'ogrn',
		'phone2',
		'email2',
		'name_ruk_org',
		'fio_ruk',
		'per_tov',
		'slov_oboz',
		'izo_oboz',
		'name_prom',
		'descr_po',
		'addr_prozh',
		'addr_prozh2',
		'gos_mun_contract',
		'date_contract',
		'num_contract',
		'fio_author',
		'desc_prom',
		'izo_izd',
		'izo_chert',
		'dolzh',
		'personal_data',
		'num_reestr',
		'count_copyright_holders_u',
		'count_copyright_holders_f',
		'all_f_authors',
		'osnovanie',
		'osnovanie_inoe',
		'opf',
		'p_ur_name',
		'fam2',
		'name2',
		'otch2',
		'inn3',
		'name_evm',
		'year_sozd',
		'is_world',
		'iw2_country',
		'iw_year',
		'naznach',
		'lp',
		'size_c',
		'count_authors',
		'date_r_author',
		'snils2',
		'passp2',
		'kotv',
		'name_izopm',
		'izopm_1',
		'izopm_2',
		'izopm_3',
		'izopm_4',
		'izopm_6',
		'izopm_5',
		'file_book'
    ];

	public $sortable = [
		'id', 
		'created_at', 
		'updated_at'
	];

    public function files()
    {
      return $this->hasMany(File::class);
    }
}



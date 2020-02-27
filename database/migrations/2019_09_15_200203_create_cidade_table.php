<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCidadeTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('cidade', function(Blueprint $table)
		{
			$table->integer('codigoCidade', true);
			$table->string('nome', 45);
			$table->char('estado', 2);
			$table->float('valorFrete', 8, 2);
		});

		// Inserindo cidade padrão
		DB::table('cidade')->insert(
			array(
				'nome' => 'Belo Horizonte',
				'estado' => 'MG',
				'valorFrete' => 0
			)
		);
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('cidade');
	}

}

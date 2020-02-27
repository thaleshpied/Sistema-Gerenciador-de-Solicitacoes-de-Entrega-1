<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateClienteTelefoneTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('clienteTelefone', function(Blueprint $table)
		{
			$table->bigInteger('clienteTelefone');
			$table->integer('codigoCliente')->index('FK_clienteTelefone_1');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('clienteTelefone');
	}

}

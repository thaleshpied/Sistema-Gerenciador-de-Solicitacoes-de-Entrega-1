<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToClienteTelefoneTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('clienteTelefone', function(Blueprint $table)
		{
			$table->foreign('codigoCliente', 'FK_clienteTelefone_1')->references('codigoCliente')->on('cliente')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('clienteTelefone', function(Blueprint $table)
		{
			$table->dropForeign('FK_clienteTelefone_1');
		});
	}

}

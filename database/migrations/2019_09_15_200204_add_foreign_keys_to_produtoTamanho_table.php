<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToProdutoTamanhoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('produtoTamanho', function(Blueprint $table)
		{
			$table->foreign('codigoProduto', 'FK_ProdutoTamanho_1')->references('codigoProduto')->on('produto')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('produtoTamanho', function(Blueprint $table)
		{
			$table->dropForeign('FK_ProdutoTamanho_1');
		});
	}

}

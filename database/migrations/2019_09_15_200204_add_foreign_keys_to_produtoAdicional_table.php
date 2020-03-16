<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToProdutoAdicionalTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('produtoAdicional', function(Blueprint $table)
		{
			$table->foreign('codigoProduto', 'FK_ProdutoAdicional_1')->references('codigoProduto')->on('produto')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('produtoAdicional', function(Blueprint $table)
		{
			$table->dropForeign('FK_ProdutoAdicional_1');
		});
	}

}

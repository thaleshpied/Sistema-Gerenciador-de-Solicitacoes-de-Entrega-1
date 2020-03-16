<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProdutoAdicionalTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('produtoAdicional', function(Blueprint $table)
		{
			$table->integer('codigoProdutoAdicional', true);
			$table->string('nome', 20);
			$table->float('valorUnitario', 8, 2);
			$table->boolean('ativo');
			$table->integer('codigoProduto')->index('FK_ProdutoAdicional_1');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('produtoAdicional');
	}

}

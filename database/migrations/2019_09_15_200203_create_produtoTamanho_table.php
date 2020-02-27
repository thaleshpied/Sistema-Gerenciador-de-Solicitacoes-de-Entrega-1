<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProdutoTamanhoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('produtoTamanho', function(Blueprint $table)
		{
			$table->integer('codigoProdutoTamanho', true);
			$table->string('nome', 20);
			$table->float('valorUnitario', 8, 2);
			$table->integer('quantidadeEstoque');
			$table->integer('codigoProduto')->index('FK_ProdutoTamanho_1');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('produtoTamanho');
	}

}

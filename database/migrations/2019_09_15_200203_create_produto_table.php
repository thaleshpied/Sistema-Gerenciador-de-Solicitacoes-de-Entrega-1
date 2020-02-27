<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProdutoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('produto', function(Blueprint $table)
		{
			$table->integer('codigoProduto', true);
			$table->string('nome', 45);
			$table->string('sku', 10);
			$table->float('valorUnitario', 8, 2);
			$table->integer('quantidadeEstoque');
			$table->string('descricao', 100);
			$table->integer('codigoCategoria')->index('FK_Produto_1');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('produto');
	}

}

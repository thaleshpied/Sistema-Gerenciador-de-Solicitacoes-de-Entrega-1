<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePedidoProdutoTamanhoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pedidoProdutoTamanho', function(Blueprint $table)
		{
			$table->integer('codigoPedidoProdutoTamanho', true);
			$table->integer('codigoPedido')->index('FK_PedidoProdutoTamanho_1');
			$table->integer('codigoProdutoTamanho')->index('FK_PedidoProdutoTamanho_2');
			$table->integer('quantidade');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('pedidoProdutoTamanho');
	}

}

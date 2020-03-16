<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePedidoProdutoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pedidoProduto', function(Blueprint $table)
		{
			$table->integer('codigoPedidoProduto', true);
			$table->integer('codigoPedido')->index('FK_PedidoProduto_1');
			$table->integer('codigoProduto')->index('FK_PedidoProduto_2');
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
		Schema::drop('pedidoProduto');
	}

}

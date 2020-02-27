<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePedidoProdutoAdicionalTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pedidoProdutoAdicional', function(Blueprint $table)
		{
			$table->integer('codigoPedidoProduto');
			$table->integer('codigoProdutoAdicional')->index('FK_PedidoProdutoAdicional_1');
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
		Schema::drop('pedidoProdutoAdicional');
	}

}

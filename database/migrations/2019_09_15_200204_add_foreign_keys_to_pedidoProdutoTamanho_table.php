<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToPedidoProdutoTamanhoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('pedidoProdutoTamanho', function(Blueprint $table)
		{
			$table->foreign('codigoPedido', 'FK_PedidoProdutoTamanho_1')->references('codigoPedido')->on('pedido')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('codigoProdutoTamanho', 'FK_PedidoProdutoTamanho_2')->references('codigoProdutoTamanho')->on('produtoTamanho')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('pedidoProdutoTamanho', function(Blueprint $table)
		{
			$table->dropForeign('FK_PedidoProdutoTamanho_1');
			$table->dropForeign('FK_PedidoProdutoTamanho_2');
		});
	}

}

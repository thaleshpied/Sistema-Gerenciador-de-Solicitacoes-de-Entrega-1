<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToPedidoProdutoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('pedidoProduto', function(Blueprint $table)
		{
			$table->foreign('codigoPedido', 'FK_PedidoProduto_1')->references('codigoPedido')->on('pedido')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('codigoProduto', 'FK_PedidoProduto_2')->references('codigoProduto')->on('produto')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('codigoProdutoTamanho', 'FK_PedidoProduto_3')->references('codigoProdutoTamanho')->on('produtoTamanho')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('pedidoProduto', function(Blueprint $table)
		{
			$table->dropForeign('FK_PedidoProduto_1');
			$table->dropForeign('FK_PedidoProduto_2');
			$table->dropForeign('FK_PedidoProduto_3');
		});
	}

}

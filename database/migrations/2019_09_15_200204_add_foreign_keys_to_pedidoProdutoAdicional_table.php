<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToPedidoProdutoAdicionalTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('pedidoProdutoAdicional', function(Blueprint $table)
		{
			$table->foreign('codigoProdutoAdicional', 'FK_PedidoProdutoAdicional_1')->references('codigoProdutoAdicional')->on('produtoAdicional')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('codigoPedidoProduto', 'FK_PedidoProdutoAdicional_2')->references('codigoPedidoProduto')->on('pedidoProduto')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('codigoPedidoProdutoTamanho', 'FK_PedidoProdutoAdicional_3')->references('codigoPedidoProdutoTamanho')->on('pedidoProdutoTamanho')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('pedidoProdutoAdicional', function(Blueprint $table)
		{
			$table->dropForeign('FK_PedidoProdutoAdicional_1');
			$table->dropForeign('FK_PedidoProdutoAdicional_2');
			$table->dropForeign('FK_PedidoProdutoAdicional_3');
		});
	}

}

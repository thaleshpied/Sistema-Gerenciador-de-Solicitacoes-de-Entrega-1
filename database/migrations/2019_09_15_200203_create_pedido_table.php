<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePedidoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pedido', function(Blueprint $table)
		{
			$table->integer('codigoPedido', true);
			$table->float('valorTotal', 8, 2);
			$table->char('formaPagamento', 1);
			$table->string('observacoes', 50)->nullable();
			$table->char('situacao', 1);
			$table->integer('codigoCliente')->index('FK_Pedido_1');
			$table->integer('codigoFuncionario')->index('FK_Pedido_2')->nullable();
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('pedido');
	}

}

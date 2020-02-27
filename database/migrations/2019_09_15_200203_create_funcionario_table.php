<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Seeder;

class CreateFuncionarioTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('funcionario', function(Blueprint $table)
		{
			$table->integer('codigoFuncionario', true);
			$table->string('name');
			$table->string('email')->unique('email');
			$table->string('password');
			$table->boolean('administrador');
			$table->char('situacao', 1);
			$table->integer('codigoEstabelecimento')->index('FK_Funcionario_1');
			$table->rememberToken();
			$table->timestamps();
		});

		// Inserindo funcionario padrão
		// Senha padrão = "you shall not pass"
		DB::table('funcionario')->insert(
			array(
				'name' => 'SGSE',
				'email' => 'sgse@email.com',
				'password' => bcrypt('you shall not pass'),
				'administrador' => 1,
				'situacao' => 'A',
				'remember_token' => NULL,
				'codigoEstabelecimento' => 1,
				'created_at' => NULL,
				'updated_at' => NULL
			)
		);
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('funcionario');
	}

}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Produto;
use App\ProdutoAdicional;
use App\ProdutoTamanho;
use App\Categoria;

class LojaController extends Controller
{

	protected $dados = array();

    public function index(){

		$dados['filtrado'] = NULL;

		$dados['categorias'] = Categoria::all();

		$produtos = Produto::where('quantidadeEstoque', '>', 0)->get();

		$codigosProdutos = $produtos->pluck('codigoProduto');

		$produtosTamanhos = ProdutoTamanho::whereIn('codigoProduto', $codigosProdutos)->get();

		$produtosAdicionais = ProdutoAdicional::whereIn('codigoProduto', $codigosProdutos)->get();

		$dados['produtos'] = $produtos;

		$dados['produtosTamanhos'] = $produtosTamanhos;

		$dados['produtosAdicionais'] = $produtosAdicionais;

		//print_r($produtos);

		return view('loja', $dados);
	}

	public function buscarCategoria(Request $request){
		return 'TODO';
	}

	public function pesquisarProduto(Request $request){
		return 'TODO';
	}

	public function adicionarCarrinho(Request $request) {
		return 'TODO';
	}
}

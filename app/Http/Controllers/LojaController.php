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

		$dados['categorias'] = Categoria::all()->toArray();

		$produtos = Produto::where('quantidadeEstoque', '>', 0)->get();

		$codigosProdutos = $produtos->pluck('codigoProduto')->toArray();

		$produtosTamanhos = ProdutoTamanho::whereIn('codigoProduto', $codigosProdutos)->get()->toArray();

		$produtosAdicionais = ProdutoAdicional::whereIn('codigoProduto', $codigosProdutos)->get()->toArray();

		$dados['produtos'] = $produtos->toArray();

		$dados['produtosTamanhos'] = $produtosTamanhos->toArray();

		$dados['produtosAdicionais'] = $produtosAdicionais->toArray();

		print_r($produtos);

		//return view('loja', $dados);
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

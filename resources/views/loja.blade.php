@extends('layouts.app')

@section('content')
 		
 		<!-- SEÇÃO COM PESQUISA E CATEGORIAS -->   
		<section class="secao2 container-fluid">  
        <div class="row topo">    
            <div class="col-10">
                <img src="{{ url('img/logo.png/') }}" class="card-logo w-100% mx-auto d-block" alt="Nome produto">
            </div>
            <div class="col-2">
                <button class="btn btn-outline-secondary" type="" id="btnPesquisa1"><i class="fas fa-search right"></i></button>
            </div>
        </div>   
        <div id="form" class="row col-12">            	
            	<form method="POST" action="pesquisar">
                        <input type="hidden" name="_token" value="XBix9J7cWYozsLfhSGiLrH1XsKsc2yeKGDB9MY5N"><div class="input-group mb-3">
                            <input name="inputPesquisarProduto" type="text" class="form-control" placeholder="Pesquisar produtos" aria-label="Pesquisar produtos" aria-describedby="btnPesquisa1" value="" id="search" >
                            <div class="input-group-append">                                
                            </div>
                        </div>
                </form>               
        	</div>                  
                 
        <div class="container-fluid mobile-card-container">
            <div class="row text-center flex-nowrap flex-sm-wrap">
            @foreach ($categorias as $c)
                <form method="POST" action="/buscar" id="buscar-{{$c->codigoCategoria}}" name="buscar-{{$c->codigoCategoria}}">
                @csrf
                <input type="hidden" name="codigoCategoria" id="codigoCategoria" value="{{$c->codigoCategoria}}">
                    <div class="p-2">
                        <div class="cardcat" onClick="document.forms['buscar-{{$c->codigoCategoria}}'].submit();">
                            <img src="{{ url('img/')}}/{{$c->nome}}.jpg" class="card-img-topo w-100% mx-auto d-block" alt="Nome produto">
                            <div class="card-body">
                                <div class="row justify-content-center nomecat">
                                    @if ($filtrado == $c->codigoCategoria)
                                        <b>{{$c->nome}}</b>
                                    @else
                                        {{$c->nome}}    
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div> 
                </form>
            @endforeach
        </div>
    </section>
	
		<div class="row justify-content-left">
			<div id="maisopcoes" class="row">
						<button class="buttonload center">
						  <i class="fas fa-spinner fa-spin"></i>
						</button>
			</div>

				
			</div> <!-- fehca mais opções -->
			@foreach ($produtos as $p)
			<!-- <a id="{{$p->codigoProduto}}" onclick="produtosOFF({{$p->codigoProduto}})">	<div class="col-md-4 p-2" id="menosopcoes" > -->
				<div class="card">
				<img src="{{ url('img/pizza.jpg/') }}" class="card-img-top w-100% mx-auto d-block" alt="Nome do produto"></a>
				<!-- CRIPTOGRAFADO <img src="{{ url('img/produtos/') . '/' . md5($p->codigoProduto) . '.png' }}" class="card-img-top h-auto w-100% mx-auto d-block" alt="Nome produto">-->
					<div class="card-body">
						<h5 class="card-title">{{$p->nome}}<small> - {{$p->categoria->nome}}</small></h5>
						<!-- <p class="card-text"><b>R$ {{$p->valorUnitario}}</b></p>-->
						<p class="card-text">{{$p->descricao}}</p>
					</div>
						<div class="col-12">	
								<button type="button" class="btn btn-primary-product" onclick="addCarrinho({{$p->codigoProduto}})">
									<i class="fas fa-cart-plus"></i>
									<small>Adicionar ao carrinho</small>
								</button>
						</div>
					</div>
						<hr class="my-4">
			</div> <!-- fim col -->
			@endforeach
		</div> <!-- fim row -->
		@if (method_exists($produtos, 'links'))
			{{ $produtos->links() }}
		@endif
		
  
	</div> <!-- fim container -->

	<script src="{{ asset('js/bootstrap-input-spinner.js') }}"></script>
	<script type="text/javascript">
		function addCarrinho(codigoProduto) {
			var quantidade = document.getElementById(codigoProduto).value;
			var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
			$.ajax({
				url: '/addCarrinho',
				type: 'POST',
				data: {
					_token: CSRF_TOKEN,
					codigoProduto: codigoProduto,
					quantidade: quantidade
				},
				dataType: 'JSON',
				success: function(data){
					alert(data.msg);
				},
				Error: function(data) {
					alert('Erro ao adicionar produto ao carrinho! Verifique sua conexão com a internet!');
				}
			});
		}
		$("input[type='number']").inputSpinner();
	</script>

<!-- APRESENTAR MAIS OPÇÕES DOS PRODUTOS -->
<script type="text/javascript">
	
	function produtosOFF(codigoProduto) {
		var quantidade = document.getElementById(codigoProduto).value;
			var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');

			$.ajax({
				url: './addCarrinho2',
				type: 'POST',
				data: {
					_token: CSRF_TOKEN,
					codigoProduto: codigoProduto,
					quantidade: quantidade
				},
				dataType: 'JSON',
				success: function(data){
					alert(data.msg);
				},
				Error: function(data) {
					alert('Erro ao adicionar produto ao carrinho! Verifique sua conexão com a internet!');
				}
			});
			
			console.log(codigoProduto);
			 var element = document.getElementById("maisopcoes")
			 element.classList.add("efeito"); 
	       window.setTimeout("location.href='/public/detalheoficial'")
	}
</script>

  


@endsection

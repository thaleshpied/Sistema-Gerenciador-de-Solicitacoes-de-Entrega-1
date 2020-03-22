<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $codigoProdutoAdicional
 * @property int $codigoPedidoProduto
 * @property int $codigoPedidoProdutoTamanho
 * @property int $quantidade
 * @property ProdutoAdicional $produtoAdicional
 * @property PedidoProduto $pedidoProduto
 * @property PedidoProdutoTamanho $pedidoProdutosTamanho
 */
class PedidoProdutoAdicional extends Model
{
	/**
     * Enable or disable timestamps for the model.
     * 
     * @var boolean
     */
	public $timestamps = false;

    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'pedidoProdutoAdicional';

    /**
     * @var array
     */
    protected $fillable = ['codigoProdutoAdicional', 'codigoPedidoProduto', 'codigoPedidoProdutoTamanho', 'quantidade'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function produtoAdicional()
    {
        return $this->belongsTo('App\ProdutoAdicional', 'codigoProdutoAdicional', 'codigoProdutoAdicional');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function pedidoProduto()
    {
        return $this->belongsTo('App\PedidoProduto', 'codigoPedidoProduto', 'codigoPedidoProduto');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function pedidoProdutoTamanho()
    {
        return $this->belongsTo('App\PedidoProdutoTamanho', 'codigoPedidoProdutoTamanho', 'codigoPedidoProdutoTamanho');
    }
}

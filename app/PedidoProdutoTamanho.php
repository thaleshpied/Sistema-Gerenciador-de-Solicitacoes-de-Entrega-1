<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $codigoPedidoProdutoTamanho
 * @property int $codigoPedido
 * @property int $codigoProdutoTamanho
 * @property int $quantidade
 * @property ProdutoTamanho $produtoTamanho
 * @property Pedido $pedido
 * @property PedidoProdutoAdicional[] $pedidoProdutosAdicionais
 */
class PedidoProdutoTamanho extends Model
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
    protected $table = 'pedidoProdutoTamanho';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'codigoPedidoProdutoTamanho';

    /**
     * @var array
     */
    protected $fillable = ['codigoPedido', 'codigoProdutoTamanho', 'quantidade'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function produtoTamanho()
    {
        return $this->belongsTo('App\ProdutoTamanho', 'codigoProdutoTamanho', 'codigoProdutoTamanho');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function pedido()
    {
        return $this->belongsTo('App\Pedido', 'codigoPedido', 'codigoPedido');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pedidoProdutoAdicionais()
    {
        return $this->hasMany('App\PedidoProdutoAdicional', 'codigoPedidoProdutoTamanho', 'codigoPedidoProdutoTamanho');
    }
}

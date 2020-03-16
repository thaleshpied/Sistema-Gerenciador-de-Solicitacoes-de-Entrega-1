<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $codigoProdutoTamanho
 * @property string $nome
 * @property float $valorUnitario
 * @property int $quantidadeEstoque
 * @property Produto $codigoProduto
 * @property PedidoProdutoTamanho[] $pedidoProdutoTamanhos
 */
class ProdutoTamanho extends Model
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
    protected $table = 'produtoTamanho';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'codigoProdutoTamanho';

    /**
     * @var array
     */
    protected $fillable = ['nome', 'valorUnitario', 'quantidadeEstoque', 'codigoProduto'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function produto()
    {
        return $this->belongsTo('App\Produto', 'codigoProduto', 'codigoProduto');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pedidoProdutoTamanhos()
    {
        return $this->hasMany('App\PedidoProdutoTamanho', 'codigoProdutoTamanho', 'codigoProdutoTamanho');
    }
}

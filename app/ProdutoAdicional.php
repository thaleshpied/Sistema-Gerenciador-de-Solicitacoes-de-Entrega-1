<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $codigoProdutoAdicional
 * @property string $nome
 * @property float $valorUnitario
 * @property int $quantidadeEstoque
 * @property boolean $ativo
 * @property Produto $codigoProduto
 * @property PedidoProdutoAdicional[] $pedidoProdutoAdicionais
 */
class ProdutoAdicional extends Model
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
    protected $table = 'produtoAdicional';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'codigoProdutoAdicional';

    /**
     * @var array
     */
    protected $fillable = ['nome', 'valorUnitario', 'quantidadeEstoque', 'ativo', 'codigoProduto'];

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
        return $this->hasMany('App\PedidoProdutoTamanho', 'codigoProdutoAdicional', 'codigoProdutoAdicional');
    }
}

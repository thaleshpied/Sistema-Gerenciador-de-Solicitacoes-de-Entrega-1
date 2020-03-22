<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $telefoneCliente
 * @property int $codigoCliente
 * @property Cliente $cliente
 */
class ClienteTelefone extends Model
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
    protected $table = 'clienteTelefone';

    /**
     * @var array
     */
    protected $fillable = ['clienteTelefone', 'codigoCliente'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function cliente()
    {
        return $this->belongsTo('App\Cliente', 'codigoCliente', 'codigoCliente');
    }
}

package §`!r§
{
   import §2"Y§.§1#K§;
   import §^#>§.§#_§;
   
   public class §4!L§
   {
       
      
      protected var §8!+§:Number;
      
      protected var §=!Z§:Number;
      
      private var §7!8§:Number;
      
      private var §0!Y§:Number;
      
      private var §6"C§:Number;
      
      private var §=!]§:Number;
      
      protected var §[<§:Number;
      
      private var §4"c§:Number;
      
      protected var §8"2§:Number;
      
      private var §%"g§:Number;
      
      private var §="d§:Number;
      
      private var §6"$§:Boolean = true;
      
      private var §'!#§:Number;
      
      private var §4#N§:Number;
      
      public function §4!L§(param1:Number, param2:Number, param3:Number, param4:§1#K§, param5:Number = 1)
      {
         super();
         this.§8!+§ = param1;
         this.§=!Z§ = param2;
         this.§[<§ = this.§^"9§(param4.minAngleEmitter,param4.maxAngleEmitter) + param3;
         this.§4"c§ = this.§^"9§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§^"9§(param4.minVel,param4.maxVel) / 1000 * §#_§.§8]§;
         this.§7!8§ = Math.cos(this.§[<§) * _loc6_;
         this.§0!Y§ = Math.sin(this.§[<§) * _loc6_;
         this.§%"g§ = this.§^"9§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§="d§ = this.§^"9§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§8"2§ = this.§%"g§;
         this.§6"C§ = this.§^"9§(param4.gravityX,param4.gravityX) / 1000000 * §#_§.§8]§;
         this.§=!]§ = this.§^"9§(param4.gravityY,param4.gravityY) / 1000000 * §#_§.§8]§;
         this.§4#N§ = param4.lifeTime * 1000;
         this.§'!#§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§6"$§;
      }
      
      public function get §3! §() : Number
      {
         return this.§'!#§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§7!8§ += this.§6"C§ * param1;
         this.§0!Y§ += this.§=!]§ * param1;
         this.§8!+§ += this.§7!8§ * param1;
         this.§=!Z§ += this.§0!Y§ * param1;
         if(this.§'!#§ < this.§4#N§)
         {
            this.§8"2§ = this.§%"g§ + (this.§="d§ - this.§%"g§) * (this.§'!#§ / this.§4#N§);
         }
         else
         {
            this.§8"2§ = this.§="d§;
         }
         this.§[<§ += this.§4"c§ * param1;
         this.§'!#§ += param1;
         if(this.§'!#§ >= this.§4#N§)
         {
            this.§6"$§ = false;
         }
         return this.§6"$§;
      }
      
      protected function §^"9§(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(isNaN(param2))
         {
            param2 = 0;
         }
         return param1 + (param2 - param1) * Math.random();
      }
   }
}

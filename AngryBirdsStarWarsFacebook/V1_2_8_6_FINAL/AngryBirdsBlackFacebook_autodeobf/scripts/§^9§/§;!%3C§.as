package §^9§
{
   import §"§.§;!E§;
   import §#g§.§=!F§;
   
   public class §;!<§
   {
       
      
      protected var §0U§:Number;
      
      protected var §3"[§:Number;
      
      private var §'!e§:Number;
      
      private var §&"d§:Number;
      
      private var §=+§:Number;
      
      private var §%d§:Number;
      
      protected var §^]§:Number;
      
      private var §^l§:Number;
      
      protected var §#"5§:Number;
      
      private var §+[§:Number;
      
      private var §-"`§:Number;
      
      private var §3""§:Boolean = true;
      
      private var §#"R§:Number;
      
      private var §[!<§:Number;
      
      public function §;!<§(param1:Number, param2:Number, param3:Number, param4:§=!F§, param5:Number = 1)
      {
         super();
         this.§0U§ = param1;
         this.§3"[§ = param2;
         this.§^]§ = this.§!!m§(param4.minAngleEmitter,param4.maxAngleEmitter) + param3;
         this.§^l§ = this.§!!m§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§!!m§(param4.minVel,param4.maxVel) / 1000 * §;!E§.§0"?§;
         this.§'!e§ = Math.cos(this.§^]§) * _loc6_;
         this.§&"d§ = Math.sin(this.§^]§) * _loc6_;
         this.§+[§ = this.§!!m§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§-"`§ = this.§!!m§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§#"5§ = this.§+[§;
         this.§=+§ = this.§!!m§(param4.gravityX,param4.gravityX) / 1000000 * §;!E§.§0"?§;
         this.§%d§ = this.§!!m§(param4.gravityY,param4.gravityY) / 1000000 * §;!E§.§0"?§;
         this.§[!<§ = param4.lifeTime * 1000;
         this.§#"R§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§3""§;
      }
      
      public function get §<!"§() : Number
      {
         return this.§#"R§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§'!e§ += this.§=+§ * param1;
         this.§&"d§ += this.§%d§ * param1;
         this.§0U§ += this.§'!e§ * param1;
         this.§3"[§ += this.§&"d§ * param1;
         if(this.§#"R§ < this.§[!<§)
         {
            this.§#"5§ = this.§+[§ + (this.§-"`§ - this.§+[§) * (this.§#"R§ / this.§[!<§);
         }
         else
         {
            this.§#"5§ = this.§-"`§;
         }
         this.§^]§ += this.§^l§ * param1;
         this.§#"R§ += param1;
         if(this.§#"R§ >= this.§[!<§)
         {
            this.§3""§ = false;
         }
         return this.§3""§;
      }
      
      protected function §!!m§(param1:Number, param2:Number) : Number
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

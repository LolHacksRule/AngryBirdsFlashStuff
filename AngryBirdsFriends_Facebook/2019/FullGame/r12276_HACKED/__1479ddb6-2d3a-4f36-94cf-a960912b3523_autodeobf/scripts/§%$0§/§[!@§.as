package §%$0§
{
   import §-!j§.§@U§;
   import §?$#§.§<d§;
   
   public class §[!@§
   {
       
      
      protected var §0k§:Number;
      
      protected var §@_§:Number;
      
      private var §4"!§:Number;
      
      private var §8#N§:Number;
      
      private var §&§:Number;
      
      private var §^4§:Number;
      
      protected var §8"a§:Number;
      
      private var §^"y§:Number;
      
      protected var §6#q§:Number;
      
      private var §=!R§:Number;
      
      private var §8#%§:Number;
      
      private var §,"2§:Boolean = true;
      
      private var §8!y§:Number;
      
      private var §,U§:Number;
      
      public function §[!@§(param1:Number, param2:Number, param3:Number, param4:§@U§, param5:Number = 1)
      {
         super();
         this.§0k§ = param1;
         this.§@_§ = param2;
         this.§8"a§ = this.§'$'§(param4.minAngleEmitter,param4.maxAngleEmitter);
         if(!param4.useAbsoluteAngle)
         {
            this.§8"a§ += param3;
         }
         this.§^"y§ = this.§'$'§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§'$'§(param4.minVel,param4.maxVel) / 1000 * §<d§.§6@§;
         this.§4"!§ = Math.cos(this.§8"a§) * _loc6_;
         this.§8#N§ = Math.sin(this.§8"a§) * _loc6_;
         this.§=!R§ = this.§'$'§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§8#%§ = this.§'$'§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§6#q§ = this.§=!R§;
         this.§&§ = param4.gravityX / 1000000 * §<d§.§6@§;
         this.§^4§ = param4.gravityY / 1000000 * §<d§.§6@§;
         this.§,U§ = param4.lifeTime * 1000;
         this.§8!y§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§,"2§;
      }
      
      public function get §<K§() : Number
      {
         return this.§8!y§;
      }
      
      public function get §4!4§() : Number
      {
         return this.§,U§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§4"!§ += this.§&§ * param1;
         this.§8#N§ += this.§^4§ * param1;
         this.§0k§ += this.§4"!§ * param1;
         this.§@_§ += this.§8#N§ * param1;
         if(this.§8!y§ < this.§,U§)
         {
            this.§6#q§ = this.§=!R§ + (this.§8#%§ - this.§=!R§) * (this.§8!y§ / this.§,U§);
         }
         else
         {
            this.§6#q§ = this.§8#%§;
         }
         this.§8"a§ += this.§^"y§ * param1;
         this.§8!y§ += param1;
         if(this.§8!y§ >= this.§,U§)
         {
            this.§,"2§ = false;
         }
         return this.§,"2§;
      }
      
      protected function §'$'§(param1:Number, param2:Number) : Number
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

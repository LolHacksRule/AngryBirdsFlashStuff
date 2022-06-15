package §=!7§
{
   import §52§.§#!,§;
   import §`#C§.§-$'§;
   
   public class §?!;§
   {
       
      
      protected var §+!5§:Number;
      
      protected var §'! §:Number;
      
      private var §""T§:Number;
      
      private var §5#q§:Number;
      
      private var §2#F§:Number;
      
      private var §]!<§:Number;
      
      protected var §2#!§:Number;
      
      private var §]!1§:Number;
      
      protected var §]"?§:Number;
      
      private var §]!k§:Number;
      
      private var §"#0§:Number;
      
      private var §8$#§:Boolean = true;
      
      private var §`h§:Number;
      
      private var §^=§:Number;
      
      public function §?!;§(param1:Number, param2:Number, param3:Number, param4:§-$'§, param5:Number = 1)
      {
         super();
         this.§+!5§ = param1;
         this.§'! § = param2;
         this.§2#!§ = this.§-Z§(param4.minAngleEmitter,param4.maxAngleEmitter);
         if(!param4.useAbsoluteAngle)
         {
            this.§2#!§ += param3;
         }
         this.§]!1§ = this.§-Z§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§-Z§(param4.minVel,param4.maxVel) / 1000 * §#!,§.§?$#§;
         this.§""T§ = Math.cos(this.§2#!§) * _loc6_;
         this.§5#q§ = Math.sin(this.§2#!§) * _loc6_;
         this.§]!k§ = this.§-Z§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§"#0§ = this.§-Z§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§]"?§ = this.§]!k§;
         this.§2#F§ = this.§-Z§(param4.gravityX,param4.gravityX) / 1000000 * §#!,§.§?$#§;
         this.§]!<§ = this.§-Z§(param4.gravityY,param4.gravityY) / 1000000 * §#!,§.§?$#§;
         this.§^=§ = param4.lifeTime * 1000;
         this.§`h§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§8$#§;
      }
      
      public function get §"4§() : Number
      {
         return this.§`h§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§""T§ += this.§2#F§ * param1;
         this.§5#q§ += this.§]!<§ * param1;
         this.§+!5§ += this.§""T§ * param1;
         this.§'! § += this.§5#q§ * param1;
         if(this.§`h§ < this.§^=§)
         {
            this.§]"?§ = this.§]!k§ + (this.§"#0§ - this.§]!k§) * (this.§`h§ / this.§^=§);
         }
         else
         {
            this.§]"?§ = this.§"#0§;
         }
         this.§2#!§ += this.§]!1§ * param1;
         this.§`h§ += param1;
         if(this.§`h§ >= this.§^=§)
         {
            this.§8$#§ = false;
         }
         return this.§8$#§;
      }
      
      protected function §-Z§(param1:Number, param2:Number) : Number
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

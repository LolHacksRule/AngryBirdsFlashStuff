package §,7§
{
   import §;"=§.§@!6§;
   import §?!<§.§'!1§;
   
   public class §9;§
   {
       
      
      protected var §>!J§:Number;
      
      protected var §;`§:Number;
      
      private var §&!U§:Number;
      
      private var §!p§:Number;
      
      private var §!'§:Number;
      
      private var §["5§:Number;
      
      protected var §%!^§:Number;
      
      private var §;s§:Number;
      
      protected var §-!Y§:Number;
      
      private var §;!R§:Number;
      
      private var §1g§:Number;
      
      private var §#!e§:Boolean = true;
      
      private var §;!8§:Number;
      
      private var §'c§:Number;
      
      public function §9;§(param1:Number, param2:Number, param3:Number, param4:§@!6§, param5:Number = 1)
      {
         super();
         this.§>!J§ = param1;
         this.§;`§ = param2;
         this.§%!^§ = this.§,!Z§(param4.minAngleEmitter,param4.maxAngleEmitter) + param3;
         this.§;s§ = this.§,!Z§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§,!Z§(param4.minVel,param4.maxVel) / 1000 * §'!1§.§<!@§;
         this.§&!U§ = Math.cos(this.§%!^§) * _loc6_;
         this.§!p§ = Math.sin(this.§%!^§) * _loc6_;
         this.§;!R§ = this.§,!Z§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§1g§ = this.§,!Z§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§-!Y§ = this.§;!R§;
         this.§!'§ = this.§,!Z§(param4.gravityX,param4.gravityX) / 1000000 * §'!1§.§<!@§;
         this.§["5§ = this.§,!Z§(param4.gravityY,param4.gravityY) / 1000000 * §'!1§.§<!@§;
         this.§'c§ = param4.lifeTime * 1000;
         this.§;!8§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§#!e§;
      }
      
      public function get §8Y§() : Number
      {
         return this.§;!8§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§&!U§ += this.§!'§ * param1;
         this.§!p§ += this.§["5§ * param1;
         this.§>!J§ += this.§&!U§ * param1;
         this.§;`§ += this.§!p§ * param1;
         if(this.§;!8§ < this.§'c§)
         {
            this.§-!Y§ = this.§;!R§ + (this.§1g§ - this.§;!R§) * (this.§;!8§ / this.§'c§);
         }
         else
         {
            this.§-!Y§ = this.§1g§;
         }
         this.§%!^§ += this.§;s§ * param1;
         this.§;!8§ += param1;
         if(this.§;!8§ >= this.§'c§)
         {
            this.§#!e§ = false;
         }
         return this.§#!e§;
      }
      
      protected function §,!Z§(param1:Number, param2:Number) : Number
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

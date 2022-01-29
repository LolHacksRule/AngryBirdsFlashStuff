package §!'§
{
   import §8"L§.§3#N§;
   import §@0§.§%!q§;
   
   public class §4"j§
   {
       
      
      protected var §8u§:Number;
      
      protected var §!#§:Number;
      
      private var §[$1§:Number;
      
      private var §79§:Number;
      
      private var §+=§:Number;
      
      private var §5!x§:Number;
      
      protected var §9v§:Number;
      
      private var §1§:Number;
      
      protected var §^#5§:Number;
      
      private var § !z§:Number;
      
      private var §["Z§:Number;
      
      private var §`#L§:Boolean = true;
      
      private var §7$=§:Number;
      
      private var §?!m§:Number;
      
      public function §4"j§(param1:Number, param2:Number, param3:Number, param4:§3#N§, param5:Number = 1)
      {
         super();
         this.§8u§ = param1;
         this.§!#§ = param2;
         this.§9v§ = this.§>p§(param4.minAngleEmitter,param4.maxAngleEmitter);
         if(!param4.useAbsoluteAngle)
         {
            this.§9v§ += param3;
         }
         this.§1§ = this.§>p§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§>p§(param4.minVel,param4.maxVel) / 1000 * §%!q§.§6q§;
         this.§[$1§ = Math.cos(this.§9v§) * _loc6_;
         this.§79§ = Math.sin(this.§9v§) * _loc6_;
         this.§ !z§ = this.§>p§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§["Z§ = this.§>p§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§^#5§ = this.§ !z§;
         this.§+=§ = param4.gravityX / 1000000 * §%!q§.§6q§;
         this.§5!x§ = param4.gravityY / 1000000 * §%!q§.§6q§;
         this.§?!m§ = param4.lifeTime * 1000;
         this.§7$=§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§`#L§;
      }
      
      public function get §8G§() : Number
      {
         return this.§7$=§;
      }
      
      public function get §8#p§() : Number
      {
         return this.§?!m§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§[$1§ += this.§+=§ * param1;
         this.§79§ += this.§5!x§ * param1;
         this.§8u§ += this.§[$1§ * param1;
         this.§!#§ += this.§79§ * param1;
         if(this.§7$=§ < this.§?!m§)
         {
            this.§^#5§ = this.§ !z§ + (this.§["Z§ - this.§ !z§) * (this.§7$=§ / this.§?!m§);
         }
         else
         {
            this.§^#5§ = this.§["Z§;
         }
         this.§9v§ += this.§1§ * param1;
         this.§7$=§ += param1;
         if(this.§7$=§ >= this.§?!m§)
         {
            this.§`#L§ = false;
         }
         return this.§`#L§;
      }
      
      protected function §>p§(param1:Number, param2:Number) : Number
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

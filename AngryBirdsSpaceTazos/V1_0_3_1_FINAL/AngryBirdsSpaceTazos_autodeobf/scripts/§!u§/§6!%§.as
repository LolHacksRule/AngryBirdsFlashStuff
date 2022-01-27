package §!u§
{
   import §3R§.§1!R§;
   import §6!M§.§?R§;
   
   public class §6!%§
   {
       
      
      protected var §1!`§:Number;
      
      protected var §<2§:Number;
      
      private var §3[§:Number;
      
      private var §%"E§:Number;
      
      private var §in §:Number;
      
      private var §`X§:Number;
      
      protected var §7_§:Number;
      
      private var §^!J§:Number;
      
      protected var §1!k§:Number;
      
      private var §!!x§:Number;
      
      private var §6!X§:Number;
      
      private var §3M§:Boolean = true;
      
      private var §%!7§:Number;
      
      private var § !Z§:Number;
      
      public function §6!%§(param1:Number, param2:Number, param3:Number, param4:§?R§, param5:Number = 1)
      {
         super();
         this.§1!`§ = param1;
         this.§<2§ = param2;
         this.§7_§ = this.§;"3§(param4.minAngleEmitter,param4.maxAngleEmitter) + param3;
         this.§^!J§ = this.§;"3§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§;"3§(param4.minVel,param4.maxVel) / 1000 * §1!R§.§00§;
         this.§3[§ = Math.cos(this.§7_§) * _loc6_;
         this.§%"E§ = Math.sin(this.§7_§) * _loc6_;
         this.§!!x§ = this.§;"3§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§6!X§ = this.§;"3§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§1!k§ = this.§!!x§;
         this.§in § = this.§;"3§(param4.gravityX,param4.gravityX) / 1000000 * §1!R§.§00§;
         this.§`X§ = this.§;"3§(param4.gravityY,param4.gravityY) / 1000000 * §1!R§.§00§;
         this.§ !Z§ = param4.lifeTime * 1000;
         this.§%!7§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§3M§;
      }
      
      public function get §7J§() : Number
      {
         return this.§%!7§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§3[§ += this.§in § * param1;
         this.§%"E§ += this.§`X§ * param1;
         this.§1!`§ += this.§3[§ * param1;
         this.§<2§ += this.§%"E§ * param1;
         if(this.§%!7§ < this.§ !Z§)
         {
            this.§1!k§ = this.§!!x§ + (this.§6!X§ - this.§!!x§) * (this.§%!7§ / this.§ !Z§);
         }
         else
         {
            this.§1!k§ = this.§6!X§;
         }
         this.§7_§ += this.§^!J§ * param1;
         this.§%!7§ += param1;
         if(this.§%!7§ >= this.§ !Z§)
         {
            this.§3M§ = false;
         }
         return this.§3M§;
      }
      
      protected function §;"3§(param1:Number, param2:Number) : Number
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

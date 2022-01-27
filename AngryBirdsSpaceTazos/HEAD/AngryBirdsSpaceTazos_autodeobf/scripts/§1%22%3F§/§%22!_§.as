package §1"?§
{
   import §3"#§.§`"8§;
   import §3>§.§@!1§;
   
   public class §"!_§
   {
       
      
      protected var §''§:Number;
      
      protected var §3"<§:Number;
      
      private var §-Y§:Number;
      
      private var §7v§:Number;
      
      private var §#W§:Number;
      
      private var §"!L§:Number;
      
      protected var §#!$§:Number;
      
      private var §'$§:Number;
      
      protected var §&!A§:Number;
      
      private var §5N§:Number;
      
      private var §3"D§:Number;
      
      private var §'"!§:Boolean = true;
      
      private var §0K§:Number;
      
      private var §7^§:Number;
      
      public function §"!_§(param1:Number, param2:Number, param3:Number, param4:§@!1§, param5:Number = 1)
      {
         super();
         this.§''§ = param1;
         this.§3"<§ = param2;
         this.§#!$§ = this.§7A§(param4.minAngleEmitter,param4.maxAngleEmitter) + param3;
         this.§'$§ = this.§7A§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§7A§(param4.minVel,param4.maxVel) / 1000 * §`"8§.§3!=§;
         this.§-Y§ = Math.cos(this.§#!$§) * _loc6_;
         this.§7v§ = Math.sin(this.§#!$§) * _loc6_;
         this.§5N§ = this.§7A§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§3"D§ = this.§7A§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§&!A§ = this.§5N§;
         this.§#W§ = this.§7A§(param4.gravityX,param4.gravityX) / 1000000 * §`"8§.§3!=§;
         this.§"!L§ = this.§7A§(param4.gravityY,param4.gravityY) / 1000000 * §`"8§.§3!=§;
         this.§7^§ = param4.lifeTime * 1000;
         this.§0K§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§'"!§;
      }
      
      public function get §`!L§() : Number
      {
         return this.§0K§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§-Y§ += this.§#W§ * param1;
         this.§7v§ += this.§"!L§ * param1;
         this.§''§ += this.§-Y§ * param1;
         this.§3"<§ += this.§7v§ * param1;
         if(this.§0K§ < this.§7^§)
         {
            this.§&!A§ = this.§5N§ + (this.§3"D§ - this.§5N§) * (this.§0K§ / this.§7^§);
         }
         else
         {
            this.§&!A§ = this.§3"D§;
         }
         this.§#!$§ += this.§'$§ * param1;
         this.§0K§ += param1;
         if(this.§0K§ >= this.§7^§)
         {
            this.§'"!§ = false;
         }
         return this.§'"!§;
      }
      
      protected function §7A§(param1:Number, param2:Number) : Number
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

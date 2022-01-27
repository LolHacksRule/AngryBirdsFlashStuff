package §9"!§
{
   import §&!]§.Sprite;
   import §3"#§.§`"8§;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §`!w§.§^!$§;
   
   public class §8a§ extends §,%§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §;m§:Number = Math.PI * 2;
       
      
      private var §=5§:Number;
      
      private var §#s§:Number;
      
      private var §>h§:Number;
      
      private var §;K§:Number;
      
      private var §^!u§:Number;
      
      private var §8!f§:Number;
      
      private var §0K§:Number = 0.0;
      
      private var §&!@§:Number = 0;
      
      private var §2!J§:Number = 0;
      
      protected var §''§:Number = 0;
      
      protected var §3"<§:Number = 0;
      
      protected var § "F§:Number = 0;
      
      public function §8a§(param1:Sprite, param2:b2World, param3:§-"8§, param4:Number, param5:Number, param6:Number)
      {
         super(param1,param2,param3);
         this.§8!f§ = param6;
         this.§>h§ = param6;
         this.§;K§ = param4 / §`"8§.§3!=§;
         this.§^!u§ = param5 / §`"8§.§3!=§;
         this.§=5§ = param4 / §`"8§.§3!=§;
         this.§#s§ = param5 / §`"8§.§3!=§;
      }
      
      public function get §`!L§() : Number
      {
         return this.§0K§;
      }
      
      public function §5[§() : Number
      {
         return this.§''§ * §`"8§.§3!=§;
      }
      
      public function §'">§() : Number
      {
         return this.§3"<§ * §`"8§.§3!=§;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §`I§().GetPosition().x;
         var _loc4_:Number = §`I§().GetPosition().y;
         this.§2O§(this.§>h§);
         this.§;K§ = this.§=5§;
         this.§^!u§ = this.§#s§;
         this.§>h§ = §`I§().GetAngle();
         this.§=5§ = _loc3_ / §`"8§.§3!=§;
         this.§#s§ = _loc4_ / §`"8§.§3!=§;
         this.§0K§ += param1;
      }
      
      protected function §2O§(param1:Number) : void
      {
         this.§8!f§ = param1;
         this.§>h§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§ ";§(param2,param3);
      }
      
      protected function § ";§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §^!$§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§=5§ == this.§;K§ || param2 == 0)
         {
            this.§&!@§ = 0;
            this.§''§ = this.§=5§;
         }
         else
         {
            this.§&!@§ = param2 * (this.§;K§ - this.§=5§) / param1;
            this.§''§ = this.§=5§ + this.§&!@§;
         }
         if(this.§#s§ == this.§^!u§ || param2 == 0)
         {
            this.§2!J§ = 0;
            this.§3"<§ = this.§#s§;
         }
         else
         {
            this.§2!J§ = param2 * (this.§^!u§ - this.§#s§) / param1;
            this.§3"<§ = this.§#s§ + this.§2!J§;
         }
         if(this.§>h§ == this.§8!f§ || param2 == 0)
         {
            this.§ "F§ = this.§>h§;
         }
         else
         {
            _loc3_ = this.§>h§ - this.§8!f§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §;m§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §;m§;
            }
            this.§ "F§ = this.§8!f§ + (param1 - param2) / param1 * _loc3_;
            if(this.§ "F§ >= §;m§)
            {
               this.§ "F§ -= §;m§;
            }
            else if(this.§ "F§ < 0)
            {
               this.§ "F§ += §;m§;
            }
         }
      }
   }
}

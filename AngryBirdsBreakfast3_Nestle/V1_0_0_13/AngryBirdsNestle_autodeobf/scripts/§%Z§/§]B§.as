package §%Z§
{
   import § 2§.§=+§;
   import §2!s§.§!e§;
   import §8!$§.§?p§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §]B§ extends §+!F§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §%!O§:Number = Math.PI * 2;
       
      
      private var §`"+§:Number;
      
      private var §=,§:Number;
      
      private var §0!i§:Number;
      
      private var §0r§:Number;
      
      private var §2!W§:Number;
      
      private var §!!t§:Number;
      
      private var §6§:Number = 0;
      
      private var §"k§:Number = 0;
      
      protected var §7!+§:§5"-§;
      
      protected var §0O§:Number = 0;
      
      protected var §=!v§:Number = 0;
      
      protected var §2!j§:Number = 0;
      
      public function §]B§(param1:Sprite, param2:b2World, param3:§!e§, param4:§5"-§)
      {
         this.§7!+§ = param4;
         super(param1,param2,param3);
         this.§!!t§ = this.§7!+§.angle;
         this.§0!i§ = this.§7!+§.angle;
         this.§0r§ = this.§7!+§.x / §=+§.§5!w§;
         this.§2!W§ = this.§7!+§.y / §=+§.§5!w§;
         this.§`"+§ = this.§7!+§.x / §=+§.§5!w§;
         this.§=,§ = this.§7!+§.y / §=+§.§5!w§;
      }
      
      public function get §+"$§() : §5"-§
      {
         return this.§7!+§;
      }
      
      public function §0!'§() : Number
      {
         return this.§0O§ * §=+§.§5!w§;
      }
      
      public function §9!g§() : Number
      {
         return this.§=!v§ * §=+§.§5!w§;
      }
      
      override public function update(param1:Number, param2:§8!m§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §-!N§().GetPosition().x;
         var _loc4_:Number = §-!N§().GetPosition().y;
         this.§2!g§(this.§0!i§);
         this.§0r§ = this.§`"+§;
         this.§2!W§ = this.§=,§;
         this.§0!i§ = §-!N§().GetAngle();
         this.§`"+§ = _loc3_ / §=+§.§5!w§;
         this.§=,§ = _loc4_ / §=+§.§5!w§;
      }
      
      protected function §2!g§(param1:Number) : void
      {
         this.§!!t§ = param1;
         this.§0!i§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§7^§(param2,param3);
      }
      
      protected function §7^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §?p§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§`"+§ == this.§0r§ || param2 == 0)
         {
            this.§6§ = 0;
            this.§0O§ = this.§`"+§;
         }
         else
         {
            this.§6§ = param2 * (this.§0r§ - this.§`"+§) / param1;
            this.§0O§ = this.§`"+§ + this.§6§;
         }
         if(this.§=,§ == this.§2!W§ || param2 == 0)
         {
            this.§"k§ = 0;
            this.§=!v§ = this.§=,§;
         }
         else
         {
            this.§"k§ = param2 * (this.§2!W§ - this.§=,§) / param1;
            this.§=!v§ = this.§=,§ + this.§"k§;
         }
         if(this.§0!i§ == this.§!!t§ || param2 == 0)
         {
            this.§2!j§ = this.§0!i§;
         }
         else
         {
            _loc3_ = this.§0!i§ - this.§!!t§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §%!O§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §%!O§;
            }
            this.§2!j§ = this.§!!t§ + (param1 - param2) / param1 * _loc3_;
            if(this.§2!j§ >= §%!O§)
            {
               this.§2!j§ -= §%!O§;
            }
            else if(this.§2!j§ < 0)
            {
               this.§2!j§ += §%!O§;
            }
         }
      }
   }
}

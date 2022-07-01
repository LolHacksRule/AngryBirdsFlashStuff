package §]!q§
{
   import §"I§.§=!U§;
   import §-!f§.Sprite;
   import §0I§.§!!p§;
   import §5!7§.§3!Y§;
   import §9"5§.b2World;
   
   public class § !D§ extends §;!4§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §8"1§:Number = Math.PI * 2;
       
      
      private var §9!G§:Number;
      
      private var § !e§:Number;
      
      private var §%!B§:Number;
      
      private var §<w§:Number;
      
      private var §^!F§:Number;
      
      private var §+!S§:Number;
      
      private var §2!N§:Number = 0.0;
      
      private var §+!x§:Number = 0;
      
      private var §`]§:Number = 0;
      
      protected var §0!'§:Number = 0;
      
      protected var §#<§:Number = 0;
      
      protected var §-!w§:Number = 0;
      
      public function § !D§(param1:Sprite, param2:b2World, param3:§3!Y§, param4:Number, param5:Number, param6:Number)
      {
         super(param1,param2,param3);
         this.§+!S§ = param6;
         this.§%!B§ = param6;
         this.§<w§ = param4 / §!!p§.§6L§;
         this.§^!F§ = param5 / §!!p§.§6L§;
         this.§9!G§ = param4 / §!!p§.§6L§;
         this.§ !e§ = param5 / §!!p§.§6L§;
      }
      
      public function get §?6§() : Number
      {
         return this.§2!N§;
      }
      
      public function §^!G§() : Number
      {
         return this.§0!'§ * §!!p§.§6L§;
      }
      
      public function §2"5§() : Number
      {
         return this.§#<§ * §!!p§.§6L§;
      }
      
      override public function update(param1:Number, param2:§5z§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §4!7§().GetPosition().x;
         var _loc4_:Number = §4!7§().GetPosition().y;
         this.§!!T§(this.§%!B§);
         this.§<w§ = this.§9!G§;
         this.§^!F§ = this.§ !e§;
         this.§%!B§ = §4!7§().GetAngle();
         this.§9!G§ = _loc3_ / §!!p§.§6L§;
         this.§ !e§ = _loc4_ / §!!p§.§6L§;
         this.§2!N§ += param1;
      }
      
      protected function §!!T§(param1:Number) : void
      {
         this.§+!S§ = param1;
         this.§%!B§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§&!^§(param2,param3);
      }
      
      protected function §&!^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §=!U§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§9!G§ == this.§<w§ || param2 == 0)
         {
            this.§+!x§ = 0;
            this.§0!'§ = this.§9!G§;
         }
         else
         {
            this.§+!x§ = param2 * (this.§<w§ - this.§9!G§) / param1;
            this.§0!'§ = this.§9!G§ + this.§+!x§;
         }
         if(this.§ !e§ == this.§^!F§ || param2 == 0)
         {
            this.§`]§ = 0;
            this.§#<§ = this.§ !e§;
         }
         else
         {
            this.§`]§ = param2 * (this.§^!F§ - this.§ !e§) / param1;
            this.§#<§ = this.§ !e§ + this.§`]§;
         }
         if(this.§%!B§ == this.§+!S§ || param2 == 0)
         {
            this.§-!w§ = this.§%!B§;
         }
         else
         {
            _loc3_ = this.§%!B§ - this.§+!S§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §8"1§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §8"1§;
            }
            this.§-!w§ = this.§+!S§ + (param1 - param2) / param1 * _loc3_;
            if(this.§-!w§ >= §8"1§)
            {
               this.§-!w§ -= §8"1§;
            }
            else if(this.§-!w§ < 0)
            {
               this.§-!w§ += §8"1§;
            }
         }
      }
   }
}

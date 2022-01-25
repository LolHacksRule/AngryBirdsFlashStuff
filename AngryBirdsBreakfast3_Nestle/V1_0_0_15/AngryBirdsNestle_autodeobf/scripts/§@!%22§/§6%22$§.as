package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §24§.;
   import §3!J§.Sprite;
   import §@V§.§#=§;
   
   public class §6"$§ extends §#!v§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §=!S§:Number = Math.PI * 2;
       
      
      private var §`!c§:Number;
      
      private var §>!7§:Number;
      
      private var §[!z§:Number;
      
      private var §9!R§:Number;
      
      private var §%!]§:Number;
      
      private var §3e§:Number;
      
      private var § !F§:Number = 0;
      
      private var §;F§:Number = 0;
      
      protected var § "8§:§,!A§;
      
      protected var §]!B§:Number = 0;
      
      protected var §9=§:Number = 0;
      
      protected var §0!-§:Number = 0;
      
      public function §6"$§(param1:Sprite, param2:b2World, param3:§@-§, param4:§,!A§)
      {
         this.§ "8§ = param4;
         super(param1,param2,param3);
         this.§3e§ = this.§ "8§.angle;
         this.§[!z§ = this.§ "8§.angle;
         this.§9!R§ = this.§ "8§.x / §#=§.§^!2§;
         this.§%!]§ = this.§ "8§.y / §#=§.§^!2§;
         this.§`!c§ = this.§ "8§.x / §#=§.§^!2§;
         this.§>!7§ = this.§ "8§.y / §#=§.§^!2§;
      }
      
      public function get §;"4§() : §,!A§
      {
         return this.§ "8§;
      }
      
      public function §!=§() : Number
      {
         return this.§]!B§ * §#=§.§^!2§;
      }
      
      public function §?!?§() : Number
      {
         return this.§9=§ * §#=§.§^!2§;
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §!!I§().GetPosition().x;
         var _loc4_:Number = §!!I§().GetPosition().y;
         this.§9N§(this.§[!z§);
         this.§9!R§ = this.§`!c§;
         this.§%!]§ = this.§>!7§;
         this.§[!z§ = §!!I§().GetAngle();
         this.§`!c§ = _loc3_ / §#=§.§^!2§;
         this.§>!7§ = _loc4_ / §#=§.§^!2§;
      }
      
      protected function §9N§(param1:Number) : void
      {
         this.§3e§ = param1;
         this.§[!z§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§]l§(param2,param3);
      }
      
      protected function §]l§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §#7§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§`!c§ == this.§9!R§ || param2 == 0)
         {
            this.§ !F§ = 0;
            this.§]!B§ = this.§`!c§;
         }
         else
         {
            this.§ !F§ = param2 * (this.§9!R§ - this.§`!c§) / param1;
            this.§]!B§ = this.§`!c§ + this.§ !F§;
         }
         if(this.§>!7§ == this.§%!]§ || param2 == 0)
         {
            this.§;F§ = 0;
            this.§9=§ = this.§>!7§;
         }
         else
         {
            this.§;F§ = param2 * (this.§%!]§ - this.§>!7§) / param1;
            this.§9=§ = this.§>!7§ + this.§;F§;
         }
         if(this.§[!z§ == this.§3e§ || param2 == 0)
         {
            this.§0!-§ = this.§[!z§;
         }
         else
         {
            _loc3_ = this.§[!z§ - this.§3e§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §=!S§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §=!S§;
            }
            this.§0!-§ = this.§3e§ + (param1 - param2) / param1 * _loc3_;
            if(this.§0!-§ >= §=!S§)
            {
               this.§0!-§ -= §=!S§;
            }
            else if(this.§0!-§ < 0)
            {
               this.§0!-§ += §=!S§;
            }
         }
      }
   }
}

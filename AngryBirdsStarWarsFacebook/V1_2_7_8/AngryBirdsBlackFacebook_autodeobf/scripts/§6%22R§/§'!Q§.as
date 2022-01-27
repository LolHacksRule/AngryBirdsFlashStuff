package §6"R§
{
   import §0"I§.§5!s§;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §4"F§.§^d§;
   import §5!q§.§3"X§;
   import §>P§.§=!,§;
   
   public class §'!Q§ extends §!z§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §0p§:Number = Math.PI * 2;
       
      
      private var §`"_§:Number;
      
      private var §%!o§:Number;
      
      private var §?"3§:Number;
      
      private var §`"P§:Number;
      
      private var §,O§:Number;
      
      private var §##5§:Number;
      
      private var §^D§:Number = 0;
      
      private var §71§:Number = 0;
      
      protected var §;W§:§^d§;
      
      protected var §]!_§:Number = 0;
      
      protected var §#j§:Number = 0;
      
      protected var § !r§:Number = 0;
      
      public function §'!Q§(param1:Sprite, param2:b2World, param3:§=!,§, param4:§^d§)
      {
         this.§;W§ = param4;
         super(param1,param2,param3);
         this.§##5§ = this.§;W§.angle;
         this.§?"3§ = this.§;W§.angle;
         this.§`"P§ = this.§;W§.x / §3"X§.§;"l§;
         this.§,O§ = this.§;W§.y / §3"X§.§;"l§;
         this.§`"_§ = this.§;W§.x / §3"X§.§;"l§;
         this.§%!o§ = this.§;W§.y / §3"X§.§;"l§;
      }
      
      public function get §8"J§() : §^d§
      {
         return this.§;W§;
      }
      
      public function §#"v§() : Number
      {
         return this.§]!_§ * §3"X§.§;"l§;
      }
      
      public function §2!;§() : Number
      {
         return this.§#j§ * §3"X§.§;"l§;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §?"Z§().GetPosition().x;
         var _loc4_:Number = §?"Z§().GetPosition().y;
         this.§!L§(this.§?"3§);
         this.§`"P§ = this.§`"_§;
         this.§,O§ = this.§%!o§;
         this.§?"3§ = §?"Z§().GetAngle();
         this.§`"_§ = _loc3_ / §3"X§.§;"l§;
         this.§%!o§ = _loc4_ / §3"X§.§;"l§;
      }
      
      protected function §!L§(param1:Number) : void
      {
         this.§##5§ = param1;
         this.§?"3§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§7#3§(param2,param3);
      }
      
      protected function §7#3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §5!s§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§`"_§ == this.§`"P§ || param2 == 0)
         {
            this.§^D§ = 0;
            this.§]!_§ = this.§`"_§;
         }
         else
         {
            this.§^D§ = param2 * (this.§`"P§ - this.§`"_§) / param1;
            this.§]!_§ = this.§`"_§ + this.§^D§;
         }
         if(this.§%!o§ == this.§,O§ || param2 == 0)
         {
            this.§71§ = 0;
            this.§#j§ = this.§%!o§;
         }
         else
         {
            this.§71§ = param2 * (this.§,O§ - this.§%!o§) / param1;
            this.§#j§ = this.§%!o§ + this.§71§;
         }
         if(this.§?"3§ == this.§##5§ || param2 == 0)
         {
            this.§ !r§ = this.§?"3§;
         }
         else
         {
            _loc3_ = this.§?"3§ - this.§##5§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §0p§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §0p§;
            }
            this.§ !r§ = this.§##5§ + (param1 - param2) / param1 * _loc3_;
            if(this.§ !r§ >= §0p§)
            {
               this.§ !r§ -= §0p§;
            }
            else if(this.§ !r§ < 0)
            {
               this.§ !r§ += §0p§;
            }
         }
      }
   }
}

package §"!-§
{
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §;'§.b2World;
   import §=!7§.§1!7§;
   import §@"1§.§"h§;
   
   public class §3"0§ extends §@!4§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §'1§:Number = Math.PI * 2;
       
      
      private var §5A§:Number;
      
      private var §08§:Number;
      
      private var §;^§:Number;
      
      private var §>@§:Number;
      
      private var §8""§:Number;
      
      private var §3_§:Number;
      
      private var §<4§:Number = 0.0;
      
      private var §&x§:Number = 0;
      
      private var §0o§:Number = 0;
      
      protected var §%!H§:Number = 0;
      
      protected var §^<§:Number = 0;
      
      protected var §#!C§:Number = 0;
      
      public function §3"0§(param1:Sprite, param2:b2World, param3:§>"4§, param4:Number, param5:Number, param6:Number)
      {
         super(param1,param2,param3);
         this.§3_§ = param6;
         this.§;^§ = param6;
         this.§>@§ = param4 / §"h§.§4<§;
         this.§8""§ = param5 / §"h§.§4<§;
         this.§5A§ = param4 / §"h§.§4<§;
         this.§08§ = param5 / §"h§.§4<§;
      }
      
      public function get §5!4§() : Number
      {
         return this.§<4§;
      }
      
      public function §@w§() : Number
      {
         return this.§%!H§ * §"h§.§4<§;
      }
      
      public function §4!Z§() : Number
      {
         return this.§^<§ * §"h§.§4<§;
      }
      
      override public function update(param1:Number, param2:§!l§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §9l§().GetPosition().x;
         var _loc4_:Number = §9l§().GetPosition().y;
         this.§<!j§(this.§;^§);
         this.§>@§ = this.§5A§;
         this.§8""§ = this.§08§;
         this.§;^§ = §9l§().GetAngle();
         this.§5A§ = _loc3_ / §"h§.§4<§;
         this.§08§ = _loc4_ / §"h§.§4<§;
         this.§<4§ += param1;
      }
      
      protected function §<!j§(param1:Number) : void
      {
         this.§3_§ = param1;
         this.§;^§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§0!K§(param2,param3);
      }
      
      protected function §0!K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §1!7§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§5A§ == this.§>@§ || param2 == 0)
         {
            this.§&x§ = 0;
            this.§%!H§ = this.§5A§;
         }
         else
         {
            this.§&x§ = param2 * (this.§>@§ - this.§5A§) / param1;
            this.§%!H§ = this.§5A§ + this.§&x§;
         }
         if(this.§08§ == this.§8""§ || param2 == 0)
         {
            this.§0o§ = 0;
            this.§^<§ = this.§08§;
         }
         else
         {
            this.§0o§ = param2 * (this.§8""§ - this.§08§) / param1;
            this.§^<§ = this.§08§ + this.§0o§;
         }
         if(this.§;^§ == this.§3_§ || param2 == 0)
         {
            this.§#!C§ = this.§;^§;
         }
         else
         {
            _loc3_ = this.§;^§ - this.§3_§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §'1§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §'1§;
            }
            this.§#!C§ = this.§3_§ + (param1 - param2) / param1 * _loc3_;
            if(this.§#!C§ >= §'1§)
            {
               this.§#!C§ -= §'1§;
            }
            else if(this.§#!C§ < 0)
            {
               this.§#!C§ += §'1§;
            }
         }
      }
   }
}

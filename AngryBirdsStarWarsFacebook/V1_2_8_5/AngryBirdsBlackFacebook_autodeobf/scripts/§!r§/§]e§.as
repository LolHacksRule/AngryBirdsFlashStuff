package §!r§
{
   import §"§.§;!E§;
   import §#g§.§["%§;
   import §9"`§.§-"H§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §]e§ extends §?!x§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §68§:Number = Math.PI * 2;
       
      
      private var §="E§:Number;
      
      private var §^"q§:Number;
      
      private var §&!=§:Number;
      
      private var §'!<§:Number;
      
      private var §?"=§:Number;
      
      private var §"r§:Number;
      
      private var §?!<§:Number = 0;
      
      private var §]k§:Number = 0;
      
      protected var §"C§:§9v§;
      
      protected var §0U§:Number = 0;
      
      protected var §3"[§:Number = 0;
      
      protected var §-T§:Number = 0;
      
      public function §]e§(param1:Sprite, param2:b2World, param3:§["%§, param4:§9v§)
      {
         this.§"C§ = param4;
         super(param1,param2,param3);
         this.§"r§ = this.§"C§.angle;
         this.§&!=§ = this.§"C§.angle;
         this.§'!<§ = this.§"C§.x / §;!E§.§0"?§;
         this.§?"=§ = this.§"C§.y / §;!E§.§0"?§;
         this.§="E§ = this.§"C§.x / §;!E§.§0"?§;
         this.§^"q§ = this.§"C§.y / §;!E§.§0"?§;
      }
      
      public function get §4##§() : §9v§
      {
         return this.§"C§;
      }
      
      public function §"!r§() : Number
      {
         return this.§0U§ * §;!E§.§0"?§;
      }
      
      public function §8#1§() : Number
      {
         return this.§3"[§ * §;!E§.§0"?§;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §3"s§().GetPosition().x;
         var _loc4_:Number = §3"s§().GetPosition().y;
         this.§'!G§(this.§&!=§);
         this.§'!<§ = this.§="E§;
         this.§?"=§ = this.§^"q§;
         this.§&!=§ = §3"s§().GetAngle();
         this.§="E§ = _loc3_ / §;!E§.§0"?§;
         this.§^"q§ = _loc4_ / §;!E§.§0"?§;
      }
      
      protected function §'!G§(param1:Number) : void
      {
         this.§"r§ = param1;
         this.§&!=§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§<>§(param2,param3);
      }
      
      protected function §<>§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §-"H§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§="E§ == this.§'!<§ || param2 == 0)
         {
            this.§?!<§ = 0;
            this.§0U§ = this.§="E§;
         }
         else
         {
            this.§?!<§ = param2 * (this.§'!<§ - this.§="E§) / param1;
            this.§0U§ = this.§="E§ + this.§?!<§;
         }
         if(this.§^"q§ == this.§?"=§ || param2 == 0)
         {
            this.§]k§ = 0;
            this.§3"[§ = this.§^"q§;
         }
         else
         {
            this.§]k§ = param2 * (this.§?"=§ - this.§^"q§) / param1;
            this.§3"[§ = this.§^"q§ + this.§]k§;
         }
         if(this.§&!=§ == this.§"r§ || param2 == 0)
         {
            this.§-T§ = this.§&!=§;
         }
         else
         {
            _loc3_ = this.§&!=§ - this.§"r§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §68§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §68§;
            }
            this.§-T§ = this.§"r§ + (param1 - param2) / param1 * _loc3_;
            if(this.§-T§ >= §68§)
            {
               this.§-T§ -= §68§;
            }
            else if(this.§-T§ < 0)
            {
               this.§-T§ += §68§;
            }
         }
      }
   }
}

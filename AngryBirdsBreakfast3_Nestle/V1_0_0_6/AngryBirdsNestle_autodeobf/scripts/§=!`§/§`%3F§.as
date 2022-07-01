package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §0!$§.§#!-§;
   import §]k§.§<S§;
   
   public class §`?§ extends §=6§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §>!B§:Number = Math.PI * 2;
       
      
      private var §,§:Number;
      
      private var §">§:Number;
      
      private var §!!Q§:Number;
      
      private var §]T§:Number;
      
      private var §;=§:Number;
      
      private var §@2§:Number;
      
      private var §'@§:Number = 0.0;
      
      private var §=!i§:Number = 0;
      
      private var §1+§:Number = 0;
      
      protected var §@S§:Number = 0;
      
      protected var §#B§:Number = 0;
      
      protected var §'j§:Number = 0;
      
      public function §`?§(param1:Sprite, param2:b2World, param3:§9!n§, param4:Number, param5:Number, param6:Number)
      {
         super(param1,param2,param3);
         this.§@2§ = param6;
         this.§!!Q§ = param6;
         this.§]T§ = param4 / §<S§.§;!Q§;
         this.§;=§ = param5 / §<S§.§;!Q§;
         this.§,§ = param4 / §<S§.§;!Q§;
         this.§">§ = param5 / §<S§.§;!Q§;
      }
      
      public function get §&"4§() : Number
      {
         return this.§'@§;
      }
      
      public function §[!2§() : Number
      {
         return this.§@S§ * §<S§.§;!Q§;
      }
      
      public function §]7§() : Number
      {
         return this.§#B§ * §<S§.§;!Q§;
      }
      
      override public function update(param1:Number, param2:§'`§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §^",§().GetPosition().x;
         var _loc4_:Number = §^",§().GetPosition().y;
         this.§0_§(this.§!!Q§);
         this.§]T§ = this.§,§;
         this.§;=§ = this.§">§;
         this.§!!Q§ = §^",§().GetAngle();
         this.§,§ = _loc3_ / §<S§.§;!Q§;
         this.§">§ = _loc4_ / §<S§.§;!Q§;
         this.§'@§ += param1;
      }
      
      protected function §0_§(param1:Number) : void
      {
         this.§@2§ = param1;
         this.§!!Q§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§!!;§(param2,param3);
      }
      
      protected function §!!;§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §#!-§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§,§ == this.§]T§ || param2 == 0)
         {
            this.§=!i§ = 0;
            this.§@S§ = this.§,§;
         }
         else
         {
            this.§=!i§ = param2 * (this.§]T§ - this.§,§) / param1;
            this.§@S§ = this.§,§ + this.§=!i§;
         }
         if(this.§">§ == this.§;=§ || param2 == 0)
         {
            this.§1+§ = 0;
            this.§#B§ = this.§">§;
         }
         else
         {
            this.§1+§ = param2 * (this.§;=§ - this.§">§) / param1;
            this.§#B§ = this.§">§ + this.§1+§;
         }
         if(this.§!!Q§ == this.§@2§ || param2 == 0)
         {
            this.§'j§ = this.§!!Q§;
         }
         else
         {
            _loc3_ = this.§!!Q§ - this.§@2§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §>!B§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §>!B§;
            }
            this.§'j§ = this.§@2§ + (param1 - param2) / param1 * _loc3_;
            if(this.§'j§ >= §>!B§)
            {
               this.§'j§ -= §>!B§;
            }
            else if(this.§'j§ < 0)
            {
               this.§'j§ += §>!B§;
            }
         }
      }
   }
}

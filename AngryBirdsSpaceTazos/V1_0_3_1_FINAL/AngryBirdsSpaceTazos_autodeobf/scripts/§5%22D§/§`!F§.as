package §5"D§
{
   import §3R§.§1!R§;
   import §4"@§.Sprite;
   import §6!C§.§6E§;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   
   public class §`!F§ extends §>q§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §#"<§:Number = Math.PI * 2;
       
      
      private var §+!w§:Number;
      
      private var §<"2§:Number;
      
      private var §-!;§:Number;
      
      private var §8"@§:Number;
      
      private var §<F§:Number;
      
      private var §7"§:Number;
      
      private var §%!7§:Number = 0.0;
      
      private var §2"0§:Number = 0;
      
      private var §@U§:Number = 0;
      
      protected var §1!`§:Number = 0;
      
      protected var §<2§:Number = 0;
      
      protected var §4X§:Number = 0;
      
      public function §`!F§(param1:Sprite, param2:b2World, param3:§<!r§, param4:Number, param5:Number, param6:Number)
      {
         super(param1,param2,param3);
         this.§7"§ = param6;
         this.§-!;§ = param6;
         this.§8"@§ = param4 / §1!R§.§00§;
         this.§<F§ = param5 / §1!R§.§00§;
         this.§+!w§ = param4 / §1!R§.§00§;
         this.§<"2§ = param5 / §1!R§.§00§;
      }
      
      public function get §7J§() : Number
      {
         return this.§%!7§;
      }
      
      public function §!U§() : Number
      {
         return this.§1!`§ * §1!R§.§00§;
      }
      
      public function §%""§() : Number
      {
         return this.§<2§ * §1!R§.§00§;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §9B§().GetPosition().x;
         var _loc4_:Number = §9B§().GetPosition().y;
         this.§`m§(this.§-!;§);
         this.§8"@§ = this.§+!w§;
         this.§<F§ = this.§<"2§;
         this.§-!;§ = §9B§().GetAngle();
         this.§+!w§ = _loc3_ / §1!R§.§00§;
         this.§<"2§ = _loc4_ / §1!R§.§00§;
         this.§%!7§ += param1;
      }
      
      protected function §`m§(param1:Number) : void
      {
         this.§7"§ = param1;
         this.§-!;§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§"r§(param2,param3);
      }
      
      protected function §"r§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §6E§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§+!w§ == this.§8"@§ || param2 == 0)
         {
            this.§2"0§ = 0;
            this.§1!`§ = this.§+!w§;
         }
         else
         {
            this.§2"0§ = param2 * (this.§8"@§ - this.§+!w§) / param1;
            this.§1!`§ = this.§+!w§ + this.§2"0§;
         }
         if(this.§<"2§ == this.§<F§ || param2 == 0)
         {
            this.§@U§ = 0;
            this.§<2§ = this.§<"2§;
         }
         else
         {
            this.§@U§ = param2 * (this.§<F§ - this.§<"2§) / param1;
            this.§<2§ = this.§<"2§ + this.§@U§;
         }
         if(this.§-!;§ == this.§7"§ || param2 == 0)
         {
            this.§4X§ = this.§-!;§;
         }
         else
         {
            _loc3_ = this.§-!;§ - this.§7"§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §#"<§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §#"<§;
            }
            this.§4X§ = this.§7"§ + (param1 - param2) / param1 * _loc3_;
            if(this.§4X§ >= §#"<§)
            {
               this.§4X§ -= §#"<§;
            }
            else if(this.§4X§ < 0)
            {
               this.§4X§ += §#"<§;
            }
         }
      }
   }
}

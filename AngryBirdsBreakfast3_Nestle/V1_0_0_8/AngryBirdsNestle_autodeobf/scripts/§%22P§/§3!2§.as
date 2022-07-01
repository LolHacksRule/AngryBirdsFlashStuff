package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §9G§.§2F§;
   import §;4§.§]!%§;
   import §=!c§.b2World;
   
   public class §3!2§ extends §,Y§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §6!y§:Number = Math.PI * 2;
       
      
      private var § ![§:Number;
      
      private var §-,§:Number;
      
      private var §&!1§:Number;
      
      private var §81§:Number;
      
      private var §=!H§:Number;
      
      private var §-;§:Number;
      
      private var §1u§:Number = 0.0;
      
      private var §]Z§:Number = 0;
      
      private var §4"&§:Number = 0;
      
      protected var §!!6§:§#,§;
      
      protected var §@!-§:Number = 0;
      
      protected var §'!0§:Number = 0;
      
      protected var §4D§:Number = 0;
      
      public function §3!2§(param1:Sprite, param2:b2World, param3:§!o§, param4:§#,§)
      {
         this.§!!6§ = param4;
         super(param1,param2,param3);
         this.§-;§ = this.§!!6§.angle;
         this.§&!1§ = this.§!!6§.angle;
         this.§81§ = this.§!!6§.x / §2F§.§6+§;
         this.§=!H§ = this.§!!6§.y / §2F§.§6+§;
         this.§ ![§ = this.§!!6§.x / §2F§.§6+§;
         this.§-,§ = this.§!!6§.y / §2F§.§6+§;
      }
      
      public function get § +§() : Number
      {
         return this.§1u§;
      }
      
      public function get §7"%§() : §#,§
      {
         return this.§!!6§;
      }
      
      public function §+j§() : Number
      {
         return this.§@!-§ * §2F§.§6+§;
      }
      
      public function §"[§() : Number
      {
         return this.§'!0§ * §2F§.§6+§;
      }
      
      override public function update(param1:Number, param2:§0w§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §7J§().GetPosition().x;
         var _loc4_:Number = §7J§().GetPosition().y;
         this.§@§(this.§&!1§);
         this.§81§ = this.§ ![§;
         this.§=!H§ = this.§-,§;
         this.§&!1§ = §7J§().GetAngle();
         this.§ ![§ = _loc3_ / §2F§.§6+§;
         this.§-,§ = _loc4_ / §2F§.§6+§;
         this.§1u§ += param1;
      }
      
      protected function §@§(param1:Number) : void
      {
         this.§-;§ = param1;
         this.§&!1§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§!!8§(param2,param3);
      }
      
      protected function §!!8§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §]!%§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§ ![§ == this.§81§ || param2 == 0)
         {
            this.§]Z§ = 0;
            this.§@!-§ = this.§ ![§;
         }
         else
         {
            this.§]Z§ = param2 * (this.§81§ - this.§ ![§) / param1;
            this.§@!-§ = this.§ ![§ + this.§]Z§;
         }
         if(this.§-,§ == this.§=!H§ || param2 == 0)
         {
            this.§4"&§ = 0;
            this.§'!0§ = this.§-,§;
         }
         else
         {
            this.§4"&§ = param2 * (this.§=!H§ - this.§-,§) / param1;
            this.§'!0§ = this.§-,§ + this.§4"&§;
         }
         if(this.§&!1§ == this.§-;§ || param2 == 0)
         {
            this.§4D§ = this.§&!1§;
         }
         else
         {
            _loc3_ = this.§&!1§ - this.§-;§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §6!y§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §6!y§;
            }
            this.§4D§ = this.§-;§ + (param1 - param2) / param1 * _loc3_;
            if(this.§4D§ >= §6!y§)
            {
               this.§4D§ -= §6!y§;
            }
            else if(this.§4D§ < 0)
            {
               this.§4D§ += §6!y§;
            }
         }
      }
   }
}

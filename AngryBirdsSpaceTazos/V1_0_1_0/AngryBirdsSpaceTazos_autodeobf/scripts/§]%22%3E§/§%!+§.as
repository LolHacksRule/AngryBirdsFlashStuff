package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §0N§.§2!@§;
   import §7!8§.Sprite;
   
   public class §%!+§ extends §<!=§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §;!X§:Number = Math.PI * 2;
       
      
      private var §3!%§:Number;
      
      private var §+"9§:Number;
      
      private var §^"%§:Number;
      
      private var §=!i§:Number;
      
      private var §7!u§:Number;
      
      private var §<A§:Number;
      
      private var §9S§:Number = 0.0;
      
      private var §<!i§:Number = 0;
      
      private var §-!1§:Number = 0;
      
      protected var §""4§:Number = 0;
      
      protected var §%W§:Number = 0;
      
      protected var §1"3§:Number = 0;
      
      public function §%!+§(param1:Sprite, param2:b2World, param3:§8X§, param4:Number, param5:Number, param6:Number)
      {
         super(param1,param2,param3);
         this.§<A§ = param6;
         this.§^"%§ = param6;
         this.§=!i§ = param4 / §^g§.§5!-§;
         this.§7!u§ = param5 / §^g§.§5!-§;
         this.§3!%§ = param4 / §^g§.§5!-§;
         this.§+"9§ = param5 / §^g§.§5!-§;
      }
      
      public function get §=!c§() : Number
      {
         return this.§9S§;
      }
      
      public function §]!>§() : Number
      {
         return this.§""4§ * §^g§.§5!-§;
      }
      
      public function §!"1§() : Number
      {
         return this.§%W§ * §^g§.§5!-§;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §^!z§().GetPosition().x;
         var _loc4_:Number = §^!z§().GetPosition().y;
         this.§#!T§(this.§^"%§);
         this.§=!i§ = this.§3!%§;
         this.§7!u§ = this.§+"9§;
         this.§^"%§ = §^!z§().GetAngle();
         this.§3!%§ = _loc3_ / §^g§.§5!-§;
         this.§+"9§ = _loc4_ / §^g§.§5!-§;
         this.§9S§ += param1;
      }
      
      protected function §#!T§(param1:Number) : void
      {
         this.§<A§ = param1;
         this.§^"%§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§ Y§(param2,param3);
      }
      
      protected function § Y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §2!@§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§3!%§ == this.§=!i§ || param2 == 0)
         {
            this.§<!i§ = 0;
            this.§""4§ = this.§3!%§;
         }
         else
         {
            this.§<!i§ = param2 * (this.§=!i§ - this.§3!%§) / param1;
            this.§""4§ = this.§3!%§ + this.§<!i§;
         }
         if(this.§+"9§ == this.§7!u§ || param2 == 0)
         {
            this.§-!1§ = 0;
            this.§%W§ = this.§+"9§;
         }
         else
         {
            this.§-!1§ = param2 * (this.§7!u§ - this.§+"9§) / param1;
            this.§%W§ = this.§+"9§ + this.§-!1§;
         }
         if(this.§^"%§ == this.§<A§ || param2 == 0)
         {
            this.§1"3§ = this.§^"%§;
         }
         else
         {
            _loc3_ = this.§^"%§ - this.§<A§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §;!X§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §;!X§;
            }
            this.§1"3§ = this.§<A§ + (param1 - param2) / param1 * _loc3_;
            if(this.§1"3§ >= §;!X§)
            {
               this.§1"3§ -= §;!X§;
            }
            else if(this.§1"3§ < 0)
            {
               this.§1"3§ += §;!X§;
            }
         }
      }
   }
}

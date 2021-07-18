package §,z§
{
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   import §@L§.§?!'§;
   import each.§!!'§;
   
   public class §?!;§ extends §<!r§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §0!h§:Number = Math.PI * 2;
       
      
      private var §3§:Number;
      
      private var §8!Y§:Number;
      
      private var §6X§:Number;
      
      private var §1!7§:Number;
      
      private var §1!S§:Number;
      
      private var §^!M§:Number;
      
      private var §!L§:Number = 0.0;
      
      private var §82§:Number = 0;
      
      private var §7!^§:Number = 0;
      
      protected var §-!k§:§8K§;
      
      protected var §%!3§:Number = 0;
      
      protected var §?!e§:Number = 0;
      
      protected var §!&§:Number = 0;
      
      public function §?!;§(param1:Sprite, param2:b2World, param3:§9B§, param4:§8K§)
      {
         this.§-!k§ = param4;
         super(param1,param2,param3);
         this.§^!M§ = this.§-!k§.angle;
         this.§6X§ = this.§-!k§.angle;
         this.§1!7§ = this.§-!k§.x / §?!'§.§'!i§;
         this.§1!S§ = this.§-!k§.y / §?!'§.§'!i§;
         this.§3§ = this.§-!k§.x / §?!'§.§'!i§;
         this.§8!Y§ = this.§-!k§.y / §?!'§.§'!i§;
      }
      
      public function get §<E§() : Number
      {
         return this.§!L§;
      }
      
      public function get §;"!§() : §8K§
      {
         return this.§-!k§;
      }
      
      public function §2F§() : Number
      {
         return this.§%!3§ * §?!'§.§'!i§;
      }
      
      public function §&!s§() : Number
      {
         return this.§?!e§ * §?!'§.§'!i§;
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §^`§().GetPosition().x;
         var _loc4_:Number = §^`§().GetPosition().y;
         this.§8&§(this.§6X§);
         this.§1!7§ = this.§3§;
         this.§1!S§ = this.§8!Y§;
         this.§6X§ = §^`§().GetAngle();
         this.§3§ = _loc3_ / §?!'§.§'!i§;
         this.§8!Y§ = _loc4_ / §?!'§.§'!i§;
         this.§!L§ += param1;
      }
      
      protected function §8&§(param1:Number) : void
      {
         this.§^!M§ = param1;
         this.§6X§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§1!x§(param2,param3);
      }
      
      protected function §1!x§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §!!'§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§3§ == this.§1!7§ || param2 == 0)
         {
            this.§82§ = 0;
            this.§%!3§ = this.§3§;
         }
         else
         {
            this.§82§ = param2 * (this.§1!7§ - this.§3§) / param1;
            this.§%!3§ = this.§3§ + this.§82§;
         }
         if(this.§8!Y§ == this.§1!S§ || param2 == 0)
         {
            this.§7!^§ = 0;
            this.§?!e§ = this.§8!Y§;
         }
         else
         {
            this.§7!^§ = param2 * (this.§1!S§ - this.§8!Y§) / param1;
            this.§?!e§ = this.§8!Y§ + this.§7!^§;
         }
         if(this.§6X§ == this.§^!M§ || param2 == 0)
         {
            this.§!&§ = this.§6X§;
         }
         else
         {
            _loc3_ = this.§6X§ - this.§^!M§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §0!h§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §0!h§;
            }
            this.§!&§ = this.§^!M§ + (param1 - param2) / param1 * _loc3_;
            if(this.§!&§ >= §0!h§)
            {
               this.§!&§ -= §0!h§;
            }
            else if(this.§!&§ < 0)
            {
               this.§!&§ += §0!h§;
            }
         }
      }
   }
}

package §[#a§
{
   import §!x§.§4"d§;
   import §,#L§.§!#%§;
   import §52§.§#!,§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §`#C§.§8K§;
   
   public class §'?§ extends §<"H§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §0!§:Number = Math.PI * 2;
       
      
      private var §4"W§:Number;
      
      private var §+@§:Number;
      
      private var §`#t§:Number;
      
      private var §!#E§:Number;
      
      private var §;#g§:Number;
      
      private var §3!1§:Number;
      
      private var §3#c§:Number = 0;
      
      private var §1"7§:Number = 0;
      
      protected var §!P§:§!#%§;
      
      protected var §+!5§:Number = 0;
      
      protected var §'! §:Number = 0;
      
      protected var §%##§:Number = 0;
      
      public function §'?§(param1:Sprite, param2:b2World, param3:§8K§, param4:§!#%§)
      {
         this.§!P§ = param4;
         super(param1,param2,param3);
         this.§3!1§ = this.§!P§.angle;
         this.§`#t§ = this.§!P§.angle;
         this.§!#E§ = this.§!P§.x / §#!,§.§?$#§;
         this.§;#g§ = this.§!P§.y / §#!,§.§?$#§;
         this.§4"W§ = this.§!P§.x / §#!,§.§?$#§;
         this.§+@§ = this.§!P§.y / §#!,§.§?$#§;
         if(this.§!P§.z != §="@§.§-!C§)
         {
            §+"I§(this.§!P§.z);
         }
      }
      
      public function get §&,§() : §!#%§
      {
         return this.§!P§;
      }
      
      public function §?#j§() : Number
      {
         return this.§+!5§ * §#!,§.§?$#§;
      }
      
      public function §;#S§() : Number
      {
         return this.§'! § * §#!,§.§?$#§;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         this.§3!>§(this.§`#t§);
         this.§!#E§ = this.§4"W§;
         this.§;#g§ = this.§+@§;
         this.§`#t§ = getBody().GetAngle();
         this.§4"W§ = _loc3_ / §#!,§.§?$#§;
         this.§+@§ = _loc4_ / §#!,§.§?$#§;
      }
      
      protected function §3!>§(param1:Number) : void
      {
         this.§3!1§ = param1;
         this.§`#t§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§;!2§(param2,param3);
      }
      
      protected function §;!2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §4"d§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§4"W§ == this.§!#E§ || param2 == 0)
         {
            this.§3#c§ = 0;
            this.§+!5§ = this.§4"W§;
         }
         else
         {
            this.§3#c§ = param2 * (this.§!#E§ - this.§4"W§) / param1;
            this.§+!5§ = this.§4"W§ + this.§3#c§;
         }
         if(this.§+@§ == this.§;#g§ || param2 == 0)
         {
            this.§1"7§ = 0;
            this.§'! § = this.§+@§;
         }
         else
         {
            this.§1"7§ = param2 * (this.§;#g§ - this.§+@§) / param1;
            this.§'! § = this.§+@§ + this.§1"7§;
         }
         if(this.§`#t§ == this.§3!1§ || param2 == 0)
         {
            this.§%##§ = this.§`#t§;
         }
         else
         {
            _loc3_ = this.§`#t§ - this.§3!1§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §0!§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §0!§;
            }
            this.§%##§ = this.§3!1§ + (param1 - param2) / param1 * _loc3_;
            if(this.§%##§ >= §0!§)
            {
               this.§%##§ -= §0!§;
            }
            else if(this.§%##§ < 0)
            {
               this.§%##§ += §0!§;
            }
         }
      }
   }
}

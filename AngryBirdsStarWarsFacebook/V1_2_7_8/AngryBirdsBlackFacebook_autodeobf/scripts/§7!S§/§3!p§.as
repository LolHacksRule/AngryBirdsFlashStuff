package §7!S§
{
   import §+"f§.§'!5§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §3"$§.§]!h§;
   import §5!q§.§3"X§;
   import flash.geom.Rectangle;
   
   public class §3!p§ extends §@=§
   {
       
      
      protected var §7u§:Number = 1.0;
      
      protected var §&"w§:Number = 1.0;
      
      protected var §2!=§:Number = 1.0;
      
      protected var §<"u§:Number = 1.0;
      
      protected var §[!c§:Number = 0.0;
      
      protected var §<"e§:Number = 0.0;
      
      protected var §>%§:Number = 0.0;
      
      protected var §;!g§:Number = 0.0;
      
      protected var §42§:Boolean = false;
      
      protected var §#7§:Number = 0.0;
      
      protected var §]!R§:Number = 0.0;
      
      protected var §0W§:Number = 0.0;
      
      public function §3!p§(param1:§'!5§, param2:Sprite, param3:§&"0§, param4:Number)
      {
         this.§7u§ = param1.§]!N§;
         this.§&"w§ = param1.§&"x§;
         this.§2!=§ = param1.§-!8§;
         this.§<"u§ = param1.scaleSpeed;
         this.§[!c§ = param1.velocityX;
         this.§<"e§ = param1.velocityY;
         super(param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §5!3§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§<"u§;
         var _loc4_:Number = §"r§ + _loc3_;
         var _loc5_:int = 0;
         if(this.§[!c§ != 0)
         {
            _loc5_ = 1;
         }
         if(§%"7§)
         {
            _loc5_++;
         }
         return (Math.ceil(§3"X§.§6"t§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §`y§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§42§)
         {
            this.§42§ = true;
            this.§#7§ = param1;
            this.§]!R§ = param2;
            this.§0W§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§`y§(param1,param2,param3);
         if(!§%"7§)
         {
            this.§^"0§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§1N§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §^"0§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§0W§) + this.zDistance) * this.§<"u§;
         var _loc8_:Number = §"r§ + _loc7_;
         § "6§.scaleX = _loc8_ / param1;
         § "6§.scaleY = _loc8_ / param1;
         param2 -= this.§#7§;
         param3 -= this.§]!R§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§^"t§ * (§"r§ + _loc7_ * 2) + 0 * (§"r§ + _loc7_) * 2;
         var _loc12_:Number = §`!y§ * (§"r§ + _loc7_ * 2) + 0 * (§"r§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§7u§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§&"w§) * 0.5 / _loc8_;
         § "6§.x = (_loc14_ * §"r§ + §5!5§ * param4) / param1;
         § "6§.y = (_loc15_ * §"r§ + §,"j§ * param5) / param1;
         § "6§.pivotX = -§?d§ + this.§>%§;
         § "6§.pivotY = -§@!p§ + this.§;!g§;
      }
      
      private function §1N§(param1:Number, param2:Number, param3:Number) : void
      {
         § "6§.scaleX = §"r§;
         § "6§.scaleY = §"r§;
         param1 -= this.§#7§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §5!Z§ / 2 * §"r§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §?d§;
         var _loc8_:Number = _loc6_ - §@!p§;
         § "6§.x = _loc7_;
         § "6§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§]!h§) : void
      {
         §@!p§ = param1.pivotY;
         §?d§ = param1.pivotX;
         §`!y§ = param1.height;
         §^"t§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§8!V§;
         §@!p§ = 0;
         if(§%"7§)
         {
            §?d§ = -_loc2_.left;
         }
         else
         {
            §?d§ = 0;
         }
         §`!y§ = _loc2_.height;
         §^"t§ = _loc2_.width;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§[!c§ != 0)
         {
            this.§>%§ += this.§[!c§ * param1 / 1000;
            while(this.§>%§ < -§5!Z§)
            {
               this.§>%§ += §5!Z§;
            }
            while(this.§>%§ > §5!Z§)
            {
               this.§>%§ -= §5!Z§;
            }
         }
      }
   }
}

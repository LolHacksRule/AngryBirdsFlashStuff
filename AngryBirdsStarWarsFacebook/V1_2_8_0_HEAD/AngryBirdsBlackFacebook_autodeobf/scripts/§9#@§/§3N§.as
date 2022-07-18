package §9#@§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §69§.§'U§;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §^#>§.§#_§;
   import flash.geom.Rectangle;
   
   public class §3N§ extends §2"A§
   {
       
      
      protected var §[!r§:Number = 1.0;
      
      protected var §<#H§:Number = 1.0;
      
      protected var §3c§:Number = 1.0;
      
      protected var §^#8§:Number = 1.0;
      
      protected var §7!8§:Number = 0.0;
      
      protected var §0!Y§:Number = 0.0;
      
      protected var §3#,§:Number = 0.0;
      
      protected var §&P§:Number = 0.0;
      
      protected var §8!j§:Boolean = false;
      
      protected var §0"w§:Number = 0.0;
      
      protected var §'"J§:Number = 0.0;
      
      protected var §?3§:Number = 0.0;
      
      public function §3N§(param1:§'U§, param2:Sprite, param3:§7#5§, param4:Number)
      {
         this.§[!r§ = param1.§@"V§;
         this.§<#H§ = param1.§="1§;
         this.§3c§ = param1.§0H§;
         this.§^#8§ = param1.scaleSpeed;
         this.§7!8§ = param1.velocityX;
         this.§0!Y§ = param1.velocityY;
         super(param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §6Y§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§^#8§;
         var _loc4_:Number = §8"2§ + _loc3_;
         var _loc5_:int = 0;
         if(this.§7!8§ != 0)
         {
            _loc5_ = 1;
         }
         if(§;&§)
         {
            _loc5_++;
         }
         return (Math.ceil(§#_§.§]#Q§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §'2§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§8!j§)
         {
            this.§8!j§ = true;
            this.§0"w§ = param1;
            this.§'"J§ = param2;
            this.§?3§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§'2§(param1,param2,param3);
         if(!§;&§)
         {
            this.§%"^§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§>"c§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §%"^§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§?3§) + this.zDistance) * this.§^#8§;
         var _loc8_:Number = §8"2§ + _loc7_;
         §%G§.scaleX = _loc8_ / param1;
         §%G§.scaleY = _loc8_ / param1;
         param2 -= this.§0"w§;
         param3 -= this.§'"J§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§6"?§ * (§8"2§ + _loc7_ * 2) + 0 * (§8"2§ + _loc7_) * 2;
         var _loc12_:Number = §[!4§ * (§8"2§ + _loc7_ * 2) + 0 * (§8"2§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§[!r§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§<#H§) * 0.5 / _loc8_;
         §%G§.x = (_loc14_ * §8"2§ + §2x§ * param4) / param1;
         §%G§.y = (_loc15_ * §8"2§ + §+"v§ * param5) / param1;
         §%G§.pivotX = -§%!<§ + this.§3#,§;
         §%G§.pivotY = -§=!C§ + this.§&P§;
      }
      
      private function §>"c§(param1:Number, param2:Number, param3:Number) : void
      {
         §%G§.scaleX = §8"2§;
         §%G§.scaleY = §8"2§;
         param1 -= this.§0"w§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §,,§ / 2 * §8"2§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §%!<§;
         var _loc8_:Number = _loc6_ - §=!C§;
         §%G§.x = _loc7_;
         §%G§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§8!W§) : void
      {
         §=!C§ = param1.pivotY;
         §%!<§ = param1.pivotX;
         §[!4§ = param1.height;
         §6"?§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§@"&§;
         §=!C§ = 0;
         if(§;&§)
         {
            §%!<§ = -_loc2_.left;
         }
         else
         {
            §%!<§ = 0;
         }
         §[!4§ = _loc2_.height;
         §6"?§ = _loc2_.width;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§7!8§ != 0)
         {
            this.§3#,§ += this.§7!8§ * param1 / 1000;
            while(this.§3#,§ < -§,,§)
            {
               this.§3#,§ += §,,§;
            }
            while(this.§3#,§ > §,,§)
            {
               this.§3#,§ -= §,,§;
            }
         }
      }
   }
}

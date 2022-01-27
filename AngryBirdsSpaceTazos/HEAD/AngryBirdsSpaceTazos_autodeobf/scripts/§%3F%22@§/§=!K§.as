package §?"@§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §3"#§.§`"8§;
   import §9!v§.§"[§;
   import §9!v§.§6a§;
   import §;"0§.§0!2§;
   import flash.geom.Rectangle;
   
   public class §=!K§ extends §+;§
   {
       
      
      protected var §9!`§:Number = 1.0;
      
      protected var §`#§:Number = 1.0;
      
      protected var §-I§:Number = 1.0;
      
      protected var §4!U§:Number = 1.0;
      
      protected var §%§:Boolean = false;
      
      protected var §&!'§:Number = 0.0;
      
      protected var §8!^§:Number = 0.0;
      
      protected var §39§:Number = 0.0;
      
      public function §=!K§(param1:§0!2§, param2:Sprite, param3:§6a§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§9!`§ = param1.§"i§;
         this.§`#§ = param1.§%!1§;
         this.§-I§ = param1.§ set§;
         this.§4!U§ = param1.scaleSpeed;
      }
      
      public function get zDistance() : Number
      {
         return §#!@§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§4!U§;
         var _loc4_:Number = §&!A§ + _loc3_;
         return Math.ceil(§`"8§.§3q§ / (param2 * _loc4_)) * 2;
      }
      
      public function §>Y§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§%§)
         {
            this.§%§ = true;
            this.§&!'§ = param1;
            this.§8!^§ = param2;
            this.§39§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§>Y§(param1,param2,param3);
         if(!§@P§)
         {
            this.§8!T§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§?!W§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §8!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§39§) + this.zDistance) * this.§4!U§;
         var _loc8_:Number = §&!A§ + _loc7_;
         §5"'§.scaleX = _loc8_ / param1;
         §5"'§.scaleY = _loc8_ / param1;
         param2 -= this.§&!'§;
         param3 -= this.§8!^§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§]!d§ * (§&!A§ + _loc7_ * 2) + 0 * (§&!A§ + _loc7_) * 2;
         var _loc12_:Number = §!"-§ * (§&!A§ + _loc7_ * 2) + 0 * (§&!A§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = ((_loc11_ - _loc9_ * this.§9!`§) * 0.5 + §0!3§ * param4) / _loc8_;
         var _loc15_:Number = ((_loc12_ - _loc10_ * this.§`#§) * 0.5 + §"T§ * param5) / _loc8_;
         §5"'§.x = _loc14_ / param1 * §&!A§;
         §5"'§.y = _loc15_ / param1 * §&!A§;
         §5"'§.pivotX = -§;;§;
         §5"'§.pivotY = -§6"C§;
      }
      
      private function §?!W§(param1:Number, param2:Number, param3:Number) : void
      {
         §5"'§.scaleX = §&!A§;
         §5"'§.scaleY = §&!A§;
         param1 -= this.§&!'§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §-!@§ / 2 * §&!A§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §;;§;
         var _loc8_:Number = _loc6_ - §6"C§;
         §5"'§.x = _loc7_;
         §5"'§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§"[§) : void
      {
         §6"C§ = param1.pivotY;
         §;;§ = param1.pivotX;
         §!"-§ = param1.height;
         §]!d§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§#!A§;
         §6"C§ = 0;
         if(§@P§)
         {
            §;;§ = -_loc2_.left;
         }
         else
         {
            §;;§ = 0;
         }
         §!"-§ = _loc2_.height;
         §]!d§ = _loc2_.width;
      }
   }
}

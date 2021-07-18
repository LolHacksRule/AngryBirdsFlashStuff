package §<!o§
{
   import §'4§.§^g§;
   import §+!a§.§>8§;
   import §4&§.§'!"§;
   import §4&§.§,C§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import flash.geom.Rectangle;
   
   public class §[4§ extends §!!q§
   {
       
      
      protected var §12§:Number = 1.0;
      
      protected var §>!<§:Number = 1.0;
      
      protected var §="#§:Number = 1.0;
      
      protected var § do§:Number = 1.0;
      
      protected var §&l§:Boolean = false;
      
      protected var §4!n§:Number = 0.0;
      
      protected var §5q§:Number = 0.0;
      
      protected var §8!>§:Number = 0.0;
      
      public function §[4§(param1:§>8§, param2:Sprite, param3:§,C§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§12§ = param1.§>>§;
         this.§>!<§ = param1.§[!&§;
         this.§="#§ = param1.§9"-§;
         this.§ do§ = param1.scaleSpeed;
      }
      
      public function get zDistance() : Number
      {
         return §"!P§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§ do§;
         var _loc4_:Number = §=T§ + _loc3_;
         return Math.ceil(§^g§.§6!9§ / (param2 * _loc4_)) * 2;
      }
      
      public function §+8§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§&l§)
         {
            this.§&l§ = true;
            this.§4!n§ = param1;
            this.§5q§ = param2;
            this.§8!>§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§+8§(param1,param2,param3);
         if(!§2a§)
         {
            this.§%!w§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§7"<§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §%!w§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§8!>§) + this.zDistance) * this.§ do§;
         var _loc8_:Number = §=T§ + _loc7_;
         §]!$§.scaleX = _loc8_ / param1;
         §]!$§.scaleY = _loc8_ / param1;
         param2 -= this.§4!n§;
         param3 -= this.§5q§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§<!f§ * (§=T§ + _loc7_ * 2) + 0 * (§=T§ + _loc7_) * 2;
         var _loc12_:Number = §8>§ * (§=T§ + _loc7_ * 2) + 0 * (§=T§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = ((_loc11_ - _loc9_ * this.§12§) * 0.5 + §@f§ * param4) / _loc8_;
         var _loc15_:Number = ((_loc12_ - _loc10_ * this.§>!<§) * 0.5 + §9r§ * param5) / _loc8_;
         §]!$§.x = _loc14_ / param1 * §=T§;
         §]!$§.y = _loc15_ / param1 * §=T§;
         §]!$§.pivotX = -§;o§;
         §]!$§.pivotY = -§+!H§;
      }
      
      private function §7"<§(param1:Number, param2:Number, param3:Number) : void
      {
         §]!$§.scaleX = §=T§;
         §]!$§.scaleY = §=T§;
         param1 -= this.§4!n§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §&"'§ / 2 * §=T§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §;o§;
         var _loc8_:Number = _loc6_ - §+!H§;
         §]!$§.x = _loc7_;
         §]!$§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§'!"§) : void
      {
         §+!H§ = param1.pivotY;
         §;o§ = param1.pivotX;
         §8>§ = param1.height;
         §<!f§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§0!L§;
         §+!H§ = 0;
         if(§2a§)
         {
            §;o§ = -_loc2_.left;
         }
         else
         {
            §;o§ = 0;
         }
         §8>§ = _loc2_.height;
         §<!f§ = _loc2_.width;
      }
   }
}

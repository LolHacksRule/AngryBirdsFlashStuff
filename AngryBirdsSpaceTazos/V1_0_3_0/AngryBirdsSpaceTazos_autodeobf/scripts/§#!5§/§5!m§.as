package §#!5§
{
   import §3R§.§1!R§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §<!<§.§1=§;
   import §^e§.§0"1§;
   import §^e§.§7!R§;
   import flash.geom.Rectangle;
   
   public class §5!m§ extends §,!^§
   {
       
      
      protected var §""A§:Number = 1.0;
      
      protected var §60§:Number = 1.0;
      
      protected var §`"+§:Number = 1.0;
      
      protected var §!!T§:Number = 1.0;
      
      protected var §+&§:Boolean = false;
      
      protected var §]R§:Number = 0.0;
      
      protected var §1N§:Number = 0.0;
      
      protected var §9"3§:Number = 0.0;
      
      public function §5!m§(param1:§1=§, param2:Sprite, param3:§0"1§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§""A§ = param1.§>`§;
         this.§60§ = param1.§=!F§;
         this.§`"+§ = param1.§=l§;
         this.§!!T§ = param1.scaleSpeed;
      }
      
      public function get zDistance() : Number
      {
         return §4!O§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§!!T§;
         var _loc4_:Number = §1!k§ + _loc3_;
         return Math.ceil(§1!R§.§'!v§ / (param2 * _loc4_)) * 2;
      }
      
      public function §?!f§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§+&§)
         {
            this.§+&§ = true;
            this.§]R§ = param1;
            this.§1N§ = param2;
            this.§9"3§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§?!f§(param1,param2,param3);
         if(!§7"2§)
         {
            this.§^i§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§@!f§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §^i§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§9"3§) + this.zDistance) * this.§!!T§;
         var _loc8_:Number = §1!k§ + _loc7_;
         §9A§.scaleX = _loc8_ / param1;
         §9A§.scaleY = _loc8_ / param1;
         param2 -= this.§]R§;
         param3 -= this.§1N§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§'!K§ * (§1!k§ + _loc7_ * 2) + 0 * (§1!k§ + _loc7_) * 2;
         var _loc12_:Number = §%O§ * (§1!k§ + _loc7_ * 2) + 0 * (§1!k§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = ((_loc11_ - _loc9_ * this.§""A§) * 0.5 + §8I§ * param4) / _loc8_;
         var _loc15_:Number = ((_loc12_ - _loc10_ * this.§60§) * 0.5 + §,D§ * param5) / _loc8_;
         §9A§.x = _loc14_ / param1 * §1!k§;
         §9A§.y = _loc15_ / param1 * §1!k§;
         §9A§.pivotX = -§9!P§;
         §9A§.pivotY = -§<$§;
      }
      
      private function §@!f§(param1:Number, param2:Number, param3:Number) : void
      {
         §9A§.scaleX = §1!k§;
         §9A§.scaleY = §1!k§;
         param1 -= this.§]R§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §?S§ / 2 * §1!k§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §9!P§;
         var _loc8_:Number = _loc6_ - §<$§;
         §9A§.x = _loc7_;
         §9A§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§7!R§) : void
      {
         §<$§ = param1.pivotY;
         §9!P§ = param1.pivotX;
         §%O§ = param1.height;
         §'!K§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§0q§;
         §<$§ = 0;
         if(§7"2§)
         {
            §9!P§ = -_loc2_.left;
         }
         else
         {
            §9!P§ = 0;
         }
         §%O§ = _loc2_.height;
         §'!K§ = _loc2_.width;
      }
   }
}

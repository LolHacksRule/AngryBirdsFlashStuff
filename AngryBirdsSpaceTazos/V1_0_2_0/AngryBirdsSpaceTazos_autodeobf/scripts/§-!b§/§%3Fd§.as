package §-!b§
{
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §,§.§'A§;
   import §8o§.§!">§;
   import §8o§.§5"%§;
   import §?!<§.§'!1§;
   import flash.geom.Rectangle;
   
   public class §?d§ extends §0P§
   {
       
      
      protected var §[!@§:Number = 1.0;
      
      protected var §+!S§:Number = 1.0;
      
      protected var §>!v§:Number = 1.0;
      
      protected var §&"9§:Number = 1.0;
      
      protected var §,!7§:Boolean = false;
      
      protected var §&"+§:Number = 0.0;
      
      protected var §!&§:Number = 0.0;
      
      protected var §6!v§:Number = 0.0;
      
      public function §?d§(param1:§'A§, param2:Sprite, param3:§5"%§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§[!@§ = param1.§&=§;
         this.§+!S§ = param1.§?"8§;
         this.§>!v§ = param1.§+"G§;
         this.§&"9§ = param1.scaleSpeed;
      }
      
      public function get zDistance() : Number
      {
         return §1"C§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§&"9§;
         var _loc4_:Number = §-!Y§ + _loc3_;
         return Math.ceil(§'!1§.§,o§ / (param2 * _loc4_)) * 2;
      }
      
      public function §7"6§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§,!7§)
         {
            this.§,!7§ = true;
            this.§&"+§ = param1;
            this.§!&§ = param2;
            this.§6!v§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§7"6§(param1,param2,param3);
         if(!§<!j§)
         {
            this.§;"&§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§<E§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §;"&§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§6!v§) + this.zDistance) * this.§&"9§;
         var _loc8_:Number = §-!Y§ + _loc7_;
         §>#§.scaleX = _loc8_ / param1;
         §>#§.scaleY = _loc8_ / param1;
         param2 -= this.§&"+§;
         param3 -= this.§!&§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§^M§ * (§-!Y§ + _loc7_ * 2) + 0 * (§-!Y§ + _loc7_) * 2;
         var _loc12_:Number = §2!u§ * (§-!Y§ + _loc7_ * 2) + 0 * (§-!Y§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = ((_loc11_ - _loc9_ * this.§[!@§) * 0.5 + §7h§ * param4) / _loc8_;
         var _loc15_:Number = ((_loc12_ - _loc10_ * this.§+!S§) * 0.5 + §2u§ * param5) / _loc8_;
         §>#§.x = _loc14_ / param1 * §-!Y§;
         §>#§.y = _loc15_ / param1 * §-!Y§;
         §>#§.pivotX = -§=!b§;
         §>#§.pivotY = -§+"#§;
      }
      
      private function §<E§(param1:Number, param2:Number, param3:Number) : void
      {
         §>#§.scaleX = §-!Y§;
         §>#§.scaleY = §-!Y§;
         param1 -= this.§&"+§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §35§ / 2 * §-!Y§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §=!b§;
         var _loc8_:Number = _loc6_ - §+"#§;
         §>#§.x = _loc7_;
         §>#§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§!">§) : void
      {
         §+"#§ = param1.pivotY;
         §=!b§ = param1.pivotX;
         §2!u§ = param1.height;
         §^M§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§@!!§;
         §+"#§ = 0;
         if(§<!j§)
         {
            §=!b§ = -_loc2_.left;
         }
         else
         {
            §=!b§ = 0;
         }
         §2!u§ = _loc2_.height;
         §^M§ = _loc2_.width;
      }
   }
}

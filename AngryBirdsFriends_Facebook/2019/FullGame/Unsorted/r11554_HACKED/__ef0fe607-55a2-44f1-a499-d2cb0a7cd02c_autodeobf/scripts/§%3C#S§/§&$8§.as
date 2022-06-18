package §<#S§
{
   import § !D§.§'"u§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §'!O§.§%$>§;
   import §^"[§.§=#;§;
   import §^"[§.§^!8§;
   import flash.geom.Rectangle;
   
   public class §&$8§ extends §8#P§
   {
       
      
      protected var § #o§:Number = 1.0;
      
      protected var §>"p§:Number = 1.0;
      
      protected var §4" §:Number = 1.0;
      
      protected var §#$$§:Number = 1.0;
      
      protected var §%"Z§:Number = 0.0;
      
      protected var §&!K§:Boolean = false;
      
      protected var §8#z§:Number = 0.0;
      
      protected var §9" §:Number = 0.0;
      
      protected var §-!p§:Number = 0.0;
      
      public function §&$8§(param1:§%$>§, param2:Sprite, param3:§=#;§, param4:Number)
      {
         this.§ #o§ = param1.§%!$§;
         this.§>"p§ = param1.§]#9§;
         this.§4" § = param1.§8"r§;
         this.§#$$§ = param1.scaleSpeed;
         §^!_§ = param1.velocityX;
         this.§%"Z§ = param1.velocityY;
         super(§=#v§,param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §;#L§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§#$$§;
         var _loc4_:Number = §6z§ + _loc3_;
         var _loc5_:int = 0;
         if(§^!_§ != 0)
         {
            _loc5_ = 1;
         }
         if(§6!=§)
         {
            _loc5_++;
         }
         return (Math.ceil(§'"u§.§]!F§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §8"F§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§&!K§)
         {
            this.§&!K§ = true;
            this.§8#z§ = param1;
            this.§9" § = param2;
            this.§-!p§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§8"F§(param1,param2,param3);
         if(!§6!=§)
         {
            this.§["T§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§6#`§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §["T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc7_:Number = (Number(param1 - this.§-!p§) + this.zDistance) * this.§#$$§;
         var _loc8_:Number = §6z§ + _loc7_;
         § U§.scaleX = _loc8_ / param1;
         § U§.scaleY = _loc8_ / param1;
         param2 -= this.§8#z§;
         param3 -= this.§9" §;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§@#Z§ * (§6z§ + _loc7_ * 2) + 0 * (§6z§ + _loc7_) * 2;
         var _loc12_:Number = §+#j§ * (§6z§ + _loc7_ * 2) + 0 * (§6z§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§ #o§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§>"p§) * 0.5 / _loc8_;
         § U§.x = (_loc14_ * §6z§ + §if § * param4) / param1;
         § U§.y = (_loc15_ * §6z§ + §1!g§ * param5) / param1;
         § U§.pivotX = -§?"1§;
         § U§.pivotY = -§5"#§;
      }
      
      private function §6#`§(param1:Number, param2:Number, param3:Number) : void
      {
         § U§.scaleX = §6z§;
         § U§.scaleY = §6z§;
         param1 -= this.§8#z§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §`$C§ / 2 * §6z§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §?"1§;
         var _loc8_:Number = _loc6_ - §5"#§;
         § U§.x = _loc7_;
         § U§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§^!8§) : void
      {
         §5"#§ = param1.pivotY;
         §?"1§ = param1.pivotX;
         §+#j§ = param1.height;
         §@#Z§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         §5"#§ = 0;
         if(§6!=§)
         {
            §?"1§ = -_loc2_.left;
         }
         else
         {
            §?"1§ = 0;
         }
         §+#j§ = _loc2_.height;
         §@#Z§ = _loc2_.width;
      }
   }
}

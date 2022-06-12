package §!!P§
{
   import §'G§.§3$§;
   import §'G§.§3$B§;
   import §-<§.§,",§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import flash.geom.Rectangle;
   
   public class §0# § extends §2#%§
   {
       
      
      protected var §`#?§:Number = 1.0;
      
      protected var §"#_§:Number = 1.0;
      
      protected var §-#,§:Number = 1.0;
      
      protected var §&"s§:Number = 1.0;
      
      protected var §4"u§:Number = 0.0;
      
      protected var §##]§:Boolean = false;
      
      protected var §0#@§:Number = 0.0;
      
      protected var §3#k§:Number = 0.0;
      
      protected var §<!5§:Number = 0.0;
      
      public function §0# §(param1:§,",§, param2:Sprite, param3:§3$§, param4:Number)
      {
         this.§`#?§ = param1.§-`§;
         this.§"#_§ = param1.§^p§;
         this.§-#,§ = param1.§`!I§;
         this.§&"s§ = param1.scaleSpeed;
         §3#h§ = param1.velocityX;
         this.§4"u§ = param1.velocityY;
         super(§3#K§,param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §+!5§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§&"s§;
         var _loc4_:Number = §5>§ + _loc3_;
         var _loc5_:int = 0;
         if(§3#h§ != 0)
         {
            _loc5_ = 1;
         }
         if(§-"c§)
         {
            _loc5_++;
         }
         return (Math.ceil(§!6§.§+#P§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §'#T§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§##]§)
         {
            this.§##]§ = true;
            this.§0#@§ = param1;
            this.§3#k§ = param2;
            this.§<!5§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§'#T§(param1,param2,param3);
         if(!§-"c§)
         {
            this.§9!&§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§!"!§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §9!&§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§<!5§) + this.zDistance) * this.§&"s§;
         var _loc8_:Number = §5>§ + _loc7_;
         §'#f§.scaleX = _loc8_ / param1;
         §'#f§.scaleY = _loc8_ / param1;
         param2 -= this.§0#@§;
         param3 -= this.§3#k§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§>H§ * (§5>§ + _loc7_ * 2) + 0 * (§5>§ + _loc7_) * 2;
         var _loc12_:Number = §^l§ * (§5>§ + _loc7_ * 2) + 0 * (§5>§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§`#?§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§"#_§) * 0.5 / _loc8_;
         §'#f§.x = (_loc14_ * §5>§ + §<#C§ * param4) / param1;
         §'#f§.y = (_loc15_ * §5>§ + §""a§ * param5) / param1;
         §'#f§.pivotX = -§-!,§;
         §'#f§.pivotY = -§;"K§;
      }
      
      private function §!"!§(param1:Number, param2:Number, param3:Number) : void
      {
         §'#f§.scaleX = §5>§;
         §'#f§.scaleY = §5>§;
         param1 -= this.§0#@§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §1">§ / 2 * §5>§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §-!,§;
         var _loc8_:Number = _loc6_ - §;"K§;
         §'#f§.x = _loc7_;
         §'#f§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§3$B§) : void
      {
         §;"K§ = param1.pivotY;
         §-!,§ = param1.pivotX;
         §^l§ = param1.height;
         §>H§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         §;"K§ = 0;
         if(§-"c§)
         {
            §-!,§ = -_loc2_.left;
         }
         else
         {
            §-!,§ = 0;
         }
         §^l§ = _loc2_.height;
         §>H§ = _loc2_.width;
      }
   }
}

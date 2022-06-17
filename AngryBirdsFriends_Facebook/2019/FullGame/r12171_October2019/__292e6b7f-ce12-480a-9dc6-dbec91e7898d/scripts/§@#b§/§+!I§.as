package §@#b§
{
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §4"Y§.§%!w§;
   import §7"T§.§#"^§;
   import §7"T§.§4!L§;
   import flash.geom.Rectangle;
   
   public class §+!I§ extends §=$;§
   {
       
      
      protected var §,§:Number = 1.0;
      
      protected var §"8§:Number = 1.0;
      
      protected var §%Y§:Number = 1.0;
      
      protected var §53§:Number = 1.0;
      
      protected var §extends§:Number = 0.0;
      
      protected var §+"X§:Boolean = false;
      
      protected var §`#d§:Number = 0.0;
      
      protected var §1#c§:Number = 0.0;
      
      protected var §+"N§:Number = 0.0;
      
      public function §+!I§(param1:§%!w§, param2:Sprite, param3:§#"^§, param4:Number)
      {
         this.§,§ = param1.§6#C§;
         this.§"8§ = param1.§;!j§;
         this.§%Y§ = param1.§0!%§;
         this.§53§ = param1.scaleSpeed;
         §8"k§ = param1.velocityX;
         this.§extends§ = param1.velocityY;
         super(§9!Q§,param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §<"Y§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§53§;
         var _loc4_:Number = §#!1§ + _loc3_;
         var _loc5_:int = 0;
         if(§8"k§ != 0)
         {
            _loc5_ = 1;
         }
         if(§["M§)
         {
            _loc5_++;
         }
         return (Math.ceil(§8#3§.§"#I§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §8$?§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§+"X§)
         {
            this.§+"X§ = true;
            this.§`#d§ = param1;
            this.§1#c§ = param2;
            this.§+"N§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§8$?§(param1,param2,param3);
         if(!§["M§)
         {
            this.§96§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§7U§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §96§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§+"N§) + this.zDistance) * this.§53§;
         var _loc8_:Number = §#!1§ + _loc7_;
         §&"h§.scaleX = _loc8_ / param1;
         §&"h§.scaleY = _loc8_ / param1;
         param2 -= this.§`#d§;
         param3 -= this.§1#c§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§>"h§ * (§#!1§ + _loc7_ * 2) + 0 * (§#!1§ + _loc7_) * 2;
         var _loc12_:Number = §"#G§ * (§#!1§ + _loc7_ * 2) + 0 * (§#!1§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§,§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§"8§) * 0.5 / _loc8_;
         §&"h§.x = (_loc14_ * §#!1§ + §&!l§ * param4) / param1;
         §&"h§.y = (_loc15_ * §#!1§ + §?"=§ * param5) / param1;
         §&"h§.pivotX = -§;"M§;
         §&"h§.pivotY = -§>!H§;
      }
      
      private function §7U§(param1:Number, param2:Number, param3:Number) : void
      {
         §&"h§.scaleX = §#!1§;
         §&"h§.scaleY = §#!1§;
         param1 -= this.§`#d§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §=b§ / 2 * §#!1§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §;"M§;
         var _loc8_:Number = _loc6_ - §>!H§;
         §&"h§.x = _loc7_;
         §&"h§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§4!L§) : void
      {
         §>!H§ = param1.pivotY;
         §;"M§ = param1.pivotX;
         §"#G§ = param1.height;
         §>"h§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         §>!H§ = 0;
         if(§["M§)
         {
            §;"M§ = -_loc2_.left;
         }
         else
         {
            §;"M§ = 0;
         }
         §"#G§ = _loc2_.height;
         §>"h§ = _loc2_.width;
      }
   }
}

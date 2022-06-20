package §8"h§
{
   import §#!S§.§0!q§;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §9#M§.§%"=§;
   import §9#M§.§'!-§;
   import §?$#§.§<d§;
   import flash.geom.Rectangle;
   
   public class §%#N§ extends §`#s§
   {
       
      
      protected var §=#,§:Number = 1.0;
      
      protected var §!!"§:Number = 1.0;
      
      protected var § =§:Number = 1.0;
      
      protected var §8$'§:Number = 1.0;
      
      protected var §8#N§:Number = 0.0;
      
      protected var § #Y§:Boolean = false;
      
      protected var § "z§:Number = 0.0;
      
      protected var §-$%§:Number = 0.0;
      
      protected var §]#I§:Number = 0.0;
      
      public function §%#N§(param1:§0!q§, param2:Sprite, param3:§%"=§, param4:Number)
      {
         this.§=#,§ = param1.§>"g§;
         this.§!!"§ = param1.§@"8§;
         this.§ =§ = param1.§[#k§;
         this.§8$'§ = param1.scaleSpeed;
         §4"!§ = param1.velocityX;
         this.§8#N§ = param1.velocityY;
         super(§3"j§,param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §##9§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§8$'§;
         var _loc4_:Number = §6#q§ + _loc3_;
         var _loc5_:int = 0;
         if(§4"!§ != 0)
         {
            _loc5_ = 1;
         }
         if(§2#p§)
         {
            _loc5_++;
         }
         return (Math.ceil(§<d§.§=2§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §`$3§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§ #Y§)
         {
            this.§ #Y§ = true;
            this.§ "z§ = param1;
            this.§-$%§ = param2;
            this.§]#I§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§`$3§(param1,param2,param3);
         if(!§2#p§)
         {
            this.§4;§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§6Z§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §4;§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc7_:Number = (Number(param1 - this.§]#I§) + this.zDistance) * this.§8$'§;
         var _loc8_:Number = §6#q§ + _loc7_;
         §]#+§.scaleX = _loc8_ / param1;
         §]#+§.scaleY = _loc8_ / param1;
         param2 -= this.§ "z§;
         param3 -= this.§-$%§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§@!l§ * (§6#q§ + _loc7_ * 2) + 0 * (§6#q§ + _loc7_) * 2;
         var _loc12_:Number = §,7§ * (§6#q§ + _loc7_ * 2) + 0 * (§6#q§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§=#,§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§!!"§) * 0.5 / _loc8_;
         §]#+§.x = (_loc14_ * §6#q§ + §#V§ * param4) / param1;
         §]#+§.y = (_loc15_ * §6#q§ + §,#r§ * param5) / param1;
         §]#+§.pivotX = -§1">§;
         §]#+§.pivotY = -§@l§;
      }
      
      private function §6Z§(param1:Number, param2:Number, param3:Number) : void
      {
         §]#+§.scaleX = §6#q§;
         §]#+§.scaleY = §6#q§;
         param1 -= this.§ "z§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §-!]§ / 2 * §6#q§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §1">§;
         var _loc8_:Number = _loc6_ - §@l§;
         §]#+§.x = _loc7_;
         §]#+§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§'!-§) : void
      {
         §@l§ = param1.pivotY;
         §1">§ = param1.pivotX;
         §,7§ = param1.height;
         §@!l§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         §@l§ = 0;
         if(§2#p§)
         {
            §1">§ = -_loc2_.left;
         }
         else
         {
            §1">§ = 0;
         }
         §,7§ = _loc2_.height;
         §@!l§ = _loc2_.width;
      }
   }
}

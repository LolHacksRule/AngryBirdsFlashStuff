package §8$1§
{
   import §52§.§#!,§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §@"§.§&!=§;
   import §@"§.§+!3§;
   import §^§.§0!3§;
   import flash.geom.Rectangle;
   
   public class §0";§ extends §`#'§
   {
       
      
      protected var §+!X§:Number = 1.0;
      
      protected var §<!n§:Number = 1.0;
      
      protected var §?$%§:Number = 1.0;
      
      protected var §&§:Number = 1.0;
      
      protected var §5#q§:Number = 0.0;
      
      protected var §]#1§:Number = 0.0;
      
      protected var §&!A§:Boolean = false;
      
      protected var §8$6§:Number = 0.0;
      
      protected var §2I§:Number = 0.0;
      
      protected var §@$%§:Number = 0.0;
      
      public function §0";§(param1:§0!3§, param2:Sprite, param3:§&!=§, param4:Number)
      {
         this.§+!X§ = param1.§4#O§;
         this.§<!n§ = param1.§]y§;
         this.§?$%§ = param1.§<A§;
         this.§&§ = param1.scaleSpeed;
         §""T§ = param1.velocityX;
         this.§5#q§ = param1.velocityY;
         super(§2"^§,param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §@#]§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§&§;
         var _loc4_:Number = §]"?§ + _loc3_;
         var _loc5_:int = 0;
         if(§""T§ != 0)
         {
            _loc5_ = 1;
         }
         if(§,#%§)
         {
            _loc5_++;
         }
         return (Math.ceil(§#!,§.§%"9§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §[#d§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§&!A§)
         {
            this.§&!A§ = true;
            this.§8$6§ = param1;
            this.§2I§ = param2;
            this.§@$%§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§[#d§(param1,param2,param3);
         if(!§,#%§)
         {
            this.§%"T§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§;!w§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §%"T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc7_:Number = (Number(param1 - this.§@$%§) + this.zDistance) * this.§&§;
         var _loc8_:Number = §]"?§ + _loc7_;
         §]Y§.scaleX = _loc8_ / param1;
         §]Y§.scaleY = _loc8_ / param1;
         param2 -= this.§8$6§;
         param3 -= this.§2I§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§]<§ * (§]"?§ + _loc7_ * 2) + 0 * (§]"?§ + _loc7_) * 2;
         var _loc12_:Number = §""b§ * (§]"?§ + _loc7_ * 2) + 0 * (§]"?§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§+!X§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§<!n§) * 0.5 / _loc8_;
         §]Y§.x = (_loc14_ * §]"?§ + §""+§ * param4) / param1;
         §]Y§.y = (_loc15_ * §]"?§ + §7"=§ * param5) / param1;
         §]Y§.pivotX = -§7#l§ + §?"2§;
         §]Y§.pivotY = -§>D§ + this.§]#1§;
      }
      
      private function §;!w§(param1:Number, param2:Number, param3:Number) : void
      {
         §]Y§.scaleX = §]"?§;
         §]Y§.scaleY = §]"?§;
         param1 -= this.§8$6§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §!"0§ / 2 * §]"?§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §7#l§;
         var _loc8_:Number = _loc6_ - §>D§;
         §]Y§.x = _loc7_;
         §]Y§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§+!3§) : void
      {
         §>D§ = param1.pivotY;
         §7#l§ = param1.pivotX;
         §""b§ = param1.height;
         §]<§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§4#9§;
         §>D§ = 0;
         if(§,#%§)
         {
            §7#l§ = -_loc2_.left;
         }
         else
         {
            §7#l§ = 0;
         }
         §""b§ = _loc2_.height;
         §]<§ = _loc2_.width;
      }
      
      override public function update(param1:Number) : void
      {
         if(§""T§ != 0)
         {
            §?"2§ += §""T§ * param1 / 1000;
            while(§?"2§ < -§!"0§)
            {
               §?"2§ += §!"0§;
            }
            while(§?"2§ > §!"0§)
            {
               §?"2§ -= §!"0§;
            }
         }
      }
   }
}

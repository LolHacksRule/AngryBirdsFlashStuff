package §]#m§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §6!6§.§<n§;
   import §7!j§.§'#'§;
   import §7!j§.§'0§;
   import flash.geom.Rectangle;
   
   public class §&"_§ extends §<#A§
   {
       
      
      protected var §3W§:Number = 1.0;
      
      protected var §7A§:Number = 1.0;
      
      protected var §1#;§:Number = 1.0;
      
      protected var §`#8§:Number = 1.0;
      
      protected var §&"G§:Number = 0.0;
      
      protected var §8D§:Number = 0.0;
      
      protected var §#%§:Boolean = false;
      
      protected var §@"b§:Number = 0.0;
      
      protected var §##Q§:Number = 0.0;
      
      protected var §;!z§:Number = 0.0;
      
      public function §&"_§(param1:§<n§, param2:Sprite, param3:§'0§, param4:Number)
      {
         this.§3W§ = param1.§#C§;
         this.§7A§ = param1.§=!m§;
         this.§1#;§ = param1.§4#'§;
         this.§`#8§ = param1.scaleSpeed;
         §&W§ = param1.velocityX;
         this.§&"G§ = param1.velocityY;
         super(§8!N§,param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §""#§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§`#8§;
         var _loc4_:Number = § "A§ + _loc3_;
         var _loc5_:int = 0;
         if(§&W§ != 0)
         {
            _loc5_ = 1;
         }
         if(§"!r§)
         {
            _loc5_++;
         }
         return (Math.ceil(§!!S§.§6" § / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §,!9§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§#%§)
         {
            this.§#%§ = true;
            this.§@"b§ = param1;
            this.§##Q§ = param2;
            this.§;!z§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§,!9§(param1,param2,param3);
         if(!§"!r§)
         {
            this.§`B§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§5#C§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §`B§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§;!z§) + this.zDistance) * this.§`#8§;
         var _loc8_:Number = § "A§ + _loc7_;
         §'$&§.scaleX = _loc8_ / param1;
         §'$&§.scaleY = _loc8_ / param1;
         param2 -= this.§@"b§;
         param3 -= this.§##Q§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§ ";§ * (§ "A§ + _loc7_ * 2) + 0 * (§ "A§ + _loc7_) * 2;
         var _loc12_:Number = §;!U§ * (§ "A§ + _loc7_ * 2) + 0 * (§ "A§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§3W§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§7A§) * 0.5 / _loc8_;
         §'$&§.x = (_loc14_ * § "A§ + §+I§ * param4) / param1;
         §'$&§.y = (_loc15_ * § "A§ + §8q§ * param5) / param1;
         §'$&§.pivotX = -§ #Q§ + §'2§;
         §'$&§.pivotY = -§9!d§ + this.§8D§;
      }
      
      private function §5#C§(param1:Number, param2:Number, param3:Number) : void
      {
         §'$&§.scaleX = § "A§;
         §'$&§.scaleY = § "A§;
         param1 -= this.§@"b§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §?!w§ / 2 * § "A§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - § #Q§;
         var _loc8_:Number = _loc6_ - §9!d§;
         §'$&§.x = _loc7_;
         §'$&§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§'#'§) : void
      {
         §9!d§ = param1.pivotY;
         § #Q§ = param1.pivotX;
         §;!U§ = param1.height;
         § ";§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§=u§;
         §9!d§ = 0;
         if(§"!r§)
         {
            § #Q§ = -_loc2_.left;
         }
         else
         {
            § #Q§ = 0;
         }
         §;!U§ = _loc2_.height;
         § ";§ = _loc2_.width;
      }
      
      override public function update(param1:Number) : void
      {
         if(§&W§ != 0)
         {
            §'2§ += §&W§ * param1 / 1000;
            while(§'2§ < -§?!w§)
            {
               §'2§ += §?!w§;
            }
            while(§'2§ > §?!w§)
            {
               §'2§ -= §?!w§;
            }
         }
      }
   }
}

package §""c§
{
   import §!!k§.§'!j§;
   import §!!k§.§0!B§;
   import §"§.§;!E§;
   import §`!v§.§7Z§;
   import flash.geom.Rectangle;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §""v§ extends §2",§
   {
       
      
      protected var §!!N§:Number = 1.0;
      
      protected var §9W§:Number = 1.0;
      
      protected var §return§:Number = 1.0;
      
      protected var §4e§:Number = 1.0;
      
      protected var §'!e§:Number = 0.0;
      
      protected var §&"d§:Number = 0.0;
      
      protected var §]"r§:Number = 0.0;
      
      protected var §""A§:Number = 0.0;
      
      protected var §=6§:Boolean = false;
      
      protected var §&Q§:Number = 0.0;
      
      protected var §8"0§:Number = 0.0;
      
      protected var §-!H§:Number = 0.0;
      
      public function §""v§(param1:§7Z§, param2:Sprite, param3:§0!B§, param4:Number)
      {
         this.§!!N§ = param1.§]"c§;
         this.§9W§ = param1.§^=§;
         this.§return§ = param1.§%c§;
         this.§4e§ = param1.scaleSpeed;
         this.§'!e§ = param1.velocityX;
         this.§&"d§ = param1.velocityY;
         super(param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §2+§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§4e§;
         var _loc4_:Number = §#"5§ + _loc3_;
         var _loc5_:int = 0;
         if(this.§'!e§ != 0)
         {
            _loc5_ = 1;
         }
         if(§&!b§)
         {
            _loc5_++;
         }
         return (Math.ceil(§;!E§.§;#&§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §"!K§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§=6§)
         {
            this.§=6§ = true;
            this.§&Q§ = param1;
            this.§8"0§ = param2;
            this.§-!H§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§"!K§(param1,param2,param3);
         if(!§&!b§)
         {
            this.§5!F§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§2#3§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §5!F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§-!H§) + this.zDistance) * this.§4e§;
         var _loc8_:Number = §#"5§ + _loc7_;
         §0v§.scaleX = _loc8_ / param1;
         §0v§.scaleY = _loc8_ / param1;
         param2 -= this.§&Q§;
         param3 -= this.§8"0§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§0"e§ * (§#"5§ + _loc7_ * 2) + 0 * (§#"5§ + _loc7_) * 2;
         var _loc12_:Number = §?!O§ * (§#"5§ + _loc7_ * 2) + 0 * (§#"5§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§!!N§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§9W§) * 0.5 / _loc8_;
         §0v§.x = (_loc14_ * §#"5§ + §=!+§ * param4) / param1;
         §0v§.y = (_loc15_ * §#"5§ + §&]§ * param5) / param1;
         §0v§.pivotX = -§["2§ + this.§]"r§;
         §0v§.pivotY = -§?!_§ + this.§""A§;
      }
      
      private function §2#3§(param1:Number, param2:Number, param3:Number) : void
      {
         §0v§.scaleX = §#"5§;
         §0v§.scaleY = §#"5§;
         param1 -= this.§&Q§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §>P§ / 2 * §#"5§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §["2§;
         var _loc8_:Number = _loc6_ - §?!_§;
         §0v§.x = _loc7_;
         §0v§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§'!j§) : void
      {
         §?!_§ = param1.pivotY;
         §["2§ = param1.pivotX;
         §?!O§ = param1.height;
         §0"e§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§&"r§;
         §?!_§ = 0;
         if(§&!b§)
         {
            §["2§ = -_loc2_.left;
         }
         else
         {
            §["2§ = 0;
         }
         §?!O§ = _loc2_.height;
         §0"e§ = _loc2_.width;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§'!e§ != 0)
         {
            this.§]"r§ += this.§'!e§ * param1 / 1000;
            while(this.§]"r§ < -§>P§)
            {
               this.§]"r§ += §>P§;
            }
            while(this.§]"r§ > §>P§)
            {
               this.§]"r§ -= §>P§;
            }
         }
      }
   }
}

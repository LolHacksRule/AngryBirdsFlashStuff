package §=§#9
{
   import §6$8§.§`#h§;
   import §@0§.§%!q§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   import §`"8§.§`"X§;
   import flash.geom.Rectangle;
   
   public class §0$&§ extends §2!f§
   {
       
      
      protected var §=!O§:Number = 1.0;
      
      protected var §"F§:Number = 1.0;
      
      protected var §else §:Number = 1.0;
      
      protected var §'5§:Number = 1.0;
      
      protected var §79§:Number = 0.0;
      
      protected var §9"&§:Number = 0.0;
      
      protected var §6"z§:Boolean = false;
      
      protected var §+!e§:Number = 0.0;
      
      protected var §"`§:Number = 0.0;
      
      protected var §5!a§:Number = 0.0;
      
      public function §0$&§(param1:§`#h§, param2:Sprite, param3:§34§, param4:Number)
      {
         this.§=!O§ = param1.§@#<§;
         this.§"F§ = param1.§#!o§;
         this.§else § = param1.§'#q§;
         this.§'5§ = param1.scaleSpeed;
         §[$1§ = param1.velocityX;
         this.§79§ = param1.velocityY;
         super(§&l§,param1,param2,param3,param4);
      }
      
      public function get zDistance() : Number
      {
         return §&![§;
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Number = (param1 - 1 + this.zDistance) * this.§'5§;
         var _loc4_:Number = §^#5§ + _loc3_;
         var _loc5_:int = 0;
         if(§[$1§ != 0)
         {
            _loc5_ = 1;
         }
         if(§3$6§)
         {
            _loc5_++;
         }
         return (Math.ceil(§%!q§.§ "+§ / (param2 * _loc4_)) + _loc5_) * 2;
      }
      
      public function §%3§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§6"z§)
         {
            this.§6"z§ = true;
            this.§+!e§ = param1;
            this.§"`§ = param2;
            this.§5!a§ = param3;
         }
      }
      
      override public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:Number = param4 / param3 / param6;
         var _loc9_:Number = param5 / param3 / param7;
         var _loc10_:Number = param2;
         param1 += _loc8_ / 2;
         param2 += _loc9_ / 2;
         this.§%3§(param1,param2,param3);
         if(!§3$6§)
         {
            this.§<#H§(param3,param1,param2,param6,param7);
         }
         else
         {
            this.§[!o§(param1,_loc8_,_loc10_);
         }
      }
      
      private function §<#H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number;
         var _loc7_:Number = ((_loc6_ = param1 - this.§5!a§) + this.zDistance) * this.§'5§;
         var _loc8_:Number = §^#5§ + _loc7_;
         §4"D§.scaleX = _loc8_ / param1;
         §4"D§.scaleY = _loc8_ / param1;
         param2 -= this.§+!e§;
         param3 -= this.§"`§;
         var _loc9_:Number = param2 * this.zDistance;
         var _loc10_:Number = param3 * this.zDistance;
         var _loc11_:Number = -§4"V§ * (§^#5§ + _loc7_ * 2) + 0 * (§^#5§ + _loc7_) * 2;
         var _loc12_:Number = §""&§ * (§^#5§ + _loc7_ * 2) + 0 * (§^#5§ + _loc7_) * 2;
         var _loc13_:Number = Math.max(param4,param5);
         param4 /= _loc13_;
         param5 /= _loc13_;
         var _loc14_:Number = (_loc11_ - _loc9_ * this.§=!O§) * 0.5 / _loc8_;
         var _loc15_:Number = (_loc12_ - _loc10_ * this.§"F§) * 0.5 / _loc8_;
         §4"D§.x = (_loc14_ * §^#5§ + §>!M§ * param4) / param1;
         §4"D§.y = (_loc15_ * §^#5§ + §^!W§ * param5) / param1;
         §4"D§.pivotX = -§3$'§ + §&!3§;
         §4"D§.pivotY = -§,#g§ + this.§9"&§;
      }
      
      private function §[!o§(param1:Number, param2:Number, param3:Number) : void
      {
         §4"D§.scaleX = §^#5§;
         §4"D§.scaleY = §^#5§;
         param1 -= this.§+!e§;
         var _loc4_:Number = param1 * this.zDistance;
         var _loc5_:Number = param2 / 2 + §6#Z§ / 2 * §^#5§;
         var _loc6_:Number = -param3;
         var _loc7_:Number = _loc5_ - _loc4_ - §3$'§;
         var _loc8_:Number = _loc6_ - §,#g§;
         §4"D§.x = _loc7_;
         §4"D§.y = _loc8_;
      }
      
      override protected function initializePivotFromTexture(param1:§`"X§) : void
      {
         §,#g§ = param1.pivotY;
         §3$'§ = param1.pivotX;
         §""&§ = param1.height;
         §4"V§ = param1.width;
      }
      
      override protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§^$9§;
         §,#g§ = 0;
         if(§3$6§)
         {
            §3$'§ = -_loc2_.left;
         }
         else
         {
            §3$'§ = 0;
         }
         §""&§ = _loc2_.height;
         §4"V§ = _loc2_.width;
      }
      
      override public function update(param1:Number) : void
      {
         if(§[$1§ != 0)
         {
            §&!3§ += §[$1§ * param1 / 1000;
            while(§&!3§ < -§6#Z§)
            {
               §&!3§ += §6#Z§;
            }
            while(§&!3§ > §6#Z§)
            {
               §&!3§ -= §6#Z§;
            }
         }
      }
   }
}

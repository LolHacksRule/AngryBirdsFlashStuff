package §,!g§
{
   import §%!0§.§%Q§;
   import §%!0§.§,4§;
   import §&!P§.§``§;
   import §<!a§.b2Vec2;
   import §<i§.§'!e§;
   import §<i§.§+!S§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>7§ extends §"!P§
   {
      
      public static const §2x§:Number = 1;
      
      public static const §?5§:Number = 0.3;
      
      private static const §8",§:Number = 0.6;
      
      private static const §3!M§:int = 50;
      
      private static const §="%§:Number = 0;
      
      public static const §]"4§:Number = 5000;
      
      private static const §?B§:Number = 50;
      
      public static const § !U§:Number = -§?B§;
      
      public static const §'!]§:Number = 10;
      
      private static var §"T§:Boolean = false;
      
      private static var §3!i§:§+!S§ = null;
       
      
      private var §`"9§:§+2§;
      
      private var §8""§:Number;
      
      private var §9!w§:Number;
      
      private var §""1§:Number = 0.01;
      
      public function §>7§(param1:§,4§, param2:§'!e§)
      {
         this.§`"9§ = new §+2§(0,0,1,false);
         super(param1,param2);
         §+!x§ = §&N§;
         this.§8""§ = §1!H§;
         this.§9!w§ = §3">§;
      }
      
      public static function §];§(param1:Boolean) : void
      {
         §"T§ = param1;
      }
      
      override public function init() : void
      {
         if(§"T§ && §3!i§)
         {
            if(mCurrentAction == §3J§)
            {
               return;
            }
            this.§6!z§();
            §%O§ = 2000;
            §=!L§();
            §9,§();
            §0h§();
         }
         else
         {
            super.init();
         }
      }
      
      public function §=P§() : void
      {
         §3!i§ = new §+!S§();
         §3!i§.x = §1!H§;
         §3!i§.y = §3">§;
         §3!i§.scale = §&N§;
      }
      
      public function §6!z§() : void
      {
         if(!§3!i§)
         {
            §3!i§ = this.§>b§(true);
         }
         §1!H§ = this.§8""§ = §3!i§.x;
         §3">§ = this.§9!w§ = §3!i§.y;
         §&N§ = §+!x§ = §3!i§.scale;
      }
      
      public function §6"5§() : void
      {
         §3!i§ = null;
      }
      
      public function §7!Q§(param1:§+!S§) : void
      {
         §1!H§ = param1.x;
         §3">§ = param1.y;
         §+!x§ = param1.scale;
         §&N§ = param1.scale;
         this.§8""§ = §1!H§;
         this.§9!w§ = §3">§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§"T§)
         {
            super.updateCamera(param1);
            return;
         }
         §+!x§ = Math.max(§+!x§,§?5§);
         var _loc2_:Number = Math.min(this.§""1§ * param1,0.2);
         §&N§ -= (§&N§ - §+!x§) * _loc2_;
         §1!H§ -= (§1!H§ - this.§8""§) * _loc2_;
         §3">§ -= (§3">§ - this.§9!w§) * _loc2_;
         var _loc3_:Rectangle = this.§?$§();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / §&N§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / §&N§;
         §1!H§ = Math.max(_loc3_.x + _loc4_,§1!H§);
         §1!H§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§1!H§);
         §3">§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§3">§);
         §3">§ = Math.min(_loc3_.y - _loc5_,§3">§);
         §=!L§();
         §9,§();
         §0h§();
      }
      
      public function §?$§() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§?B§;
         _loc1_.width = §="%§ + §]"4§ - _loc1_.x;
         _loc1_.y = §'!]§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §?5§;
         return _loc1_;
      }
      
      public function §!y§() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / §&N§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / §&N§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §1!H§ - _loc1_;
         _loc3_.y = §3">§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §+!x§ += param1 * §"!P§.MANUAL_SCALE_STEP * §+!x§;
         §+!x§ = Math.max(§?5§,Math.min(§2x§,§+!x§));
      }
      
      public function § in§(param1:Number, param2:Number) : void
      {
         this.§8""§ = param1;
         this.§9!w§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§"T§)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§+!S§ = this.§>b§(true);
         §+!x§ = _loc1_.scale;
         this.§ in§(_loc1_.x,_loc1_.y);
      }
      
      public function §?!<§(param1:Rectangle) : void
      {
         var _loc2_:Number = §"!P§.SCREEN_WIDTH_B2 / param1.width;
         var _loc3_:Number = §"!P§.SCREEN_HEIGHT_B2 / param1.height;
         §+!x§ = Math.min(_loc2_,_loc3_);
         this.§ in§(param1.x + param1.width / 2,param1.y + param1.height / 2);
      }
      
      override public function goToBirdView() : void
      {
         if(!§"T§)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§+!S§ = this.§5!l§(true);
         §+!x§ = _loc1_.scale;
         this.§ in§(_loc1_.x,_loc1_.y);
      }
      
      public function §5!l§(param1:Boolean = false) : §+!S§
      {
         var _loc5_:§%Q§ = null;
         var _loc10_:§+!S§ = null;
         var _loc3_:Point = new Point(§`!G§.slingshot.mX,§`!G§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = §'!]§;
         for each(_loc5_ in §`!G§.slingshot.mBirds)
         {
            _loc4_.left = Math.min(_loc4_.left,_loc5_.x);
            _loc4_.right = Math.max(_loc4_.right,_loc5_.x);
            _loc4_.top = Math.min(_loc4_.top,_loc5_.y);
         }
         _loc4_.left -= 4;
         _loc4_.right += 4;
         _loc4_.top -= 4 * 3;
         if(param1)
         {
            _loc4_.left -= 4 * 5;
         }
         else
         {
            _loc10_ = this.§>b§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = §"!P§.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = §"!P§.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§8",§);
         }
         var _loc9_:§+!S§;
         (_loc9_ = new §+!S§()).id = §"!P§.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §>b§(param1:Boolean = false) : §+!S§
      {
         var _loc12_:§``§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §]"4§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = §'!]§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §`!G§.objects.getObjectCount())
         {
            if((_loc12_ = §`!G§.objects.getObject(_loc5_)).§5"$§)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §`!G§.slingshot.mX)
               {
                  if(_loc4_ == 0)
                  {
                     _loc3_.left = _loc13_.x;
                     _loc3_.right = _loc13_.x;
                  }
                  else
                  {
                     _loc3_.left = Math.min(_loc3_.left,_loc13_.x);
                     _loc3_.right = Math.max(_loc3_.right,_loc13_.x);
                  }
                  _loc3_.top = Math.min(_loc3_.top,_loc13_.y);
                  _loc4_++;
               }
            }
            _loc5_++;
         }
         _loc3_.left -= 4 * 3;
         _loc3_.right += 4 * 3;
         _loc3_.top -= 4 * 3;
         var _loc6_:Rectangle = this.§?$§();
         var _loc7_:Number = §"!P§.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = §"!P§.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§8",§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§"!P§.SCREEN_HEIGHT_B2 - §'!]§);
         var _loc11_:§+!S§;
         (_loc11_ = new §+!S§()).id = §"!P§.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§'!e§) : void
      {
         if(!§"T§)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§+!S§ = this.§>b§();
         var _loc3_:§+!S§ = this.§5!l§();
         param1.§["?§();
         param1.§ d§(_loc3_);
         param1.§ d§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§"T§)
         {
            super.loadCameraBorders();
            return;
         }
         §,!"§ = -§?B§;
         §1"%§ = §="%§ + §]"4§;
         §7!v§ = §`!G§.borders.mBorderGround_B2 - 20 * §,4§.§[G§ * §,4§.§,^§;
         §?"?§ = §`!G§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§"T§)
         {
            return super.getZoomRatio();
         }
         return (§+!x§ - §?5§) / (§2x§ - §?5§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§"T§)
         {
            super.setZoomRatio(param1);
            return;
         }
         §+!x§ = Math.min(Math.max(param1,0),1) * (§2x§ - §?5§) + §?5§;
      }
      
      public function getCenter() : Point
      {
         return new Point(§1!H§,§3">§);
      }
      
      public function § !!§(param1:Point) : void
      {
         this.§8""§ = param1.x;
         this.§9!w§ = param1.y;
      }
   }
}

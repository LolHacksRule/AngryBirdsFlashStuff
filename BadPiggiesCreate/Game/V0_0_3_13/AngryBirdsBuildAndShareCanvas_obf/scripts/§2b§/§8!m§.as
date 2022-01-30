package §2b§
{
   import §0s§.§8!e§;
   import §0s§.§];§;
   import §1!z§.b2Vec2;
   import §8!E§.§'4§;
   import §8!E§.§?!X§;
   import §?"&§.§"!q§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!m§ extends §"" §
   {
      
      public static const §`"&§:Number = 1;
      
      public static const §``§:Number = 0.3;
      
      private static const §7t§:Number = 0.6;
      
      private static const §'F§:int = 50;
      
      private static const §6"%§:Number = 0;
      
      public static const §6!i§:Number = 150;
      
      private static const §%!1§:Number = 50;
      
      public static const §&!F§:Number = -§%!1§;
      
      public static const § 3§:Number = 10;
      
      private static var §'f§:Boolean = false;
      
      private static var §=!y§:§8!e§ = null;
       
      
      private var §%!3§:§7h§;
      
      private var §`!t§:Number;
      
      private var §]b§:Number;
      
      private var §&9§:Number = 0.01;
      
      public function §8!m§(param1:§?!X§, param2:§];§)
      {
         this.§%!3§ = new §7h§(0,0,1,false);
         super(param1,param2);
         §!!+§ = §""0§;
         this.§`!t§ = §^!U§;
         this.§]b§ = §17§;
      }
      
      public static function §&!<§(param1:Boolean) : void
      {
         §'f§ = param1;
      }
      
      override public function init() : void
      {
         if(§'f§ && §=!y§)
         {
            if(mCurrentAction == §+!U§)
            {
               return;
            }
            this.§5$§();
            §]!a§ = 2000;
            §4[§();
            §8v§();
            §7!c§();
         }
         else
         {
            super.init();
         }
      }
      
      public function §,!t§() : void
      {
         §=!y§ = new §8!e§();
         §=!y§.x = §^!U§;
         §=!y§.y = §17§;
         §=!y§.scale = §""0§;
      }
      
      public function §5$§() : void
      {
         if(!§=!y§)
         {
            §=!y§ = this.§0!r§(true);
         }
         §^!U§ = this.§`!t§ = §=!y§.x;
         §17§ = this.§]b§ = §=!y§.y;
         §""0§ = §!!+§ = §=!y§.scale;
      }
      
      public function § !T§(param1:§8!e§) : void
      {
         §^!U§ = param1.x;
         §17§ = param1.y;
         §!!+§ = param1.scale;
         §""0§ = param1.scale;
         this.§`!t§ = §^!U§;
         this.§]b§ = §17§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§'f§)
         {
            super.updateCamera(param1);
            return;
         }
         §!!+§ = Math.max(§!!+§,§``§);
         var _loc2_:Number = Math.min(this.§&9§ * param1,0.2);
         §""0§ -= (§""0§ - §!!+§) * _loc2_;
         §^!U§ -= (§^!U§ - this.§`!t§) * _loc2_;
         §17§ -= (§17§ - this.§]b§) * _loc2_;
         var _loc3_:Rectangle = this.§+A§();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / §""0§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / §""0§;
         §^!U§ = Math.max(_loc3_.x + _loc4_,§^!U§);
         §^!U§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§^!U§);
         §17§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§17§);
         §17§ = Math.min(_loc3_.y - _loc5_,§17§);
         §4[§();
         §8v§();
         §7!c§();
      }
      
      public function §+A§() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§%!1§;
         _loc1_.width = §6"%§ + §6!i§ - _loc1_.x;
         _loc1_.y = § 3§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §``§;
         return _loc1_;
      }
      
      public function §7!]§() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / §""0§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / §""0§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §^!U§ - _loc1_;
         _loc3_.y = §17§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §!!+§ += param1 * §"" §.MANUAL_SCALE_STEP * §!!+§;
         §!!+§ = Math.max(§``§,Math.min(§`"&§,§!!+§));
      }
      
      public function §9K§(param1:Number, param2:Number) : void
      {
         this.§`!t§ = param1;
         this.§]b§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§'f§)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§8!e§ = this.§0!r§(true);
         §!!+§ = _loc1_.scale;
         this.§9K§(_loc1_.x,_loc1_.y);
      }
      
      public function §4",§(param1:Rectangle) : void
      {
         var _loc2_:Number = §"" §.SCREEN_WIDTH_B2 / param1.width;
         var _loc3_:Number = §"" §.SCREEN_HEIGHT_B2 / param1.height;
         §!!+§ = Math.min(_loc2_,_loc3_);
         this.§9K§(param1.x + param1.width / 2,param1.y + param1.height / 2);
      }
      
      override public function goToBirdView() : void
      {
         if(!§'f§)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§8!e§ = this.§+"!§(true);
         §!!+§ = _loc1_.scale;
         this.§9K§(_loc1_.x,_loc1_.y);
      }
      
      public function §+"!§(param1:Boolean = false) : §8!e§
      {
         var _loc5_:§'4§ = null;
         var _loc10_:§8!e§ = null;
         var _loc3_:Point = new Point(§7!;§.slingshot.mX,§7!;§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = § 3§;
         for each(_loc5_ in §7!;§.slingshot.mBirds)
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
            _loc10_ = this.§0!r§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = §"" §.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = §"" §.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§7t§);
         }
         var _loc9_:§8!e§;
         (_loc9_ = new §8!e§()).id = §"" §.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §0!r§(param1:Boolean = false) : §8!e§
      {
         var _loc12_:§"!q§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §6!i§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = § 3§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §7!;§.objects.getObjectCount())
         {
            if((_loc12_ = §7!;§.objects.getObject(_loc5_)).§=!E§)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §7!;§.slingshot.mX)
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
         var _loc6_:Rectangle = this.§+A§();
         var _loc7_:Number = §"" §.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = §"" §.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§7t§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§"" §.SCREEN_HEIGHT_B2 - § 3§);
         var _loc11_:§8!e§;
         (_loc11_ = new §8!e§()).id = §"" §.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§];§) : void
      {
         if(!§'f§)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§8!e§ = this.§0!r§();
         var _loc3_:§8!e§ = this.§+"!§();
         param1.§5!&§();
         param1.§&e§(_loc3_);
         param1.§&e§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§'f§)
         {
            super.loadCameraBorders();
            return;
         }
         §8x§ = -§%!1§;
         §0!_§ = §6"%§ + §6!i§;
         §[4§ = §7!;§.borders.mBorderGround_B2 - 20 * §?!X§.§6e§ * §?!X§.§57§;
         §2!d§ = §7!;§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§'f§)
         {
            return super.getZoomRatio();
         }
         return (§!!+§ - §``§) / (§`"&§ - §``§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§'f§)
         {
            super.setZoomRatio(param1);
            return;
         }
         §!!+§ = Math.min(Math.max(param1,0),1) * (§`"&§ - §``§) + §``§;
      }
      
      public function getCenter() : Point
      {
         return new Point(§^!U§,§17§);
      }
      
      public function §=!#§(param1:Point) : void
      {
         this.§`!t§ = param1.x;
         this.§]b§ = param1.y;
      }
   }
}

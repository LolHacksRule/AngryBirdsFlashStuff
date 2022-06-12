package §@!N§
{
   import §-!G§.b2Vec2;
   import §6!&§.§0!b§;
   import §6!&§.§2!O§;
   import §=b§.§-!K§;
   import §=b§.§8",§;
   import §]r§.§9!R§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3E§ extends §2i§
   {
      
      public static const §&!_§:Number = 1;
      
      public static const §0!]§:Number = 0.3;
      
      private static const §with§:Number = 0.6;
      
      private static const §#r§:int = 50;
      
      private static const §<!0§:Number = 0;
      
      public static const §7!]§:Number = 150;
      
      private static const §]?§:Number = 50;
      
      public static const §`x§:Number = -§]?§;
      
      public static const §[H§:Number = 10;
      
      private static var §;b§:Boolean = false;
      
      private static var §8!Z§:§2!O§ = null;
       
      
      private var §?!w§:§=k§;
      
      private var §9!Y§:Number;
      
      private var §,!`§:Number;
      
      private var §+!8§:Number = 0.01;
      
      public function §3E§(param1:§-!K§, param2:§0!b§)
      {
         this.§?!w§ = new §=k§(0,0,1,false);
         super(param1,param2);
         §[>§ = §6!`§;
         this.§9!Y§ = §+!r§;
         this.§,!`§ = §#!r§;
      }
      
      public static function §!`§(param1:Boolean) : void
      {
         §;b§ = param1;
      }
      
      override public function init() : void
      {
         if(§;b§ && §8!Z§)
         {
            if(mCurrentAction == §9!W§)
            {
               return;
            }
            this.§4#§();
            §&]§ = 2000;
            §&!T§();
            §6!M§();
            § !]§();
         }
         else
         {
            super.init();
         }
      }
      
      public function §9!Q§() : void
      {
         §8!Z§ = new §2!O§();
         §8!Z§.x = §+!r§;
         §8!Z§.y = §#!r§;
         §8!Z§.scale = §6!`§;
      }
      
      public function §4#§() : void
      {
         if(!§8!Z§)
         {
            §8!Z§ = this.§`!q§(true);
         }
         §+!r§ = this.§9!Y§ = §8!Z§.x;
         §#!r§ = this.§,!`§ = §8!Z§.y;
         §6!`§ = §[>§ = §8!Z§.scale;
      }
      
      public function §]t§(param1:§2!O§) : void
      {
         §+!r§ = param1.x;
         §#!r§ = param1.y;
         §[>§ = param1.scale;
         §6!`§ = param1.scale;
         this.§9!Y§ = §+!r§;
         this.§,!`§ = §#!r§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§;b§)
         {
            super.updateCamera(param1);
            return;
         }
         §[>§ = Math.max(§[>§,§0!]§);
         var _loc2_:Number = Math.min(this.§+!8§ * param1,0.5);
         §6!`§ -= (§6!`§ - §[>§) * _loc2_;
         §+!r§ -= (§+!r§ - this.§9!Y§) * _loc2_;
         §#!r§ -= (§#!r§ - this.§,!`§) * _loc2_;
         var _loc3_:Rectangle = this.§`!y§();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / §6!`§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / §6!`§;
         §+!r§ = Math.max(_loc3_.x + _loc4_,§+!r§);
         §+!r§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§+!r§);
         §#!r§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§#!r§);
         §#!r§ = Math.min(_loc3_.y - _loc5_,§#!r§);
         §&!T§();
         §6!M§();
         § !]§();
      }
      
      public function §`!y§() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§]?§;
         _loc1_.width = §<!0§ + §7!]§ - _loc1_.x;
         _loc1_.y = §[H§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §0!]§;
         return _loc1_;
      }
      
      public function §>R§() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / §6!`§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / §6!`§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §+!r§ - _loc1_;
         _loc3_.y = §#!r§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §[>§ += param1 * §2i§.MANUAL_SCALE_STEP * §[>§;
         §[>§ = Math.max(§0!]§,Math.min(§&!_§,§[>§));
      }
      
      public function §#g§(param1:Number, param2:Number) : void
      {
         this.§9!Y§ = param1;
         this.§,!`§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§;b§)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§2!O§ = this.§`!q§(true);
         §[>§ = _loc1_.scale;
         this.§#g§(_loc1_.x,_loc1_.y);
      }
      
      public function §%c§(param1:Rectangle) : void
      {
         var _loc2_:Number = §2i§.SCREEN_WIDTH_B2 / param1.width;
         var _loc3_:Number = §2i§.SCREEN_HEIGHT_B2 / param1.height;
         §[>§ = Math.min(_loc2_,_loc3_);
         this.§#g§(param1.x + param1.width / 2,param1.y + param1.height / 2);
      }
      
      override public function goToBirdView() : void
      {
         if(!§;b§)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§2!O§ = this.§;"6§(true);
         §[>§ = _loc1_.scale;
         this.§#g§(_loc1_.x,_loc1_.y);
      }
      
      public function §;"6§(param1:Boolean = false) : §2!O§
      {
         var _loc5_:§8",§ = null;
         var _loc10_:§2!O§ = null;
         var _loc3_:Point = new Point(§;!x§.slingshot.mX,§;!x§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = §[H§;
         for each(_loc5_ in §;!x§.slingshot.mBirds)
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
            _loc10_ = this.§`!q§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = §2i§.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = §2i§.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§with§);
         }
         var _loc9_:§2!O§;
         (_loc9_ = new §2!O§()).id = §2i§.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §`!q§(param1:Boolean = false) : §2!O§
      {
         var _loc12_:§9!R§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §7!]§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = §[H§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §;!x§.objects.getObjectCount())
         {
            if((_loc12_ = §;!x§.objects.getObject(_loc5_)).§!!$§)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §;!x§.slingshot.mX)
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
         var _loc6_:Rectangle = this.§`!y§();
         var _loc7_:Number = §2i§.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = §2i§.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§with§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§2i§.SCREEN_HEIGHT_B2 - §[H§);
         var _loc11_:§2!O§;
         (_loc11_ = new §2!O§()).id = §2i§.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§0!b§) : void
      {
         if(!§;b§)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§2!O§ = this.§`!q§();
         var _loc3_:§2!O§ = this.§;"6§();
         param1.§-!o§();
         param1.§%5§(_loc3_);
         param1.§%5§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§;b§)
         {
            super.loadCameraBorders();
            return;
         }
         §@!Y§ = -§]?§;
         §]!p§ = §<!0§ + §7!]§;
         §>[§ = §;!x§.borders.mBorderGround_B2 - 20 * §-!K§.§@!B§ * §-!K§.§"!C§;
         §8g§ = §;!x§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§;b§)
         {
            return super.getZoomRatio();
         }
         return (§[>§ - §0!]§) / (§&!_§ - §0!]§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§;b§)
         {
            super.setZoomRatio(param1);
            return;
         }
         §[>§ = Math.min(Math.max(param1,0),1) * (§&!_§ - §0!]§) + §0!]§;
      }
      
      public function getCenter() : Point
      {
         return new Point(§+!r§,§#!r§);
      }
      
      public function §-!u§(param1:Point) : void
      {
         this.§9!Y§ = param1.x;
         this.§,!`§ = param1.y;
      }
   }
}

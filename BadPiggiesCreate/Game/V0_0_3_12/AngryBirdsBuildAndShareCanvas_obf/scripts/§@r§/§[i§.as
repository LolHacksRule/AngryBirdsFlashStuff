package §@r§
{
   import §0E§.§#O§;
   import §0E§.§9!Y§;
   import §3!t§.b2Vec2;
   import §4!#§.§60§;
   import §[B§.§"d§;
   import §[B§.§,!f§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[i§ extends §3!+§
   {
      
      public static const §2!c§:Number = 1;
      
      public static const §8!=§:Number = 0.3;
      
      private static const §1!M§:Number = 0.6;
      
      private static const §3!J§:int = 50;
      
      private static const §!I§:Number = 0;
      
      public static const §=o§:Number = 150;
      
      private static const §!"0§:Number = 50;
      
      public static const §1W§:Number = -§!"0§;
      
      public static const §6!>§:Number = 10;
      
      private static var §]"&§:Boolean = false;
      
      private static var §?!U§:§9!Y§ = null;
       
      
      private var §6! §:§=!k§;
      
      private var §@"#§:Number;
      
      private var §-!r§:Number;
      
      private var §5!6§:Number = 0.01;
      
      public function §[i§(param1:§"d§, param2:§#O§)
      {
         this.§6! § = new §=!k§(0,0,1,false);
         super(param1,param2);
         §<!W§ = §>!X§;
         this.§@"#§ = §3r§;
         this.§-!r§ = §^!<§;
      }
      
      public static function §@b§(param1:Boolean) : void
      {
         §]"&§ = param1;
      }
      
      override public function init() : void
      {
         if(§]"&§ && §?!U§)
         {
            if(mCurrentAction == §]!K§)
            {
               return;
            }
            this.§4y§();
            §4!v§ = 2000;
            § !I§();
            §-!n§();
            §<h§();
         }
         else
         {
            super.init();
         }
      }
      
      public function §8"0§() : void
      {
         §?!U§ = new §9!Y§();
         §?!U§.x = §3r§;
         §?!U§.y = §^!<§;
         §?!U§.scale = §>!X§;
      }
      
      public function §4y§() : void
      {
         if(!§?!U§)
         {
            §?!U§ = this.§<!e§(true);
         }
         §3r§ = this.§@"#§ = §?!U§.x;
         §^!<§ = this.§-!r§ = §?!U§.y;
         §>!X§ = §<!W§ = §?!U§.scale;
      }
      
      public function §^!g§(param1:§9!Y§) : void
      {
         §3r§ = param1.x;
         §^!<§ = param1.y;
         §<!W§ = param1.scale;
         §>!X§ = param1.scale;
         this.§@"#§ = §3r§;
         this.§-!r§ = §^!<§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§]"&§)
         {
            super.updateCamera(param1);
            return;
         }
         §<!W§ = Math.max(§<!W§,§8!=§);
         var _loc2_:Number = Math.min(this.§5!6§ * param1,0.2);
         §>!X§ -= (§>!X§ - §<!W§) * _loc2_;
         §3r§ -= (§3r§ - this.§@"#§) * _loc2_;
         §^!<§ -= (§^!<§ - this.§-!r§) * _loc2_;
         var _loc3_:Rectangle = this.§3!Y§();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / §>!X§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / §>!X§;
         §3r§ = Math.max(_loc3_.x + _loc4_,§3r§);
         §3r§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§3r§);
         §^!<§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§^!<§);
         §^!<§ = Math.min(_loc3_.y - _loc5_,§^!<§);
         § !I§();
         §-!n§();
         §<h§();
      }
      
      public function §3!Y§() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§!"0§;
         _loc1_.width = §!I§ + §=o§ - _loc1_.x;
         _loc1_.y = §6!>§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §8!=§;
         return _loc1_;
      }
      
      public function §6"?§() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / §>!X§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / §>!X§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §3r§ - _loc1_;
         _loc3_.y = §^!<§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §<!W§ += param1 * §3!+§.MANUAL_SCALE_STEP * §<!W§;
         §<!W§ = Math.max(§8!=§,Math.min(§2!c§,§<!W§));
      }
      
      public function §0M§(param1:Number, param2:Number) : void
      {
         this.§@"#§ = param1;
         this.§-!r§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§]"&§)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§9!Y§ = this.§<!e§(true);
         §<!W§ = _loc1_.scale;
         this.§0M§(_loc1_.x,_loc1_.y);
      }
      
      public function static(param1:Rectangle) : void
      {
         var _loc2_:Number = §3!+§.SCREEN_WIDTH_B2 / param1.width;
         var _loc3_:Number = §3!+§.SCREEN_HEIGHT_B2 / param1.height;
         §<!W§ = Math.min(_loc2_,_loc3_);
         this.§0M§(param1.x + param1.width / 2,param1.y + param1.height / 2);
      }
      
      override public function goToBirdView() : void
      {
         if(!§]"&§)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§9!Y§ = this.§^`§(true);
         §<!W§ = _loc1_.scale;
         this.§0M§(_loc1_.x,_loc1_.y);
      }
      
      public function §^`§(param1:Boolean = false) : §9!Y§
      {
         var _loc5_:§,!f§ = null;
         var _loc10_:§9!Y§ = null;
         var _loc3_:Point = new Point(§]!3§.slingshot.mX,§]!3§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = §6!>§;
         for each(_loc5_ in §]!3§.slingshot.mBirds)
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
            _loc10_ = this.§<!e§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = §3!+§.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = §3!+§.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§1!M§);
         }
         var _loc9_:§9!Y§;
         (_loc9_ = new §9!Y§()).id = §3!+§.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §<!e§(param1:Boolean = false) : §9!Y§
      {
         var _loc12_:§60§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §=o§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = §6!>§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §]!3§.objects.getObjectCount())
         {
            if((_loc12_ = §]!3§.objects.getObject(_loc5_)).§+3§)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §]!3§.slingshot.mX)
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
         var _loc6_:Rectangle = this.§3!Y§();
         var _loc7_:Number = §3!+§.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = §3!+§.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§1!M§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§3!+§.SCREEN_HEIGHT_B2 - §6!>§);
         var _loc11_:§9!Y§;
         (_loc11_ = new §9!Y§()).id = §3!+§.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§#O§) : void
      {
         if(!§]"&§)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§9!Y§ = this.§<!e§();
         var _loc3_:§9!Y§ = this.§^`§();
         param1.§8!e§();
         param1.§0!7§(_loc3_);
         param1.§0!7§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§]"&§)
         {
            super.loadCameraBorders();
            return;
         }
         §&",§ = -§!"0§;
         §=!U§ = §!I§ + §=o§;
         §9!m§ = §]!3§.borders.mBorderGround_B2 - 20 * §"d§.§catch§ * §"d§.§2!]§;
         §<!H§ = §]!3§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§]"&§)
         {
            return super.getZoomRatio();
         }
         return (§<!W§ - §8!=§) / (§2!c§ - §8!=§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§]"&§)
         {
            super.setZoomRatio(param1);
            return;
         }
         §<!W§ = Math.min(Math.max(param1,0),1) * (§2!c§ - §8!=§) + §8!=§;
      }
      
      public function getCenter() : Point
      {
         return new Point(§3r§,§^!<§);
      }
      
      public function §';§(param1:Point) : void
      {
         this.§@"#§ = param1.x;
         this.§-!r§ = param1.y;
      }
   }
}

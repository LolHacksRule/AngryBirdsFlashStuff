package §`a§
{
   import §-!0§.§!!s§;
   import §-!0§.§2! §;
   import §<!<§.§7E§;
   import §<!<§.§]K§;
   import §<!B§.b2Vec2;
   import §>!'§.§<!3§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^7§ extends § !U§
   {
      
      public static const §9!8§:Number = 1;
      
      public static const §&f§:Number = 0.3;
      
      private static const §;!k§:Number = 0.6;
      
      private static const §'K§:int = 50;
      
      private static const §`j§:Number = 0;
      
      public static const §,!C§:Number = 150;
      
      private static const §[!^§:Number = 50;
      
      public static const §;g§:Number = -§[!^§;
      
      public static const §;l§:Number = 10;
      
      private static var §8"§:Boolean = false;
      
      private static var §4!?§:§!!s§ = null;
       
      
      private var §%!R§:§&W§;
      
      private var §0!a§:Number;
      
      private var §7d§:Number;
      
      private var §7P§:Number;
      
      private var §#B§:Number = 0.01;
      
      public function §^7§(param1:§7E§, param2:§2! §)
      {
         this.§%!R§ = new §&W§(0,0,1,false);
         super(param1,param2);
         §3!p§ = §?C§;
         this.§0!a§ = §^T§;
         this.§7d§ = §<9§;
      }
      
      public static function §>!B§(param1:Boolean) : void
      {
         §8"§ = param1;
      }
      
      public function set xCenterB2(param1:Number) : void
      {
         §^T§ = param1;
      }
      
      public function get xCenterB2() : Number
      {
         return §^T§;
      }
      
      public function set yCenterB2(param1:Number) : void
      {
         §<9§ = param1;
      }
      
      public function get yCenterB2() : Number
      {
         return §<9§;
      }
      
      public function set §8!B§(param1:Number) : void
      {
         this.§0!a§ = param1;
      }
      
      public function get §8!B§() : Number
      {
         return this.§0!a§;
      }
      
      public function set §package§(param1:Number) : void
      {
         this.§7d§ = param1;
      }
      
      public function get §package§() : Number
      {
         return this.§7d§;
      }
      
      public function § !C§() : void
      {
         §4!?§ = new §!!s§();
         §4!?§.x = this.xCenterB2;
         §4!?§.y = this.yCenterB2;
         §4!?§.scale = §?C§;
      }
      
      public function §@!a§() : void
      {
         if(!§4!?§)
         {
            §4!?§ = this.§5w§(true);
         }
         this.xCenterB2 = this.§8!B§ = §4!?§.x;
         this.yCenterB2 = this.§package§ = §4!?§.y;
         §?C§ = §3!p§ = §4!?§.scale;
      }
      
      public function §9!4§(param1:§!!s§) : void
      {
         §^T§ = param1.x;
         §<9§ = param1.y;
         §3!p§ = param1.scale;
         §?C§ = param1.scale;
         this.§0!a§ = §^T§;
         this.§7d§ = §<9§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§8"§)
         {
            super.updateCamera(param1);
            return;
         }
         §3!p§ = Math.max(§3!p§,§&f§);
         var _loc2_:Number = Math.min(this.§#B§ * param1,1);
         §?C§ -= (§?C§ - §3!p§) * _loc2_;
         §^T§ -= (§^T§ - this.§0!a§) * _loc2_;
         §<9§ -= (§<9§ - this.§7d§) * _loc2_;
         var _loc3_:Rectangle = this.getCameraLimits();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / §?C§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / §?C§;
         §^T§ = Math.max(_loc3_.x + _loc4_,§^T§);
         §^T§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§^T§);
         §<9§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§<9§);
         §<9§ = Math.min(_loc3_.y - _loc5_,§<9§);
         §0!=§();
         §7!d§();
         §!J§();
      }
      
      public function getCameraLimits() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§[!^§;
         _loc1_.width = §`j§ + §,!C§ - _loc1_.x;
         _loc1_.y = §;l§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §&f§;
         return _loc1_;
      }
      
      public function getCurrentBorders() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / §?C§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / §?C§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §^T§ - _loc1_;
         _loc3_.y = §<9§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §3!p§ += param1 * § !U§.MANUAL_SCALE_STEP * §3!p§;
         §3!p§ = Math.max(§&f§,Math.min(§9!8§,§3!p§));
      }
      
      public function dragTo(param1:Number, param2:Number) : void
      {
         this.§0!a§ = param1;
         this.§7d§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§8"§)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§!!s§ = this.§5w§(true);
         §3!p§ = _loc1_.scale;
         this.dragTo(_loc1_.x,_loc1_.y);
      }
      
      override public function goToBirdView() : void
      {
         if(!§8"§)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§!!s§ = this.§9!'§(true);
         §3!p§ = _loc1_.scale;
         this.dragTo(_loc1_.x,_loc1_.y);
      }
      
      public function §9!'§(param1:Boolean = false) : §!!s§
      {
         var _loc5_:§]K§ = null;
         var _loc10_:§!!s§ = null;
         var _loc3_:Point = new Point(§-n§.slingshot.mX,§-n§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = §;l§;
         for each(_loc5_ in §-n§.slingshot.mBirds)
         {
            _loc4_.left = Math.min(_loc4_.left,_loc5_.mX);
            _loc4_.right = Math.max(_loc4_.right,_loc5_.mX);
            _loc4_.top = Math.min(_loc4_.top,_loc5_.mY);
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
            _loc10_ = this.§5w§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = § !U§.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = § !U§.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§;!k§);
         }
         var _loc9_:§!!s§;
         (_loc9_ = new §!!s§()).id = § !U§.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §5w§(param1:Boolean = false) : §!!s§
      {
         var _loc12_:§<!3§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §,!C§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = §;l§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §-n§.objects.getObjectCount())
         {
            if((_loc12_ = §-n§.objects.getObject(_loc5_)).§7T§)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §-n§.slingshot.mX)
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
         var _loc6_:Rectangle = this.getCameraLimits();
         var _loc7_:Number = § !U§.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = § !U§.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§;!k§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§ !U§.SCREEN_HEIGHT_B2 - §;l§);
         var _loc11_:§!!s§;
         (_loc11_ = new §!!s§()).id = § !U§.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§2! §) : void
      {
         if(!§8"§)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§!!s§ = this.§5w§();
         var _loc3_:§!!s§ = this.§9!'§();
         param1.§7!q§();
         param1.§,!j§(_loc3_);
         param1.§,!j§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§8"§)
         {
            super.loadCameraBorders();
            return;
         }
         §%S§ = -§[!^§;
         §7O§ = §`j§ + §,!C§;
         §1%§ = §-n§.borders.mBorderGround_B2 - 20 * §7E§.§5H§ * §7E§.§8!'§;
         §;![§ = §-n§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§8"§)
         {
            return super.getZoomRatio();
         }
         return (§3!p§ - §&f§) / (§9!8§ - §&f§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§8"§)
         {
            super.setZoomRatio(param1);
            return;
         }
         §3!p§ = Math.min(Math.max(param1,0),1) * (§9!8§ - §&f§) + §&f§;
      }
   }
}

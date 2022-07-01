package §2!§
{
   import §4!s§.§%I§;
   import §4!s§.§`!7§;
   import §7M§.§+R§;
   import §7M§.§?!p§;
   import §="§.§`T§;
   import §?!h§.b2Vec2;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>B§ extends §1!n§
   {
      
      public static const §%O§:Number = 1;
      
      public static const §2>§:Number = 0.3;
      
      private static const §>C§:Number = 0.6;
      
      private static const §=P§:int = 50;
      
      private static const §!! §:Number = 0;
      
      public static const §,g§:Number = 150;
      
      private static const §;W§:Number = 50;
      
      public static const §5!B§:Number = -§;W§;
      
      public static const §3I§:Number = 10;
      
      private static var §-U§:Boolean = false;
      
      private static var §#"!§:§?!p§ = null;
       
      
      private var §2!6§:§!!V§;
      
      private var §0!9§:Number;
      
      private var §=6§:Number;
      
      private var §#!=§:Number = 0.01;
      
      public function §>B§(param1:§%I§, param2:§+R§)
      {
         this.§2!6§ = new §!!V§(0,0,1,false);
         super(param1,param2);
         §<!>§ = § !X§;
         this.§0!9§ = §6! §;
         this.§=6§ = §^N§;
      }
      
      public static function §^"-§(param1:Boolean) : void
      {
         §-U§ = param1;
      }
      
      override public function init() : void
      {
         if(§-U§ && §#"!§)
         {
            if(mCurrentAction == §5!j§)
            {
               return;
            }
            this.§<!^§();
            §7k§ = 2000;
            §]!§();
            §5"§();
            §9!V§();
         }
         else
         {
            super.init();
         }
      }
      
      public function §@!I§() : void
      {
         §#"!§ = new §?!p§();
         §#"!§.x = §6! §;
         §#"!§.y = §^N§;
         §#"!§.scale = § !X§;
      }
      
      public function §<!^§() : void
      {
         if(!§#"!§)
         {
            §#"!§ = this.§=i§(true);
         }
         §6! § = this.§0!9§ = §#"!§.x;
         §^N§ = this.§=6§ = §#"!§.y;
         § !X§ = §<!>§ = §#"!§.scale;
      }
      
      public function §"`§(param1:§?!p§) : void
      {
         §6! § = param1.x;
         §^N§ = param1.y;
         §<!>§ = param1.scale;
         § !X§ = param1.scale;
         this.§0!9§ = §6! §;
         this.§=6§ = §^N§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§-U§)
         {
            super.updateCamera(param1);
            return;
         }
         §<!>§ = Math.max(§<!>§,§2>§);
         var _loc2_:Number = Math.min(this.§#!=§ * param1,0.5);
         § !X§ -= (§ !X§ - §<!>§) * _loc2_;
         §6! § -= (§6! § - this.§0!9§) * _loc2_;
         §^N§ -= (§^N§ - this.§=6§) * _loc2_;
         var _loc3_:Rectangle = this.§9N§();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / § !X§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / § !X§;
         §6! § = Math.max(_loc3_.x + _loc4_,§6! §);
         §6! § = Math.min(_loc3_.width + _loc3_.x - _loc4_,§6! §);
         §^N§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§^N§);
         §^N§ = Math.min(_loc3_.y - _loc5_,§^N§);
         §]!§();
         §5"§();
         §9!V§();
      }
      
      public function §9N§() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§;W§;
         _loc1_.width = §!! § + §,g§ - _loc1_.x;
         _loc1_.y = §3I§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §2>§;
         return _loc1_;
      }
      
      public function §9r§() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / § !X§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / § !X§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §6! § - _loc1_;
         _loc3_.y = §^N§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §<!>§ += param1 * §1!n§.MANUAL_SCALE_STEP * §<!>§;
         §<!>§ = Math.max(§2>§,Math.min(§%O§,§<!>§));
      }
      
      public function §2!1§(param1:Number, param2:Number) : void
      {
         this.§0!9§ = param1;
         this.§=6§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§-U§)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§?!p§ = this.§=i§(true);
         §<!>§ = _loc1_.scale;
         this.§2!1§(_loc1_.x,_loc1_.y);
      }
      
      public function §5!'§(param1:Rectangle) : void
      {
         var _loc2_:Number = §1!n§.SCREEN_WIDTH_B2 / param1.width;
         var _loc3_:Number = §1!n§.SCREEN_HEIGHT_B2 / param1.height;
         §<!>§ = Math.min(_loc2_,_loc3_);
         this.§2!1§(param1.x + param1.width / 2,param1.y + param1.height / 2);
      }
      
      override public function goToBirdView() : void
      {
         if(!§-U§)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§?!p§ = this.§"B§(true);
         §<!>§ = _loc1_.scale;
         this.§2!1§(_loc1_.x,_loc1_.y);
      }
      
      public function §"B§(param1:Boolean = false) : §?!p§
      {
         var _loc5_:§`!7§ = null;
         var _loc10_:§?!p§ = null;
         var _loc3_:Point = new Point(§,!T§.slingshot.mX,§,!T§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = §3I§;
         for each(_loc5_ in §,!T§.slingshot.mBirds)
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
            _loc10_ = this.§=i§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = §1!n§.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = §1!n§.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§>C§);
         }
         var _loc9_:§?!p§;
         (_loc9_ = new §?!p§()).id = §1!n§.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §=i§(param1:Boolean = false) : §?!p§
      {
         var _loc12_:§`T§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §,g§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = §3I§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §,!T§.objects.getObjectCount())
         {
            if((_loc12_ = §,!T§.objects.getObject(_loc5_)).§%f§)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §,!T§.slingshot.mX)
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
         var _loc6_:Rectangle = this.§9N§();
         var _loc7_:Number = §1!n§.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = §1!n§.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§>C§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§1!n§.SCREEN_HEIGHT_B2 - §3I§);
         var _loc11_:§?!p§;
         (_loc11_ = new §?!p§()).id = §1!n§.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§+R§) : void
      {
         if(!§-U§)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§?!p§ = this.§=i§();
         var _loc3_:§?!p§ = this.§"B§();
         param1.§0"5§();
         param1.§;"#§(_loc3_);
         param1.§;"#§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§-U§)
         {
            super.loadCameraBorders();
            return;
         }
         §break§ = -§;W§;
         §?!v§ = §!! § + §,g§;
         §-!t§ = §,!T§.borders.mBorderGround_B2 - 20 * §%I§.§5"1§ * §%I§.§9"4§;
         §-!p§ = §,!T§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§-U§)
         {
            return super.getZoomRatio();
         }
         return (§<!>§ - §2>§) / (§%O§ - §2>§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§-U§)
         {
            super.setZoomRatio(param1);
            return;
         }
         §<!>§ = Math.min(Math.max(param1,0),1) * (§%O§ - §2>§) + §2>§;
      }
      
      public function getCenter() : Point
      {
         return new Point(§6! §,§^N§);
      }
      
      public function §<T§(param1:Point) : void
      {
         this.§0!9§ = param1.x;
         this.§=6§ = param1.y;
      }
   }
}

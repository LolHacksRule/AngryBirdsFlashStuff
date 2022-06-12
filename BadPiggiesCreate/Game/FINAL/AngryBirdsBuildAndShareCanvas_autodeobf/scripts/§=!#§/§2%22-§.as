package §=!#§
{
   import §"v§.§4^§;
   import §"v§.§9"§;
   import §+!o§.§]"5§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§>n§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2"-§ extends §`"=§
   {
      
      public static const §2V§:Number = 1;
      
      public static const §+3§:Number = 0.3;
      
      private static const §&!q§:Number = 0.6;
      
      private static const §@,§:int = 50;
      
      private static const §3!a§:Number = 0;
      
      public static const §9m§:Number = 150;
      
      private static const §<";§:Number = 50;
      
      public static const §5w§:Number = -§<";§;
      
      public static const §^"#§:Number = 10;
      
      private static var §[J§:Boolean = false;
      
      private static var §6=§:§4^§ = null;
       
      
      private var §]!_§:§%!>§;
      
      private var §[!T§:Number;
      
      private var §"D§:Number;
      
      private var §2^§:Number = 0.01;
      
      public function §2"-§(param1:§!w§, param2:§9"§)
      {
         this.§]!_§ = new §%!>§(0,0,1,false);
         super(param1,param2);
         §6!w§ = §&"9§;
         this.§[!T§ = §#!a§;
         this.§"D§ = §8!F§;
      }
      
      public static function §@&§(param1:Boolean) : void
      {
         §[J§ = param1;
      }
      
      override public function init() : void
      {
         if(§[J§ && §6=§)
         {
            if(mCurrentAction == §0!I§)
            {
               return;
            }
            this.§!!d§();
            §!!s§ = 2000;
            §^!j§();
            §;!+§();
            §2!8§();
         }
         else
         {
            super.init();
         }
      }
      
      public function §7!G§() : void
      {
         §6=§ = new §4^§();
         §6=§.x = §#!a§;
         §6=§.y = §8!F§;
         §6=§.scale = §&"9§;
      }
      
      public function §!!d§() : void
      {
         if(!§6=§)
         {
            §6=§ = this.§<"8§(true);
         }
         §#!a§ = this.§[!T§ = §6=§.x;
         §8!F§ = this.§"D§ = §6=§.y;
         §&"9§ = §6!w§ = §6=§.scale;
      }
      
      public function §7O§(param1:§4^§) : void
      {
         §#!a§ = param1.x;
         §8!F§ = param1.y;
         §6!w§ = param1.scale;
         §&"9§ = param1.scale;
         this.§[!T§ = §#!a§;
         this.§"D§ = §8!F§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§[J§)
         {
            super.updateCamera(param1);
            return;
         }
         §6!w§ = Math.max(§6!w§,§+3§);
         var _loc2_:Number = Math.min(this.§2^§ * param1,0.2);
         §&"9§ -= (§&"9§ - §6!w§) * _loc2_;
         §#!a§ -= (§#!a§ - this.§[!T§) * _loc2_;
         §8!F§ -= (§8!F§ - this.§"D§) * _loc2_;
         var _loc3_:Rectangle = this.§!!u§();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / §&"9§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / §&"9§;
         §#!a§ = Math.max(_loc3_.x + _loc4_,§#!a§);
         §#!a§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§#!a§);
         §8!F§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§8!F§);
         §8!F§ = Math.min(_loc3_.y - _loc5_,§8!F§);
         §^!j§();
         §;!+§();
         §2!8§();
      }
      
      public function §!!u§() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§<";§;
         _loc1_.width = §3!a§ + §9m§ - _loc1_.x;
         _loc1_.y = §^"#§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §+3§;
         return _loc1_;
      }
      
      public function §^"6§() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / §&"9§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / §&"9§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §#!a§ - _loc1_;
         _loc3_.y = §8!F§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §6!w§ += param1 * §`"=§.MANUAL_SCALE_STEP * §6!w§;
         §6!w§ = Math.max(§+3§,Math.min(§2V§,§6!w§));
      }
      
      public function §@!D§(param1:Number, param2:Number) : void
      {
         this.§[!T§ = param1;
         this.§"D§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§[J§)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§4^§ = this.§<"8§(true);
         §6!w§ = _loc1_.scale;
         this.§@!D§(_loc1_.x,_loc1_.y);
      }
      
      public function §!"1§(param1:Rectangle) : void
      {
         var _loc2_:Number = §`"=§.SCREEN_WIDTH_B2 / param1.width;
         var _loc3_:Number = §`"=§.SCREEN_HEIGHT_B2 / param1.height;
         §6!w§ = Math.min(_loc2_,_loc3_);
         this.§@!D§(param1.x + param1.width / 2,param1.y + param1.height / 2);
      }
      
      override public function goToBirdView() : void
      {
         if(!§[J§)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§4^§ = this.§]!N§(true);
         §6!w§ = _loc1_.scale;
         this.§@!D§(_loc1_.x,_loc1_.y);
      }
      
      public function §]!N§(param1:Boolean = false) : §4^§
      {
         var _loc5_:§>n§ = null;
         var _loc10_:§4^§ = null;
         var _loc3_:Point = new Point(§9q§.slingshot.mX,§9q§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = §^"#§;
         for each(_loc5_ in §9q§.slingshot.mBirds)
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
            _loc10_ = this.§<"8§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = §`"=§.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = §`"=§.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§&!q§);
         }
         var _loc9_:§4^§;
         (_loc9_ = new §4^§()).id = §`"=§.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §<"8§(param1:Boolean = false) : §4^§
      {
         var _loc12_:§]"5§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §9m§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = §^"#§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §9q§.objects.getObjectCount())
         {
            if((_loc12_ = §9q§.objects.getObject(_loc5_)).§4" §)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §9q§.slingshot.mX)
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
         var _loc6_:Rectangle = this.§!!u§();
         var _loc7_:Number = §`"=§.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = §`"=§.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§&!q§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§`"=§.SCREEN_HEIGHT_B2 - §^"#§);
         var _loc11_:§4^§;
         (_loc11_ = new §4^§()).id = §`"=§.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§9"§) : void
      {
         if(!§[J§)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§4^§ = this.§<"8§();
         var _loc3_:§4^§ = this.§]!N§();
         param1.§7!k§();
         param1.§="8§(_loc3_);
         param1.§="8§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§[J§)
         {
            super.loadCameraBorders();
            return;
         }
         § var§ = -§<";§;
         §[!x§ = §3!a§ + §9m§;
         §="5§ = §9q§.borders.mBorderGround_B2 - 20 * §!w§.§]!U§ * §!w§.§4!-§;
         §4s§ = §9q§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§[J§)
         {
            return super.getZoomRatio();
         }
         return (§6!w§ - §+3§) / (§2V§ - §+3§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§[J§)
         {
            super.setZoomRatio(param1);
            return;
         }
         §6!w§ = Math.min(Math.max(param1,0),1) * (§2V§ - §+3§) + §+3§;
      }
      
      public function getCenter() : Point
      {
         return new Point(§#!a§,§8!F§);
      }
      
      public function §0'§(param1:Point) : void
      {
         this.§[!T§ = param1.x;
         this.§"D§ = param1.y;
      }
   }
}

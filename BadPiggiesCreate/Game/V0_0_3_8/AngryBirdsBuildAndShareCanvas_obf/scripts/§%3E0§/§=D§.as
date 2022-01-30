package §>0§
{
   import §%!&§.§;!x§;
   import §%h§.§5!K§;
   import §%h§.§5X§;
   import §'!O§.§+!V§;
   import §'!O§.§@!l§;
   import §9v§.b2Vec2;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=D§ extends §'L§
   {
      
      public static const §+[§:Number = 1;
      
      public static const §>a§:Number = 0.3;
      
      private static const §2!L§:Number = 0.6;
      
      private static const §;""§:int = 50;
      
      private static const §]!E§:Number = 0;
      
      public static const §#d§:Number = 150;
      
      private static const §"!;§:Number = 50;
      
      public static const §9!f§:Number = -§"!;§;
      
      public static const §2!N§:Number = 10;
      
      private static var §#N§:Boolean = false;
      
      private static var §#4§:§+!V§ = null;
       
      
      private var §;!S§:§-!X§;
      
      private var §9!&§:Number;
      
      private var §45§:Number;
      
      private var §0!>§:Number = 0.01;
      
      public function §=D§(param1:§5X§, param2:§@!l§)
      {
         this.§;!S§ = new §-!X§(0,0,1,false);
         super(param1,param2);
         §,!V§ = §,!C§;
         this.§9!&§ = §>!A§;
         this.§45§ = §7!Z§;
      }
      
      public static function §0!E§(param1:Boolean) : void
      {
         §#N§ = param1;
      }
      
      override public function init() : void
      {
         if(§#N§ && §#4§)
         {
            if(mCurrentAction == §8G§)
            {
               return;
            }
            this.§2"#§();
            §^!R§ = 2000;
            §<!H§();
            §&!L§();
            §6"$§();
         }
         else
         {
            super.init();
         }
      }
      
      public function §3!V§() : void
      {
         §#4§ = new §+!V§();
         §#4§.x = §>!A§;
         §#4§.y = §7!Z§;
         §#4§.scale = §,!C§;
      }
      
      public function §2"#§() : void
      {
         if(!§#4§)
         {
            §#4§ = this.§%!=§(true);
         }
         §>!A§ = this.§9!&§ = §#4§.x;
         §7!Z§ = this.§45§ = §#4§.y;
         §,!C§ = §,!V§ = §#4§.scale;
      }
      
      public function §5v§(param1:§+!V§) : void
      {
         §>!A§ = param1.x;
         §7!Z§ = param1.y;
         §,!V§ = param1.scale;
         §,!C§ = param1.scale;
         this.§9!&§ = §>!A§;
         this.§45§ = §7!Z§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§#N§)
         {
            super.updateCamera(param1);
            return;
         }
         §,!V§ = Math.max(§,!V§,§>a§);
         var _loc2_:Number = Math.min(this.§0!>§ * param1,1);
         §,!C§ -= (§,!C§ - §,!V§) * _loc2_;
         §>!A§ -= (§>!A§ - this.§9!&§) * _loc2_;
         §7!Z§ -= (§7!Z§ - this.§45§) * _loc2_;
         var _loc3_:Rectangle = this.§7;§();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / §,!C§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / §,!C§;
         §>!A§ = Math.max(_loc3_.x + _loc4_,§>!A§);
         §>!A§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§>!A§);
         §7!Z§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§7!Z§);
         §7!Z§ = Math.min(_loc3_.y - _loc5_,§7!Z§);
         §<!H§();
         §&!L§();
         §6"$§();
      }
      
      public function §7;§() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§"!;§;
         _loc1_.width = §]!E§ + §#d§ - _loc1_.x;
         _loc1_.y = §2!N§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §>a§;
         return _loc1_;
      }
      
      public function §5!x§() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / §,!C§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / §,!C§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §>!A§ - _loc1_;
         _loc3_.y = §7!Z§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §,!V§ += param1 * §'L§.MANUAL_SCALE_STEP * §,!V§;
         §,!V§ = Math.max(§>a§,Math.min(§+[§,§,!V§));
      }
      
      public function §4"#§(param1:Number, param2:Number) : void
      {
         this.§9!&§ = param1;
         this.§45§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§#N§)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§+!V§ = this.§%!=§(true);
         §,!V§ = _loc1_.scale;
         this.§4"#§(_loc1_.x,_loc1_.y);
      }
      
      override public function goToBirdView() : void
      {
         if(!§#N§)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§+!V§ = this.§"s§(true);
         §,!V§ = _loc1_.scale;
         this.§4"#§(_loc1_.x,_loc1_.y);
      }
      
      public function §"s§(param1:Boolean = false) : §+!V§
      {
         var _loc5_:§5!K§ = null;
         var _loc10_:§+!V§ = null;
         var _loc3_:Point = new Point(§>"2§.slingshot.mX,§>"2§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = §2!N§;
         for each(_loc5_ in §>"2§.slingshot.mBirds)
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
            _loc10_ = this.§%!=§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = §'L§.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = §'L§.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§2!L§);
         }
         var _loc9_:§+!V§;
         (_loc9_ = new §+!V§()).id = §'L§.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §%!=§(param1:Boolean = false) : §+!V§
      {
         var _loc12_:§;!x§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §#d§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = §2!N§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §>"2§.objects.getObjectCount())
         {
            if((_loc12_ = §>"2§.objects.getObject(_loc5_)).§>!8§)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §>"2§.slingshot.mX)
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
         var _loc6_:Rectangle = this.§7;§();
         var _loc7_:Number = §'L§.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = §'L§.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§2!L§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§'L§.SCREEN_HEIGHT_B2 - §2!N§);
         var _loc11_:§+!V§;
         (_loc11_ = new §+!V§()).id = §'L§.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§@!l§) : void
      {
         if(!§#N§)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§+!V§ = this.§%!=§();
         var _loc3_:§+!V§ = this.§"s§();
         param1.§7f§();
         param1.§3$§(_loc3_);
         param1.§3$§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§#N§)
         {
            super.loadCameraBorders();
            return;
         }
         §@2§ = -§"!;§;
         §#X§ = §]!E§ + §#d§;
         §1! § = §>"2§.borders.mBorderGround_B2 - 20 * §5X§.§+T§ * §5X§.§,!m§;
         §7!r§ = §>"2§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§#N§)
         {
            return super.getZoomRatio();
         }
         return (§,!V§ - §>a§) / (§+[§ - §>a§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§#N§)
         {
            super.setZoomRatio(param1);
            return;
         }
         §,!V§ = Math.min(Math.max(param1,0),1) * (§+[§ - §>a§) + §>a§;
      }
      
      public function getCenter() : Point
      {
         return new Point(§>!A§,§7!Z§);
      }
      
      public function §[!'§(param1:Point) : void
      {
         this.§9!&§ = param1.x;
         this.§45§ = param1.y;
      }
   }
}

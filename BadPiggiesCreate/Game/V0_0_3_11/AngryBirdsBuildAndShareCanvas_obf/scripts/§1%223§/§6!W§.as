package §1"3§
{
   import § ""§.§%,§;
   import §+%§.§+D§;
   import §+%§.§5!F§;
   import §+L§.b2Vec2;
   import §1!v§.§!,§;
   import §1!v§.§@%§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!W§ extends §`"0§
   {
      
      public static const §-" §:Number = 1;
      
      public static const §@"7§:Number = 0.3;
      
      private static const §&!d§:Number = 0.6;
      
      private static const §`k§:int = 50;
      
      private static const §[" §:Number = 0;
      
      public static const §?>§:Number = 150;
      
      private static const §?!?§:Number = 50;
      
      public static const §6!m§:Number = -§?!?§;
      
      public static const §6%§:Number = 10;
      
      private static var §4" §:Boolean = false;
      
      private static var §7!;§:§+D§ = null;
       
      
      private var §,q§:§^!%§;
      
      private var §+1§:Number;
      
      private var §-"6§:Number;
      
      private var §@+§:Number = 0.01;
      
      public function §6!W§(param1:§@%§, param2:§5!F§)
      {
         this.§,q§ = new §^!%§(0,0,1,false);
         super(param1,param2);
         §^!C§ = §,!Q§;
         this.§+1§ = §2!,§;
         this.§-"6§ = §"""§;
      }
      
      public static function §?!G§(param1:Boolean) : void
      {
         §4" § = param1;
      }
      
      override public function init() : void
      {
         if(§4" § && §7!;§)
         {
            if(mCurrentAction == §<j§)
            {
               return;
            }
            this.§?F§();
            §=a§ = 2000;
            §,"3§();
            §--§();
            §4"2§();
         }
         else
         {
            super.init();
         }
      }
      
      public function §@!W§() : void
      {
         §7!;§ = new §+D§();
         §7!;§.x = §2!,§;
         §7!;§.y = §"""§;
         §7!;§.scale = §,!Q§;
      }
      
      public function §?F§() : void
      {
         if(!§7!;§)
         {
            §7!;§ = this.§4'§(true);
         }
         §2!,§ = this.§+1§ = §7!;§.x;
         §"""§ = this.§-"6§ = §7!;§.y;
         §,!Q§ = §^!C§ = §7!;§.scale;
      }
      
      public function §;g§(param1:§+D§) : void
      {
         §2!,§ = param1.x;
         §"""§ = param1.y;
         §^!C§ = param1.scale;
         §,!Q§ = param1.scale;
         this.§+1§ = §2!,§;
         this.§-"6§ = §"""§;
      }
      
      override public function updateCamera(param1:Number) : void
      {
         if(!§4" §)
         {
            super.updateCamera(param1);
            return;
         }
         §^!C§ = Math.max(§^!C§,§@"7§);
         var _loc2_:Number = Math.min(this.§@+§ * param1,0.5);
         §,!Q§ -= (§,!Q§ - §^!C§) * _loc2_;
         §2!,§ -= (§2!,§ - this.§+1§) * _loc2_;
         §"""§ -= (§"""§ - this.§-"6§) * _loc2_;
         var _loc3_:Rectangle = this.§<!z§();
         var _loc4_:Number = SCREEN_WIDTH_B2 * 0.5 / §,!Q§;
         var _loc5_:Number = SCREEN_HEIGHT_B2 * 0.5 / §,!Q§;
         §2!,§ = Math.max(_loc3_.x + _loc4_,§2!,§);
         §2!,§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§2!,§);
         §"""§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§"""§);
         §"""§ = Math.min(_loc3_.y - _loc5_,§"""§);
         §,"3§();
         §--§();
         §4"2§();
      }
      
      public function §<!z§() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = -§?!?§;
         _loc1_.width = §[" § + §?>§ - _loc1_.x;
         _loc1_.y = §6%§;
         _loc1_.height = -SCREEN_HEIGHT_B2 / §@"7§;
         return _loc1_;
      }
      
      public function §&"6§() : Rectangle
      {
         var _loc1_:Number = SCREEN_WIDTH_B2 * 0.5 / §,!Q§;
         var _loc2_:Number = SCREEN_HEIGHT_B2 * 0.5 / §,!Q§;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = §2!,§ - _loc1_;
         _loc3_.y = §"""§ - _loc2_;
         _loc3_.width = 2 * _loc1_;
         _loc3_.height = 2 * _loc2_;
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         param1 /= Math.abs(param1);
         §^!C§ += param1 * §`"0§.MANUAL_SCALE_STEP * §^!C§;
         §^!C§ = Math.max(§@"7§,Math.min(§-" §,§^!C§));
      }
      
      public function §["-§(param1:Number, param2:Number) : void
      {
         this.§+1§ = param1;
         this.§-"6§ = param2;
      }
      
      override public function goToCastleView() : void
      {
         if(!§4" §)
         {
            super.goToCastleView();
            return;
         }
         var _loc1_:§+D§ = this.§4'§(true);
         §^!C§ = _loc1_.scale;
         this.§["-§(_loc1_.x,_loc1_.y);
      }
      
      public function §2"$§(param1:Rectangle) : void
      {
         var _loc2_:Number = §`"0§.SCREEN_WIDTH_B2 / param1.width;
         var _loc3_:Number = §`"0§.SCREEN_HEIGHT_B2 / param1.height;
         §^!C§ = Math.min(_loc2_,_loc3_);
         this.§["-§(param1.x + param1.width / 2,param1.y + param1.height / 2);
      }
      
      override public function goToBirdView() : void
      {
         if(!§4" §)
         {
            super.goToBirdView();
            return;
         }
         var _loc1_:§+D§ = this.§'7§(true);
         §^!C§ = _loc1_.scale;
         this.§["-§(_loc1_.x,_loc1_.y);
      }
      
      public function §'7§(param1:Boolean = false) : §+D§
      {
         var _loc5_:§!,§ = null;
         var _loc10_:§+D§ = null;
         var _loc3_:Point = new Point(§]Z§.slingshot.mX,§]Z§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         _loc4_.bottom = §6%§;
         for each(_loc5_ in §]Z§.slingshot.mBirds)
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
            _loc10_ = this.§4'§(false);
            _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
            _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
         }
         var _loc6_:Number = §`"0§.SCREEN_WIDTH_B2 / _loc4_.width;
         var _loc7_:Number = §`"0§.SCREEN_HEIGHT_B2 / _loc4_.height;
         var _loc8_:Number = Math.min(_loc6_,_loc7_);
         if(param1)
         {
            _loc8_ = Math.min(_loc8_,§&!d§);
         }
         var _loc9_:§+D§;
         (_loc9_ = new §+D§()).id = §`"0§.CAMERA_ID_SLINGSHOT;
         _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
         _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
         _loc9_.left = _loc4_.left;
         _loc9_.top = _loc4_.top;
         _loc9_.right = _loc4_.right;
         _loc9_.bottom = _loc4_.bottom;
         _loc9_.scale = _loc8_;
         return _loc9_;
      }
      
      public function §4'§(param1:Boolean = false) : §+D§
      {
         var _loc12_:§%,§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = 0;
         _loc3_.right = _loc3_.left + §?>§ / 3;
         _loc3_.top = 0;
         _loc3_.bottom = §6%§;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < §]Z§.objects.getObjectCount())
         {
            if((_loc12_ = §]Z§.objects.getObject(_loc5_)).§&k§)
            {
               if((_loc13_ = _loc12_.getBody().GetPosition()).x >= §]Z§.slingshot.mX)
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
         var _loc6_:Rectangle = this.§<!z§();
         var _loc7_:Number = §`"0§.SCREEN_WIDTH_B2 / _loc3_.width;
         var _loc8_:Number = §`"0§.SCREEN_HEIGHT_B2 / _loc3_.height;
         var _loc9_:Number = Math.min(_loc7_,_loc8_);
         var _loc10_:Number = (_loc9_ = Math.min(_loc9_,§&!d§)) / _loc8_;
         _loc3_.top = Math.min(_loc3_.top,-§`"0§.SCREEN_HEIGHT_B2 - §6%§);
         var _loc11_:§+D§;
         (_loc11_ = new §+D§()).id = §`"0§.CAMERA_ID_CASTLE;
         _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
         _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
         _loc11_.left = _loc3_.left;
         _loc11_.top = _loc3_.top;
         _loc11_.right = _loc3_.right;
         _loc11_.bottom = _loc3_.bottom;
         _loc11_.scale = _loc9_;
         return _loc11_;
      }
      
      override public function writeCameraInformation(param1:§5!F§) : void
      {
         if(!§4" §)
         {
            super.writeCameraInformation(param1);
            return;
         }
         var _loc2_:§+D§ = this.§4'§();
         var _loc3_:§+D§ = this.§'7§();
         param1.§"!t§();
         param1.§?!P§(_loc3_);
         param1.§?!P§(_loc2_);
      }
      
      override public function loadCameraBorders() : void
      {
         if(!§4" §)
         {
            super.loadCameraBorders();
            return;
         }
         §?!'§ = -§?!?§;
         §6!n§ = §[" § + §?>§;
         §[!]§ = §]Z§.borders.mBorderGround_B2 - 20 * §@%§.§7>§ * §@%§.§?k§;
         §<M§ = §]Z§.borders.mBorderGround_B2 + 4;
      }
      
      override public function getZoomRatio() : Number
      {
         if(!§4" §)
         {
            return super.getZoomRatio();
         }
         return (§^!C§ - §@"7§) / (§-" § - §@"7§);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         if(!§4" §)
         {
            super.setZoomRatio(param1);
            return;
         }
         §^!C§ = Math.min(Math.max(param1,0),1) * (§-" § - §@"7§) + §@"7§;
      }
      
      public function getCenter() : Point
      {
         return new Point(§2!,§,§"""§);
      }
      
      public function §;!_§(param1:Point) : void
      {
         this.§+1§ = param1.x;
         this.§-"6§ = param1.y;
      }
   }
}

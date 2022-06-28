package §_-0Dg§
{
   import §_-0BH§.§_-Hy§;
   import §_-4g§.§_-pX§;
   import §_-Ga§.LevelManager;
   import §_-JK§.§_-S2§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-eS§.§_-BK§;
   import §_-lt§.§_-Fh§;
   import §_-lt§.§_-eZ§;
   import §_-lt§.§_-wE§;
   import §_-qO§.§ in§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-hi§ extends §_-056§
   {
      
      public static const §_-QR§:int = 0;
      
      public static const §_-rw§:int = 1;
      
      public static const §_-M9§:int = 2;
      
      public static const §_-Pu§:int = 3;
      
      public static const §_-02G§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-013§:int = 7;
      
      protected static const §_-Bn§:Number = §_-S2§.§_-vy§ / 100;
      
      public static const §_-jh§:Number = 2000;
      
      public static const §_-6a§:Number = 2500;
      
      public static const §_-04W§:int = 5;
       
      
      public var §_-Gx§:int = 0;
      
      protected var §_-NP§:int = 0;
      
      public var §_-ti§:Number;
      
      protected var §_-1t§:Number = 0;
      
      protected var §_-uu§:Boolean = false;
      
      private var §_-2c§:Number = 0;
      
      public var §_-ha§:Number = 0;
      
      protected var §_-Q9§:Boolean;
      
      protected var §_-oU§:Number = 0;
      
      protected var §_-00R§:Number = 0;
      
      protected var §_-u2§:Boolean = true;
      
      protected var §_-4B§:§_-BK§;
      
      public function §_-hi§(param1:§_-00u§)
      {
         this.§_-4B§ = new §_-BK§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-4B§.assign(0);
         this.§_-Gx§ = -1;
         this.§_-NP§ = 0;
         this.§_-1t§ = 0;
         this.§_-uu§ = false;
         this.§_-FU§(§_-QR§);
         this.§_-ti§ = §_-jh§;
         §_-Ia§(true);
         §_-6A§.objects.setDamageEnabled(true);
         §_-6A§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §_-6A§.update(param1,true);
         this.§_-iW§(param1);
         this.§_-sg§(param1);
      }
      
      private function §_-iW§(param1:int) : void
      {
         if(this.§_-NP§ != 0)
         {
            §_-6A§.camera.adjustManualScale(this.§_-NP§ > 0,param1 * §_-Bn§);
         }
      }
      
      public function clearLevel() : void
      {
         §_-6A§.clearLevel();
         removeEventListeners();
         this.§_-Gx§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-y-§() : Boolean
      {
         if(§_-6A§.camera.mCurrentCameraSliderLocation < §_-S2§.§_-05T§)
         {
            return false;
         }
         if(!§_-6A§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-n0§(param1:int) : void
      {
         var _loc2_:§_-S2§ = §_-6A§.camera;
         if(_loc2_.§_-06C§ > 0)
         {
            _loc2_.§_-06C§ -= param1;
            if(_loc2_.§_-06C§ <= 0)
            {
               if(this.§_-y-§())
               {
                  _loc2_.§_-06C§ = -1;
                  if(§_-6A§.slingshot.birdsAvailable)
                  {
                     _loc2_.§_-hl§();
                  }
               }
               else
               {
                  _loc2_.§_-06C§ = §_-S2§.§_-sU§ / 2;
               }
            }
         }
      }
      
      public function §_-FU§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-kE§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-QR§)
         {
            this.§_-ha§ = 2000;
         }
         else if(param1 == §_-rw§)
         {
            §_-6A§.camera.goToBirdView();
         }
         else if(param1 == §_-M9§)
         {
            this.§_-Q9§ = false;
            this.§_-ha§ = 5000;
            §_-6A§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-Pu§)
         {
            §_-6A§.camera.goToCastleView();
         }
         else if(param1 == §_-02G§)
         {
            this.§_-ha§ = 2000;
            this.§_-2c§ = §_-04W§;
            §_-6A§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-ha§ = 1200;
            if(!§_-6A§.objects.mMightyEagleAdded)
            {
               §_-6A§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-ha§ = 1200;
            if(!§_-6A§.objects.mMightyEagleAdded)
            {
               §_-6A§.camera.goToBirdView();
               §_-6A§.slingshot.makeBirdsJumpForJoy();
            }
            §_-pX§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-013§)
         {
            §_-pX§.§_-j4§();
            §_-pX§.playSound("LevelFailedPigs1");
            this.§_-ha§ = 1200;
            §_-6A§.camera.goToCastleView();
            §_-6A§.objects.makePigsSmile(5);
         }
         this.§_-Gx§ = param1;
      }
      
      public function §_-5S§(param1:Number) : void
      {
         this.§_-1t§ = Math.max(this.§_-1t§,param1);
      }
      
      protected function §_-8A§() : Boolean
      {
         return §_-6A§.slingshot.mSlingShotState == §_-E0§.§_-yK§ && !§_-6A§.objects.hasBirds();
      }
      
      public function §_-sg§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§_-eZ§ = null;
         this.§_-ti§ -= param1;
         if(this.§_-uu§)
         {
            this.§_-1t§ -= param1;
            if(this.§_-1t§ < 0)
            {
               this.§_-ti§ = 0;
            }
         }
         if(this.§_-ti§ <= 0 && !this.§_-kE§(false))
         {
            this.§_-ti§ = §_-jh§;
            _loc2_ = §_-6A§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§_-uu§ || this.§_-1t§ > 0))
            {
               if((!this.§_-uu§ || this.§_-1t§ > 6000) && !§_-6A§.objects.isPigsAlive())
               {
                  this.§_-1t§ = 6000;
                  this.§_-uu§ = true;
               }
               else if(!this.§_-uu§ && this.§_-8A§())
               {
                  this.§_-1t§ = 15000;
                  this.§_-uu§ = true;
               }
            }
            else if(!§_-6A§.objects.isPigsAlive() && !§_-6A§.objects.mSardineCanAdded && !§_-6A§.objects.mMightyEagleAdded)
            {
               this.§_-Ae§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§_-8A§())
            {
               if(§_-6A§.objects.mMightyEagleAdded)
               {
                  if(§_-6A§.objects.mMightyEagleHasTouchedGround && §_-6A§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§_-Ae§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§_-6A§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§_-ti§ = §_-jh§;
                  }
               }
               else if(!§_-6A§.objects.mSardineCanAdded)
               {
                  this.§_-Ae§(§_-013§);
               }
            }
            if(this.§_-kE§(false))
            {
               §_-6A§.gameOver();
            }
         }
         this.§_-ha§ -= param1;
         if(this.§_-ha§ < 0)
         {
            this.§_-ha§ = 0;
         }
         if(this.§_-Gx§ == §_-Pu§)
         {
            §_-6A§.updatePigAnimations(param1);
            if(!§_-6A§.camera.isOnCastleView() && §_-6A§.camera.mCurrentAction != §_-S2§.§_-07O§)
            {
               this.§_-FU§(§_-rw§);
            }
         }
         else if(this.§_-Gx§ == §_-02G§)
         {
            if(this.§_-ha§ <= 0)
            {
               _loc3_ = §_-6A§.objects.hasBirds();
               if(_loc3_ && this.§_-2c§ > 0)
               {
                  this.§_-ha§ = 2000;
                  this.§_-ti§ = 0;
                  this.§_-2c§ = this.§_-2c§ - 1;
               }
               else if(!§ in§.§_-Dc§.objects.mMightyEagleAdded)
               {
                  this.§_-FU§(§_-rw§);
               }
            }
            else
            {
               §_-6A§.updatePigAnimations(param1);
            }
            if(!§_-6A§.camera.isOnCastleView() && §_-6A§.camera.mCurrentAction != §_-S2§.§_-07O§)
            {
               this.§_-FU§(§_-rw§);
            }
         }
         else if(this.§_-Gx§ == §_-QR§)
         {
            if(this.§_-ha§ <= 0)
            {
               this.§_-FU§(§_-rw§);
            }
         }
         else if(this.§_-Gx§ == §_-rw§)
         {
            if(§_-6A§.camera.isOnCastleView() && §_-6A§.camera.mCurrentAction != §_-S2§.§_-07O§)
            {
               this.§_-FU§(§_-Pu§);
            }
         }
         else if(this.§_-Gx§ == §_-M9§)
         {
            if(!(_loc4_ = §_-6A§.activeObject) || _loc4_.§_-Kh§ < _loc4_.§_-8l§)
            {
               if(_loc4_ && _loc4_ is §_-wE§ && (!(_loc4_ as §_-Fh§).§_-rV§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§_-Q9§ = true;
                  this.§_-FU§(§_-02G§);
               }
               §_-6A§.activeObject = null;
               this.§_-FU§(§_-02G§);
            }
         }
         else if(this.§_-Gx§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-ha§ <= 0)
            {
               if(§_-6A§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-ha§ = 1000;
               }
               else
               {
                  this.§_-FU§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §_-Ae§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§_-uu§)
         {
            this.§_-uu§ = true;
         }
         if(new Date().time - §_-6A§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§_-6A§.slingshot.mDragging)
         {
            return;
         }
         if(§_-6A§.objects.isWorldAtSleep())
         {
            this.§_-1t§ = Math.min(this.§_-1t§,3500);
         }
         if(this.§_-1t§ <= 0)
         {
            this.§_-FU§(param1,param2);
         }
      }
      
      public function §_-kE§(param1:Boolean = false) : Boolean
      {
         return (this.§_-Gx§ == LEVEL_STATE_VICTORY2_END || this.§_-Gx§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-Gx§ == §_-013§) && (!param1 || this.§_-ha§ <= 0 && this.§_-Gx§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-oH§() : Boolean
      {
         return this.§_-Gx§ == LEVEL_STATE_VICTORY2_END || this.§_-Gx§ == §_-013§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.doUserZoom(param1.delta > 0);
         }
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         if(!this.§_-u2§ || !§_-6A§.mReadyToRun)
         {
            return;
         }
         if(!(§_-6A§.slingshot.mDragging || §_-6A§.camera.mDragging))
         {
            if(this.§_-Gx§ == §_-02G§ || this.§_-Gx§ == §_-Pu§ || this.§_-Gx§ == §_-rw§)
            {
               if(!§_-6A§.isPlayingReplay())
               {
                  §_-6A§.camera.adjustManualScale(param1);
               }
               else
               {
                  §_-6A§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §_-Ik§(param1:int) : void
      {
         this.§_-NP§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§_-u2§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §_-Hy§.§_-7h§();
         if(this.§_-kE§(false))
         {
            return;
         }
         if(!§_-6A§.isPlayingReplay())
         {
            if(§_-6A§.activeObject && this.§_-Gx§ == §_-M9§ || this.§_-Q9§)
            {
               this.§_-Q9§ = false;
               §_-6A§.activatePowerup();
               return;
            }
            _loc4_ = §_-6A§.screenToBox2D(param1,param2);
            if(§_-6A§.slingshot.canStartDragging(_loc4_))
            {
               §_-6A§.slingshot.startDragging();
               this.§_-FU§(§_-rw§);
            }
            else
            {
               §_-6A§.camera.startDragging(param1,param2);
            }
            return;
         }
         §_-6A§.camera.startDragging(param1,param2);
         §_-6A§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-u2§)
         {
            return;
         }
         §_-Hy§.§_-6Z§();
         if(this.§_-Gx§ == §_-QR§)
         {
            this.§_-FU§(§_-rw§);
         }
         if(§_-6A§.slingshot.mDragging)
         {
            _loc3_ = §_-6A§.screenToBox2D(param1,param2);
            §_-6A§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§_-6A§.slingshot.canShootTheBird())
            {
               §_-6A§.slingshot.shoot();
               this.§_-FU§(§_-M9§);
            }
            else
            {
               §_-6A§.slingshot.cancelDragging();
            }
         }
         if(§_-6A§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-6A§.camera.dragToNewPoint(param1,param2);
            }
            §_-6A§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-u2§)
         {
            return;
         }
         if(§_-6A§.slingshot.mDragging)
         {
            _loc3_ = §_-6A§.screenToBox2D(param1,param2);
            §_-6A§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-6A§.camera.mDragging)
         {
            §_-6A§.camera.dragToNewPoint(param1,param2);
         }
         this.§_-oU§ = param1;
         this.§_-00R§ = param2;
      }
      
      public function §_-uU§() : Point
      {
         return new Point(this.§_-oU§,this.§_-00R§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-4B§.assign(this.§_-4B§.getValue() + param1);
         this.§_-5S§(§_-6a§);
         if(this.§_-Gx§ == §_-02G§)
         {
            this.§_-ha§ = 2000;
            this.§_-2c§ = §_-04W§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§_-4B§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§ in§.§_-Dc§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§_-U0§(LevelManager.§_-HM§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-u2§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§_-u2§ = param1;
      }
   }
}

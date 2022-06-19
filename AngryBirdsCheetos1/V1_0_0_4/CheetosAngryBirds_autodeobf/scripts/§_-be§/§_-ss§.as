package §_-be§
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-xV§;
   import §_-5b§.§_-Mm§;
   import §_-E5§.§_-Wo§;
   import §_-Fk§.§_-00L§;
   import §_-Fk§.§_-Cb§;
   import §_-Fk§.§_-ON§;
   import §_-TX§.§_-0X§;
   import §_-aD§.§_-Y5§;
   import §_-r6§.§_-oy§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import override.§_-Eu§;
   
   public class §_-ss§ extends §_-5i§
   {
      
      public static const §_-Ub§:int = 0;
      
      public static const §_-l§:int = 1;
      
      public static const §_-oK§:int = 2;
      
      public static const §_-gE§:int = 3;
      
      public static const §_-dG§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-8A§:int = 7;
      
      private static const §_-kG§:Number = §_-Eu§.§_-Dl§ / 100;
      
      public static const §_-lR§:Number = 2000;
      
      public static const §_-zT§:Number = 2500;
       
      
      public var §_-WW§:int = 0;
      
      private var §_-uN§:int = 0;
      
      public var §_-8l§:Number;
      
      protected var §_-RE§:Number = 0;
      
      protected var §_-N4§:Boolean = false;
      
      public var §_-3A§:Number = 0;
      
      protected var §_-ll§:Boolean;
      
      private var §_-eE§:Number = 0;
      
      private var §_-S-§:Number = 0;
      
      protected var §_-RU§:Boolean = true;
      
      protected var §_-cj§:§_-Y5§;
      
      public function §_-ss§(param1:§_-FL§)
      {
         this.§_-cj§ = new §_-Y5§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-cj§.§_-1a§(0);
         this.§_-WW§ = -1;
         this.§_-uN§ = 0;
         this.§_-RE§ = 0;
         this.§_-N4§ = false;
         this.§_-4c§(§_-Ub§);
         this.§_-8l§ = §_-lR§;
         §_-b0§(true);
         §_-mC§.objects.setDamageEnabled(true);
         §_-mC§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §_-mC§.update(param1,true);
         this.§_-7o§(param1);
         this.§_-88§(param1);
      }
      
      private function §_-7o§(param1:int) : void
      {
         if(this.§_-uN§ != 0)
         {
            §_-mC§.camera.adjustManualScale(this.§_-uN§ > 0,param1 * §_-kG§);
         }
      }
      
      public function clearLevel() : void
      {
         §_-mC§.clearLevel();
         removeEventListeners();
         this.§_-WW§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-Dv§() : Boolean
      {
         if(§_-mC§.camera.mCurrentCameraSliderLocation < §_-Eu§.§_-hY§)
         {
            return false;
         }
         if(!§_-mC§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-Ur§(param1:int) : void
      {
         var _loc2_:§_-Eu§ = §_-mC§.camera;
         if(_loc2_.§_-XV§ > 0)
         {
            _loc2_.§_-XV§ -= param1;
            if(_loc2_.§_-XV§ <= 0)
            {
               if(this.§_-Dv§())
               {
                  _loc2_.§_-XV§ = -1;
                  if(§_-mC§.slingshot.birdsAvailable)
                  {
                     _loc2_.§_-KU§();
                  }
               }
               else
               {
                  _loc2_.§_-XV§ = §_-Eu§.§_-5m§ / 2;
               }
            }
         }
      }
      
      public function §_-4c§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-4t§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-Ub§)
         {
            this.§_-3A§ = 2000;
         }
         else if(param1 == §_-l§)
         {
            §_-mC§.camera.goToBirdView();
         }
         else if(param1 == §_-oK§)
         {
            this.§_-ll§ = false;
            this.§_-3A§ = 5000;
            §_-mC§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-gE§)
         {
            §_-mC§.camera.goToCastleView();
         }
         else if(param1 == §_-dG§)
         {
            this.§_-3A§ = 2000;
            §_-mC§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-3A§ = 1200;
            if(!§_-mC§.objects.mMightyEagleAdded)
            {
               §_-mC§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-3A§ = 1200;
            if(!§_-mC§.objects.mMightyEagleAdded)
            {
               §_-mC§.camera.goToBirdView();
               §_-mC§.slingshot.makeBirdsJumpForJoy();
            }
            §_-Wo§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-8A§)
         {
            §_-Wo§.§_-EQ§();
            §_-Wo§.playSound("LevelFailedPigs1");
            this.§_-3A§ = 1200;
            §_-mC§.camera.goToCastleView();
            §_-mC§.objects.makePigsSmile(5);
         }
         this.§_-WW§ = param1;
      }
      
      public function §_-us§(param1:Number) : void
      {
         this.§_-RE§ = Math.max(this.§_-RE§,param1);
      }
      
      protected function §_-hF§() : Boolean
      {
         return §_-mC§.slingshot.mSlingShotState == §_-xV§.§_-Nn§ && !§_-mC§.objects.hasBirds();
      }
      
      public function §_-88§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-Cb§ = null;
         this.§_-8l§ -= param1;
         if(this.§_-N4§)
         {
            this.§_-RE§ -= param1;
            if(this.§_-RE§ < 0)
            {
               this.§_-8l§ = 0;
            }
         }
         if(this.§_-8l§ <= 0 && !this.§_-4t§(false))
         {
            this.§_-8l§ = §_-lR§;
            _loc2_ = §_-mC§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§_-N4§ || this.§_-RE§ > 0))
            {
               if((!this.§_-N4§ || this.§_-RE§ > 3000) && !§_-mC§.objects.isPigsAlive())
               {
                  this.§_-RE§ = 3000;
                  this.§_-N4§ = true;
               }
               else if(!this.§_-N4§ && this.§_-hF§())
               {
                  this.§_-RE§ = 15000;
                  this.§_-N4§ = true;
               }
            }
            else if(!§_-mC§.objects.isPigsAlive() && !§_-mC§.objects.mSardineCanAdded)
            {
               this.§_-5k§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§_-hF§())
            {
               if(§_-mC§.objects.mMightyEagleAdded)
               {
                  if(§_-mC§.objects.mMightyEagleHasTouchedGround && §_-mC§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§_-5k§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§_-mC§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§_-8l§ = §_-lR§;
                  }
               }
               else if(!§_-mC§.objects.mSardineCanAdded)
               {
                  this.§_-5k§(§_-8A§);
               }
            }
            if(this.§_-4t§(false))
            {
               §_-mC§.gameOver();
            }
         }
         this.§_-3A§ -= param1;
         if(this.§_-3A§ < 0)
         {
            this.§_-3A§ = 0;
         }
         if(this.§_-WW§ == §_-gE§)
         {
            §_-mC§.updatePigAnimations(param1);
            if(!§_-mC§.camera.isOnCastleView() && §_-mC§.camera.mCurrentAction != §_-Eu§.§_-yD§)
            {
               this.§_-4c§(§_-l§);
            }
         }
         else if(this.§_-WW§ == §_-dG§)
         {
            if(this.§_-3A§ <= 0)
            {
               if(§_-mC§.objects.isWorldAtSleep())
               {
                  if(!§_-0X§.§_-O2§.objects.mMightyEagleAdded)
                  {
                     this.§_-4c§(§_-l§);
                  }
               }
               else
               {
                  this.§_-8l§ = 0;
                  this.§_-3A§ = 2000;
               }
            }
            else
            {
               §_-mC§.updatePigAnimations(param1);
            }
            if(!§_-mC§.camera.isOnCastleView() && §_-mC§.camera.mCurrentAction != §_-Eu§.§_-yD§)
            {
               this.§_-4c§(§_-l§);
            }
         }
         else if(this.§_-WW§ == §_-Ub§)
         {
            if(this.§_-3A§ <= 0)
            {
               this.§_-4c§(§_-l§);
            }
         }
         else if(this.§_-WW§ == §_-l§)
         {
            if(§_-mC§.camera.isOnCastleView() && §_-mC§.camera.mCurrentAction != §_-Eu§.§_-yD§)
            {
               this.§_-4c§(§_-gE§);
            }
         }
         else if(this.§_-WW§ == §_-oK§)
         {
            _loc3_ = §_-mC§.activeObject;
            if(!_loc3_ || _loc3_.§_-tR§ < _loc3_.§_-m1§)
            {
               if(_loc3_ && _loc3_ is §_-00L§ && (!(_loc3_ as §_-ON§).§null§ || _loc3_.getSpecialAnimationProgress() >= 0))
               {
                  this.§_-ll§ = true;
                  this.§_-4c§(§_-dG§);
               }
               §_-mC§.activeObject = null;
               this.§_-4c§(§_-dG§);
            }
         }
         else if(this.§_-WW§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-3A§ <= 0)
            {
               if(§_-mC§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-3A§ = 1000;
               }
               else
               {
                  this.§_-4c§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §_-5k§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§_-N4§)
         {
            this.§_-N4§ = true;
         }
         if(§_-mC§.objects.isWorldAtSleep())
         {
            this.§_-RE§ = 0;
         }
         if(this.§_-RE§ <= 0)
         {
            this.§_-4c§(param1,param2);
         }
      }
      
      public function §_-4t§(param1:Boolean = false) : Boolean
      {
         return (this.§_-WW§ == LEVEL_STATE_VICTORY2_END || this.§_-WW§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-WW§ == §_-8A§) && (!param1 || this.§_-3A§ <= 0 && this.§_-WW§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-6h§() : Boolean
      {
         return this.§_-WW§ == LEVEL_STATE_VICTORY2_END || this.§_-WW§ == §_-8A§;
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
         if(!this.§_-RU§ || !§_-mC§.mReadyToRun)
         {
            return;
         }
         if(!(§_-mC§.slingshot.mDragging || §_-mC§.camera.mDragging))
         {
            if(this.§_-WW§ == §_-dG§ || this.§_-WW§ == §_-gE§ || this.§_-WW§ == §_-l§)
            {
               if(!§_-mC§.isPlayingReplay())
               {
                  §_-mC§.camera.adjustManualScale(param1);
               }
               else
               {
                  §_-mC§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §_-qK§(param1:int) : void
      {
         this.§_-uN§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§_-RU§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §_-oy§.§_-6D§();
         if(this.§_-4t§(false))
         {
            return;
         }
         if(!§_-mC§.isPlayingReplay())
         {
            if(§_-mC§.activeObject && this.§_-WW§ == §_-oK§ || this.§_-ll§)
            {
               this.§_-ll§ = false;
               §_-mC§.activatePowerup();
               return;
            }
            _loc4_ = §_-mC§.screenToBox2D(param1,param2);
            if(§_-mC§.slingshot.canStartDragging(_loc4_))
            {
               §_-mC§.slingshot.startDragging();
               this.§_-4c§(§_-l§);
            }
            else
            {
               §_-mC§.camera.startDragging(param1,param2);
            }
            return;
         }
         §_-mC§.camera.startDragging(param1,param2);
         §_-mC§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-RU§)
         {
            return;
         }
         §_-oy§.§_-4e§();
         if(this.§_-WW§ == §_-Ub§)
         {
            this.§_-4c§(§_-l§);
         }
         if(§_-mC§.slingshot.mDragging)
         {
            _loc3_ = §_-mC§.screenToBox2D(param1,param2);
            §_-mC§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§_-mC§.slingshot.canShootTheBird())
            {
               §_-mC§.slingshot.shoot();
               this.§_-4c§(§_-oK§);
            }
            else
            {
               §_-mC§.slingshot.cancelDragging();
            }
         }
         if(§_-mC§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-mC§.camera.dragToNewPoint(param1,param2);
            }
            §_-mC§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-RU§)
         {
            return;
         }
         if(§_-mC§.slingshot.mDragging)
         {
            _loc3_ = §_-mC§.screenToBox2D(param1,param2);
            §_-mC§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-mC§.camera.mDragging)
         {
            §_-mC§.camera.dragToNewPoint(param1,param2);
         }
         this.§_-eE§ = param1;
         this.§_-S-§ = param2;
      }
      
      public function §_-Fi§() : Point
      {
         return new Point(this.§_-eE§,this.§_-S-§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-cj§.§_-1a§(this.§_-cj§.getValue() + param1);
         this.§_-us§(§_-zT§);
      }
      
      override public function getScore() : int
      {
         return this.§_-cj§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§_-0X§.§_-O2§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §_-Mm§.§_-Bp§(§_-Mm§.§_-Kw§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-RU§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§_-RU§ = param1;
      }
   }
}

package §_-ux§
{
   import §_-7T§.§_-yJ§;
   import §_-94§.§_-si§;
   import §_-Kz§.§_-c3§;
   import §_-Kz§.§_-hD§;
   import §_-MP§.§_-N5§;
   import §_-Me§.§_-61§;
   import §_-VH§.§_-X6§;
   import §_-aA§.§_-HE§;
   import §_-fr§.§_-FX§;
   import §_-fr§.§_-ZS§;
   import §_-fr§.§_-aZ§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-zm§ extends §_-tH§
   {
      
      public static const §_-nr§:int = 0;
      
      public static const §_-iu§:int = 1;
      
      public static const §_-TJ§:int = 2;
      
      public static const §return§:int = 3;
      
      public static const §_-vi§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-TF§:int = 7;
      
      private static const §_-4D§:Number = §_-yJ§.§_-P7§ / 100;
      
      public static const §_-zu§:Number = 2000;
      
      public static const §_-d4§:Number = 2500;
       
      
      public var §_-oy§:int = 0;
      
      private var §_-h-§:int = 0;
      
      protected var §_-wP§:Number = 0;
      
      public var §_-2k§:Number;
      
      protected var §_-iv§:Number = 0;
      
      private var §_-DA§:Number = NaN;
      
      public var §_-JP§:Number = 0;
      
      protected var §_-SX§:Boolean;
      
      private var §_-QA§:Number = 0;
      
      private var §_-vB§:Number = 0;
      
      protected var §_-Cm§:Boolean = true;
      
      protected var §_-ld§:§_-61§;
      
      public function §_-zm§(param1:§_-c3§)
      {
         this.§_-ld§ = new §_-61§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-ld§.§_-ak§(0);
         this.§_-oy§ = -1;
         this.§_-h-§ = 0;
         this.§_-wP§ = 0;
         this.§_-DA§ = NaN;
         this.§_-AK§(§_-nr§);
         this.§_-2k§ = §_-zu§;
         §_-gr§(true);
         §_-GF§.objects.setDamageEnabled(true);
         §_-GF§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §_-GF§.update(param1,true);
         this.§_-cp§(param1);
         this.§_-BK§(param1);
      }
      
      private function §_-cp§(param1:int) : void
      {
         if(this.§_-h-§ != 0)
         {
            §_-GF§.camera.adjustManualScale(this.§_-h-§ > 0,param1 * §_-4D§);
         }
      }
      
      public function clearLevel() : void
      {
         §_-GF§.clearLevel();
         removeEventListeners();
         this.§_-oy§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-Ug§() : Boolean
      {
         if(§_-GF§.camera.mCurrentCameraSliderLocation < §_-yJ§.§_-ZE§)
         {
            return false;
         }
         if(!§_-GF§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-uO§(param1:int) : void
      {
         var _loc2_:§_-yJ§ = §_-GF§.camera;
         if(_loc2_.§_-GW§ > 0)
         {
            _loc2_.§_-GW§ -= param1;
            if(_loc2_.§_-GW§ <= 0)
            {
               if(this.§_-Ug§())
               {
                  _loc2_.§_-GW§ = -1;
                  if(§_-GF§.slingshot.birdsAvailable)
                  {
                     _loc2_.§_-Zq§();
                  }
               }
               else
               {
                  _loc2_.§_-GW§ = §_-yJ§.§_-RK§ / 2;
               }
            }
         }
      }
      
      public function §_-AK§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-jE§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-nr§)
         {
            this.§_-JP§ = 2000;
         }
         else if(param1 == §_-iu§)
         {
            §_-GF§.camera.goToBirdView();
         }
         else if(param1 == §_-TJ§)
         {
            this.§_-SX§ = false;
            this.§_-JP§ = 5000;
            §_-GF§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §return§)
         {
            §_-GF§.camera.goToCastleView();
         }
         else if(param1 == §_-vi§)
         {
            this.§_-JP§ = 2000;
            §_-GF§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-JP§ = 1200;
            if(!§_-GF§.objects.mMightyEagleAdded)
            {
               §_-GF§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-JP§ = 1200;
            if(!§_-GF§.objects.mMightyEagleAdded)
            {
               §_-GF§.camera.goToBirdView();
               §_-GF§.slingshot.makeBirdsJumpForJoy();
            }
            §_-X6§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-TF§)
         {
            §_-X6§.§_-bm§();
            §_-X6§.playSound("LevelFailedPigs1");
            this.§_-JP§ = 1200;
            §_-GF§.camera.goToCastleView();
            §_-GF§.objects.makePigsSmile(5);
         }
         this.§_-oy§ = param1;
      }
      
      public function §_-hV§(param1:Number) : void
      {
         this.§_-iv§ = Math.max(this.§_-iv§,param1);
      }
      
      public function §_-BK§(param1:Number) : void
      {
         var _loc2_:§_-FX§ = null;
         if(this.§_-iv§ > 0)
         {
            this.§_-iv§ -= param1;
         }
         this.§_-2k§ -= param1;
         if(!isNaN(this.§_-DA§))
         {
            this.§_-DA§ -= param1;
            if(this.§_-DA§ < 0)
            {
               this.§_-2k§ = 0;
            }
         }
         if(this.§_-2k§ <= 0 && !this.§_-jE§(false))
         {
            this.§_-2k§ = §_-zu§;
            if(!§_-GF§.objects.isWorldAtSleep() && (isNaN(this.§_-DA§) || this.§_-DA§ > 0))
            {
               if(!§_-GF§.objects.isPigsAlive() && (isNaN(this.§_-DA§) || this.§_-DA§ > 3000))
               {
                  this.§_-DA§ = 3000;
               }
               else if(isNaN(this.§_-DA§) && §_-GF§.slingshot.mSlingShotState == §_-hD§.§_-Xw§)
               {
                  this.§_-DA§ = 15000;
               }
            }
            else if(!§_-GF§.objects.isPigsAlive() && !§_-GF§.objects.mSardineCanAdded)
            {
               if(this.§_-iv§ <= 0)
               {
                  this.§_-AK§(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
            }
            else if(§_-GF§.slingshot.mSlingShotState == §_-hD§.§_-Xw§)
            {
               if(§_-GF§.objects.mMightyEagleAdded)
               {
                  if(§_-GF§.objects.mMightyEagleHasTouchedGround && §_-GF§.objects.mMightyEagleTimer > 5500)
                  {
                     if(this.§_-iv§ <= 0)
                     {
                        this.§_-AK§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                     }
                  }
                  else if(§_-GF§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§_-2k§ = §_-zu§;
                  }
               }
               else if(!§_-GF§.objects.mSardineCanAdded)
               {
                  this.§_-AK§(§_-TF§);
               }
            }
            if(this.§_-jE§(false))
            {
               §_-GF§.gameOver();
            }
         }
         this.§_-JP§ -= param1;
         if(this.§_-JP§ < 0)
         {
            this.§_-JP§ = 0;
         }
         if(this.§_-oy§ == §return§)
         {
            §_-GF§.updatePigAnimations(param1);
            if(!§_-GF§.camera.isOnCastleView() && §_-GF§.camera.mCurrentAction != §_-yJ§.§_-iB§)
            {
               this.§_-AK§(§_-iu§);
            }
         }
         else if(this.§_-oy§ == §_-vi§)
         {
            if(this.§_-JP§ <= 0)
            {
               if(§_-GF§.objects.isWorldAtSleep())
               {
                  if(!§_-si§.§_-HI§.objects.mMightyEagleAdded)
                  {
                     this.§_-AK§(§_-iu§);
                  }
               }
               else
               {
                  this.§_-2k§ = 0;
                  this.§_-JP§ = 2000;
               }
            }
            else
            {
               §_-GF§.updatePigAnimations(param1);
            }
            if(!§_-GF§.camera.isOnCastleView() && §_-GF§.camera.mCurrentAction != §_-yJ§.§_-iB§)
            {
               this.§_-AK§(§_-iu§);
            }
         }
         else if(this.§_-oy§ == §_-nr§)
         {
            if(this.§_-JP§ <= 0)
            {
               this.§_-AK§(§_-iu§);
            }
         }
         else if(this.§_-oy§ == §_-iu§)
         {
            if(§_-GF§.camera.isOnCastleView() && §_-GF§.camera.mCurrentAction != §_-yJ§.§_-iB§)
            {
               this.§_-AK§(§return§);
            }
         }
         else if(this.§_-oy§ == §_-TJ§)
         {
            _loc2_ = §_-GF§.activeObject;
            if(!_loc2_ || _loc2_.§_-KZ§ < _loc2_.§_-EU§)
            {
               if(_loc2_ && _loc2_ is §_-aZ§ && (!(_loc2_ as §_-ZS§).§_-5p§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  this.§_-SX§ = true;
                  this.§_-AK§(§_-vi§);
               }
               §_-GF§.activeObject = null;
               this.§_-AK§(§_-vi§);
            }
         }
         else if(this.§_-oy§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-JP§ <= 0)
            {
               if(§_-GF§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-JP§ = 1000;
               }
               else
               {
                  this.§_-AK§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-jE§(param1:Boolean = false) : Boolean
      {
         return (this.§_-oy§ == LEVEL_STATE_VICTORY2_END || this.§_-oy§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-oy§ == §_-TF§) && (!param1 || this.§_-JP§ <= 0 && this.§_-oy§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-NQ§() : Boolean
      {
         return this.§_-oy§ == LEVEL_STATE_VICTORY2_END || this.§_-oy§ == §_-TF§;
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
         if(!this.§_-Cm§ || !§_-GF§.mReadyToRun)
         {
            return;
         }
         if(!(§_-GF§.slingshot.mDragging || §_-GF§.camera.mDragging))
         {
            if(this.§_-oy§ == §_-vi§ || this.§_-oy§ == §return§ || this.§_-oy§ == §_-iu§)
            {
               if(!§_-GF§.isPlayingReplay())
               {
                  §_-GF§.camera.adjustManualScale(param1);
               }
               else
               {
                  §_-GF§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §_-hj§(param1:int) : void
      {
         this.§_-h-§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§_-Cm§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §_-HE§.§_-Df§();
         if(this.§_-jE§(false))
         {
            return;
         }
         if(!§_-GF§.isPlayingReplay())
         {
            if(§_-GF§.activeObject && this.§_-oy§ == §_-TJ§ || this.§_-SX§)
            {
               this.§_-SX§ = false;
               §_-GF§.activatePowerup();
               return;
            }
            _loc4_ = §_-GF§.screenToBox2D(param1,param2);
            if(§_-GF§.slingshot.canStartDragging(_loc4_))
            {
               §_-GF§.slingshot.startDragging();
               this.§_-AK§(§_-iu§);
            }
            else
            {
               §_-GF§.camera.startDragging(param1,param2);
            }
            return;
         }
         §_-GF§.camera.startDragging(param1,param2);
         §_-GF§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-Cm§)
         {
            return;
         }
         §_-HE§.§_-te§();
         if(this.§_-oy§ == §_-nr§)
         {
            this.§_-AK§(§_-iu§);
         }
         if(§_-GF§.slingshot.mDragging)
         {
            _loc3_ = §_-GF§.screenToBox2D(param1,param2);
            §_-GF§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§_-GF§.slingshot.canShootTheBird())
            {
               §_-GF§.slingshot.shoot();
               this.§_-AK§(§_-TJ§);
            }
            else
            {
               §_-GF§.slingshot.cancelDragging();
            }
         }
         if(§_-GF§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-GF§.camera.dragToNewPoint(param1,param2);
            }
            §_-GF§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-Cm§)
         {
            return;
         }
         if(§_-GF§.slingshot.mDragging)
         {
            _loc3_ = §_-GF§.screenToBox2D(param1,param2);
            §_-GF§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-GF§.camera.mDragging)
         {
            §_-GF§.camera.dragToNewPoint(param1,param2);
         }
         this.§_-QA§ = param1;
         this.§_-vB§ = param2;
      }
      
      public function §_-7R§() : Point
      {
         return new Point(this.§_-QA§,this.§_-vB§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-ld§.§_-ak§(this.§_-ld§.getValue() + param1);
         this.§_-iv§ = §_-d4§;
      }
      
      override public function getScore() : int
      {
         return this.§_-ld§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§_-si§.§_-HI§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §_-N5§.§_-pj§(§_-N5§.§_-sI§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-Cm§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§_-Cm§ = param1;
      }
   }
}

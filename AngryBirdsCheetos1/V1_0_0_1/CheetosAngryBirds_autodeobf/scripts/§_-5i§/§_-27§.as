package §_-5i§
{
   import §_-2r§.§_-Qo§;
   import §_-2r§.§_-sn§;
   import §_-T8§.§_-Sa§;
   import §_-TC§.§_-uk§;
   import §_-U0§.§_-M9§;
   import §_-bl§.§_-G4§;
   import §_-bl§.§_-Ie§;
   import §_-bl§.§_-ag§;
   import §_-cb§.§_-0B§;
   import §_-gC§.§_-XR§;
   import §_-wO§.§_-IC§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-27§ extends §_-l5§
   {
      
      public static const §_-bF§:int = 0;
      
      public static const §_-ey§:int = 1;
      
      public static const §_-L7§:int = 2;
      
      public static const §_-VF§:int = 3;
      
      public static const §_-Za§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-1V§:int = 7;
      
      private static const §_-iT§:Number = §_-uk§.§_-MO§ / 100;
      
      public static const §_-Ey§:Number = 2000;
      
      public static const §_-dF§:Number = 2500;
       
      
      public var §_-Jn§:int = 0;
      
      private var static:int = 0;
      
      protected var §_-2c§:Number = 0;
      
      public var §_-zN§:Number;
      
      protected var §_-ok§:Number = 0;
      
      private var §_-uO§:Number = NaN;
      
      public var §_-3U§:Number = 0;
      
      protected var §_-AR§:Boolean;
      
      private var §_-Xj§:Number = 0;
      
      private var §_-CG§:Number = 0;
      
      protected var §_-N6§:Boolean = true;
      
      protected var §_-D§:§_-IC§;
      
      public function §_-27§(param1:§_-sn§)
      {
         this.§_-D§ = new §_-IC§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-D§.§_-li§(0);
         this.§_-Jn§ = -1;
         this.static = 0;
         this.§_-2c§ = 0;
         this.§_-uO§ = NaN;
         this.§_-wF§(§_-bF§);
         this.§_-zN§ = §_-Ey§;
         §_-ov§(true);
         §_-5F§.objects.setDamageEnabled(true);
         §_-5F§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §_-5F§.update(param1,true);
         this.§_-0-S§(param1);
         this.§_-008§(param1);
      }
      
      private function §_-0-S§(param1:int) : void
      {
         if(this.static != 0)
         {
            §_-5F§.camera.adjustManualScale(this.static > 0,param1 * §_-iT§);
         }
      }
      
      public function clearLevel() : void
      {
         §_-5F§.clearLevel();
         removeEventListeners();
         this.§_-Jn§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-9x§() : Boolean
      {
         if(§_-5F§.camera.mCurrentCameraSliderLocation < §_-uk§.§_-9i§)
         {
            return false;
         }
         if(!§_-5F§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-Nh§(param1:int) : void
      {
         var _loc2_:§_-uk§ = §_-5F§.camera;
         if(_loc2_.§_-ee§ > 0)
         {
            _loc2_.§_-ee§ -= param1;
            if(_loc2_.§_-ee§ <= 0)
            {
               if(this.§_-9x§())
               {
                  _loc2_.§_-ee§ = -1;
                  if(§_-5F§.slingshot.birdsAvailable)
                  {
                     _loc2_.§_-Zt§();
                  }
               }
               else
               {
                  _loc2_.§_-ee§ = §_-uk§.§_-t2§ / 2;
               }
            }
         }
      }
      
      public function §_-wF§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-Nf§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-bF§)
         {
            this.§_-3U§ = 2000;
         }
         else if(param1 == §_-ey§)
         {
            §_-5F§.camera.goToBirdView();
         }
         else if(param1 == §_-L7§)
         {
            this.§_-AR§ = false;
            this.§_-3U§ = 5000;
            §_-5F§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-VF§)
         {
            §_-5F§.camera.goToCastleView();
         }
         else if(param1 == §_-Za§)
         {
            this.§_-3U§ = 2000;
            §_-5F§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-3U§ = 1200;
            if(!§_-5F§.objects.mMightyEagleAdded)
            {
               §_-5F§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-3U§ = 1200;
            if(!§_-5F§.objects.mMightyEagleAdded)
            {
               §_-5F§.camera.goToBirdView();
               §_-5F§.slingshot.makeBirdsJumpForJoy();
            }
            §_-0B§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-1V§)
         {
            §_-0B§.§_-ws§();
            §_-0B§.playSound("LevelFailedPigs1");
            this.§_-3U§ = 1200;
            §_-5F§.camera.goToCastleView();
            §_-5F§.objects.makePigsSmile(5);
         }
         this.§_-Jn§ = param1;
      }
      
      public function §_-5c§(param1:Number) : void
      {
         this.§_-ok§ = Math.max(this.§_-ok§,param1);
      }
      
      public function §_-008§(param1:Number) : void
      {
         var _loc2_:§_-Ie§ = null;
         if(this.§_-ok§ > 0)
         {
            this.§_-ok§ -= param1;
         }
         this.§_-zN§ -= param1;
         if(!isNaN(this.§_-uO§))
         {
            this.§_-uO§ -= param1;
            if(this.§_-uO§ < 0)
            {
               this.§_-zN§ = 0;
            }
         }
         if(this.§_-zN§ <= 0 && !this.§_-Nf§(false))
         {
            this.§_-zN§ = §_-Ey§;
            if(!§_-5F§.objects.isWorldAtSleep() && (isNaN(this.§_-uO§) || this.§_-uO§ > 0))
            {
               if(!§_-5F§.objects.isPigsAlive() && (isNaN(this.§_-uO§) || this.§_-uO§ > 3000))
               {
                  this.§_-uO§ = 3000;
               }
               else if(isNaN(this.§_-uO§) && §_-5F§.slingshot.mSlingShotState == §_-Qo§.§_-Iz§)
               {
                  this.§_-uO§ = 15000;
               }
            }
            else if(!§_-5F§.objects.isPigsAlive() && !§_-5F§.objects.mSardineCanAdded)
            {
               if(this.§_-ok§ <= 0)
               {
                  this.§_-wF§(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
            }
            else if(§_-5F§.slingshot.mSlingShotState == §_-Qo§.§_-Iz§)
            {
               if(§_-5F§.objects.mMightyEagleAdded)
               {
                  if(§_-5F§.objects.mMightyEagleHasTouchedGround && §_-5F§.objects.mMightyEagleTimer > 5500)
                  {
                     if(this.§_-ok§ <= 0)
                     {
                        this.§_-wF§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                     }
                  }
                  else if(§_-5F§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§_-zN§ = §_-Ey§;
                  }
               }
               else if(!§_-5F§.objects.mSardineCanAdded)
               {
                  this.§_-wF§(§_-1V§);
               }
            }
            if(this.§_-Nf§(false))
            {
               §_-5F§.gameOver();
            }
         }
         this.§_-3U§ -= param1;
         if(this.§_-3U§ < 0)
         {
            this.§_-3U§ = 0;
         }
         if(this.§_-Jn§ == §_-VF§)
         {
            §_-5F§.updatePigAnimations(param1);
            if(!§_-5F§.camera.isOnCastleView() && §_-5F§.camera.mCurrentAction != §_-uk§.§_-Ik§)
            {
               this.§_-wF§(§_-ey§);
            }
         }
         else if(this.§_-Jn§ == §_-Za§)
         {
            if(this.§_-3U§ <= 0)
            {
               if(§_-5F§.objects.isWorldAtSleep())
               {
                  if(!§_-XR§.§_-Xv§.objects.mMightyEagleAdded)
                  {
                     this.§_-wF§(§_-ey§);
                  }
               }
               else
               {
                  this.§_-zN§ = 0;
                  this.§_-3U§ = 2000;
               }
            }
            else
            {
               §_-5F§.updatePigAnimations(param1);
            }
            if(!§_-5F§.camera.isOnCastleView() && §_-5F§.camera.mCurrentAction != §_-uk§.§_-Ik§)
            {
               this.§_-wF§(§_-ey§);
            }
         }
         else if(this.§_-Jn§ == §_-bF§)
         {
            if(this.§_-3U§ <= 0)
            {
               this.§_-wF§(§_-ey§);
            }
         }
         else if(this.§_-Jn§ == §_-ey§)
         {
            if(§_-5F§.camera.isOnCastleView() && §_-5F§.camera.mCurrentAction != §_-uk§.§_-Ik§)
            {
               this.§_-wF§(§_-VF§);
            }
         }
         else if(this.§_-Jn§ == §_-L7§)
         {
            _loc2_ = §_-5F§.activeObject;
            if(!_loc2_ || _loc2_.§_-T5§ < _loc2_.§_-Rj§)
            {
               if(_loc2_ && _loc2_ is §_-G4§ && (!(_loc2_ as §_-ag§).§_-YL§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  this.§_-AR§ = true;
                  this.§_-wF§(§_-Za§);
               }
               §_-5F§.activeObject = null;
               this.§_-wF§(§_-Za§);
            }
         }
         else if(this.§_-Jn§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-3U§ <= 0)
            {
               if(§_-5F§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-3U§ = 1000;
               }
               else
               {
                  this.§_-wF§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-Nf§(param1:Boolean = false) : Boolean
      {
         return (this.§_-Jn§ == LEVEL_STATE_VICTORY2_END || this.§_-Jn§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-Jn§ == §_-1V§) && (!param1 || this.§_-3U§ <= 0 && this.§_-Jn§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-Da§() : Boolean
      {
         return this.§_-Jn§ == LEVEL_STATE_VICTORY2_END || this.§_-Jn§ == §_-1V§;
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
         if(!this.§_-N6§ || !§_-5F§.mReadyToRun)
         {
            return;
         }
         if(!(§_-5F§.slingshot.mDragging || §_-5F§.camera.mDragging))
         {
            if(this.§_-Jn§ == §_-Za§ || this.§_-Jn§ == §_-VF§ || this.§_-Jn§ == §_-ey§)
            {
               if(!§_-5F§.isPlayingReplay())
               {
                  §_-5F§.camera.adjustManualScale(param1);
               }
               else
               {
                  §_-5F§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §_-AX§(param1:int) : void
      {
         this.static = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§_-N6§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §_-M9§.§_-5K§();
         if(this.§_-Nf§(false))
         {
            return;
         }
         if(!§_-5F§.isPlayingReplay())
         {
            if(§_-5F§.activeObject && this.§_-Jn§ == §_-L7§ || this.§_-AR§)
            {
               this.§_-AR§ = false;
               §_-5F§.activatePowerup();
               return;
            }
            _loc4_ = §_-5F§.screenToBox2D(param1,param2);
            if(§_-5F§.slingshot.canStartDragging(_loc4_))
            {
               §_-5F§.slingshot.startDragging();
               this.§_-wF§(§_-ey§);
            }
            else
            {
               §_-5F§.camera.startDragging(param1,param2);
            }
            return;
         }
         §_-5F§.camera.startDragging(param1,param2);
         §_-5F§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-N6§)
         {
            return;
         }
         §_-M9§.§_-RI§();
         if(this.§_-Jn§ == §_-bF§)
         {
            this.§_-wF§(§_-ey§);
         }
         if(§_-5F§.slingshot.mDragging)
         {
            _loc3_ = §_-5F§.screenToBox2D(param1,param2);
            §_-5F§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§_-5F§.slingshot.canShootTheBird())
            {
               §_-5F§.slingshot.shoot();
               this.§_-wF§(§_-L7§);
            }
            else
            {
               §_-5F§.slingshot.cancelDragging();
            }
         }
         if(§_-5F§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-5F§.camera.dragToNewPoint(param1,param2);
            }
            §_-5F§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-N6§)
         {
            return;
         }
         if(§_-5F§.slingshot.mDragging)
         {
            _loc3_ = §_-5F§.screenToBox2D(param1,param2);
            §_-5F§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-5F§.camera.mDragging)
         {
            §_-5F§.camera.dragToNewPoint(param1,param2);
         }
         this.§_-Xj§ = param1;
         this.§_-CG§ = param2;
      }
      
      public function §_-G0§() : Point
      {
         return new Point(this.§_-Xj§,this.§_-CG§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-D§.§_-li§(this.§_-D§.getValue() + param1);
         this.§_-ok§ = §_-dF§;
      }
      
      override public function getScore() : int
      {
         return this.§_-D§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§_-XR§.§_-Xv§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §_-Sa§.§_-x1§(§_-Sa§.§_-LZ§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-N6§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§_-N6§ = param1;
      }
   }
}

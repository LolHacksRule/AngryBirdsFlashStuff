package §_-qb§
{
   import §_-2F§.§_-F6§;
   import §_-4K§.§_-Av§;
   import §_-7x§.§_-4O§;
   import §_-Di§.§_-ix§;
   import §_-Di§.§_-pX§;
   import §_-gM§.§_-oq§;
   import §_-pm§.§_-gb§;
   import §_-tW§.§_-f5§;
   import §_-tW§.§_-hB§;
   import §_-tW§.§_-lx§;
   import §_-ym§.§_-7s§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-Kt§ extends §_-AU§
   {
      
      public static const §_-HW§:int = 0;
      
      public static const §_-yY§:int = 1;
      
      public static const §_-0§:int = 2;
      
      public static const §_-XS§:int = 3;
      
      public static const §_-jM§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-3-§:int = 7;
      
      private static const §_-Lw§:Number = §_-7s§.§_-bF§ / 100;
      
      public static const §_-K7§:Number = 2000;
      
      public static const §_-Va§:Number = 30000;
       
      
      public var §_-Zg§:int = 0;
      
      private var §_-7-§:int = 0;
      
      protected var §_-rW§:Number = 0;
      
      public var §_-BO§:Number;
      
      public var §_-Lz§:Number = 0;
      
      private var §_-Wk§:Boolean;
      
      private var §_-Bo§:Number = 0;
      
      private var §_-Gu§:Number = 0;
      
      protected var §_-Eq§:Boolean = true;
      
      protected var §_-TQ§:§_-F6§;
      
      public function §_-Kt§(param1:§_-ix§)
      {
         this.§_-TQ§ = new §_-F6§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-TQ§.§_-fd§(0);
         this.§_-Zg§ = -1;
         this.§_-7-§ = 0;
         this.§_-rW§ = 0;
         this.§_-wV§(§_-HW§);
         this.§_-BO§ = §_-K7§;
         §_-Tg§(true);
         §_-JH§.objects.setDamageEnabled(true);
         §_-JH§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §_-JH§.update(param1,true);
         this.§_-p8§(param1);
         this.§_-fI§(param1);
      }
      
      private function §_-p8§(param1:int) : void
      {
         if(this.§_-7-§ != 0)
         {
            §_-JH§.camera.adjustManualScale(this.§_-7-§ > 0,param1 * §_-Lw§);
         }
      }
      
      public function clearLevel() : void
      {
         §_-JH§.clearLevel();
         removeEventListeners();
         this.§_-Zg§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-m1§() : Boolean
      {
         if(§_-JH§.camera.mCurrentCameraSliderLocation < §_-7s§.§_-Wf§)
         {
            return false;
         }
         if(!§_-JH§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-GM§(param1:int) : void
      {
         var _loc2_:§_-7s§ = §_-JH§.camera;
         if(_loc2_.§_-MR§ > 0)
         {
            _loc2_.§_-MR§ -= param1;
            if(_loc2_.§_-MR§ <= 0)
            {
               if(this.§_-m1§())
               {
                  _loc2_.§_-MR§ = -1;
                  if(§_-JH§.slingshot.birdsAvailable)
                  {
                     _loc2_.§_-5j§();
                  }
               }
               else
               {
                  _loc2_.§_-MR§ = §_-7s§.§_-h-§ / 2;
               }
            }
         }
      }
      
      public function §_-wV§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-qL§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-HW§)
         {
            this.§_-Lz§ = 2000;
         }
         else if(param1 == §_-yY§)
         {
            §_-JH§.camera.goToBirdView();
         }
         else if(param1 == §_-0§)
         {
            this.§_-Wk§ = false;
            this.§_-Lz§ = 5000;
            §_-JH§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-XS§)
         {
            §_-JH§.camera.goToCastleView();
         }
         else if(param1 == §_-jM§)
         {
            this.§_-Lz§ = 2000;
            §_-JH§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-Lz§ = 1200;
            if(!§_-JH§.objects.mMightyEagleAdded)
            {
               §_-JH§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-Lz§ = 1200;
            if(!§_-JH§.objects.mMightyEagleAdded)
            {
               §_-JH§.camera.goToBirdView();
               §_-JH§.slingshot.makeBirdsJumpForJoy();
            }
            §_-Av§.§_-so§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-3-§)
         {
            §_-Av§.§_-c0§();
            §_-Av§.§_-so§("LevelFailedPigs1");
            this.§_-Lz§ = 1200;
            §_-JH§.camera.goToCastleView();
            §_-JH§.objects.makePigsSmile(5);
         }
         this.§_-Zg§ = param1;
      }
      
      public function §_-fI§(param1:Number) : void
      {
         var _loc2_:§_-lx§ = null;
         this.§_-BO§ -= param1;
         if(this.§_-BO§ <= 0 && !this.§_-qL§(false))
         {
            this.§_-BO§ = §_-K7§;
            if(!§_-JH§.objects.isWorldAtSleep() && this.§_-rW§ < §_-Va§)
            {
               if(!§_-JH§.objects.isPigsAlive() || §_-JH§.slingshot.mSlingShotState == §_-pX§.§_-72§)
               {
                  this.§_-rW§ += §_-K7§;
               }
            }
            else if(!§_-JH§.objects.isPigsAlive() && !§_-JH§.objects.mSardineCanAdded)
            {
               this.§_-wV§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(§_-JH§.slingshot.mSlingShotState == §_-pX§.§_-72§)
            {
               if(§_-JH§.objects.mMightyEagleAdded)
               {
                  if(§_-JH§.objects.mMightyEagleHasTouchedGround && §_-JH§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§_-wV§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§_-JH§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§_-BO§ = §_-K7§;
                  }
               }
               else
               {
                  this.§_-wV§(§_-3-§);
               }
            }
            if(this.§_-qL§(false))
            {
               §_-JH§.gameOver();
            }
         }
         this.§_-Lz§ -= param1;
         if(this.§_-Lz§ < 0)
         {
            this.§_-Lz§ = 0;
         }
         if(this.§_-Zg§ == §_-XS§)
         {
            §_-JH§.updatePigAnimations(param1);
            if(!§_-JH§.camera.isOnCastleView() && §_-JH§.camera.mCurrentAction != §_-7s§.§_-Ql§)
            {
               this.§_-wV§(§_-yY§);
            }
         }
         else if(this.§_-Zg§ == §_-jM§)
         {
            if(this.§_-Lz§ <= 0)
            {
               if(§_-JH§.objects.isWorldAtSleep())
               {
                  if(!§_-gb§.§_-ls§.objects.mMightyEagleAdded)
                  {
                     this.§_-wV§(§_-yY§);
                  }
               }
               else
               {
                  this.§_-BO§ = 0;
                  this.§_-Lz§ = 2000;
               }
            }
            else
            {
               §_-JH§.updatePigAnimations(param1);
            }
            if(!§_-JH§.camera.isOnCastleView() && §_-JH§.camera.mCurrentAction != §_-7s§.§_-Ql§)
            {
               this.§_-wV§(§_-yY§);
            }
         }
         else if(this.§_-Zg§ == §_-HW§)
         {
            if(this.§_-Lz§ <= 0)
            {
               this.§_-wV§(§_-yY§);
            }
         }
         else if(this.§_-Zg§ == §_-yY§)
         {
            if(§_-JH§.camera.isOnCastleView() && §_-JH§.camera.mCurrentAction != §_-7s§.§_-Ql§)
            {
               this.§_-wV§(§_-XS§);
            }
         }
         else if(this.§_-Zg§ == §_-0§)
         {
            _loc2_ = §_-JH§.activeObject;
            if(!_loc2_ || _loc2_.§_-hs§ < _loc2_.§_-eV§)
            {
               if(_loc2_ && _loc2_ is §_-hB§ && (!(_loc2_ as §_-f5§).§_-dv§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  this.§_-Wk§ = true;
                  this.§_-wV§(§_-jM§);
               }
               §_-JH§.activeObject = null;
               this.§_-wV§(§_-jM§);
            }
         }
         else if(this.§_-Zg§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-Lz§ <= 0)
            {
               if(§_-JH§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-Lz§ = 1000;
               }
               else
               {
                  this.§_-wV§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-qL§(param1:Boolean = false) : Boolean
      {
         return (this.§_-Zg§ == LEVEL_STATE_VICTORY2_END || this.§_-Zg§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-Zg§ == §_-3-§) && (!param1 || this.§_-Lz§ <= 0 && this.§_-Zg§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-Vd§() : Boolean
      {
         return this.§_-Zg§ == LEVEL_STATE_VICTORY2_END || this.§_-Zg§ == §_-3-§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§_-Uo§(param1.delta > 0);
         }
      }
      
      public function §_-Uo§(param1:Boolean) : void
      {
         if(!this.§_-Eq§ || !§_-JH§.mReadyToRun)
         {
            return;
         }
         if(!(§_-JH§.slingshot.mDragging || §_-JH§.camera.mDragging))
         {
            if(this.§_-Zg§ == §_-jM§ || this.§_-Zg§ == §_-XS§ || this.§_-Zg§ == §_-yY§)
            {
               if(!§_-JH§.isPlayingReplay())
               {
                  §_-JH§.camera.adjustManualScale(param1);
               }
               else
               {
                  §_-JH§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §_-hj§(param1:int) : void
      {
         this.§_-7-§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§_-Eq§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §_-oq§.§_-E-§();
         if(this.§_-qL§(false))
         {
            return;
         }
         if(!§_-JH§.isPlayingReplay())
         {
            if(§_-JH§.activeObject && this.§_-Zg§ == §_-0§ || this.§_-Wk§)
            {
               this.§_-Wk§ = false;
               §_-JH§.activatePowerup();
               return;
            }
            _loc4_ = §_-JH§.screenToBox2D(param1,param2);
            if(§_-JH§.slingshot.canStartDragging(_loc4_))
            {
               §_-JH§.slingshot.startDragging();
               this.§_-wV§(§_-yY§);
            }
            else
            {
               §_-JH§.camera.startDragging(param1,param2);
            }
            return;
         }
         §_-JH§.camera.startDragging(param1,param2);
         §_-JH§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-Eq§)
         {
            return;
         }
         §_-oq§.§_-4m§();
         if(this.§_-Zg§ == §_-HW§)
         {
            this.§_-wV§(§_-yY§);
         }
         if(§_-JH§.slingshot.mDragging)
         {
            _loc3_ = §_-JH§.screenToBox2D(param1,param2);
            §_-JH§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§_-JH§.slingshot.canShootTheBird())
            {
               §_-JH§.slingshot.shoot();
               this.§_-wV§(§_-0§);
            }
            else
            {
               §_-JH§.slingshot.cancelDragging();
            }
         }
         if(§_-JH§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-JH§.camera.dragToNewPoint(param1,param2);
            }
            §_-JH§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-Eq§)
         {
            return;
         }
         if(§_-JH§.slingshot.mDragging)
         {
            _loc3_ = §_-JH§.screenToBox2D(param1,param2);
            §_-JH§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-JH§.camera.mDragging)
         {
            §_-JH§.camera.dragToNewPoint(param1,param2);
         }
         this.§_-Bo§ = param1;
         this.§_-Gu§ = param2;
      }
      
      public function §_-do§() : Point
      {
         return new Point(this.§_-Bo§,this.§_-Gu§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-TQ§.§_-fd§(this.§_-TQ§.getValue() + param1);
      }
      
      override public function getScore() : int
      {
         return this.§_-TQ§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§_-gb§.§_-ls§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §_-4O§.§_-Eo§(§_-4O§.§_-FH§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-Eq§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§_-Eq§ = param1;
      }
   }
}

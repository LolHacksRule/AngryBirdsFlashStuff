package §_-W3§
{
   import §_-CR§.§_-Dz§;
   import §_-CR§.§_-he§;
   import §_-CR§.§_-zf§;
   import §_-IV§.§_-dW§;
   import §_-OJ§.§_-7G§;
   import §_-OJ§.§_-LW§;
   import §_-OJ§.§_-tL§;
   import §_-e3§.§_-9Y§;
   import §_-rQ§.§_-Ou§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-zI§ extends §_-c4§
   {
      
      public static const §_-8O§:int = 0;
      
      public static const §_-oG§:int = 1;
      
      public static const §_-Nx§:int = 2;
      
      public static const §_-oi§:int = 3;
      
      public static const §_-x-§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-zt§:int = 7;
      
      public static const §_-Og§:Number = 2000;
       
      
      public var §_-L-§:int = 0;
      
      public var §_-24§:Number;
      
      public var §_-EX§:Number = 0;
      
      private var §_-O0§:Boolean;
      
      private var §_-3y§:Number = 0;
      
      private var §_-X0§:Number = 0;
      
      protected var §_-06§:Boolean = true;
      
      protected var §_-U2§:§_-dW§;
      
      public function §_-zI§(param1:§_-tL§)
      {
         this.§_-U2§ = new §_-dW§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-U2§.§_-bB§(0);
         this.§_-L-§ = -1;
         this.§_-bh§(§_-8O§);
         this.§_-24§ = §_-Og§;
         §_-WT§(true);
         §_-Ag§.objects.setDamageEnabled(true);
         §_-Ag§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §_-Ag§.update(param1,true);
         this.§_-53§(param1);
      }
      
      public function clearLevel() : void
      {
         §_-Ag§.clearLevel();
         removeEventListeners();
         this.§_-L-§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-Fe§() : Boolean
      {
         if(§_-Ag§.camera.mCurrentCameraSliderLocation < §_-LW§.§_-K§)
         {
            return false;
         }
         if(!§_-Ag§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-2§(param1:int) : void
      {
         var _loc2_:§_-LW§ = §_-Ag§.camera;
         if(_loc2_.§_-Er§ > 0)
         {
            _loc2_.§_-Er§ -= param1;
            if(_loc2_.§_-Er§ <= 0)
            {
               if(this.§_-Fe§())
               {
                  _loc2_.§_-Er§ = -1;
                  if(§_-Ag§.slingshot.birdsAvailable)
                  {
                     _loc2_.§_-4q§();
                  }
               }
               else
               {
                  _loc2_.§_-Er§ = §_-LW§.§_-9R§ / 2;
               }
            }
         }
      }
      
      public function §_-bh§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-H2§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-8O§)
         {
            this.§_-EX§ = 2000;
         }
         else if(param1 == §_-oG§)
         {
            §_-Ag§.camera.goToBirdView();
         }
         else if(param1 == §_-Nx§)
         {
            this.§_-O0§ = false;
            this.§_-EX§ = 5000;
            §_-Ag§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-oi§)
         {
            §_-Ag§.camera.goToCastleView();
         }
         else if(param1 == §_-x-§)
         {
            this.§_-EX§ = 2000;
            §_-Ag§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-EX§ = 1200;
            §_-Ag§.camera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-EX§ = 1200;
            §_-Ag§.camera.goToBirdView();
            §_-Ag§.slingshot.makeBirdsJumpForJoy();
            §_-Ou§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-zt§)
         {
            §_-Ou§.§_-yO§();
            §_-Ou§.playSound("LevelFailedPigs1");
            this.§_-EX§ = 1200;
            §_-Ag§.camera.goToCastleView();
            §_-Ag§.objects.makePigsSmile(5);
         }
         this.§_-L-§ = param1;
      }
      
      public function §_-53§(param1:Number) : void
      {
         var _loc2_:§_-Dz§ = null;
         this.§_-24§ -= param1;
         if(this.§_-24§ <= 0 && !this.§_-H2§(false))
         {
            this.§_-24§ = §_-Og§;
            if(§_-Ag§.objects.isWorldAtSleep())
            {
               if(!§_-Ag§.objects.isPigsAlive() && !§_-Ag§.objects.mSardineCanAdded)
               {
                  this.§_-bh§(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
               else if(§_-Ag§.slingshot.mSlingShotState == §_-7G§.§var §)
               {
                  if(§_-Ag§.objects.mMightyEagleAdded)
                  {
                     if(§_-Ag§.objects.mMightyEagleHasTouchedGround && §_-Ag§.objects.mMightyEagleTimer > 5500)
                     {
                        this.§_-bh§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                     }
                     else if(§_-Ag§.objects.mMightyEagleHasTouchedGround)
                     {
                        this.§_-24§ = §_-Og§;
                     }
                  }
                  else
                  {
                     this.§_-bh§(§_-zt§);
                  }
               }
            }
            if(this.§_-H2§(false))
            {
               §_-Ag§.gameOver();
            }
         }
         this.§_-EX§ -= param1;
         if(this.§_-EX§ < 0)
         {
            this.§_-EX§ = 0;
         }
         if(this.§_-L-§ == §_-oi§)
         {
            §_-Ag§.updatePigAnimations(param1);
            if(!§_-Ag§.camera.isOnCastleView() && §_-Ag§.camera.mCurrentAction != §_-LW§.§_-Xu§)
            {
               this.§_-bh§(§_-oG§);
            }
         }
         else if(this.§_-L-§ == §_-x-§)
         {
            if(this.§_-EX§ <= 0)
            {
               if(§_-Ag§.objects.isWorldAtSleep())
               {
                  this.§_-bh§(§_-oG§);
               }
               else
               {
                  this.§_-24§ = 0;
                  this.§_-EX§ = 2000;
               }
            }
            else
            {
               §_-Ag§.updatePigAnimations(param1);
            }
            if(!§_-Ag§.camera.isOnCastleView() && §_-Ag§.camera.mCurrentAction != §_-LW§.§_-Xu§)
            {
               this.§_-bh§(§_-oG§);
            }
         }
         else if(this.§_-L-§ == §_-8O§)
         {
            if(this.§_-EX§ <= 0)
            {
               this.§_-bh§(§_-oG§);
            }
         }
         else if(this.§_-L-§ == §_-oG§)
         {
            if(§_-Ag§.camera.isOnCastleView() && §_-Ag§.camera.mCurrentAction != §_-LW§.§_-Xu§)
            {
               this.§_-bh§(§_-oi§);
            }
         }
         else if(this.§_-L-§ == §_-Nx§)
         {
            _loc2_ = §_-Ag§.activeObject;
            if(!_loc2_ || _loc2_.§_-Qm§ < _loc2_.§_-FF§)
            {
               if(_loc2_ && _loc2_ is §_-he§ && (!(_loc2_ as §_-zf§).§_-mb§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  this.§_-O0§ = true;
                  this.§_-bh§(§_-x-§);
               }
               §_-Ag§.activeObject = null;
               this.§_-bh§(§_-x-§);
            }
         }
         else if(this.§_-L-§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-EX§ <= 0)
            {
               if(§_-Ag§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-EX§ = 1000;
               }
               else
               {
                  this.§_-bh§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-H2§(param1:Boolean = false) : Boolean
      {
         return (this.§_-L-§ == LEVEL_STATE_VICTORY2_END || this.§_-L-§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-L-§ == §_-zt§) && (!param1 || this.§_-EX§ <= 0 && this.§_-L-§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-1w§() : Boolean
      {
         return this.§_-L-§ == LEVEL_STATE_VICTORY2_END || this.§_-L-§ == §_-zt§;
      }
      
      override public function onMouseWheel(param1:MouseEvent) : void
      {
         if(!this.§_-06§)
         {
            return;
         }
         if(!(§_-Ag§.slingshot.mDragging || §_-Ag§.camera.mDragging))
         {
            if(this.§_-L-§ == §_-x-§ || this.§_-L-§ == §_-oi§ || this.§_-L-§ == §_-oG§)
            {
               if(param1.delta != 0)
               {
                  if(!§_-Ag§.isPlayingReplay())
                  {
                     §_-Ag§.camera.adjustManualScale(param1.delta > 0);
                  }
                  else
                  {
                     §_-Ag§.changeReplaySpeed(param1.delta > 0);
                  }
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      override public function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-06§)
         {
            return;
         }
         §_-9Y§.§_-gZ§();
         if(this.§_-H2§(false))
         {
            return;
         }
         if(!§_-Ag§.isPlayingReplay())
         {
            if(§_-Ag§.activeObject && this.§_-L-§ == §_-Nx§ || this.§_-O0§)
            {
               this.§_-O0§ = false;
               §_-Ag§.activatePowerup();
               return;
            }
            _loc3_ = §_-Ag§.screenToBox2D(param1,param2);
            if(§_-Ag§.slingshot.canStartDragging(_loc3_))
            {
               §_-Ag§.slingshot.startDragging();
               this.§_-bh§(§_-oG§);
            }
            else
            {
               §_-Ag§.camera.startDragging(param1,param2);
            }
            return;
         }
         §_-Ag§.camera.startDragging(param1,param2);
         §_-Ag§.resetReplaySpeed();
      }
      
      private function §_-2q§(param1:MouseEvent) : void
      {
         this.handleMouseDown(param1.stageX,param1.stageY);
      }
      
      public function §_-TB§(param1:Event) : void
      {
         §_-9Y§.§_-Ud§();
      }
      
      public function §_-Xs§(param1:MouseEvent) : void
      {
         this.handleMouseUp(NaN,NaN);
         §_-9Y§.§_-i8§();
      }
      
      override public function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-06§)
         {
            return;
         }
         §_-9Y§.§_-TK§();
         if(§_-Ag§.slingshot.mDragging)
         {
            _loc3_ = §_-Ag§.screenToBox2D(param1,param2);
            §_-Ag§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§_-Ag§.slingshot.canShootTheBird())
            {
               §_-Ag§.slingshot.shoot();
               this.§_-bh§(§_-Nx§);
            }
            else
            {
               §_-Ag§.slingshot.cancelDragging();
            }
         }
         if(§_-Ag§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-Ag§.camera.dragToNewPoint(param1,param2);
            }
            §_-Ag§.camera.stopDragging();
         }
      }
      
      override public function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-06§)
         {
            return;
         }
         if(§_-Ag§.slingshot.mDragging)
         {
            _loc3_ = §_-Ag§.screenToBox2D(param1,param2);
            §_-Ag§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-Ag§.camera.mDragging)
         {
            §_-Ag§.camera.dragToNewPoint(param1,param2);
         }
         this.§_-3y§ = param1;
         this.§_-X0§ = param2;
      }
      
      public function §_-5b§() : Point
      {
         return new Point(this.§_-3y§,this.§_-X0§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-U2§.§_-bB§(this.§_-U2§.getValue() + param1);
      }
      
      override public function getScore() : int
      {
         return this.§_-U2§.getValue();
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-06§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§_-06§ = param1;
      }
   }
}

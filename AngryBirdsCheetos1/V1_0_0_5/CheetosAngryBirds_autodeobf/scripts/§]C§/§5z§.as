package §]C§
{
   import §!J§.§[&§;
   import §#K§.§<!+§;
   import §#v§.§!!!§;
   import §#v§.;
   import §#v§.§'`§;
   import §&! §.§3!§;
   import §&N§.§6§;
   import §2!6§.§%!$§;
   import §8!P§.§5p§;
   import §?'§.§'L§;
   import §?'§.§9N§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §5z§ extends §5_§
   {
      
      public static const §>#§:int = 0;
      
      public static const §58§:int = 1;
      
      public static const §8!@§:int = 2;
      
      public static const §7!%§:int = 3;
      
      public static const §,g§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §=g§:int = 7;
      
      private static const § !A§:Number = §5p§.§8d§ / 100;
      
      public static const §'!0§:Number = 2000;
      
      public static const §8&§:Number = 2500;
       
      
      public var §0!0§:int = 0;
      
      private var §-l§:int = 0;
      
      public var §2!%§:Number;
      
      protected var §11§:Number = 0;
      
      protected var §%A§:Boolean = false;
      
      public var §7K§:Number = 0;
      
      protected var §7!5§:Boolean;
      
      private var §!!#§:Number = 0;
      
      private var §6W§:Number = 0;
      
      protected var §@H§:Boolean = true;
      
      protected var §@t§:§3!§;
      
      public function §5z§(param1:§9N§)
      {
         this.§@t§ = new §3!§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§@t§.§6!Y§(0);
         this.§0!0§ = -1;
         this.§-l§ = 0;
         this.§11§ = 0;
         this.§%A§ = false;
         this.§1!S§(§>#§);
         this.§2!%§ = §'!0§;
         §2!O§(true);
         §;c§.objects.setDamageEnabled(true);
         §;c§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §;c§.update(param1,true);
         this.§-!3§(param1);
         this.§8!S§(param1);
      }
      
      private function §-!3§(param1:int) : void
      {
         if(this.§-l§ != 0)
         {
            §;c§.camera.adjustManualScale(this.§-l§ > 0,param1 * § !A§);
         }
      }
      
      public function clearLevel() : void
      {
         §;c§.clearLevel();
         removeEventListeners();
         this.§0!0§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §]!1§() : Boolean
      {
         if(§;c§.camera.mCurrentCameraSliderLocation < §5p§.§9!4§)
         {
            return false;
         }
         if(!§;c§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §=!3§(param1:int) : void
      {
         var _loc2_:§5p§ = §;c§.camera;
         if(_loc2_.§7!O§ > 0)
         {
            _loc2_.§7!O§ -= param1;
            if(_loc2_.§7!O§ <= 0)
            {
               if(this.§]!1§())
               {
                  _loc2_.§7!O§ = -1;
                  if(§;c§.slingshot.birdsAvailable)
                  {
                     _loc2_.§>5§();
                  }
               }
               else
               {
                  _loc2_.§7!O§ = §5p§.§"'§ / 2;
               }
            }
         }
      }
      
      public function §1!S§(param1:int, param2:Boolean = false) : void
      {
         if(this.§=t§(false) && !param2)
         {
            return;
         }
         if(param1 == §>#§)
         {
            this.§7K§ = 2000;
         }
         else if(param1 == §58§)
         {
            §;c§.camera.goToBirdView();
         }
         else if(param1 == §8!@§)
         {
            this.§7!5§ = false;
            this.§7K§ = 5000;
            §;c§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §7!%§)
         {
            §;c§.camera.goToCastleView();
         }
         else if(param1 == §,g§)
         {
            this.§7K§ = 2000;
            §;c§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§7K§ = 1200;
            if(!§;c§.objects.mMightyEagleAdded)
            {
               §;c§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§7K§ = 1200;
            if(!§;c§.objects.mMightyEagleAdded)
            {
               §;c§.camera.goToBirdView();
               §;c§.slingshot.makeBirdsJumpForJoy();
            }
            §%!$§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §=g§)
         {
            §%!$§.§=!J§();
            §%!$§.playSound("LevelFailedPigs1");
            this.§7K§ = 1200;
            §;c§.camera.goToCastleView();
            §;c§.objects.makePigsSmile(5);
         }
         this.§0!0§ = param1;
      }
      
      public function § !<§(param1:Number) : void
      {
         this.§11§ = Math.max(this.§11§,param1);
      }
      
      protected function §5q§() : Boolean
      {
         return §;c§.slingshot.mSlingShotState == §'L§.§?!S§ && !§;c§.objects.hasBirds();
      }
      
      public function §8!S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§#3§ = null;
         this.§2!%§ -= param1;
         if(this.§%A§)
         {
            this.§11§ -= param1;
            if(this.§11§ < 0)
            {
               this.§2!%§ = 0;
            }
         }
         if(this.§2!%§ <= 0 && !this.§=t§(false))
         {
            this.§2!%§ = §'!0§;
            _loc2_ = §;c§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§%A§ || this.§11§ > 0))
            {
               if((!this.§%A§ || this.§11§ > 6000) && !§;c§.objects.isPigsAlive())
               {
                  this.§11§ = 6000;
                  this.§%A§ = true;
               }
               else if(!this.§%A§ && this.§5q§())
               {
                  this.§11§ = 15000;
                  this.§%A§ = true;
               }
            }
            else if(!§;c§.objects.isPigsAlive() && !§;c§.objects.mSardineCanAdded)
            {
               this.§1!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5q§())
            {
               if(§;c§.objects.mMightyEagleAdded)
               {
                  if(§;c§.objects.mMightyEagleHasTouchedGround && §;c§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§1!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§;c§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§2!%§ = §'!0§;
                  }
               }
               else if(!§;c§.objects.mSardineCanAdded)
               {
                  this.§1!%§(§=g§);
               }
            }
            if(this.§=t§(false))
            {
               §;c§.gameOver();
            }
         }
         this.§7K§ -= param1;
         if(this.§7K§ < 0)
         {
            this.§7K§ = 0;
         }
         if(this.§0!0§ == §7!%§)
         {
            §;c§.updatePigAnimations(param1);
            if(!§;c§.camera.isOnCastleView() && §;c§.camera.mCurrentAction != §5p§.§?q§)
            {
               this.§1!S§(§58§);
            }
         }
         else if(this.§0!0§ == §,g§)
         {
            if(this.§7K§ <= 0)
            {
               if(§;c§.objects.isWorldAtSleep())
               {
                  if(!§[&§.§&!'§.objects.mMightyEagleAdded)
                  {
                     this.§1!S§(§58§);
                  }
               }
               else
               {
                  this.§2!%§ = 0;
                  this.§7K§ = 2000;
               }
            }
            else
            {
               §;c§.updatePigAnimations(param1);
            }
            if(!§;c§.camera.isOnCastleView() && §;c§.camera.mCurrentAction != §5p§.§?q§)
            {
               this.§1!S§(§58§);
            }
         }
         else if(this.§0!0§ == §>#§)
         {
            if(this.§7K§ <= 0)
            {
               this.§1!S§(§58§);
            }
         }
         else if(this.§0!0§ == §58§)
         {
            if(§;c§.camera.isOnCastleView() && §;c§.camera.mCurrentAction != §5p§.§?q§)
            {
               this.§1!S§(§7!%§);
            }
         }
         else if(this.§0!0§ == §8!@§)
         {
            _loc3_ = §;c§.activeObject;
            if(!_loc3_ || _loc3_.§;!A§ < _loc3_.§]p§)
            {
               if(_loc3_ && _loc3_ is §'`§ && (!(_loc3_ as §!!!§).§@A§ || _loc3_.getSpecialAnimationProgress() >= 0))
               {
                  this.§7!5§ = true;
                  this.§1!S§(§,g§);
               }
               §;c§.activeObject = null;
               this.§1!S§(§,g§);
            }
         }
         else if(this.§0!0§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§7K§ <= 0)
            {
               if(§;c§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§7K§ = 1000;
               }
               else
               {
                  this.§1!S§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §1!%§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§%A§)
         {
            this.§%A§ = true;
         }
         if(new Date().time - §;c§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§;c§.slingshot.mDragging)
         {
            return;
         }
         if(§;c§.objects.isWorldAtSleep())
         {
            this.§11§ = 0;
         }
         if(this.§11§ <= 0)
         {
            this.§1!S§(param1,param2);
         }
      }
      
      public function §=t§(param1:Boolean = false) : Boolean
      {
         return (this.§0!0§ == LEVEL_STATE_VICTORY2_END || this.§0!0§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§0!0§ == §=g§) && (!param1 || this.§7K§ <= 0 && this.§0!0§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §#h§() : Boolean
      {
         return this.§0!0§ == LEVEL_STATE_VICTORY2_END || this.§0!0§ == §=g§;
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
         if(!this.§@H§ || !§;c§.mReadyToRun)
         {
            return;
         }
         if(!(§;c§.slingshot.mDragging || §;c§.camera.mDragging))
         {
            if(this.§0!0§ == §,g§ || this.§0!0§ == §7!%§ || this.§0!0§ == §58§)
            {
               if(!§;c§.isPlayingReplay())
               {
                  §;c§.camera.adjustManualScale(param1);
               }
               else
               {
                  §;c§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §=`§(param1:int) : void
      {
         this.§-l§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§@H§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §6§.§@!Y§();
         if(this.§=t§(false))
         {
            return;
         }
         if(!§;c§.isPlayingReplay())
         {
            if(§;c§.activeObject && this.§0!0§ == §8!@§ || this.§7!5§)
            {
               this.§7!5§ = false;
               §;c§.activatePowerup();
               return;
            }
            _loc4_ = §;c§.screenToBox2D(param1,param2);
            if(§;c§.slingshot.canStartDragging(_loc4_))
            {
               §;c§.slingshot.startDragging();
               this.§1!S§(§58§);
            }
            else
            {
               §;c§.camera.startDragging(param1,param2);
            }
            return;
         }
         §;c§.camera.startDragging(param1,param2);
         §;c§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§@H§)
         {
            return;
         }
         §6§.§%!@§();
         if(this.§0!0§ == §>#§)
         {
            this.§1!S§(§58§);
         }
         if(§;c§.slingshot.mDragging)
         {
            _loc3_ = §;c§.screenToBox2D(param1,param2);
            §;c§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§;c§.slingshot.canShootTheBird())
            {
               §;c§.slingshot.shoot();
               this.§1!S§(§8!@§);
            }
            else
            {
               §;c§.slingshot.cancelDragging();
            }
         }
         if(§;c§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §;c§.camera.dragToNewPoint(param1,param2);
            }
            §;c§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§@H§)
         {
            return;
         }
         if(§;c§.slingshot.mDragging)
         {
            _loc3_ = §;c§.screenToBox2D(param1,param2);
            §;c§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§;c§.camera.mDragging)
         {
            §;c§.camera.dragToNewPoint(param1,param2);
         }
         this.§!!#§ = param1;
         this.§6W§ = param2;
      }
      
      public function §`C§() : Point
      {
         return new Point(this.§!!#§,this.§6W§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§@t§.§6!Y§(this.§@t§.getValue() + param1);
         this.§ !<§(§8&§);
      }
      
      override public function getScore() : int
      {
         return this.§@t§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§[&§.§&!'§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §<!+§.§@i§(§<!+§.§^R§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§@H§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§@H§ = param1;
      }
   }
}

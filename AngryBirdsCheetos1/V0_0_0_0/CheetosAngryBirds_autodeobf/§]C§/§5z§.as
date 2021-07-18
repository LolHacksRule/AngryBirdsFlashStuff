package §]C§
{
   import §!J§.§[&§;
   import §%!$§.§=m§;
   import §&! §.§3!§;
   import §-!7§.§@m§;
   import §-!7§.§]!$§;
   import §-!7§.§^!1§;
   import §5p§.§?M§;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §<!+§.§[!!§;
   import §@,§.§"j§;
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
      
      private static const § !A§:Number = §?M§.§^!8§ / 100;
      
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
      
      protected var §@I§:Boolean = true;
      
      protected var §@t§:§3!§;
      
      public function §5z§(param1:§9!%§)
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
         §4!Q§(true);
         §8@§.objects.setDamageEnabled(true);
         §8@§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §8@§.update(param1,true);
         this.§-!3§(param1);
         this.§8!S§(param1);
      }
      
      private function §-!3§(param1:int) : void
      {
         if(this.§-l§ != 0)
         {
            §8@§.camera.adjustManualScale(this.§-l§ > 0,param1 * § !A§);
         }
      }
      
      public function clearLevel() : void
      {
         §8@§.clearLevel();
         removeEventListeners();
         this.§0!0§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §]!1§() : Boolean
      {
         if(§8@§.camera.mCurrentCameraSliderLocation < §?M§.§#Q§)
         {
            return false;
         }
         if(!§8@§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §=!3§(param1:int) : void
      {
         var _loc2_:§?M§ = §8@§.camera;
         if(_loc2_.§'F§ > 0)
         {
            _loc2_.§'F§ -= param1;
            if(_loc2_.§'F§ <= 0)
            {
               if(this.§]!1§())
               {
                  _loc2_.§'F§ = -1;
                  if(§8@§.slingshot.birdsAvailable)
                  {
                     _loc2_.§'1§();
                  }
               }
               else
               {
                  _loc2_.§'F§ = §?M§.§9!4§ / 2;
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
            §8@§.camera.goToBirdView();
         }
         else if(param1 == §8!@§)
         {
            this.§7!5§ = false;
            this.§7K§ = 5000;
            §8@§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §7!%§)
         {
            §8@§.camera.goToCastleView();
         }
         else if(param1 == §,g§)
         {
            this.§7K§ = 2000;
            §8@§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§7K§ = 1200;
            if(!§8@§.objects.mMightyEagleAdded)
            {
               §8@§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§7K§ = 1200;
            if(!§8@§.objects.mMightyEagleAdded)
            {
               §8@§.camera.goToBirdView();
               §8@§.slingshot.makeBirdsJumpForJoy();
            }
            §=m§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §=g§)
         {
            §=m§.§,w§();
            §=m§.playSound("LevelFailedPigs1");
            this.§7K§ = 1200;
            §8@§.camera.goToCastleView();
            §8@§.objects.makePigsSmile(5);
         }
         this.§0!0§ = param1;
      }
      
      public function § !<§(param1:Number) : void
      {
         this.§11§ = Math.max(this.§11§,param1);
      }
      
      protected function §&C§() : Boolean
      {
         return §8@§.slingshot.mSlingShotState == §;c§.§"!R§ && !§8@§.objects.hasBirds();
      }
      
      public function §8!S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§@m§ = null;
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
            _loc2_ = §8@§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§%A§ || this.§11§ > 0))
            {
               if((!this.§%A§ || this.§11§ > 6000) && !§8@§.objects.isPigsAlive())
               {
                  this.§11§ = 6000;
                  this.§%A§ = true;
               }
               else if(!this.§%A§ && this.§&C§())
               {
                  this.§11§ = 15000;
                  this.§%A§ = true;
               }
            }
            else if(!§8@§.objects.isPigsAlive() && !§8@§.objects.mSardineCanAdded)
            {
               this.§1!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§&C§())
            {
               if(§8@§.objects.mMightyEagleAdded)
               {
                  if(§8@§.objects.mMightyEagleHasTouchedGround && §8@§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§1!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§8@§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§2!%§ = §'!0§;
                  }
               }
               else if(!§8@§.objects.mSardineCanAdded)
               {
                  this.§1!%§(§=g§);
               }
            }
            if(this.§=t§(false))
            {
               §8@§.gameOver();
            }
         }
         this.§7K§ -= param1;
         if(this.§7K§ < 0)
         {
            this.§7K§ = 0;
         }
         if(this.§0!0§ == §7!%§)
         {
            §8@§.updatePigAnimations(param1);
            if(!§8@§.camera.isOnCastleView() && §8@§.camera.mCurrentAction != §?M§.§4S§)
            {
               this.§1!S§(§58§);
            }
         }
         else if(this.§0!0§ == §,g§)
         {
            if(this.§7K§ <= 0)
            {
               if(§8@§.objects.isWorldAtSleep())
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
               §8@§.updatePigAnimations(param1);
            }
            if(!§8@§.camera.isOnCastleView() && §8@§.camera.mCurrentAction != §?M§.§4S§)
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
            if(§8@§.camera.isOnCastleView() && §8@§.camera.mCurrentAction != §?M§.§4S§)
            {
               this.§1!S§(§7!%§);
            }
         }
         else if(this.§0!0§ == §8!@§)
         {
            _loc3_ = §8@§.activeObject;
            if(!_loc3_ || _loc3_.§4^§ < _loc3_.§,>§)
            {
               if(_loc3_ && _loc3_ is §]!$§ && (!(_loc3_ as §^!1§).§]Z§ || _loc3_.getSpecialAnimationProgress() >= 0))
               {
                  this.§7!5§ = true;
                  this.§1!S§(§,g§);
               }
               §8@§.activeObject = null;
               this.§1!S§(§,g§);
            }
         }
         else if(this.§0!0§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§7K§ <= 0)
            {
               if(§8@§.slingshot.updateScoreForRemainingBirds())
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
         if(new Date().time - §8@§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§8@§.slingshot.mDragging)
         {
            return;
         }
         if(§8@§.objects.isWorldAtSleep())
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
         if(!this.§@I§ || !§8@§.mReadyToRun)
         {
            return;
         }
         if(!(§8@§.slingshot.mDragging || §8@§.camera.mDragging))
         {
            if(this.§0!0§ == §,g§ || this.§0!0§ == §7!%§ || this.§0!0§ == §58§)
            {
               if(!§8@§.isPlayingReplay())
               {
                  §8@§.camera.adjustManualScale(param1);
               }
               else
               {
                  §8@§.changeReplaySpeed(param1);
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
         if(!this.§@I§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §"j§.§%!@§();
         if(this.§=t§(false))
         {
            return;
         }
         if(!§8@§.isPlayingReplay())
         {
            if(§8@§.activeObject && this.§0!0§ == §8!@§ || this.§7!5§)
            {
               this.§7!5§ = false;
               §8@§.activatePowerup();
               return;
            }
            _loc4_ = §8@§.screenToBox2D(param1,param2);
            if(§8@§.slingshot.canStartDragging(_loc4_))
            {
               §8@§.slingshot.startDragging();
               this.§1!S§(§58§);
            }
            else
            {
               §8@§.camera.startDragging(param1,param2);
            }
            return;
         }
         §8@§.camera.startDragging(param1,param2);
         §8@§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§@I§)
         {
            return;
         }
         §"j§.§1!2§();
         if(this.§0!0§ == §>#§)
         {
            this.§1!S§(§58§);
         }
         if(§8@§.slingshot.mDragging)
         {
            _loc3_ = §8@§.screenToBox2D(param1,param2);
            §8@§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§8@§.slingshot.canShootTheBird())
            {
               §8@§.slingshot.shoot();
               this.§1!S§(§8!@§);
            }
            else
            {
               §8@§.slingshot.cancelDragging();
            }
         }
         if(§8@§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §8@§.camera.dragToNewPoint(param1,param2);
            }
            §8@§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§@I§)
         {
            return;
         }
         if(§8@§.slingshot.mDragging)
         {
            _loc3_ = §8@§.screenToBox2D(param1,param2);
            §8@§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§8@§.camera.mDragging)
         {
            §8@§.camera.dragToNewPoint(param1,param2);
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
         var _loc1_:Number = §[!!§.§1L§(§[!!§.§7!F§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§@I§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§@I§ = param1;
      }
   }
}

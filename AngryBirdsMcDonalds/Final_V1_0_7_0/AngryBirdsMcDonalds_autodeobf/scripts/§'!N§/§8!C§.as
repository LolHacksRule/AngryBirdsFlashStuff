package §'!N§
{
   import §#!q§.§6!I§;
   import §%!5§.§7;§;
   import §'!`§.§%!H§;
   import §'!`§.§3C§;
   import §'!`§.§4!k§;
   import §'!`§.§9m§;
   import §-!F§.§2[§;
   import §0i§.§6`§;
   import §4!,§.§+f§;
   import §55§.§"!P§;
   import §55§.§>![§;
   import §]^§.§7G§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §8!C§ extends §!!W§
   {
      
      public static const §'!M§:int = 0;
      
      public static const §=8§:int = 1;
      
      public static const §0L§:int = 2;
      
      public static const §,u§:int = 3;
      
      public static const §-y§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const § !?§:int = 7;
      
      protected static const §1!E§:Number = §+f§.§^O§ / 100;
      
      public static const §-U§:Number = 2000;
      
      public static const §2!l§:Number = 2500;
      
      public static const §-j§:int = 5;
       
      
      public var §`!i§:int = 0;
      
      protected var §[M§:int = 0;
      
      public var §9!M§:Number;
      
      protected var §[!M§:Number = 0;
      
      protected var §5$§:Boolean = false;
      
      private var §&!>§:Number = 0;
      
      public var §0!n§:Number = 0;
      
      protected var §'R§:Boolean;
      
      protected var §9k§:Number = 0;
      
      protected var §;Q§:Number = 0;
      
      protected var §<!S§:Boolean = true;
      
      protected var §[6§:§6!I§;
      
      public function §8!C§(param1:§>![§)
      {
         this.§[6§ = new §6!I§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§[6§.§[!g§(0);
         this.§`!i§ = -1;
         this.§[M§ = 0;
         this.§[!M§ = 0;
         this.§5$§ = false;
         this.changeGameState(§'!M§);
         this.§9!M§ = §-U§;
         §9!p§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§]v§(param1);
         this.§<!^§(param1);
      }
      
      private function §]v§(param1:int) : void
      {
         if(this.§[M§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§[M§ > 0,param1 * §1!E§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§`!i§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §`x§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §+f§.§=!o§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §8!k§(param1:int) : void
      {
         var _loc2_:§+f§ = mLevelMain.camera;
         if(_loc2_.§#!l§ > 0)
         {
            _loc2_.§#!l§ -= param1;
            if(_loc2_.§#!l§ <= 0)
            {
               if(this.§`x§())
               {
                  _loc2_.§#!l§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§'!]§();
                  }
               }
               else
               {
                  _loc2_.§#!l§ = §+f§.§`u§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§%!N§(false) && !param2)
         {
            return;
         }
         if(param1 == §'!M§)
         {
            this.§0!n§ = 2000;
         }
         else if(param1 == §=8§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §0L§)
         {
            this.§'R§ = false;
            this.§0!n§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §,u§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §-y§)
         {
            this.§0!n§ = 2000;
            this.§&!>§ = §-j§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§0!n§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§0!n§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §7G§.§4W§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == § !?§)
         {
            §7G§.§]!Z§();
            §7G§.§4W§("LevelFailedPigs1");
            this.§0!n§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§`!i§ = param1;
      }
      
      public function §68§(param1:Number) : void
      {
         this.§[!M§ = Math.max(this.§[!M§,param1);
      }
      
      protected function §+!5§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §"!P§.§5I§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §<!^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§%!H§ = null;
         this.§9!M§ -= param1;
         if(this.§5$§)
         {
            this.§[!M§ -= param1;
            if(this.§[!M§ < 0)
            {
               this.§9!M§ = 0;
            }
         }
         if(this.§9!M§ <= 0 && !this.§%!N§(false))
         {
            this.§9!M§ = §-U§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§5$§ || this.§[!M§ > 0))
            {
               if((!this.§5$§ || this.§[!M§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§[!M§ = 6000;
                  this.§5$§ = true;
               }
               else if(!this.§5$§ && this.§+!5§())
               {
                  this.§[!M§ = 15000;
                  this.§5$§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§@C§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§+!5§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§@C§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§9!M§ = §-U§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§@C§(§ !?§);
               }
            }
            if(this.§%!N§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§0!n§ -= param1;
         if(this.§0!n§ < 0)
         {
            this.§0!n§ = 0;
         }
         if(this.§`!i§ == §,u§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §+f§.§;O§)
            {
               this.changeGameState(§=8§);
            }
         }
         else if(this.§`!i§ == §-y§)
         {
            if(this.§0!n§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§&!>§ > 0)
               {
                  this.§0!n§ = 2000;
                  this.§9!M§ = 0;
                  this.§&!>§ = this.§&!>§ - 1;
               }
               else if(!§7;§.§1h§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§=8§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §+f§.§;O§)
            {
               this.changeGameState(§=8§);
            }
         }
         else if(this.§`!i§ == §'!M§)
         {
            if(this.§0!n§ <= 0)
            {
               this.changeGameState(§=8§);
            }
         }
         else if(this.§`!i§ == §=8§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §+f§.§;O§)
            {
               this.changeGameState(§,u§);
            }
         }
         else if(this.§`!i§ == §0L§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§0!8§ < _loc4_.§6w§)
            {
               if(_loc4_ && (_loc4_ is §9m§ || _loc4_ is §4!k§ || _loc4_ is §4!k§) && (!(_loc4_ as §3C§).§%!Y§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§'R§ = true;
                  this.changeGameState(§-y§);
               }
               mLevelMain.activeObject = null;
               this.changeGameState(§-y§);
            }
         }
         else if(this.§`!i§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§0!n§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§0!n§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §@C§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§5$§)
         {
            this.§5$§ = true;
         }
         if(new Date().time - mLevelMain.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(mLevelMain.slingshot.mDragging)
         {
            return;
         }
         if(mLevelMain.objects.isWorldAtSleep())
         {
            this.§[!M§ = Math.min(this.§[!M§,3500);
         }
         if(this.§[!M§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §%!N§(param1:Boolean = false) : Boolean
      {
         return (this.§`!i§ == LEVEL_STATE_VICTORY2_END || this.§`!i§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§`!i§ == § !?§) && (!param1 || this.§0!n§ <= 0 && this.§`!i§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function § &§() : Boolean
      {
         return this.§`!i§ == LEVEL_STATE_VICTORY2_END || this.§`!i§ == § !?§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.doUserZoom(param1.delta > 0);
         }
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§<!S§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§`!i§ == §-y§ || this.§`!i§ == §,u§ || this.§`!i§ == §=8§)
            {
               if(!mLevelMain.isPlayingReplay())
               {
                  mLevelMain.camera.adjustManualScale(param1,param2 == 0 ? Number(§+f§.§^O§) : Number(param2));
               }
               else
               {
                  mLevelMain.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §^[§(param1:int) : void
      {
         this.§[M§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§<!S§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §6`§.§2!I§();
         if(this.§%!N§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§`!i§ == §0L§ || this.§'R§)
            {
               this.§'R§ = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.changeGameState(§=8§);
            }
            else
            {
               mLevelMain.camera.startDragging(param1,param2);
            }
            return;
         }
         mLevelMain.camera.startDragging(param1,param2);
         mLevelMain.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§<!S§)
         {
            return;
         }
         §6`§.§7@§();
         if(this.§`!i§ == §'!M§)
         {
            this.changeGameState(§=8§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.changeGameState(§0L§);
            }
            else
            {
               mLevelMain.slingshot.cancelDragging();
            }
         }
         if(mLevelMain.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               mLevelMain.camera.dragToNewPoint(param1,param2);
            }
            mLevelMain.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§<!S§)
         {
            return;
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(mLevelMain.camera.mDragging)
         {
            mLevelMain.camera.dragToNewPoint(param1,param2);
         }
         this.§9k§ = param1;
         this.§;Q§ = param2;
      }
      
      public function §>!,§() : Point
      {
         return new Point(this.§9k§,this.§;Q§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§[6§.§[!g§(this.§[6§.getValue() + param1);
         this.§68§(§2!l§);
         if(this.§`!i§ == §-y§)
         {
            this.§0!n§ = 2000;
            this.§&!>§ = §-j§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§[6§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§7;§.§1h§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §2[§.§'M§(§2[§.§^N§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§<!S§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§<!S§ = param1;
      }
   }
}

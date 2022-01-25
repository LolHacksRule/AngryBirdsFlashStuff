package §8S§
{
   import § !9§.§'!U§;
   import §!!a§.§9G§;
   import §3!W§.§5!Q§;
   import §4!O§.§&+§;
   import §4!O§.§3!=§;
   import §4!O§.§9T§;
   import §5!?§.§'C§;
   import §5!?§.§>"§;
   import §6!Q§.§;!I§;
   import §=F§.§"n§;
   import §>P§.§2!U§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §,!;§ extends §#!,§
   {
      
      public static const §,!a§:int = 0;
      
      public static const §8i§:int = 1;
      
      public static const §,k§:int = 2;
      
      public static const §"!0§:int = 3;
      
      public static const §#-§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §>!X§:int = 7;
      
      protected static const §^J§:Number = §5!Q§.§+h§ / 100;
      
      public static const §6s§:Number = 2000;
      
      public static const §9q§:Number = 2500;
      
      public static const §1!#§:int = 5;
       
      
      public var §6=§:int = 0;
      
      protected var §[<§:int = 0;
      
      public var §[,§:Number;
      
      protected var §+c§:Number = 0;
      
      protected var §[Q§:Boolean = false;
      
      private var §+v§:Number = 0;
      
      public var §%O§:Number = 0;
      
      protected var §@4§:Boolean;
      
      protected var §]! §:Number = 0;
      
      protected var §8!^§:Number = 0;
      
      protected var §;!c§:Boolean = true;
      
      protected var §,>§:§2!U§;
      
      public function §,!;§(param1:§>"§)
      {
         this.§,>§ = new §2!U§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§,>§.§3u§(0);
         this.§6=§ = -1;
         this.§[<§ = 0;
         this.§+c§ = 0;
         this.§[Q§ = false;
         this.§2!E§(§,!a§);
         this.§[,§ = §6s§;
         §]C§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§"!c§(param1);
         this.§%!@§(param1);
      }
      
      private function §"!c§(param1:int) : void
      {
         if(this.§[<§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§[<§ > 0,param1 * §^J§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§6=§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §3A§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §5!Q§.§-x§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §;o§(param1:int) : void
      {
         var _loc2_:§5!Q§ = mLevelMain.camera;
         if(_loc2_.§4o§ > 0)
         {
            _loc2_.§4o§ -= param1;
            if(_loc2_.§4o§ <= 0)
            {
               if(this.§3A§())
               {
                  _loc2_.§4o§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§^`§();
                  }
               }
               else
               {
                  _loc2_.§4o§ = §5!Q§.§ =§ / 2;
               }
            }
         }
      }
      
      public function §2!E§(param1:int, param2:Boolean = false) : void
      {
         if(this.§&!E§(false) && !param2)
         {
            return;
         }
         if(param1 == §,!a§)
         {
            this.§%O§ = 2000;
         }
         else if(param1 == §8i§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §,k§)
         {
            this.§@4§ = false;
            this.§%O§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §"!0§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §#-§)
         {
            this.§%O§ = 2000;
            this.§+v§ = §1!#§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§%O§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§%O§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §'!U§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §>!X§)
         {
            §'!U§.§]P§();
            §'!U§.playSound("LevelFailedPigs1");
            this.§%O§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§6=§ = param1;
      }
      
      public function §%!?§(param1:Number) : void
      {
         this.§+c§ = Math.max(this.§+c§,param1);
      }
      
      protected function §,!7§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §'C§.§`Q§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §%!@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§&+§ = null;
         this.§[,§ -= param1;
         if(this.§[Q§)
         {
            this.§+c§ -= param1;
            if(this.§+c§ < 0)
            {
               this.§[,§ = 0;
            }
         }
         if(this.§[,§ <= 0 && !this.§&!E§(false))
         {
            this.§[,§ = §6s§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§[Q§ || this.§+c§ > 0))
            {
               if((!this.§[Q§ || this.§+c§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§+c§ = 6000;
                  this.§[Q§ = true;
               }
               else if(!this.§[Q§ && this.§,!7§())
               {
                  this.§+c§ = 15000;
                  this.§[Q§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§<g§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§,!7§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§<g§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§[,§ = §6s§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§<g§(§>!X§);
               }
            }
            if(this.§&!E§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§%O§ -= param1;
         if(this.§%O§ < 0)
         {
            this.§%O§ = 0;
         }
         if(this.§6=§ == §"!0§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §5!Q§.§9!1§)
            {
               this.§2!E§(§8i§);
            }
         }
         else if(this.§6=§ == §#-§)
         {
            if(this.§%O§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§+v§ > 0)
               {
                  this.§%O§ = 2000;
                  this.§[,§ = 0;
                  this.§+v§ = this.§+v§ - 1;
               }
               else if(!§"n§.§[b§.objects.mMightyEagleAdded)
               {
                  this.§2!E§(§8i§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §5!Q§.§9!1§)
            {
               this.§2!E§(§8i§);
            }
         }
         else if(this.§6=§ == §,!a§)
         {
            if(this.§%O§ <= 0)
            {
               this.§2!E§(§8i§);
            }
         }
         else if(this.§6=§ == §8i§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §5!Q§.§9!1§)
            {
               this.§2!E§(§"!0§);
            }
         }
         else if(this.§6=§ == §,k§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§8!B§ < _loc4_.§6!N§)
            {
               if(_loc4_ && _loc4_ is §3!=§ && (!(_loc4_ as §9T§).§]!'§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§@4§ = true;
                  this.§2!E§(§#-§);
               }
               mLevelMain.activeObject = null;
               this.§2!E§(§#-§);
            }
         }
         else if(this.§6=§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§%O§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§%O§ = 1000;
               }
               else
               {
                  this.§2!E§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §<g§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§[Q§)
         {
            this.§[Q§ = true;
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
            this.§+c§ = Math.min(this.§+c§,3500);
         }
         if(this.§+c§ <= 0)
         {
            this.§2!E§(param1,param2);
         }
      }
      
      public function §&!E§(param1:Boolean = false) : Boolean
      {
         return (this.§6=§ == LEVEL_STATE_VICTORY2_END || this.§6=§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§6=§ == §>!X§) && (!param1 || this.§%O§ <= 0 && this.§6=§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §6h§() : Boolean
      {
         return this.§6=§ == LEVEL_STATE_VICTORY2_END || this.§6=§ == §>!X§;
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
         if(!this.§;!c§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§6=§ == §#-§ || this.§6=§ == §"!0§ || this.§6=§ == §8i§)
            {
               if(!mLevelMain.isPlayingReplay())
               {
                  mLevelMain.camera.adjustManualScale(param1);
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
      
      private function §#u§(param1:int) : void
      {
         this.§[<§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§;!c§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §;!I§.§3!B§();
         if(this.§&!E§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§6=§ == §,k§ || this.§@4§)
            {
               this.§@4§ = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.§2!E§(§8i§);
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
         if(!this.§;!c§)
         {
            return;
         }
         §;!I§.§@!"§();
         if(this.§6=§ == §,!a§)
         {
            this.§2!E§(§8i§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.§2!E§(§,k§);
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
         if(!this.§;!c§)
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
         this.§]! § = param1;
         this.§8!^§ = param2;
      }
      
      public function §-!E§() : Point
      {
         return new Point(this.§]! §,this.§8!^§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§,>§.§3u§(this.§,>§.getValue() + param1);
         this.§%!?§(§9q§);
         if(this.§6=§ == §#-§)
         {
            this.§%O§ = 2000;
            this.§+v§ = §1!#§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§,>§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§"n§.§[b§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §9G§.§6t§(§9G§.§>>§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§;!c§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§;!c§ = param1;
      }
   }
}

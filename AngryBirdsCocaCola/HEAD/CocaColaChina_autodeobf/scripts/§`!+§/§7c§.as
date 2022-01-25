package §`!+§
{
   import §'!G§.§42§;
   import §-v§.§,!1§;
   import §1q§.§2W§;
   import §4A§.§&_§;
   import §4A§.§3m§;
   import §7I§.§<!0§;
   import §86§.§!!d§;
   import §;+§.§"!9§;
   import §;+§.§"!R§;
   import §;+§.§[!3§;
   import §;m§.§6!U§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §7c§ extends §!!9§
   {
      
      public static const §0!P§:int = 0;
      
      public static const §,!_§:int = 1;
      
      public static const §`!5§:int = 2;
      
      public static const §^!+§:int = 3;
      
      public static const §?!+§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §@0§:int = 7;
      
      protected static const §%b§:Number = §2W§.§=!J§ / 100;
      
      public static const §9!&§:Number = 2000;
      
      public static const §[!N§:Number = 2500;
      
      public static const § !-§:int = 5;
       
      
      public var §<!$§:int = 0;
      
      protected var §%!Z§:int = 0;
      
      public var §9s§:Number;
      
      protected var § @§:Number = 0;
      
      protected var §8h§:Boolean = false;
      
      private var §4!"§:Number = 0;
      
      public var §57§:Number = 0;
      
      protected var §9!$§:Boolean;
      
      protected var §-I§:Number = 0;
      
      protected var §%W§:Number = 0;
      
      protected var §-=§:Boolean = true;
      
      protected var §!>§:§6!U§;
      
      public function §7c§(param1:§&_§)
      {
         this.§!>§ = new §6!U§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!>§.§!h§(0);
         this.§<!$§ = -1;
         this.§%!Z§ = 0;
         this.§ @§ = 0;
         this.§8h§ = false;
         this.§=h§(§0!P§);
         this.§9s§ = §9!&§;
         §2!W§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§[!6§(param1);
         this.§6!,§(param1);
      }
      
      private function §[!6§(param1:int) : void
      {
         if(this.§%!Z§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§%!Z§ > 0,param1 * §%b§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§<!$§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §5f§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §2W§.§7!S§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §^y§(param1:int) : void
      {
         var _loc2_:§2W§ = mLevelMain.camera;
         if(_loc2_.§6!W§ > 0)
         {
            _loc2_.§6!W§ -= param1;
            if(_loc2_.§6!W§ <= 0)
            {
               if(this.§5f§())
               {
                  _loc2_.§6!W§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§"P§();
                  }
               }
               else
               {
                  _loc2_.§6!W§ = §2W§.§#!E§ / 2;
               }
            }
         }
      }
      
      public function §=h§(param1:int, param2:Boolean = false) : void
      {
         if(this.§"!L§(false) && !param2)
         {
            return;
         }
         if(param1 == §0!P§)
         {
            this.§57§ = 2000;
         }
         else if(param1 == §,!_§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §`!5§)
         {
            this.§9!$§ = false;
            this.§57§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §^!+§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §?!+§)
         {
            this.§57§ = 2000;
            this.§4!"§ = § !-§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§57§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§57§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §<!0§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §@0§)
         {
            §<!0§.§[p§();
            §<!0§.playSound("LevelFailedPigs1");
            this.§57§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§<!$§ = param1;
      }
      
      public function §0!c§(param1:Number) : void
      {
         this.§ @§ = Math.max(this.§ @§,param1);
      }
      
      protected function §'!M§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §3m§.§#§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §6!,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§[!3§ = null;
         this.§9s§ -= param1;
         if(this.§8h§)
         {
            this.§ @§ -= param1;
            if(this.§ @§ < 0)
            {
               this.§9s§ = 0;
            }
         }
         if(this.§9s§ <= 0 && !this.§"!L§(false))
         {
            this.§9s§ = §9!&§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§8h§ || this.§ @§ > 0))
            {
               if((!this.§8h§ || this.§ @§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§ @§ = 6000;
                  this.§8h§ = true;
               }
               else if(!this.§8h§ && this.§'!M§())
               {
                  this.§ @§ = 15000;
                  this.§8h§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§7!&§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§'!M§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§7!&§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§9s§ = §9!&§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§7!&§(§@0§);
               }
            }
            if(this.§"!L§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§57§ -= param1;
         if(this.§57§ < 0)
         {
            this.§57§ = 0;
         }
         if(this.§<!$§ == §^!+§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §2W§.§7!M§)
            {
               this.§=h§(§,!_§);
            }
         }
         else if(this.§<!$§ == §?!+§)
         {
            if(this.§57§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§4!"§ > 0)
               {
                  this.§57§ = 2000;
                  this.§9s§ = 0;
                  this.§4!"§ = this.§4!"§ - 1;
               }
               else if(!§,!1§.§2T§.objects.mMightyEagleAdded)
               {
                  this.§=h§(§,!_§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §2W§.§7!M§)
            {
               this.§=h§(§,!_§);
            }
         }
         else if(this.§<!$§ == §0!P§)
         {
            if(this.§57§ <= 0)
            {
               this.§=h§(§,!_§);
            }
         }
         else if(this.§<!$§ == §,!_§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §2W§.§7!M§)
            {
               this.§=h§(§^!+§);
            }
         }
         else if(this.§<!$§ == §`!5§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§"!D§ < _loc4_.§?L§)
            {
               if(_loc4_ && _loc4_ is §"!9§ && (!(_loc4_ as §"!R§).§>!X§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§9!$§ = true;
                  this.§=h§(§?!+§);
               }
               mLevelMain.activeObject = null;
               this.§=h§(§?!+§);
            }
         }
         else if(this.§<!$§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§57§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§57§ = 1000;
               }
               else
               {
                  this.§=h§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §7!&§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§8h§)
         {
            this.§8h§ = true;
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
            this.§ @§ = Math.min(this.§ @§,3500);
         }
         if(this.§ @§ <= 0)
         {
            this.§=h§(param1,param2);
         }
      }
      
      public function §"!L§(param1:Boolean = false) : Boolean
      {
         return (this.§<!$§ == LEVEL_STATE_VICTORY2_END || this.§<!$§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§<!$§ == §@0§) && (!param1 || this.§57§ <= 0 && this.§<!$§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §5M§() : Boolean
      {
         return this.§<!$§ == LEVEL_STATE_VICTORY2_END || this.§<!$§ == §@0§;
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
         if(!this.§-=§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§<!$§ == §?!+§ || this.§<!$§ == §^!+§ || this.§<!$§ == §,!_§)
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
      
      private function §;W§(param1:int) : void
      {
         this.§%!Z§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§-=§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §42§.§>!I§();
         if(this.§"!L§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§<!$§ == §`!5§ || this.§9!$§)
            {
               this.§9!$§ = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.§=h§(§,!_§);
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
         if(!this.§-=§)
         {
            return;
         }
         §42§.§^!M§();
         if(this.§<!$§ == §0!P§)
         {
            this.§=h§(§,!_§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.§=h§(§`!5§);
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
         if(!this.§-=§)
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
         this.§-I§ = param1;
         this.§%W§ = param2;
      }
      
      public function §%!U§() : Point
      {
         return new Point(this.§-I§,this.§%W§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!>§.§!h§(this.§!>§.getValue() + param1);
         this.§0!c§(§[!N§);
         if(this.§<!$§ == §?!+§)
         {
            this.§57§ = 2000;
            this.§4!"§ = § !-§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§!>§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§,!1§.§2T§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §!!d§.§2!H§(§!!d§.§%1§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§-=§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§-=§ = param1;
      }
   }
}

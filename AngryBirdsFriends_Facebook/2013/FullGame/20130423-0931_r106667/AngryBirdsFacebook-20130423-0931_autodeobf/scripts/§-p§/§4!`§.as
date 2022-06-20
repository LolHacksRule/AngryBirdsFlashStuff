package §-p§
{
   import §!!=§.§"l§;
   import §+!c§.§&!0§;
   import §4!<§.§&=§;
   import §4!<§.§'!S§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import §@!"§.§?l§;
   import §`!G§.§&!5§;
   import §`!G§.§2"L§;
   import §`!G§.§;i§;
   import §`!G§.§[!8§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §4!`§ extends §+"N§
   {
      
      public static const §]"9§:int = 0;
      
      public static const §6!Y§:int = 1;
      
      public static const §3"L§:int = 2;
      
      public static const §1`§:int = 3;
      
      public static const §7"<§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const LEVEL_STATE_FAIL:int = 7;
      
      protected static const §6!V§:Number = §"l§.§[!S§ / 100;
      
      public static const §8!e§:Number = 2000;
      
      public static const §8!a§:Number = 2500;
      
      public static const §+6§:int = 5;
      
      private static var §"!f§:Boolean;
       
      
      public var §1A§:int = 0;
      
      protected var §]"%§:int = 0;
      
      public var §@!^§:Number;
      
      protected var §[!t§:Number = 0;
      
      protected var §1!v§:Boolean = false;
      
      private var §6"?§:Number = 0;
      
      public var §,!3§:Number = 0;
      
      protected var §#!D§:Number = 0;
      
      protected var §>!&§:Number = 0;
      
      protected var §6!v§:Boolean = true;
      
      protected var §-!6§:§9!D§;
      
      public function §4!`§(param1:§'!S§)
      {
         this.§-!6§ = new §9!D§();
         super(param1);
      }
      
      public static function §!e§(param1:Boolean) : void
      {
         §"!f§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§-!6§.assign(0);
         this.§1A§ = -1;
         this.§]"%§ = 0;
         this.§[!t§ = 0;
         this.§1!v§ = false;
         this.changeGameState(§]"9§);
         this.§@!^§ = §8!e§;
         §>!C§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§"!D§(param1);
         this.§[_§(param1);
      }
      
      private function §"!D§(param1:int) : void
      {
         if(this.§]"%§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§]"%§ > 0,param1 * §6!V§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§1A§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §@"'§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §"l§.§-5§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §;!'§(param1:int) : void
      {
         var _loc2_:§"l§ = mLevelMain.camera;
         if(_loc2_.§ "'§ > 0)
         {
            _loc2_.§ "'§ -= param1;
            if(_loc2_.§ "'§ <= 0)
            {
               if(this.§@"'§())
               {
                  _loc2_.§ "'§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§1!A§();
                  }
               }
               else
               {
                  _loc2_.§ "'§ = §"l§.§``§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§-s§(false) && !param2)
         {
            return;
         }
         if(param1 == §]"9§)
         {
            this.§,!3§ = 2000;
         }
         else if(param1 == §6!Y§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §3"L§)
         {
            §!e§(false);
            this.§,!3§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §1`§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §7"<§)
         {
            this.§,!3§ = 2000;
            this.§6"?§ = §+6§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§,!3§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§,!3§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §@"M§.§3"C§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == LEVEL_STATE_FAIL)
         {
            §@"M§.§3!s§();
            §@"M§.§3"C§("LevelFailedPigs1");
            this.§,!3§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§1A§ = param1;
      }
      
      public function §=!q§() : void
      {
         this.§,!3§ = 2000;
         this.§1!v§ = false;
         this.§[!t§ = 2000;
      }
      
      public function §6!#§(param1:Number) : void
      {
         this.§1!v§ = false;
         this.§[!t§ = Math.max(this.§[!t§,param1);
      }
      
      protected function §6"+§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §&=§.§&!K§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §[_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§[!8§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§@!^§ -= param1;
         if(this.§1!v§)
         {
            this.§[!t§ -= param1;
            if(this.§[!t§ < 0)
            {
               this.§@!^§ = 0;
            }
         }
         if(this.§@!^§ <= 0 && !this.§-s§(false))
         {
            this.§@!^§ = §8!e§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§1!v§ || this.§[!t§ > 0))
            {
               if((!this.§1!v§ || this.§[!t§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§[!t§ = 6000;
                  this.§1!v§ = true;
               }
               else if(!this.§1!v§ && this.§6"+§())
               {
                  this.§[!t§ = 15000;
                  this.§1!v§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded && (§?l§.§'h§.slingshot.§9!L§.length == 0 || §?l§.§'h§.slingshot.§9!L§[0].name != "BIRD_CHRISTMAS"))
            {
               this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§6"+§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§@!^§ = §8!e§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.setGameOverState(LEVEL_STATE_FAIL);
               }
            }
            if(this.§-s§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§,!3§ -= param1;
         if(this.§,!3§ < 0)
         {
            this.§,!3§ = 0;
         }
         if(this.§1A§ == §1`§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §"l§.§ "2§)
            {
               this.changeGameState(§6!Y§);
            }
         }
         else if(this.§1A§ == §7"<§)
         {
            if(this.§,!3§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§6"?§ > 0)
               {
                  this.§,!3§ = 2000;
                  this.§@!^§ = 0;
                  this.§6"?§ = this.§6"?§ - 1;
               }
               else if(!§?l§.§'h§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§6!Y§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §"l§.§ "2§)
            {
               this.changeGameState(§6!Y§);
            }
         }
         else if(this.§1A§ == §]"9§)
         {
            if(this.§,!3§ <= 0)
            {
               this.changeGameState(§6!Y§);
            }
         }
         else if(this.§1A§ == §6!Y§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §"l§.§ "2§)
            {
               this.changeGameState(§1`§);
            }
         }
         else if(this.§1A§ == §3"L§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§ d§ < _loc4_.§^!2§)
            {
               if(_loc4_ && _loc4_ is §2"L§)
               {
                  _loc5_ = _loc4_ is §;i§;
                  _loc6_ = _loc4_ is §&!5§;
                  _loc7_ = (_loc4_ as §2"L§).§#P§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §!e§(true);
                        this.changeGameState(§7"<§);
                     }
                  }
               }
               mLevelMain.activeObject = null;
               this.changeGameState(§7"<§);
            }
         }
         else if(this.§1A§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§,!3§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§,!3§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         if(!this.§1!v§)
         {
            this.§1!v§ = true;
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
            this.§[!t§ = Math.min(this.§[!t§,3500);
         }
         if(this.§[!t§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §-s§(param1:Boolean = false) : Boolean
      {
         return (this.§1A§ == LEVEL_STATE_VICTORY2_END || this.§1A§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§1A§ == LEVEL_STATE_FAIL) && (!param1 || this.§,!3§ <= 0 && this.§1A§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §&!k§() : Boolean
      {
         return this.§1A§ == LEVEL_STATE_VICTORY2_END || this.§1A§ == LEVEL_STATE_FAIL;
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
         if(!this.§6!v§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§1A§ == §7"<§ || this.§1A§ == §1`§ || this.§1A§ == §6!Y§ || this.§1A§ == §3"L§)
            {
               if(!mLevelMain.isPlayingReplay())
               {
                  mLevelMain.camera.adjustManualScale(param1,param2 == 0 ? Number(§"l§.§[!S§) : Number(param2));
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
      
      private function §1y§(param1:int) : void
      {
         this.§]"%§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§6!v§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §&!0§.§8!R§();
         if(this.§-s§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§1A§ == §3"L§ || §"!f§)
            {
               §!e§(false);
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               _loc4_ = mLevelMain.screenToBox2D(param1,param2);
               mLevelMain.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
               this.changeGameState(§6!Y§);
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
         if(!this.§6!v§)
         {
            return;
         }
         §&!0§.§!4§();
         if(this.§1A§ == §]"9§)
         {
            this.changeGameState(§6!Y§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.changeGameState(§3"L§);
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
         if(!this.§6!v§)
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
         this.§#!D§ = param1;
         this.§>!&§ = param2;
      }
      
      public function §'"R§() : Point
      {
         return new Point(this.§#!D§,this.§>!&§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§-!6§.assign(this.§-!6§.getValue() + param1);
         this.§6!#§(§8!a§);
         if(this.§1A§ == §7"<§)
         {
            this.§,!3§ = 2000;
            this.§6"?§ = §+6§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§-!6§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§?l§.§'h§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§ "§(LevelManager.§ T§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§6!v§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§6!v§ = param1;
      }
   }
}

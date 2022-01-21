package §"!g§
{
   import § e§.§62§;
   import §#M§.§+!Z§;
   import §5!L§.§,!&§;
   import §5!L§.§1L§;
   import §5!L§.§@!%§;
   import §7_§.§^d§;
   import §8<§.§ !+§;
   import §<L§.§!!G§;
   import §<L§.§7!4§;
   import §[!_§.§8U§;
   import §^!K§.§ !$§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §`!B§ extends §7!W§
   {
      
      public static const §`!4§:int = 0;
      
      public static const §"O§:int = 1;
      
      public static const §]! §:int = 2;
      
      public static const §5!A§:int = 3;
      
      public static const §9![§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §5<§:int = 7;
      
      protected static const § <§:Number = §8U§.§3!&§ / 100;
      
      public static const §`4§:Number = 2000;
      
      public static const §5!?§:Number = 2500;
      
      public static const §8!0§:int = 5;
       
      
      public var §;H§:int = 0;
      
      protected var §2k§:int = 0;
      
      public var §?y§:Number;
      
      protected var §2!C§:Number = 0;
      
      protected var §9!§:Boolean = false;
      
      private var §9x§:Number = 0;
      
      public var §#!$§:Number = 0;
      
      protected var §[!Y§:Boolean;
      
      protected var §!Y§:Number = 0;
      
      protected var §"!%§:Number = 0;
      
      protected var §^Q§:Boolean = true;
      
      protected var §;!i§:§62§;
      
      public function §`!B§(param1:§!!G§)
      {
         this.§;!i§ = new §62§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§;!i§.§^>§(0);
         this.§;H§ = -1;
         this.§2k§ = 0;
         this.§2!C§ = 0;
         this.§9!§ = false;
         this.changeGameState(§`!4§);
         this.§?y§ = §`4§;
         §68§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§#P§(param1);
         this.§%!1§(param1);
      }
      
      private function §#P§(param1:int) : void
      {
         if(this.§2k§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§2k§ > 0,param1 * § <§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§;H§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §7!#§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §8U§.§"z§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §6!?§(param1:int) : void
      {
         var _loc2_:§8U§ = mLevelMain.camera;
         if(_loc2_.§``§ > 0)
         {
            _loc2_.§``§ -= param1;
            if(_loc2_.§``§ <= 0)
            {
               if(this.§7!#§())
               {
                  _loc2_.§``§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§4!Z§();
                  }
               }
               else
               {
                  _loc2_.§``§ = §8U§.§+!^§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§"F§(false) && !param2)
         {
            return;
         }
         if(param1 == §`!4§)
         {
            this.§#!$§ = 2000;
         }
         else if(param1 == §"O§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §]! §)
         {
            this.§[!Y§ = false;
            this.§#!$§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §5!A§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §9![§)
         {
            this.§#!$§ = 2000;
            this.§9x§ = §8!0§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§#!$§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§#!$§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            § !$§.§-N§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §5<§)
         {
            § !$§.§?j§();
            § !$§.§-N§("LevelFailedPigs1");
            this.§#!$§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§;H§ = param1;
      }
      
      public function §[8§(param1:Number) : void
      {
         this.§2!C§ = Math.max(this.§2!C§,param1);
      }
      
      protected function §9?§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §7!4§.§8=§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §%!1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§,!&§ = null;
         this.§?y§ -= param1;
         if(this.§9!§)
         {
            this.§2!C§ -= param1;
            if(this.§2!C§ < 0)
            {
               this.§?y§ = 0;
            }
         }
         if(this.§?y§ <= 0 && !this.§"F§(false))
         {
            this.§?y§ = §`4§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§9!§ || this.§2!C§ > 0))
            {
               if((!this.§9!§ || this.§2!C§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§2!C§ = 6000;
                  this.§9!§ = true;
               }
               else if(!this.§9!§ && this.§9?§())
               {
                  this.§2!C§ = 15000;
                  this.§9!§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§>!g§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§9?§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§>!g§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§?y§ = §`4§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§>!g§(§5<§);
               }
            }
            if(this.§"F§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§#!$§ -= param1;
         if(this.§#!$§ < 0)
         {
            this.§#!$§ = 0;
         }
         if(this.§;H§ == §5!A§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §8U§.§='§)
            {
               this.changeGameState(§"O§);
            }
         }
         else if(this.§;H§ == §9![§)
         {
            if(this.§#!$§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§9x§ > 0)
               {
                  this.§#!$§ = 2000;
                  this.§?y§ = 0;
                  this.§9x§ = this.§9x§ - 1;
               }
               else if(!§+!Z§.§?!<§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§"O§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §8U§.§='§)
            {
               this.changeGameState(§"O§);
            }
         }
         else if(this.§;H§ == §`!4§)
         {
            if(this.§#!$§ <= 0)
            {
               this.changeGameState(§"O§);
            }
         }
         else if(this.§;H§ == §"O§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §8U§.§='§)
            {
               this.changeGameState(§5!A§);
            }
         }
         else if(this.§;H§ == §]! §)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§3o§ < _loc4_.§'6§)
            {
               if(_loc4_ && _loc4_ is §@!%§ && (!(_loc4_ as §1L§).§=!h§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§[!Y§ = true;
                  this.changeGameState(§9![§);
               }
               mLevelMain.activeObject = null;
               this.changeGameState(§9![§);
            }
         }
         else if(this.§;H§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§#!$§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§#!$§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §>!g§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§9!§)
         {
            this.§9!§ = true;
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
            this.§2!C§ = Math.min(this.§2!C§,3500);
         }
         if(this.§2!C§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §"F§(param1:Boolean = false) : Boolean
      {
         return (this.§;H§ == LEVEL_STATE_VICTORY2_END || this.§;H§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§;H§ == §5<§) && (!param1 || this.§#!$§ <= 0 && this.§;H§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §!U§() : Boolean
      {
         return this.§;H§ == LEVEL_STATE_VICTORY2_END || this.§;H§ == §5<§;
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
         if(!this.§^Q§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§;H§ == §9![§ || this.§;H§ == §5!A§ || this.§;H§ == §"O§)
            {
               if(!mLevelMain.isPlayingReplay())
               {
                  mLevelMain.camera.adjustManualScale(param1,param2 == 0 ? Number(§8U§.§3!&§) : Number(param2));
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
      
      private function §2s§(param1:int) : void
      {
         this.§2k§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§^Q§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         § !+§.§1,§();
         if(this.§"F§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§;H§ == §]! § || this.§[!Y§)
            {
               this.§[!Y§ = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.changeGameState(§"O§);
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
         if(!this.§^Q§)
         {
            return;
         }
         § !+§.§4!,§();
         if(this.§;H§ == §`!4§)
         {
            this.changeGameState(§"O§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.changeGameState(§]! §);
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
         if(!this.§^Q§)
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
         this.§!Y§ = param1;
         this.§"!%§ = param2;
      }
      
      public function §?!b§() : Point
      {
         return new Point(this.§!Y§,this.§"!%§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§;!i§.§^>§(this.§;!i§.getValue() + param1);
         this.§[8§(§5!?§);
         if(this.§;H§ == §9![§)
         {
            this.§#!$§ = 2000;
            this.§9x§ = §8!0§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§;!i§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§+!Z§.§?!<§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §^d§.§'!J§(§^d§.§@P§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§^Q§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§^Q§ = param1;
      }
   }
}

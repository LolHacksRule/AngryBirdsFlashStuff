package §[!L§
{
   import § !Y§.§2#§;
   import §3!@§.§ s§;
   import §3!@§.§49§;
   import §5K§.§6]§;
   import §?!§.§%o§;
   import §?!§.§8!_§;
   import §?!§.§]!%§;
   import §?!g§.§ !d§;
   import §?I§.§'e§;
   import §^U§.§3$§;
   import §finally§.§8k§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §#!`§ extends §'!U§
   {
      
      public static const §%!`§:int = 0;
      
      public static const §&4§:int = 1;
      
      public static const §,!R§:int = 2;
      
      public static const §-!g§:int = 3;
      
      public static const §5!E§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §"'§:int = 7;
      
      protected static const §?'§:Number = §3$§.§6u§ / 100;
      
      public static const §<!c§:Number = 2000;
      
      public static const §[0§:Number = 2500;
      
      public static const §'Y§:int = 5;
       
      
      public var §1g§:int = 0;
      
      protected var §6o§:int = 0;
      
      public var §9!§:Number;
      
      protected var §4!M§:Number = 0;
      
      protected var §4!2§:Boolean = false;
      
      private var §8@§:Number = 0;
      
      public var §!$§:Number = 0;
      
      protected var §,h§:Boolean;
      
      protected var §]H§:Number = 0;
      
      protected var include:Number = 0;
      
      protected var §=_§:Boolean = true;
      
      protected var §!!S§:§'e§;
      
      public function §#!`§(param1:§ s§)
      {
         this.§!!S§ = new §'e§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!!S§.§3!$§(0);
         this.§1g§ = -1;
         this.§6o§ = 0;
         this.§4!M§ = 0;
         this.§4!2§ = false;
         this.changeGameState(§%!`§);
         this.§9!§ = §<!c§;
         § f§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§6K§(param1);
         this.§<O§(param1);
      }
      
      private function §6K§(param1:int) : void
      {
         if(this.§6o§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§6o§ > 0,param1 * §?'§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§1g§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §;!@§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §3$§.§7t§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §0]§(param1:int) : void
      {
         var _loc2_:§3$§ = mLevelMain.camera;
         if(_loc2_.§>!,§ > 0)
         {
            _loc2_.§>!,§ -= param1;
            if(_loc2_.§>!,§ <= 0)
            {
               if(this.§;!@§())
               {
                  _loc2_.§>!,§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§+2§();
                  }
               }
               else
               {
                  _loc2_.§>!,§ = §3$§.§7J§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§^!5§(false) && !param2)
         {
            return;
         }
         if(param1 == §%!`§)
         {
            this.§!$§ = 2000;
         }
         else if(param1 == §&4§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §,!R§)
         {
            this.§,h§ = false;
            this.§!$§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §-!g§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §5!E§)
         {
            this.§!$§ = 2000;
            this.§8@§ = §'Y§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§!$§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§!$§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            § !d§.§-h§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §"'§)
         {
            § !d§.§;O§();
            § !d§.§-h§("LevelFailedPigs1");
            this.§!$§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§1g§ = param1;
      }
      
      public function §&!_§(param1:Number) : void
      {
         this.§4!M§ = Math.max(this.§4!M§,param1);
      }
      
      protected function §8;§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §49§.§4!g§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §<O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§%o§ = null;
         this.§9!§ -= param1;
         if(this.§4!2§)
         {
            this.§4!M§ -= param1;
            if(this.§4!M§ < 0)
            {
               this.§9!§ = 0;
            }
         }
         if(this.§9!§ <= 0 && !this.§^!5§(false))
         {
            this.§9!§ = §<!c§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§4!2§ || this.§4!M§ > 0))
            {
               if((!this.§4!2§ || this.§4!M§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§4!M§ = 6000;
                  this.§4!2§ = true;
               }
               else if(!this.§4!2§ && this.§8;§())
               {
                  this.§4!M§ = 15000;
                  this.§4!2§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§[![§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§8;§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§[![§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§9!§ = §<!c§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§[![§(§"'§);
               }
            }
            if(this.§^!5§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§!$§ -= param1;
         if(this.§!$§ < 0)
         {
            this.§!$§ = 0;
         }
         if(this.§1g§ == §-!g§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §3$§.§ i§)
            {
               this.changeGameState(§&4§);
            }
         }
         else if(this.§1g§ == §5!E§)
         {
            if(this.§!$§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§8@§ > 0)
               {
                  this.§!$§ = 2000;
                  this.§9!§ = 0;
                  this.§8@§ = this.§8@§ - 1;
               }
               else if(!§2#§.§"@§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§&4§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §3$§.§ i§)
            {
               this.changeGameState(§&4§);
            }
         }
         else if(this.§1g§ == §%!`§)
         {
            if(this.§!$§ <= 0)
            {
               this.changeGameState(§&4§);
            }
         }
         else if(this.§1g§ == §&4§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §3$§.§ i§)
            {
               this.changeGameState(§-!g§);
            }
         }
         else if(this.§1g§ == §,!R§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§-&§ < _loc4_.§5!]§)
            {
               if(_loc4_ && _loc4_ is §8!_§ && (!(_loc4_ as §]!%§).§'!$§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§,h§ = true;
                  this.changeGameState(§5!E§);
               }
               mLevelMain.activeObject = null;
               this.changeGameState(§5!E§);
            }
         }
         else if(this.§1g§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§!$§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§!$§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §[![§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§4!2§)
         {
            this.§4!2§ = true;
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
            this.§4!M§ = Math.min(this.§4!M§,3500);
         }
         if(this.§4!M§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §^!5§(param1:Boolean = false) : Boolean
      {
         return (this.§1g§ == LEVEL_STATE_VICTORY2_END || this.§1g§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§1g§ == §"'§) && (!param1 || this.§!$§ <= 0 && this.§1g§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §&!`§() : Boolean
      {
         return this.§1g§ == LEVEL_STATE_VICTORY2_END || this.§1g§ == §"'§;
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
         if(!this.§=_§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§1g§ == §5!E§ || this.§1g§ == §-!g§ || this.§1g§ == §&4§)
            {
               if(!mLevelMain.isPlayingReplay())
               {
                  mLevelMain.camera.adjustManualScale(param1,param2 == 0 ? Number(§3$§.§6u§) : Number(param2));
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
      
      private function §+"§(param1:int) : void
      {
         this.§6o§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§=_§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §6]§.§8O§();
         if(this.§^!5§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§1g§ == §,!R§ || this.§,h§)
            {
               this.§,h§ = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.changeGameState(§&4§);
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
         if(!this.§=_§)
         {
            return;
         }
         §6]§.§%!;§();
         if(this.§1g§ == §%!`§)
         {
            this.changeGameState(§&4§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.changeGameState(§,!R§);
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
         if(!this.§=_§)
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
         this.§]H§ = param1;
         this.include = param2;
      }
      
      public function §8z§() : Point
      {
         return new Point(this.§]H§,this.include);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!!S§.§3!$§(this.§!!S§.getValue() + param1);
         this.§&!_§(§[0§);
         if(this.§1g§ == §5!E§)
         {
            this.§!$§ = 2000;
            this.§8@§ = §'Y§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§!!S§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§2#§.§"@§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §8k§.§7v§(§8k§.§8h§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§=_§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§=_§ = param1;
      }
   }
}

package §[#§
{
   import § !m§.§6h§;
   import §%`§.§ V§;
   import §%`§.§"s§;
   import §%`§.override;
   import §'a§.§0!f§;
   import §'a§.§0U§;
   import §+-§.§3!5§;
   import §9!W§.§=!@§;
   import §;!j§.§;M§;
   import §=<§.§&5§;
   import §[_§.§2D§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §!p§ extends §?!P§
   {
      
      public static const § !1§:int = 0;
      
      public static const §9!Y§:int = 1;
      
      public static const §6!&§:int = 2;
      
      public static const §'J§:int = 3;
      
      public static const §=H§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §7r§:int = 7;
      
      protected static const §^!b§:Number = §2D§.§-t§ / 100;
      
      public static const §0L§:Number = 2000;
      
      public static const §9!>§:Number = 2500;
      
      public static const §6P§:int = 5;
       
      
      public var §]z§:int = 0;
      
      protected var §3!D§:int = 0;
      
      public var §&!d§:Number;
      
      protected var §78§:Number = 0;
      
      protected var §-!g§:Boolean = false;
      
      private var §!+§:Number = 0;
      
      public var §=F§:Number = 0;
      
      protected var §in §:Boolean;
      
      protected var § !U§:Number = 0;
      
      protected var §^@§:Number = 0;
      
      protected var §;!A§:Boolean = true;
      
      protected var §?!S§:§;M§;
      
      public function §!p§(param1:§0!f§)
      {
         this.§?!S§ = new §;M§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§?!S§.§8?§(0);
         this.§]z§ = -1;
         this.§3!D§ = 0;
         this.§78§ = 0;
         this.§-!g§ = false;
         this.changeGameState(§ !1§);
         this.§&!d§ = §0L§;
         §?h§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§2]§(param1);
         this.§+5§(param1);
      }
      
      private function §2]§(param1:int) : void
      {
         if(this.§3!D§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§3!D§ > 0,param1 * §^!b§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§]z§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §1"§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §2D§.§5M§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §[!M§(param1:int) : void
      {
         var _loc2_:§2D§ = mLevelMain.camera;
         if(_loc2_.§`a§ > 0)
         {
            _loc2_.§`a§ -= param1;
            if(_loc2_.§`a§ <= 0)
            {
               if(this.§1"§())
               {
                  _loc2_.§`a§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§<!'§();
                  }
               }
               else
               {
                  _loc2_.§`a§ = §2D§.§@!Y§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§=!c§(false) && !param2)
         {
            return;
         }
         if(param1 == § !1§)
         {
            this.§=F§ = 2000;
         }
         else if(param1 == §9!Y§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §6!&§)
         {
            this.§in § = false;
            this.§=F§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §'J§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §=H§)
         {
            this.§=F§ = 2000;
            this.§!+§ = §6P§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§=F§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§=F§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §6h§.§-a§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §7r§)
         {
            §6h§.§>!U§();
            §6h§.§-a§("LevelFailedPigs1");
            this.§=F§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§]z§ = param1;
      }
      
      public function §[n§(param1:Number) : void
      {
         this.§78§ = Math.max(this.§78§,param1);
      }
      
      protected function §5W§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §0U§.§!w§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §+5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§"s§ = null;
         this.§&!d§ -= param1;
         if(this.§-!g§)
         {
            this.§78§ -= param1;
            if(this.§78§ < 0)
            {
               this.§&!d§ = 0;
            }
         }
         if(this.§&!d§ <= 0 && !this.§=!c§(false))
         {
            this.§&!d§ = §0L§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§-!g§ || this.§78§ > 0))
            {
               if((!this.§-!g§ || this.§78§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§78§ = 6000;
                  this.§-!g§ = true;
               }
               else if(!this.§-!g§ && this.§5W§())
               {
                  this.§78§ = 15000;
                  this.§-!g§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§=!f§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5W§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§=!f§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§&!d§ = §0L§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§=!f§(§7r§);
               }
            }
            if(this.§=!c§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§=F§ -= param1;
         if(this.§=F§ < 0)
         {
            this.§=F§ = 0;
         }
         if(this.§]z§ == §'J§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §2D§.§#z§)
            {
               this.changeGameState(§9!Y§);
            }
         }
         else if(this.§]z§ == §=H§)
         {
            if(this.§=F§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§!+§ > 0)
               {
                  this.§=F§ = 2000;
                  this.§&!d§ = 0;
                  this.§!+§ = this.§!+§ - 1;
               }
               else if(!§=!@§.§>!T§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§9!Y§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §2D§.§#z§)
            {
               this.changeGameState(§9!Y§);
            }
         }
         else if(this.§]z§ == § !1§)
         {
            if(this.§=F§ <= 0)
            {
               this.changeGameState(§9!Y§);
            }
         }
         else if(this.§]z§ == §9!Y§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §2D§.§#z§)
            {
               this.changeGameState(§'J§);
            }
         }
         else if(this.§]z§ == §6!&§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§%!a§ < _loc4_.§"!j§)
            {
               if(_loc4_ && _loc4_ is § V§ && (!(_loc4_ as override).§0C§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§in § = true;
                  this.changeGameState(§=H§);
               }
               mLevelMain.activeObject = null;
               this.changeGameState(§=H§);
            }
         }
         else if(this.§]z§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§=F§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§=F§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §=!f§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§-!g§)
         {
            this.§-!g§ = true;
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
            this.§78§ = Math.min(this.§78§,3500);
         }
         if(this.§78§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §=!c§(param1:Boolean = false) : Boolean
      {
         return (this.§]z§ == LEVEL_STATE_VICTORY2_END || this.§]z§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§]z§ == §7r§) && (!param1 || this.§=F§ <= 0 && this.§]z§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §5Y§() : Boolean
      {
         return this.§]z§ == LEVEL_STATE_VICTORY2_END || this.§]z§ == §7r§;
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
         if(!this.§;!A§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§]z§ == §=H§ || this.§]z§ == §'J§ || this.§]z§ == §9!Y§)
            {
               if(!mLevelMain.isPlayingReplay())
               {
                  mLevelMain.camera.adjustManualScale(param1,param2 == 0 ? Number(§2D§.§-t§) : Number(param2));
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
      
      private function §2_§(param1:int) : void
      {
         this.§3!D§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§;!A§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §&5§.§?!h§();
         if(this.§=!c§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§]z§ == §6!&§ || this.§in §)
            {
               this.§in § = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.changeGameState(§9!Y§);
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
         if(!this.§;!A§)
         {
            return;
         }
         §&5§.§'e§();
         if(this.§]z§ == § !1§)
         {
            this.changeGameState(§9!Y§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.changeGameState(§6!&§);
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
         if(!this.§;!A§)
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
         this.§ !U§ = param1;
         this.§^@§ = param2;
      }
      
      public function §0!5§() : Point
      {
         return new Point(this.§ !U§,this.§^@§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§?!S§.§8?§(this.§?!S§.getValue() + param1);
         this.§[n§(§9!>§);
         if(this.§]z§ == §=H§)
         {
            this.§=F§ = 2000;
            this.§!+§ = §6P§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§?!S§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§=!@§.§>!T§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §3!5§.§ !R§(§3!5§.§-!2§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§;!A§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§;!A§ = param1;
      }
   }
}

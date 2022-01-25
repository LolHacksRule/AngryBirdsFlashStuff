package §"m§
{
   import §%!^§.§"=§;
   import §&!'§.§'!f§;
   import §&$§.§!!R§;
   import §&F§.§2!4§;
   import §&F§.§>!2§;
   import §+x§.§-6§;
   import §0!b§.§#!=§;
   import §^!$§.§6y§;
   import §^!$§.§>!-§;
   import §^!$§.§?![§;
   import §^=§.§,!X§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §3]§ extends §2!Z§
   {
      
      public static const §,!E§:int = 0;
      
      public static const §&!P§:int = 1;
      
      public static const §=!&§:int = 2;
      
      public static const §'!_§:int = 3;
      
      public static const §=$§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §6!I§:int = 7;
      
      protected static const §2>§:Number = §'!f§.§0^§ / 100;
      
      public static const §!!^§:Number = 2000;
      
      public static const §@R§:Number = 2500;
      
      public static const §"g§:int = 5;
       
      
      public var §;!#§:int = 0;
      
      protected var §<8§:int = 0;
      
      public var §<D§:Number;
      
      protected var §^!G§:Number = 0;
      
      protected var §[!^§:Boolean = false;
      
      private var §[W§:Number = 0;
      
      public var §1!C§:Number = 0;
      
      protected var §'!O§:Boolean;
      
      protected var §@!I§:Number = 0;
      
      protected var §,s§:Number = 0;
      
      protected var §'!&§:Boolean = true;
      
      protected var §!!M§:§!!R§;
      
      public function §3]§(param1:§>!2§)
      {
         this.§!!M§ = new §!!R§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!!M§.§9P§(0);
         this.§;!#§ = -1;
         this.§<8§ = 0;
         this.§^!G§ = 0;
         this.§[!^§ = false;
         this.§[!R§(§,!E§);
         this.§<D§ = §!!^§;
         §43§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§7[§(param1);
         this.§28§(param1);
      }
      
      private function §7[§(param1:int) : void
      {
         if(this.§<8§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§<8§ > 0,param1 * §2>§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§;!#§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §<;§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §'!f§.§;!S§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §@h§(param1:int) : void
      {
         var _loc2_:§'!f§ = mLevelMain.camera;
         if(_loc2_.§9!!§ > 0)
         {
            _loc2_.§9!!§ -= param1;
            if(_loc2_.§9!!§ <= 0)
            {
               if(this.§<;§())
               {
                  _loc2_.§9!!§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§%^§();
                  }
               }
               else
               {
                  _loc2_.§9!!§ = §'!f§.§%h§ / 2;
               }
            }
         }
      }
      
      public function §[!R§(param1:int, param2:Boolean = false) : void
      {
         if(this.§51§(false) && !param2)
         {
            return;
         }
         if(param1 == §,!E§)
         {
            this.§1!C§ = 2000;
         }
         else if(param1 == §&!P§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §=!&§)
         {
            this.§'!O§ = false;
            this.§1!C§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §'!_§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §=$§)
         {
            this.§1!C§ = 2000;
            this.§[W§ = §"g§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§1!C§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§1!C§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §-6§.§6!#§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §6!I§)
         {
            §-6§.§[G§();
            §-6§.§6!#§("LevelFailedPigs1");
            this.§1!C§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§;!#§ = param1;
      }
      
      public function §5W§(param1:Number) : void
      {
         this.§^!G§ = Math.max(this.§^!G§,param1);
      }
      
      protected function §17§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §2!4§.§3J§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §28§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§?![§ = null;
         this.§<D§ -= param1;
         if(this.§[!^§)
         {
            this.§^!G§ -= param1;
            if(this.§^!G§ < 0)
            {
               this.§<D§ = 0;
            }
         }
         if(this.§<D§ <= 0 && !this.§51§(false))
         {
            this.§<D§ = §!!^§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§[!^§ || this.§^!G§ > 0))
            {
               if((!this.§[!^§ || this.§^!G§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§^!G§ = 6000;
                  this.§[!^§ = true;
               }
               else if(!this.§[!^§ && this.§17§())
               {
                  this.§^!G§ = 15000;
                  this.§[!^§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§2!W§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§17§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§2!W§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§<D§ = §!!^§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§2!W§(§6!I§);
               }
            }
            if(this.§51§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§1!C§ -= param1;
         if(this.§1!C§ < 0)
         {
            this.§1!C§ = 0;
         }
         if(this.§;!#§ == §'!_§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §'!f§.§8!D§)
            {
               this.§[!R§(§&!P§);
            }
         }
         else if(this.§;!#§ == §=$§)
         {
            if(this.§1!C§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§[W§ > 0)
               {
                  this.§1!C§ = 2000;
                  this.§<D§ = 0;
                  this.§[W§ = this.§[W§ - 1;
               }
               else if(!§#!=§.§&![§.objects.mMightyEagleAdded)
               {
                  this.§[!R§(§&!P§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §'!f§.§8!D§)
            {
               this.§[!R§(§&!P§);
            }
         }
         else if(this.§;!#§ == §,!E§)
         {
            if(this.§1!C§ <= 0)
            {
               this.§[!R§(§&!P§);
            }
         }
         else if(this.§;!#§ == §&!P§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §'!f§.§8!D§)
            {
               this.§[!R§(§'!_§);
            }
         }
         else if(this.§;!#§ == §=!&§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§+m§ < _loc4_.§>!`§)
            {
               if(_loc4_ && _loc4_ is §>!-§ && (!(_loc4_ as §6y§).§4c§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§'!O§ = true;
                  this.§[!R§(§=$§);
               }
               mLevelMain.activeObject = null;
               this.§[!R§(§=$§);
            }
         }
         else if(this.§;!#§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§1!C§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§1!C§ = 1000;
               }
               else
               {
                  this.§[!R§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §2!W§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§[!^§)
         {
            this.§[!^§ = true;
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
            this.§^!G§ = Math.min(this.§^!G§,3500);
         }
         if(this.§^!G§ <= 0)
         {
            this.§[!R§(param1,param2);
         }
      }
      
      public function §51§(param1:Boolean = false) : Boolean
      {
         return (this.§;!#§ == LEVEL_STATE_VICTORY2_END || this.§;!#§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§;!#§ == §6!I§) && (!param1 || this.§1!C§ <= 0 && this.§;!#§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §>!#§() : Boolean
      {
         return this.§;!#§ == LEVEL_STATE_VICTORY2_END || this.§;!#§ == §6!I§;
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
         if(!this.§'!&§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§;!#§ == §=$§ || this.§;!#§ == §'!_§ || this.§;!#§ == §&!P§)
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
      
      private function §3A§(param1:int) : void
      {
         this.§<8§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§'!&§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §,!X§.§]p§();
         if(this.§51§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§;!#§ == §=!&§ || this.§'!O§)
            {
               this.§'!O§ = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.§[!R§(§&!P§);
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
         if(!this.§'!&§)
         {
            return;
         }
         §,!X§.§2U§();
         if(this.§;!#§ == §,!E§)
         {
            this.§[!R§(§&!P§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.§[!R§(§=!&§);
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
         if(!this.§'!&§)
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
         this.§@!I§ = param1;
         this.§,s§ = param2;
      }
      
      public function §`!N§() : Point
      {
         return new Point(this.§@!I§,this.§,s§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!!M§.§9P§(this.§!!M§.getValue() + param1);
         this.§5W§(§@R§);
         if(this.§;!#§ == §=$§)
         {
            this.§1!C§ = 2000;
            this.§[W§ = §"g§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§!!M§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§#!=§.§&![§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §"=§.§'a§(§"=§.§?x§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§'!&§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§'!&§ = param1;
      }
   }
}

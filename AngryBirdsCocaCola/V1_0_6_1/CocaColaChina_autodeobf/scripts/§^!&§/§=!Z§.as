package §^!&§
{
   import §#B§.§ ]§;
   import §#B§.§!!_§;
   import §#B§.§,a§;
   import §'!^§.§4!2§;
   import §2!G§.§ U§;
   import §2!G§.§2!V§;
   import §3U§.§2!%§;
   import §;A§.§7!K§;
   import §<!!§.§<!B§;
   import §=L§.§@E§;
   import §@!C§.§#C§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §=!Z§ extends §&!$§
   {
      
      public static const §6!,§:int = 0;
      
      public static const §1O§:int = 1;
      
      public static const §2!0§:int = 2;
      
      public static const §3!2§:int = 3;
      
      public static const §'m§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §1!N§:int = 7;
      
      protected static const §@=§:Number = §#C§.§<4§ / 100;
      
      public static const §"j§:Number = 2000;
      
      public static const §>W§:Number = 2500;
      
      public static const §5%§:int = 5;
       
      
      public var §?B§:int = 0;
      
      protected var §,!M§:int = 0;
      
      public var §4s§:Number;
      
      protected var §3!C§:Number = 0;
      
      protected var §7!_§:Boolean = false;
      
      private var §!!;§:Number = 0;
      
      public var §^'§:Number = 0;
      
      protected var §9!<§:Boolean;
      
      protected var §%!8§:Number = 0;
      
      protected var §#Y§:Number = 0;
      
      protected var §,`§:Boolean = true;
      
      protected var §^!S§:§4!2§;
      
      public function §=!Z§(param1:§2!V§)
      {
         this.§^!S§ = new §4!2§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§^!S§.§#!V§(0);
         this.§?B§ = -1;
         this.§,!M§ = 0;
         this.§3!C§ = 0;
         this.§7!_§ = false;
         this.§2!X§(§6!,§);
         this.§4s§ = §"j§;
         §1!!§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§1!;§(param1);
         this.§+!?§(param1);
      }
      
      private function §1!;§(param1:int) : void
      {
         if(this.§,!M§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§,!M§ > 0,param1 * §@=§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§?B§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §]8§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §#C§.§3!1§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §'!,§(param1:int) : void
      {
         var _loc2_:§#C§ = mLevelMain.camera;
         if(_loc2_.§<w§ > 0)
         {
            _loc2_.§<w§ -= param1;
            if(_loc2_.§<w§ <= 0)
            {
               if(this.§]8§())
               {
                  _loc2_.§<w§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§ !=§();
                  }
               }
               else
               {
                  _loc2_.§<w§ = §#C§.§ !c§ / 2;
               }
            }
         }
      }
      
      public function §2!X§(param1:int, param2:Boolean = false) : void
      {
         if(this.§;^§(false) && !param2)
         {
            return;
         }
         if(param1 == §6!,§)
         {
            this.§^'§ = 2000;
         }
         else if(param1 == §1O§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §2!0§)
         {
            this.§9!<§ = false;
            this.§^'§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §3!2§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §'m§)
         {
            this.§^'§ = 2000;
            this.§!!;§ = §5%§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§^'§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§^'§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §@E§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §1!N§)
         {
            §@E§.§>!^§();
            §@E§.playSound("LevelFailedPigs1");
            this.§^'§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§?B§ = param1;
      }
      
      public function §3!U§(param1:Number) : void
      {
         this.§3!C§ = Math.max(this.§3!C§,param1);
      }
      
      protected function §0<§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == § U§.§2b§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §+!?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§ ]§ = null;
         this.§4s§ -= param1;
         if(this.§7!_§)
         {
            this.§3!C§ -= param1;
            if(this.§3!C§ < 0)
            {
               this.§4s§ = 0;
            }
         }
         if(this.§4s§ <= 0 && !this.§;^§(false))
         {
            this.§4s§ = §"j§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§7!_§ || this.§3!C§ > 0))
            {
               if((!this.§7!_§ || this.§3!C§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§3!C§ = 6000;
                  this.§7!_§ = true;
               }
               else if(!this.§7!_§ && this.§0<§())
               {
                  this.§3!C§ = 15000;
                  this.§7!_§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§5u§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§0<§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§5u§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§4s§ = §"j§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§5u§(§1!N§);
               }
            }
            if(this.§;^§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§^'§ -= param1;
         if(this.§^'§ < 0)
         {
            this.§^'§ = 0;
         }
         if(this.§?B§ == §3!2§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §#C§.§%4§)
            {
               this.§2!X§(§1O§);
            }
         }
         else if(this.§?B§ == §'m§)
         {
            if(this.§^'§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§!!;§ > 0)
               {
                  this.§^'§ = 2000;
                  this.§4s§ = 0;
                  this.§!!;§ = this.§!!;§ - 1;
               }
               else if(!§7!K§.§=j§.objects.mMightyEagleAdded)
               {
                  this.§2!X§(§1O§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §#C§.§%4§)
            {
               this.§2!X§(§1O§);
            }
         }
         else if(this.§?B§ == §6!,§)
         {
            if(this.§^'§ <= 0)
            {
               this.§2!X§(§1O§);
            }
         }
         else if(this.§?B§ == §1O§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §#C§.§%4§)
            {
               this.§2!X§(§3!2§);
            }
         }
         else if(this.§?B§ == §2!0§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§=1§ < _loc4_.§?G§)
            {
               if(_loc4_ && _loc4_ is §,a§ && (!(_loc4_ as §!!_§).§;M§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§9!<§ = true;
                  this.§2!X§(§'m§);
               }
               mLevelMain.activeObject = null;
               this.§2!X§(§'m§);
            }
         }
         else if(this.§?B§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§^'§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§^'§ = 1000;
               }
               else
               {
                  this.§2!X§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §5u§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§7!_§)
         {
            this.§7!_§ = true;
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
            this.§3!C§ = Math.min(this.§3!C§,3500);
         }
         if(this.§3!C§ <= 0)
         {
            this.§2!X§(param1,param2);
         }
      }
      
      public function §;^§(param1:Boolean = false) : Boolean
      {
         return (this.§?B§ == LEVEL_STATE_VICTORY2_END || this.§?B§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§?B§ == §1!N§) && (!param1 || this.§^'§ <= 0 && this.§?B§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §;X§() : Boolean
      {
         return this.§?B§ == LEVEL_STATE_VICTORY2_END || this.§?B§ == §1!N§;
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
         if(!this.§,`§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§?B§ == §'m§ || this.§?B§ == §3!2§ || this.§?B§ == §1O§)
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
      
      private function §%x§(param1:int) : void
      {
         this.§,!M§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§,`§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §<!B§.§8!M§();
         if(this.§;^§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§?B§ == §2!0§ || this.§9!<§)
            {
               this.§9!<§ = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.§2!X§(§1O§);
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
         if(!this.§,`§)
         {
            return;
         }
         §<!B§.§^!`§();
         if(this.§?B§ == §6!,§)
         {
            this.§2!X§(§1O§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.§2!X§(§2!0§);
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
         if(!this.§,`§)
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
         this.§%!8§ = param1;
         this.§#Y§ = param2;
      }
      
      public function §]!%§() : Point
      {
         return new Point(this.§%!8§,this.§#Y§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§^!S§.§#!V§(this.§^!S§.getValue() + param1);
         this.§3!U§(§>W§);
         if(this.§?B§ == §'m§)
         {
            this.§^'§ = 2000;
            this.§!!;§ = §5%§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§^!S§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§7!K§.§=j§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §2!%§.§&j§(§2!%§.§<G§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§,`§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§,`§ = param1;
      }
   }
}

package §?;§
{
   import §!!g§.§8d§;
   import §-!#§.§5!6§;
   import §1!D§.§<!;§;
   import §2o§.§<H§;
   import §5!G§.§'!1§;
   import §5!G§.§3!9§;
   import §5!G§.§6!Y§;
   import §@!b§.§%!'§;
   import §@!b§.§@!k§;
   import §`!W§.§'"§;
   import §`!d§.§7!§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class § !8§ extends §8!"§
   {
      
      public static const §5!W§:int = 0;
      
      public static const §&E§:int = 1;
      
      public static const §+!l§:int = 2;
      
      public static const §<%§:int = 3;
      
      public static const §2x§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §<!H§:int = 7;
      
      protected static const §`!j§:Number = §8d§.§[K§ / 100;
      
      public static const §1!G§:Number = 2000;
      
      public static const §[!M§:Number = 2500;
      
      public static const § !_§:int = 5;
       
      
      public var §1!2§:int = 0;
      
      protected var §1!B§:int = 0;
      
      public var §#!!§:Number;
      
      protected var §<!§:Number = 0;
      
      protected var §,!e§:Boolean = false;
      
      private var §]n§:Number = 0;
      
      public var §5W§:Number = 0;
      
      protected var §'H§:Boolean;
      
      protected var §if §:Number = 0;
      
      protected var §%!2§:Number = 0;
      
      protected var §#'§:Boolean = true;
      
      protected var §!s§:§<!;§;
      
      public function § !8§(param1:§@!k§)
      {
         this.§!s§ = new §<!;§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!s§.§'A§(0);
         this.§1!2§ = -1;
         this.§1!B§ = 0;
         this.§<!§ = 0;
         this.§,!e§ = false;
         this.changeGameState(§5!W§);
         this.§#!!§ = §1!G§;
         §'K§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§]!G§(param1);
         this.§?U§(param1);
      }
      
      private function §]!G§(param1:int) : void
      {
         if(this.§1!B§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§1!B§ > 0,param1 * §`!j§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§1!2§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §3!§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §8d§.§2Z§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §@!P§(param1:int) : void
      {
         var _loc2_:§8d§ = mLevelMain.camera;
         if(_loc2_.§3!?§ > 0)
         {
            _loc2_.§3!?§ -= param1;
            if(_loc2_.§3!?§ <= 0)
            {
               if(this.§3!§())
               {
                  _loc2_.§3!?§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§,!d§();
                  }
               }
               else
               {
                  _loc2_.§3!?§ = §8d§.§%!J§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§4!>§(false) && !param2)
         {
            return;
         }
         if(param1 == §5!W§)
         {
            this.§5W§ = 2000;
         }
         else if(param1 == §&E§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §+!l§)
         {
            this.§'H§ = false;
            this.§5W§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §<%§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §2x§)
         {
            this.§5W§ = 2000;
            this.§]n§ = § !_§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§5W§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§5W§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §5!6§.§8!G§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §<!H§)
         {
            §5!6§.§#!a§();
            §5!6§.§8!G§("LevelFailedPigs1");
            this.§5W§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§1!2§ = param1;
      }
      
      public function §`! §(param1:Number) : void
      {
         this.§<!§ = Math.max(this.§<!§,param1);
      }
      
      protected function §0'§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §%!'§.§`;§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §?U§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§6!Y§ = null;
         this.§#!!§ -= param1;
         if(this.§,!e§)
         {
            this.§<!§ -= param1;
            if(this.§<!§ < 0)
            {
               this.§#!!§ = 0;
            }
         }
         if(this.§#!!§ <= 0 && !this.§4!>§(false))
         {
            this.§#!!§ = §1!G§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§,!e§ || this.§<!§ > 0))
            {
               if((!this.§,!e§ || this.§<!§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§<!§ = 6000;
                  this.§,!e§ = true;
               }
               else if(!this.§,!e§ && this.§0'§())
               {
                  this.§<!§ = 15000;
                  this.§,!e§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§7!X§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§0'§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§7!X§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§#!!§ = §1!G§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§7!X§(§<!H§);
               }
            }
            if(this.§4!>§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§5W§ -= param1;
         if(this.§5W§ < 0)
         {
            this.§5W§ = 0;
         }
         if(this.§1!2§ == §<%§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §8d§.§9Z§)
            {
               this.changeGameState(§&E§);
            }
         }
         else if(this.§1!2§ == §2x§)
         {
            if(this.§5W§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§]n§ > 0)
               {
                  this.§5W§ = 2000;
                  this.§#!!§ = 0;
                  this.§]n§ = this.§]n§ - 1;
               }
               else if(!§<H§.§=3§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§&E§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §8d§.§9Z§)
            {
               this.changeGameState(§&E§);
            }
         }
         else if(this.§1!2§ == §5!W§)
         {
            if(this.§5W§ <= 0)
            {
               this.changeGameState(§&E§);
            }
         }
         else if(this.§1!2§ == §&E§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §8d§.§9Z§)
            {
               this.changeGameState(§<%§);
            }
         }
         else if(this.§1!2§ == §+!l§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§%!C§ < _loc4_.§#!2§)
            {
               if(_loc4_ && _loc4_ is §3!9§ && (!(_loc4_ as §'!1§).§=!F§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§'H§ = true;
                  this.changeGameState(§2x§);
               }
               mLevelMain.activeObject = null;
               this.changeGameState(§2x§);
            }
         }
         else if(this.§1!2§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§5W§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§5W§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §7!X§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§,!e§)
         {
            this.§,!e§ = true;
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
            this.§<!§ = Math.min(this.§<!§,3500);
         }
         if(this.§<!§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §4!>§(param1:Boolean = false) : Boolean
      {
         return (this.§1!2§ == LEVEL_STATE_VICTORY2_END || this.§1!2§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§1!2§ == §<!H§) && (!param1 || this.§5W§ <= 0 && this.§1!2§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §?"§() : Boolean
      {
         return this.§1!2§ == LEVEL_STATE_VICTORY2_END || this.§1!2§ == §<!H§;
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
         if(!this.§#'§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§1!2§ == §2x§ || this.§1!2§ == §<%§ || this.§1!2§ == §&E§)
            {
               if(!mLevelMain.isPlayingReplay())
               {
                  mLevelMain.camera.adjustManualScale(param1,param2 == 0 ? Number(§8d§.§[K§) : Number(param2));
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
      
      private function §"U§(param1:int) : void
      {
         this.§1!B§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§#'§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §'"§.§?r§();
         if(this.§4!>§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§1!2§ == §+!l§ || this.§'H§)
            {
               this.§'H§ = false;
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.changeGameState(§&E§);
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
         if(!this.§#'§)
         {
            return;
         }
         §'"§.§!8§();
         if(this.§1!2§ == §5!W§)
         {
            this.changeGameState(§&E§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.changeGameState(§+!l§);
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
         if(!this.§#'§)
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
         this.§if § = param1;
         this.§%!2§ = param2;
      }
      
      public function §^n§() : Point
      {
         return new Point(this.§if §,this.§%!2§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!s§.§'A§(this.§!s§.getValue() + param1);
         this.§`! §(§[!M§);
         if(this.§1!2§ == §2x§)
         {
            this.§5W§ = 2000;
            this.§]n§ = § !_§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§!s§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§<H§.§=3§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §7!§.§;!G§(§7!§.§+e§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§#'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§#'§ = param1;
      }
   }
}

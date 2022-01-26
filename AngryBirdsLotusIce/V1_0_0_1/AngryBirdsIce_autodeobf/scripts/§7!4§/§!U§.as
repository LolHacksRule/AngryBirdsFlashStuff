package §7!4§
{
   import §"o§.§ M§;
   import §"o§.§<+§;
   import §'m§.§<7§;
   import §2W§.§4!$§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §finally§.§%!7§;
   import §finally§.§&!G§;
   import §finally§.§5!$§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §try§.§8!;§;
   
   public class §!U§ extends §]!6§
   {
      
      public static const §<`§:int = 0;
      
      public static const §8b§:int = 1;
      
      public static const §'C§:int = 2;
      
      public static const §;v§:int = 3;
      
      public static const §"X§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §8!?§:int = 7;
      
      private static const §#!&§:Number = §4!$§.§+C§ / 100;
      
      public static const §1s§:Number = 2000;
      
      public static const §#m§:Number = 2500;
       
      
      public var §>!D§:int = 0;
      
      private var §7!6§:int = 0;
      
      public var §>M§:Number;
      
      protected var §%%§:Number = 0;
      
      protected var §-E§:Boolean = false;
      
      public var §[!+§:Number = 0;
      
      protected var §!!0§:Boolean;
      
      private var §]E§:Number = 0;
      
      private var §7#§:Number = 0;
      
      protected var §1y§:Boolean = true;
      
      protected var §>H§:§8!;§;
      
      public function §!U§(param1:§ M§)
      {
         this.§>H§ = new §8!;§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§>H§.assign(0);
         this.§>!D§ = -1;
         this.§7!6§ = 0;
         this.§%%§ = 0;
         this.§-E§ = false;
         this.§+h§(§<`§);
         this.§>M§ = §1s§;
         §=X§(true);
         § 6§.objects.setDamageEnabled(true);
         § 6§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = § 6§.update(param1,true);
         this.§3b§(param1);
         this.§?%§(param1);
      }
      
      private function §3b§(param1:int) : void
      {
         if(this.§7!6§ != 0)
         {
            § 6§.camera.adjustManualScale(this.§7!6§ > 0,param1 * §#!&§);
         }
      }
      
      public function clearLevel() : void
      {
         § 6§.clearLevel();
         removeEventListeners();
         this.§>!D§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §;?§() : Boolean
      {
         if(§ 6§.camera.mCurrentCameraSliderLocation < §4!$§.§]!0§)
         {
            return false;
         }
         if(!§ 6§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9!&§(param1:int) : void
      {
         var _loc2_:§4!$§ = § 6§.camera;
         if(_loc2_.§7!#§ > 0)
         {
            _loc2_.§7!#§ -= param1;
            if(_loc2_.§7!#§ <= 0)
            {
               if(this.§;?§())
               {
                  _loc2_.§7!#§ = -1;
                  if(§ 6§.slingshot.birdsAvailable)
                  {
                     _loc2_.§"U§();
                  }
               }
               else
               {
                  _loc2_.§7!#§ = §4!$§.§&S§ / 2;
               }
            }
         }
      }
      
      public function §+h§(param1:int, param2:Boolean = false) : void
      {
         if(this.§@Y§(false) && !param2)
         {
            return;
         }
         if(param1 == §<`§)
         {
            this.§[!+§ = 2000;
         }
         else if(param1 == §8b§)
         {
            § 6§.camera.goToBirdView();
         }
         else if(param1 == §'C§)
         {
            this.§!!0§ = false;
            this.§[!+§ = 5000;
            § 6§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §;v§)
         {
            § 6§.camera.goToCastleView();
         }
         else if(param1 == §"X§)
         {
            this.§[!+§ = 2000;
            § 6§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§[!+§ = 1200;
            if(!§ 6§.objects.mMightyEagleAdded)
            {
               § 6§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§[!+§ = 1200;
            if(!§ 6§.objects.mMightyEagleAdded)
            {
               § 6§.camera.goToBirdView();
               § 6§.slingshot.makeBirdsJumpForJoy();
            }
            §2;§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §8!?§)
         {
            §2;§.§'T§();
            §2;§.playSound("LevelFailedPigs1");
            this.§[!+§ = 1200;
            § 6§.camera.goToCastleView();
            § 6§.objects.makePigsSmile(5);
         }
         this.§>!D§ = param1;
      }
      
      public function §%!>§(param1:Number) : void
      {
         this.§%%§ = Math.max(this.§%%§,param1);
      }
      
      protected function §&8§() : Boolean
      {
         return § 6§.slingshot.mSlingShotState == §<+§.§7!,§ && !§ 6§.objects.hasBirds();
      }
      
      public function §?%§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§%!7§ = null;
         this.§>M§ -= param1;
         if(this.§-E§)
         {
            this.§%%§ -= param1;
            if(this.§%%§ < 0)
            {
               this.§>M§ = 0;
            }
         }
         if(this.§>M§ <= 0 && !this.§@Y§(false))
         {
            this.§>M§ = §1s§;
            _loc2_ = § 6§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§-E§ || this.§%%§ > 0))
            {
               if((!this.§-E§ || this.§%%§ > 6000) && !§ 6§.objects.isPigsAlive())
               {
                  this.§%%§ = 6000;
                  this.§-E§ = true;
               }
               else if(!this.§-E§ && this.§&8§())
               {
                  this.§%%§ = 15000;
                  this.§-E§ = true;
               }
            }
            else if(!§ 6§.objects.isPigsAlive() && !§ 6§.objects.mSardineCanAdded && !§ 6§.objects.mMightyEagleAdded)
            {
               this.§3e§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§&8§())
            {
               if(§ 6§.objects.mMightyEagleAdded)
               {
                  if(§ 6§.objects.mMightyEagleHasTouchedGround && § 6§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§3e§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§ 6§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§>M§ = §1s§;
                  }
               }
               else if(!§ 6§.objects.mSardineCanAdded)
               {
                  this.§3e§(§8!?§);
               }
            }
            if(this.§@Y§(false))
            {
               § 6§.gameOver();
            }
         }
         this.§[!+§ -= param1;
         if(this.§[!+§ < 0)
         {
            this.§[!+§ = 0;
         }
         if(this.§>!D§ == §;v§)
         {
            § 6§.updatePigAnimations(param1);
            if(!§ 6§.camera.isOnCastleView() && § 6§.camera.mCurrentAction != §4!$§.§0!2§)
            {
               this.§+h§(§8b§);
            }
         }
         else if(this.§>!D§ == §"X§)
         {
            if(this.§[!+§ <= 0)
            {
               if(§ 6§.objects.isWorldAtSleep())
               {
                  if(!§8[§.§import§.objects.mMightyEagleAdded)
                  {
                     this.§+h§(§8b§);
                  }
               }
               else
               {
                  this.§>M§ = 0;
                  this.§[!+§ = 2000;
               }
            }
            else
            {
               § 6§.updatePigAnimations(param1);
            }
            if(!§ 6§.camera.isOnCastleView() && § 6§.camera.mCurrentAction != §4!$§.§0!2§)
            {
               this.§+h§(§8b§);
            }
         }
         else if(this.§>!D§ == §<`§)
         {
            if(this.§[!+§ <= 0)
            {
               this.§+h§(§8b§);
            }
         }
         else if(this.§>!D§ == §8b§)
         {
            if(§ 6§.camera.isOnCastleView() && § 6§.camera.mCurrentAction != §4!$§.§0!2§)
            {
               this.§+h§(§;v§);
            }
         }
         else if(this.§>!D§ == §'C§)
         {
            _loc3_ = § 6§.activeObject;
            if(!_loc3_ || _loc3_.§8x§ < _loc3_.§3-§)
            {
               if(_loc3_ && _loc3_ is §&!G§ && (!(_loc3_ as §5!$§).§?!B§ || _loc3_.getSpecialAnimationProgress() >= 0))
               {
                  this.§!!0§ = true;
                  this.§+h§(§"X§);
               }
               § 6§.activeObject = null;
               this.§+h§(§"X§);
            }
         }
         else if(this.§>!D§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§[!+§ <= 0)
            {
               if(§ 6§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§[!+§ = 1000;
               }
               else
               {
                  this.§+h§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §3e§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§-E§)
         {
            this.§-E§ = true;
         }
         if(new Date().time - § 6§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§ 6§.slingshot.mDragging)
         {
            return;
         }
         if(§ 6§.objects.isWorldAtSleep())
         {
            this.§%%§ = Math.min(this.§%%§,3500);
         }
         if(this.§%%§ <= 0)
         {
            this.§+h§(param1,param2);
         }
      }
      
      public function §@Y§(param1:Boolean = false) : Boolean
      {
         return (this.§>!D§ == LEVEL_STATE_VICTORY2_END || this.§>!D§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§>!D§ == §8!?§) && (!param1 || this.§[!+§ <= 0 && this.§>!D§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §5!5§() : Boolean
      {
         return this.§>!D§ == LEVEL_STATE_VICTORY2_END || this.§>!D§ == §8!?§;
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
         if(!this.§1y§ || !§ 6§.mReadyToRun)
         {
            return;
         }
         if(!(§ 6§.slingshot.mDragging || § 6§.camera.mDragging))
         {
            if(this.§>!D§ == §"X§ || this.§>!D§ == §;v§ || this.§>!D§ == §8b§)
            {
               if(!§ 6§.isPlayingReplay())
               {
                  § 6§.camera.adjustManualScale(param1);
               }
               else
               {
                  § 6§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §8R§(param1:int) : void
      {
         this.§7!6§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§1y§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §<7§.§6!7§();
         if(this.§@Y§(false))
         {
            return;
         }
         if(!§ 6§.isPlayingReplay())
         {
            if(§ 6§.activeObject && this.§>!D§ == §'C§ || this.§!!0§)
            {
               this.§!!0§ = false;
               § 6§.activatePowerup();
               return;
            }
            _loc4_ = § 6§.screenToBox2D(param1,param2);
            if(§ 6§.slingshot.canStartDragging(_loc4_))
            {
               § 6§.slingshot.startDragging();
               this.§+h§(§8b§);
            }
            else
            {
               § 6§.camera.startDragging(param1,param2);
            }
            return;
         }
         § 6§.camera.startDragging(param1,param2);
         § 6§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§1y§)
         {
            return;
         }
         §<7§.§=c§();
         if(this.§>!D§ == §<`§)
         {
            this.§+h§(§8b§);
         }
         if(§ 6§.slingshot.mDragging)
         {
            _loc3_ = § 6§.screenToBox2D(param1,param2);
            § 6§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§ 6§.slingshot.canShootTheBird())
            {
               § 6§.slingshot.shoot();
               this.§+h§(§'C§);
            }
            else
            {
               § 6§.slingshot.cancelDragging();
            }
         }
         if(§ 6§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               § 6§.camera.dragToNewPoint(param1,param2);
            }
            § 6§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§1y§)
         {
            return;
         }
         if(§ 6§.slingshot.mDragging)
         {
            _loc3_ = § 6§.screenToBox2D(param1,param2);
            § 6§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§ 6§.camera.mDragging)
         {
            § 6§.camera.dragToNewPoint(param1,param2);
         }
         this.§]E§ = param1;
         this.§7#§ = param2;
      }
      
      public function §`g§() : Point
      {
         return new Point(this.§]E§,this.§7#§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§>H§.assign(this.§>H§.getValue() + param1);
         this.§%!>§(§#m§);
      }
      
      override public function getScore() : int
      {
         return this.§>H§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§8[§.§import§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §&#§.§@y§(§&#§.§<Y§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§1y§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§1y§ = param1;
      }
   }
}

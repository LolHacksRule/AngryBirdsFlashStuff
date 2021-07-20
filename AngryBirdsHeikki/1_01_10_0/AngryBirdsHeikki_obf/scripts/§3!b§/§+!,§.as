package §3!b§
{
   import §"!I§.§9§;
   import §"!I§.§^!2§;
   import §+!8§.§,_§;
   import §+!8§.§7Y§;
   import §+!8§.§`!O§;
   import §9!4§.§95§;
   import §9b§.§"!S§;
   import §=! §.§[2§;
   import §@R§.§!!%§;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §+!,§ extends §^!N§
   {
      
      public static const §8!9§:int = 0;
      
      public static const §,!H§:int = 1;
      
      public static const §^§:int = 2;
      
      public static const §var§:int = 3;
      
      public static const §+!2§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §+!J§:int = 7;
      
      protected static const §"!8§:Number = §95§.§>l§ / 100;
      
      public static const §-f§:Number = 2000;
      
      public static const §>C§:Number = 2500;
      
      public static const §;V§:int = 5;
       
      
      public var §#E§:int = 0;
      
      protected var §]!U§:int = 0;
      
      public var §0q§:Number;
      
      protected var § !L§:Number = 0;
      
      protected var §4!`§:Boolean = false;
      
      private var §%!S§:Number = 0;
      
      public var §8R§:Number = 0;
      
      protected var §-!f§:Boolean;
      
      protected var §@!R§:Number = 0;
      
      protected var §;5§:Number = 0;
      
      protected var §%!`§:Boolean = true;
      
      protected var §`f§:§[2§;
      
      public function §+!,§(param1:§^!2§)
      {
         this.§`f§ = new §[2§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§`f§.§=$§(0);
         this.§#E§ = -1;
         this.§]!U§ = 0;
         this.§ !L§ = 0;
         this.§4!`§ = false;
         this.changeGameState(§8!9§);
         this.§0q§ = §-f§;
         §&&§(true);
         §=!V§.objects.setDamageEnabled(true);
         §=!V§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §=!V§.update(param1,true);
         this.§8S§(param1);
         this.§?!Q§(param1);
      }
      
      private function §8S§(param1:int) : void
      {
         if(this.§]!U§ != 0)
         {
            §=!V§.camera.adjustManualScale(this.§]!U§ > 0,param1 * §"!8§);
         }
      }
      
      public function clearLevel() : void
      {
         §=!V§.clearLevel();
         removeEventListeners();
         this.§#E§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §[f§() : Boolean
      {
         if(§=!V§.camera.mCurrentCameraSliderLocation < §95§.§6b§)
         {
            return false;
         }
         if(!§=!V§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §^!<§(param1:int) : void
      {
         var _loc2_:§95§ = §=!V§.camera;
         if(_loc2_.§]z§ > 0)
         {
            _loc2_.§]z§ -= param1;
            if(_loc2_.§]z§ <= 0)
            {
               if(this.§[f§())
               {
                  _loc2_.§]z§ = -1;
                  if(§=!V§.slingshot.birdsAvailable)
                  {
                     _loc2_.§6!@§();
                  }
               }
               else
               {
                  _loc2_.§]z§ = §95§.§%!!§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§1!#§(false) && !param2)
         {
            return;
         }
         if(param1 == §8!9§)
         {
            this.§8R§ = 2000;
         }
         else if(param1 == §,!H§)
         {
            §=!V§.camera.goToBirdView();
         }
         else if(param1 == §^§)
         {
            this.§-!f§ = false;
            this.§8R§ = 5000;
            §=!V§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §var§)
         {
            §=!V§.camera.goToCastleView();
         }
         else if(param1 == §+!2§)
         {
            this.§8R§ = 2000;
            this.§%!S§ = §;V§;
            §=!V§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§8R§ = 1200;
            if(!§=!V§.objects.mMightyEagleAdded)
            {
               §=!V§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§8R§ = 1200;
            if(!§=!V§.objects.mMightyEagleAdded)
            {
               §=!V§.camera.goToBirdView();
               §=!V§.slingshot.makeBirdsJumpForJoy();
            }
            §&M§.§6!#§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §+!J§)
         {
            §&M§.§=!7§();
            §&M§.§6!#§("LevelFailedPigs1");
            this.§8R§ = 1200;
            §=!V§.camera.goToCastleView();
            §=!V§.objects.makePigsSmile(5);
         }
         this.§#E§ = param1;
      }
      
      public function §1p§(param1:Number) : void
      {
         this.§ !L§ = Math.max(this.§ !L§,param1);
      }
      
      protected function §@!§() : Boolean
      {
         return §=!V§.slingshot.mSlingShotState == §9§.§5H§ && !§=!V§.objects.hasBirds();
      }
      
      public function §?!Q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§,_§ = null;
         this.§0q§ -= param1;
         if(this.§4!`§)
         {
            this.§ !L§ -= param1;
            if(this.§ !L§ < 0)
            {
               this.§0q§ = 0;
            }
         }
         if(this.§0q§ <= 0 && !this.§1!#§(false))
         {
            this.§0q§ = §-f§;
            _loc2_ = §=!V§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§4!`§ || this.§ !L§ > 0))
            {
               if((!this.§4!`§ || this.§ !L§ > 6000) && !§=!V§.objects.isPigsAlive())
               {
                  this.§ !L§ = 6000;
                  this.§4!`§ = true;
               }
               else if(!this.§4!`§ && this.§@!§())
               {
                  this.§ !L§ = 15000;
                  this.§4!`§ = true;
               }
            }
            else if(!§=!V§.objects.isPigsAlive() && !§=!V§.objects.mSardineCanAdded && !§=!V§.objects.mMightyEagleAdded)
            {
               this.§;!b§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§@!§())
            {
               if(§=!V§.objects.mMightyEagleAdded)
               {
                  if(§=!V§.objects.mMightyEagleHasTouchedGround && §=!V§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§;!b§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§=!V§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§0q§ = §-f§;
                  }
               }
               else if(!§=!V§.objects.mSardineCanAdded)
               {
                  this.§;!b§(§+!J§);
               }
            }
            if(this.§1!#§(false))
            {
               §=!V§.gameOver();
            }
         }
         this.§8R§ -= param1;
         if(this.§8R§ < 0)
         {
            this.§8R§ = 0;
         }
         if(this.§#E§ == §var§)
         {
            §=!V§.updatePigAnimations(param1);
            if(!§=!V§.camera.isOnCastleView() && §=!V§.camera.mCurrentAction != §95§.§9Q§)
            {
               this.changeGameState(§,!H§);
            }
         }
         else if(this.§#E§ == §+!2§)
         {
            if(this.§8R§ <= 0)
            {
               _loc3_ = §=!V§.objects.hasBirds();
               if(_loc3_ && this.§%!S§ > 0)
               {
                  this.§8R§ = 2000;
                  this.§0q§ = 0;
                  this.§%!S§ = this.§%!S§ - 1;
               }
               else if(!§"!S§.§-!7§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§,!H§);
               }
            }
            else
            {
               §=!V§.updatePigAnimations(param1);
            }
            if(!§=!V§.camera.isOnCastleView() && §=!V§.camera.mCurrentAction != §95§.§9Q§)
            {
               this.changeGameState(§,!H§);
            }
         }
         else if(this.§#E§ == §8!9§)
         {
            if(this.§8R§ <= 0)
            {
               this.changeGameState(§,!H§);
            }
         }
         else if(this.§#E§ == §,!H§)
         {
            if(§=!V§.camera.isOnCastleView() && §=!V§.camera.mCurrentAction != §95§.§9Q§)
            {
               this.changeGameState(§var§);
            }
         }
         else if(this.§#E§ == §^§)
         {
            if(!(_loc4_ = §=!V§.activeObject) || _loc4_.§[h§ < _loc4_.§'!V§)
            {
               if(_loc4_ && _loc4_ is §7Y§ && (!(_loc4_ as §`!O§).§!!M§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§-!f§ = true;
                  this.changeGameState(§+!2§);
               }
               §=!V§.activeObject = null;
               this.changeGameState(§+!2§);
            }
         }
         else if(this.§#E§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§8R§ <= 0)
            {
               if(§=!V§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§8R§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §;!b§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§4!`§)
         {
            this.§4!`§ = true;
         }
         if(new Date().time - §=!V§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§=!V§.slingshot.mDragging)
         {
            return;
         }
         if(§=!V§.objects.isWorldAtSleep())
         {
            this.§ !L§ = Math.min(this.§ !L§,3500);
         }
         if(this.§ !L§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §1!#§(param1:Boolean = false) : Boolean
      {
         return (this.§#E§ == LEVEL_STATE_VICTORY2_END || this.§#E§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§#E§ == §+!J§) && (!param1 || this.§8R§ <= 0 && this.§#E§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §^Z§() : Boolean
      {
         return this.§#E§ == LEVEL_STATE_VICTORY2_END || this.§#E§ == §+!J§;
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
         if(!this.§%!`§ || !§=!V§.mReadyToRun)
         {
            return;
         }
         if(!(§=!V§.slingshot.mDragging || §=!V§.camera.mDragging))
         {
            if(this.§#E§ == §+!2§ || this.§#E§ == §var§ || this.§#E§ == §,!H§)
            {
               if(!§=!V§.isPlayingReplay())
               {
                  §=!V§.camera.adjustManualScale(param1,param2 == 0 ? Number(§95§.§>l§) : Number(param2));
               }
               else
               {
                  §=!V§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §#!Y§(param1:int) : void
      {
         this.§]!U§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§%!`§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §!!%§.§;"§();
         if(this.§1!#§(false))
         {
            return;
         }
         if(!§=!V§.isPlayingReplay())
         {
            if(§=!V§.activeObject && this.§#E§ == §^§ || this.§-!f§)
            {
               this.§-!f§ = false;
               §=!V§.activatePowerup();
               return;
            }
            _loc4_ = §=!V§.screenToBox2D(param1,param2);
            if(§=!V§.slingshot.canStartDragging(_loc4_))
            {
               §=!V§.slingshot.startDragging();
               this.changeGameState(§,!H§);
            }
            else
            {
               §=!V§.camera.startDragging(param1,param2);
            }
            return;
         }
         §=!V§.camera.startDragging(param1,param2);
         §=!V§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§%!`§)
         {
            return;
         }
         §!!%§.§<!c§();
         if(this.§#E§ == §8!9§)
         {
            this.changeGameState(§,!H§);
         }
         if(§=!V§.slingshot.mDragging)
         {
            _loc3_ = §=!V§.screenToBox2D(param1,param2);
            §=!V§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§=!V§.slingshot.canShootTheBird())
            {
               §=!V§.slingshot.shoot();
               this.changeGameState(§^§);
            }
            else
            {
               §=!V§.slingshot.cancelDragging();
            }
         }
         if(§=!V§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §=!V§.camera.dragToNewPoint(param1,param2);
            }
            §=!V§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§%!`§)
         {
            return;
         }
         if(§=!V§.slingshot.mDragging)
         {
            _loc3_ = §=!V§.screenToBox2D(param1,param2);
            §=!V§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§=!V§.camera.mDragging)
         {
            §=!V§.camera.dragToNewPoint(param1,param2);
         }
         this.§@!R§ = param1;
         this.§;5§ = param2;
      }
      
      public function §%8§() : Point
      {
         return new Point(this.§@!R§,this.§;5§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§`f§.§=$§(this.§`f§.getValue() + param1);
         this.§1p§(§>C§);
         if(this.§#E§ == §+!2§)
         {
            this.§8R§ = 2000;
            this.§%!S§ = §;V§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§`f§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§"!S§.§-!7§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §,4§.§6W§(§,4§.§0!$§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%!`§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§%!`§ = param1;
      }
   }
}

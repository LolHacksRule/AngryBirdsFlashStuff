package §@!H§
{
   import §!+§.§5w§;
   import §!+§.§=H§;
   import §!+§.§>G§;
   import §+!"§.§@P§;
   import §4!H§.§?_§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §?b§.§4K§;
   import §?b§.§7!,§;
   import §@!!§.§=_§;
   import §@D§.§6I§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §"E§ extends §`r§
   {
      
      public static const §!!F§:int = 0;
      
      public static const §5Y§:int = 1;
      
      public static const §6!6§:int = 2;
      
      public static const §=!C§:int = 3;
      
      public static const §;9§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §return§:int = 7;
      
      protected static const §@q§:Number = §=_§.§"o§ / 100;
      
      public static const §!!H§:Number = 2000;
      
      public static const §^!<§:Number = 2500;
      
      public static const §`!>§:int = 5;
       
      
      public var §7H§:int = 0;
      
      protected var §1L§:int = 0;
      
      public var §42§:Number;
      
      protected var §%l§:Number = 0;
      
      protected var §0!7§:Boolean = false;
      
      private var §&C§:Number = 0;
      
      public var § !'§:Number = 0;
      
      protected var §?Z§:Boolean;
      
      protected var §^!9§:Number = 0;
      
      protected var §-!-§:Number = 0;
      
      protected var §[I§:Boolean = true;
      
      protected var §7'§:§?_§;
      
      public function §"E§(param1:§7!,§)
      {
         this.§7'§ = new §?_§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§7'§.assign(0);
         this.§7H§ = -1;
         this.§1L§ = 0;
         this.§%l§ = 0;
         this.§0!7§ = false;
         this.§9M§(§!!F§);
         this.§42§ = §!!H§;
         § Z§(true);
         §4!%§.objects.setDamageEnabled(true);
         §4!%§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §4!%§.update(param1,true);
         this.§8@§(param1);
         this.§16§(param1);
      }
      
      private function §8@§(param1:int) : void
      {
         if(this.§1L§ != 0)
         {
            §4!%§.camera.adjustManualScale(this.§1L§ > 0,param1 * §@q§);
         }
      }
      
      public function clearLevel() : void
      {
         §4!%§.clearLevel();
         removeEventListeners();
         this.§7H§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §=!"§() : Boolean
      {
         if(§4!%§.camera.mCurrentCameraSliderLocation < §=_§.§"C§)
         {
            return false;
         }
         if(!§4!%§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §4o§(param1:int) : void
      {
         var _loc2_:§=_§ = §4!%§.camera;
         if(_loc2_.§ T§ > 0)
         {
            _loc2_.§ T§ -= param1;
            if(_loc2_.§ T§ <= 0)
            {
               if(this.§=!"§())
               {
                  _loc2_.§ T§ = -1;
                  if(§4!%§.slingshot.birdsAvailable)
                  {
                     _loc2_.§"9§();
                  }
               }
               else
               {
                  _loc2_.§ T§ = §=_§.§2h§ / 2;
               }
            }
         }
      }
      
      public function §9M§(param1:int, param2:Boolean = false) : void
      {
         if(this.§2!C§(false) && !param2)
         {
            return;
         }
         if(param1 == §!!F§)
         {
            this.§ !'§ = 2000;
         }
         else if(param1 == §5Y§)
         {
            §4!%§.camera.goToBirdView();
         }
         else if(param1 == §6!6§)
         {
            this.§?Z§ = false;
            this.§ !'§ = 5000;
            §4!%§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §=!C§)
         {
            §4!%§.camera.goToCastleView();
         }
         else if(param1 == §;9§)
         {
            this.§ !'§ = 2000;
            this.§&C§ = §`!>§;
            §4!%§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§ !'§ = 1200;
            if(!§4!%§.objects.mMightyEagleAdded)
            {
               §4!%§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§ !'§ = 1200;
            if(!§4!%§.objects.mMightyEagleAdded)
            {
               §4!%§.camera.goToBirdView();
               §4!%§.slingshot.makeBirdsJumpForJoy();
            }
            §6I§.§ ;§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §return§)
         {
            §6I§.§%,§();
            §6I§.§ ;§("LevelFailedPigs1");
            this.§ !'§ = 1200;
            §4!%§.camera.goToCastleView();
            §4!%§.objects.makePigsSmile(5);
         }
         this.§7H§ = param1;
      }
      
      public function §'!6§(param1:Number) : void
      {
         this.§%l§ = Math.max(this.§%l§,param1);
      }
      
      protected function §-!9§() : Boolean
      {
         return §4!%§.slingshot.mSlingShotState == §4K§.§;5§ && !§4!%§.objects.hasBirds();
      }
      
      public function §16§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§>G§ = null;
         this.§42§ -= param1;
         if(this.§0!7§)
         {
            this.§%l§ -= param1;
            if(this.§%l§ < 0)
            {
               this.§42§ = 0;
            }
         }
         if(this.§42§ <= 0 && !this.§2!C§(false))
         {
            this.§42§ = §!!H§;
            _loc2_ = §4!%§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§0!7§ || this.§%l§ > 0))
            {
               if((!this.§0!7§ || this.§%l§ > 6000) && !§4!%§.objects.isPigsAlive())
               {
                  this.§%l§ = 6000;
                  this.§0!7§ = true;
               }
               else if(!this.§0!7§ && this.§-!9§())
               {
                  this.§%l§ = 15000;
                  this.§0!7§ = true;
               }
            }
            else if(!§4!%§.objects.isPigsAlive() && !§4!%§.objects.mSardineCanAdded && !§4!%§.objects.mMightyEagleAdded)
            {
               this.§8x§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§-!9§())
            {
               if(§4!%§.objects.mMightyEagleAdded)
               {
                  if(§4!%§.objects.mMightyEagleHasTouchedGround && §4!%§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§8x§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§4!%§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§42§ = §!!H§;
                  }
               }
               else if(!§4!%§.objects.mSardineCanAdded)
               {
                  this.§8x§(§return§);
               }
            }
            if(this.§2!C§(false))
            {
               §4!%§.gameOver();
            }
         }
         this.§ !'§ -= param1;
         if(this.§ !'§ < 0)
         {
            this.§ !'§ = 0;
         }
         if(this.§7H§ == §=!C§)
         {
            §4!%§.updatePigAnimations(param1);
            if(!§4!%§.camera.isOnCastleView() && §4!%§.camera.mCurrentAction != §=_§.§56§)
            {
               this.§9M§(§5Y§);
            }
         }
         else if(this.§7H§ == §;9§)
         {
            if(this.§ !'§ <= 0)
            {
               _loc3_ = §4!%§.objects.hasBirds();
               if(_loc3_ && this.§&C§ > 0)
               {
                  this.§ !'§ = 2000;
                  this.§42§ = 0;
                  this.§&C§ = this.§&C§ - 1;
               }
               else if(!§[k§.§&@§.objects.mMightyEagleAdded)
               {
                  this.§9M§(§5Y§);
               }
            }
            else
            {
               §4!%§.updatePigAnimations(param1);
            }
            if(!§4!%§.camera.isOnCastleView() && §4!%§.camera.mCurrentAction != §=_§.§56§)
            {
               this.§9M§(§5Y§);
            }
         }
         else if(this.§7H§ == §!!F§)
         {
            if(this.§ !'§ <= 0)
            {
               this.§9M§(§5Y§);
            }
         }
         else if(this.§7H§ == §5Y§)
         {
            if(§4!%§.camera.isOnCastleView() && §4!%§.camera.mCurrentAction != §=_§.§56§)
            {
               this.§9M§(§=!C§);
            }
         }
         else if(this.§7H§ == §6!6§)
         {
            if(!(_loc4_ = §4!%§.activeObject) || _loc4_.§`0§ < _loc4_.§ !,§)
            {
               if(_loc4_ && _loc4_ is §5w§ && (!(_loc4_ as §=H§).§^`§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§?Z§ = true;
                  this.§9M§(§;9§);
               }
               §4!%§.activeObject = null;
               this.§9M§(§;9§);
            }
         }
         else if(this.§7H§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§ !'§ <= 0)
            {
               if(§4!%§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§ !'§ = 1000;
               }
               else
               {
                  this.§9M§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §8x§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§0!7§)
         {
            this.§0!7§ = true;
         }
         if(new Date().time - §4!%§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§4!%§.slingshot.mDragging)
         {
            return;
         }
         if(§4!%§.objects.isWorldAtSleep())
         {
            this.§%l§ = Math.min(this.§%l§,3500);
         }
         if(this.§%l§ <= 0)
         {
            this.§9M§(param1,param2);
         }
      }
      
      public function §2!C§(param1:Boolean = false) : Boolean
      {
         return (this.§7H§ == LEVEL_STATE_VICTORY2_END || this.§7H§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§7H§ == §return§) && (!param1 || this.§ !'§ <= 0 && this.§7H§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §#!%§() : Boolean
      {
         return this.§7H§ == LEVEL_STATE_VICTORY2_END || this.§7H§ == §return§;
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
         if(!this.§[I§ || !§4!%§.mReadyToRun)
         {
            return;
         }
         if(!(§4!%§.slingshot.mDragging || §4!%§.camera.mDragging))
         {
            if(this.§7H§ == §;9§ || this.§7H§ == §=!C§ || this.§7H§ == §5Y§)
            {
               if(!§4!%§.isPlayingReplay())
               {
                  §4!%§.camera.adjustManualScale(param1);
               }
               else
               {
                  §4!%§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §case §(param1:int) : void
      {
         this.§1L§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§[I§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §@P§.§@1§();
         if(this.§2!C§(false))
         {
            return;
         }
         if(!§4!%§.isPlayingReplay())
         {
            if(§4!%§.activeObject && this.§7H§ == §6!6§ || this.§?Z§)
            {
               this.§?Z§ = false;
               §4!%§.activatePowerup();
               return;
            }
            _loc4_ = §4!%§.screenToBox2D(param1,param2);
            if(§4!%§.slingshot.canStartDragging(_loc4_))
            {
               §4!%§.slingshot.startDragging();
               this.§9M§(§5Y§);
            }
            else
            {
               §4!%§.camera.startDragging(param1,param2);
            }
            return;
         }
         §4!%§.camera.startDragging(param1,param2);
         §4!%§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§[I§)
         {
            return;
         }
         §@P§.§-§();
         if(this.§7H§ == §!!F§)
         {
            this.§9M§(§5Y§);
         }
         if(§4!%§.slingshot.mDragging)
         {
            _loc3_ = §4!%§.screenToBox2D(param1,param2);
            §4!%§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§4!%§.slingshot.canShootTheBird())
            {
               §4!%§.slingshot.shoot();
               this.§9M§(§6!6§);
            }
            else
            {
               §4!%§.slingshot.cancelDragging();
            }
         }
         if(§4!%§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §4!%§.camera.dragToNewPoint(param1,param2);
            }
            §4!%§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§[I§)
         {
            return;
         }
         if(§4!%§.slingshot.mDragging)
         {
            _loc3_ = §4!%§.screenToBox2D(param1,param2);
            §4!%§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§4!%§.camera.mDragging)
         {
            §4!%§.camera.dragToNewPoint(param1,param2);
         }
         this.§^!9§ = param1;
         this.§-!-§ = param2;
      }
      
      public function §2!%§() : Point
      {
         return new Point(this.§^!9§,this.§-!-§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§7'§.assign(this.§7'§.getValue() + param1);
         this.§'!6§(§^!<§);
         if(this.§7H§ == §;9§)
         {
            this.§ !'§ = 2000;
            this.§&C§ = §`!>§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§7'§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§[k§.§&@§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §5j§.§%!I§(§5j§.§%V§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§[I§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§[I§ = param1;
      }
   }
}

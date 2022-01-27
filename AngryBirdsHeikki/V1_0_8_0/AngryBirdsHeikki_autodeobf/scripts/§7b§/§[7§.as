package §7b§
{
   import § !3§.§9v§;
   import §#!T§.§&2§;
   import §#;§.§42§;
   import §+!#§.§ q§;
   import §+!#§.§3[§;
   import §+!#§.§9!5§;
   import §0!&§.§@=§;
   import §2z§.§2!U§;
   import §2z§.§@!N§;
   import §9!4§.§&l§;
   import §9!?§.§@!3§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §[7§ extends §@H§
   {
      
      public static const §-1§:int = 0;
      
      public static const §<!M§:int = 1;
      
      public static const §1D§:int = 2;
      
      public static const §'!K§:int = 3;
      
      public static const §=!+§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §&!<§:int = 7;
      
      protected static const §"!b§:Number = §&l§.§?!>§ / 100;
      
      public static const § 1§:Number = 2000;
      
      public static const §=!4§:Number = 2500;
      
      public static const §`!&§:int = 5;
       
      
      public var §%!,§:int = 0;
      
      protected var §9u§:int = 0;
      
      public var §&!0§:Number;
      
      protected var §"!d§:Number = 0;
      
      protected var §[!9§:Boolean = false;
      
      private var §2!f§:Number = 0;
      
      public var §[W§:Number = 0;
      
      protected var §%g§:Boolean;
      
      protected var §6!Q§:Number = 0;
      
      protected var §%!d§:Number = 0;
      
      protected var §^B§:Boolean = true;
      
      protected var §?+§:§@!3§;
      
      public function §[7§(param1:§2!U§)
      {
         this.§?+§ = new §@!3§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§?+§.§]K§(0);
         this.§%!,§ = -1;
         this.§9u§ = 0;
         this.§"!d§ = 0;
         this.§[!9§ = false;
         this.changeGameState(§-1§);
         this.§&!0§ = § 1§;
         §+!W§(true);
         §7o§.objects.setDamageEnabled(true);
         §7o§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §7o§.update(param1,true);
         this.§&?§(param1);
         this.§<=§(param1);
      }
      
      private function §&?§(param1:int) : void
      {
         if(this.§9u§ != 0)
         {
            §7o§.camera.adjustManualScale(this.§9u§ > 0,param1 * §"!b§);
         }
      }
      
      public function clearLevel() : void
      {
         §7o§.clearLevel();
         removeEventListeners();
         this.§%!,§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §8M§() : Boolean
      {
         if(§7o§.camera.mCurrentCameraSliderLocation < §&l§.§=!'§)
         {
            return false;
         }
         if(!§7o§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §+,§(param1:int) : void
      {
         var _loc2_:§&l§ = §7o§.camera;
         if(_loc2_.§,!&§ > 0)
         {
            _loc2_.§,!&§ -= param1;
            if(_loc2_.§,!&§ <= 0)
            {
               if(this.§8M§())
               {
                  _loc2_.§,!&§ = -1;
                  if(§7o§.slingshot.birdsAvailable)
                  {
                     _loc2_.§>A§();
                  }
               }
               else
               {
                  _loc2_.§,!&§ = §&l§.§4m§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§#!'§(false) && !param2)
         {
            return;
         }
         if(param1 == §-1§)
         {
            this.§[W§ = 2000;
         }
         else if(param1 == §<!M§)
         {
            §7o§.camera.goToBirdView();
         }
         else if(param1 == §1D§)
         {
            this.§%g§ = false;
            this.§[W§ = 5000;
            §7o§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §'!K§)
         {
            §7o§.camera.goToCastleView();
         }
         else if(param1 == §=!+§)
         {
            this.§[W§ = 2000;
            this.§2!f§ = §`!&§;
            §7o§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§[W§ = 1200;
            if(!§7o§.objects.mMightyEagleAdded)
            {
               §7o§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§[W§ = 1200;
            if(!§7o§.objects.mMightyEagleAdded)
            {
               §7o§.camera.goToBirdView();
               §7o§.slingshot.makeBirdsJumpForJoy();
            }
            §42§.§;!`§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §&!<§)
         {
            §42§.§<!_§();
            §42§.§;!`§("LevelFailedPigs1");
            this.§[W§ = 1200;
            §7o§.camera.goToCastleView();
            §7o§.objects.makePigsSmile(5);
         }
         this.§%!,§ = param1;
      }
      
      public function §>;§(param1:Number) : void
      {
         this.§"!d§ = Math.max(this.§"!d§,param1);
      }
      
      protected function §^i§() : Boolean
      {
         return §7o§.slingshot.mSlingShotState == §@!N§.§8!?§ && !§7o§.objects.hasBirds();
      }
      
      public function §<=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§9!5§ = null;
         this.§&!0§ -= param1;
         if(this.§[!9§)
         {
            this.§"!d§ -= param1;
            if(this.§"!d§ < 0)
            {
               this.§&!0§ = 0;
            }
         }
         if(this.§&!0§ <= 0 && !this.§#!'§(false))
         {
            this.§&!0§ = § 1§;
            _loc2_ = §7o§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§[!9§ || this.§"!d§ > 0))
            {
               if((!this.§[!9§ || this.§"!d§ > 6000) && !§7o§.objects.isPigsAlive())
               {
                  this.§"!d§ = 6000;
                  this.§[!9§ = true;
               }
               else if(!this.§[!9§ && this.§^i§())
               {
                  this.§"!d§ = 15000;
                  this.§[!9§ = true;
               }
            }
            else if(!§7o§.objects.isPigsAlive() && !§7o§.objects.mSardineCanAdded && !§7o§.objects.mMightyEagleAdded)
            {
               this.§'2§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§^i§())
            {
               if(§7o§.objects.mMightyEagleAdded)
               {
                  if(§7o§.objects.mMightyEagleHasTouchedGround && §7o§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§'2§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§7o§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§&!0§ = § 1§;
                  }
               }
               else if(!§7o§.objects.mSardineCanAdded)
               {
                  this.§'2§(§&!<§);
               }
            }
            if(this.§#!'§(false))
            {
               §7o§.gameOver();
            }
         }
         this.§[W§ -= param1;
         if(this.§[W§ < 0)
         {
            this.§[W§ = 0;
         }
         if(this.§%!,§ == §'!K§)
         {
            §7o§.updatePigAnimations(param1);
            if(!§7o§.camera.isOnCastleView() && §7o§.camera.mCurrentAction != §&l§.§"3§)
            {
               this.changeGameState(§<!M§);
            }
         }
         else if(this.§%!,§ == §=!+§)
         {
            if(this.§[W§ <= 0)
            {
               _loc3_ = §7o§.objects.hasBirds();
               if(_loc3_ && this.§2!f§ > 0)
               {
                  this.§[W§ = 2000;
                  this.§&!0§ = 0;
                  this.§2!f§ = this.§2!f§ - 1;
               }
               else if(!§&2§.§4!1§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§<!M§);
               }
            }
            else
            {
               §7o§.updatePigAnimations(param1);
            }
            if(!§7o§.camera.isOnCastleView() && §7o§.camera.mCurrentAction != §&l§.§"3§)
            {
               this.changeGameState(§<!M§);
            }
         }
         else if(this.§%!,§ == §-1§)
         {
            if(this.§[W§ <= 0)
            {
               this.changeGameState(§<!M§);
            }
         }
         else if(this.§%!,§ == §<!M§)
         {
            if(§7o§.camera.isOnCastleView() && §7o§.camera.mCurrentAction != §&l§.§"3§)
            {
               this.changeGameState(§'!K§);
            }
         }
         else if(this.§%!,§ == §1D§)
         {
            if(!(_loc4_ = §7o§.activeObject) || _loc4_.§7!M§ < _loc4_.§+z§)
            {
               if(_loc4_ && _loc4_ is §3[§ && (!(_loc4_ as § q§).§#!S§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§%g§ = true;
                  this.changeGameState(§=!+§);
               }
               §7o§.activeObject = null;
               this.changeGameState(§=!+§);
            }
         }
         else if(this.§%!,§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§[W§ <= 0)
            {
               if(§7o§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§[W§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §'2§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§[!9§)
         {
            this.§[!9§ = true;
         }
         if(new Date().time - §7o§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§7o§.slingshot.mDragging)
         {
            return;
         }
         if(§7o§.objects.isWorldAtSleep())
         {
            this.§"!d§ = Math.min(this.§"!d§,3500);
         }
         if(this.§"!d§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §#!'§(param1:Boolean = false) : Boolean
      {
         return (this.§%!,§ == LEVEL_STATE_VICTORY2_END || this.§%!,§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§%!,§ == §&!<§) && (!param1 || this.§[W§ <= 0 && this.§%!,§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §5^§() : Boolean
      {
         return this.§%!,§ == LEVEL_STATE_VICTORY2_END || this.§%!,§ == §&!<§;
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
         if(!this.§^B§ || !§7o§.mReadyToRun)
         {
            return;
         }
         if(!(§7o§.slingshot.mDragging || §7o§.camera.mDragging))
         {
            if(this.§%!,§ == §=!+§ || this.§%!,§ == §'!K§ || this.§%!,§ == §<!M§)
            {
               if(!§7o§.isPlayingReplay())
               {
                  §7o§.camera.adjustManualScale(param1,param2 == 0 ? Number(§&l§.§?!>§) : Number(param2));
               }
               else
               {
                  §7o§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §%1§(param1:int) : void
      {
         this.§9u§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§^B§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §9v§.§1!O§();
         if(this.§#!'§(false))
         {
            return;
         }
         if(!§7o§.isPlayingReplay())
         {
            if(§7o§.activeObject && this.§%!,§ == §1D§ || this.§%g§)
            {
               this.§%g§ = false;
               §7o§.activatePowerup();
               return;
            }
            _loc4_ = §7o§.screenToBox2D(param1,param2);
            if(§7o§.slingshot.canStartDragging(_loc4_))
            {
               §7o§.slingshot.startDragging();
               this.changeGameState(§<!M§);
            }
            else
            {
               §7o§.camera.startDragging(param1,param2);
            }
            return;
         }
         §7o§.camera.startDragging(param1,param2);
         §7o§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§^B§)
         {
            return;
         }
         §9v§.§"z§();
         if(this.§%!,§ == §-1§)
         {
            this.changeGameState(§<!M§);
         }
         if(§7o§.slingshot.mDragging)
         {
            _loc3_ = §7o§.screenToBox2D(param1,param2);
            §7o§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§7o§.slingshot.canShootTheBird())
            {
               §7o§.slingshot.shoot();
               this.changeGameState(§1D§);
            }
            else
            {
               §7o§.slingshot.cancelDragging();
            }
         }
         if(§7o§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §7o§.camera.dragToNewPoint(param1,param2);
            }
            §7o§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§^B§)
         {
            return;
         }
         if(§7o§.slingshot.mDragging)
         {
            _loc3_ = §7o§.screenToBox2D(param1,param2);
            §7o§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§7o§.camera.mDragging)
         {
            §7o§.camera.dragToNewPoint(param1,param2);
         }
         this.§6!Q§ = param1;
         this.§%!d§ = param2;
      }
      
      public function §,!#§() : Point
      {
         return new Point(this.§6!Q§,this.§%!d§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§?+§.§]K§(this.§?+§.getValue() + param1);
         this.§>;§(§=!4§);
         if(this.§%!,§ == §=!+§)
         {
            this.§[W§ = 2000;
            this.§2!f§ = §`!&§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§?+§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§&2§.§4!1§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §@=§.§'%§(§@=§.§!!S§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§^B§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§^B§ = param1;
      }
   }
}

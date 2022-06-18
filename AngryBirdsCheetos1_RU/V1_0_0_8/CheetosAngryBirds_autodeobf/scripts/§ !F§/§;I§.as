package § !F§
{
   import §'D§.§6!L§;
   import §'O§.§>q§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §2>§.§?!1§;
   import §8!`§.§%t§;
   import §8!`§.§4J§;
   import §@!?§.§9Z§;
   import §]!D§.§,!@§;
   import §]!D§.§;!_§;
   import §]!D§.§@!]§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §;I§ extends §9B§
   {
      
      public static const §`!J§:int = 0;
      
      public static const §]!4§:int = 1;
      
      public static const §%!6§:int = 2;
      
      public static const §`!;§:int = 3;
      
      public static const §?!U§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §]1§:int = 7;
      
      protected static const §0l§:Number = §9Z§.§#s§ / 100;
      
      public static const §!s§:Number = 2000;
      
      public static const §+!N§:Number = 2500;
      
      public static const §&!L§:int = 5;
       
      
      public var §2!"§:int = 0;
      
      protected var §3!N§:int = 0;
      
      public var §;o§:Number;
      
      protected var §#I§:Number = 0;
      
      protected var §"i§:Boolean = false;
      
      private var §57§:Number = 0;
      
      public var §^!;§:Number = 0;
      
      protected var §%e§:Boolean;
      
      protected var §3!<§:Number = 0;
      
      protected var §7N§:Number = 0;
      
      protected var §3!V§:Boolean = true;
      
      protected var §+!D§:§>q§;
      
      public function §;I§(param1:§4J§)
      {
         this.§+!D§ = new §>q§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§+!D§.§<R§(0);
         this.§2!"§ = -1;
         this.§3!N§ = 0;
         this.§#I§ = 0;
         this.§"i§ = false;
         this.§?!_§(§`!J§);
         this.§;o§ = §!s§;
         §[2§(true);
         §'N§.objects.setDamageEnabled(true);
         §'N§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §'N§.update(param1,true);
         this.§>7§(param1);
         this.§[!-§(param1);
      }
      
      private function §>7§(param1:int) : void
      {
         if(this.§3!N§ != 0)
         {
            §'N§.camera.adjustManualScale(this.§3!N§ > 0,param1 * §0l§);
         }
      }
      
      public function clearLevel() : void
      {
         §'N§.clearLevel();
         removeEventListeners();
         this.§2!"§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §[f§() : Boolean
      {
         if(§'N§.camera.mCurrentCameraSliderLocation < §9Z§.§`!'§)
         {
            return false;
         }
         if(!§'N§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §@!I§(param1:int) : void
      {
         var _loc2_:§9Z§ = §'N§.camera;
         if(_loc2_.§[]§ > 0)
         {
            _loc2_.§[]§ -= param1;
            if(_loc2_.§[]§ <= 0)
            {
               if(this.§[f§())
               {
                  _loc2_.§[]§ = -1;
                  if(§'N§.slingshot.birdsAvailable)
                  {
                     _loc2_.§=E§();
                  }
               }
               else
               {
                  _loc2_.§[]§ = §9Z§.§-d§ / 2;
               }
            }
         }
      }
      
      public function §?!_§(param1:int, param2:Boolean = false) : void
      {
         if(this.§%;§(false) && !param2)
         {
            return;
         }
         if(param1 == §`!J§)
         {
            this.§^!;§ = 2000;
         }
         else if(param1 == §]!4§)
         {
            §'N§.camera.goToBirdView();
         }
         else if(param1 == §%!6§)
         {
            this.§%e§ = false;
            this.§^!;§ = 5000;
            §'N§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §`!;§)
         {
            §'N§.camera.goToCastleView();
         }
         else if(param1 == §?!U§)
         {
            this.§^!;§ = 2000;
            this.§57§ = §&!L§;
            §'N§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§^!;§ = 1200;
            if(!§'N§.objects.mMightyEagleAdded)
            {
               §'N§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§^!;§ = 1200;
            if(!§'N§.objects.mMightyEagleAdded)
            {
               §'N§.camera.goToBirdView();
               §'N§.slingshot.makeBirdsJumpForJoy();
            }
            §?!1§.§0!O§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §]1§)
         {
            §?!1§.§>a§();
            §?!1§.§0!O§("LevelFailedPigs1");
            this.§^!;§ = 1200;
            §'N§.camera.goToCastleView();
            §'N§.objects.makePigsSmile(5);
         }
         this.§2!"§ = param1;
      }
      
      public function §[!@§(param1:Number) : void
      {
         this.§#I§ = Math.max(this.§#I§,param1);
      }
      
      protected function §5n§() : Boolean
      {
         return §'N§.slingshot.mSlingShotState == §%t§.§finally§ && !§'N§.objects.hasBirds();
      }
      
      public function §[!-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§@!]§ = null;
         this.§;o§ -= param1;
         if(this.§"i§)
         {
            this.§#I§ -= param1;
            if(this.§#I§ < 0)
            {
               this.§;o§ = 0;
            }
         }
         if(this.§;o§ <= 0 && !this.§%;§(false))
         {
            this.§;o§ = §!s§;
            _loc2_ = §'N§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§"i§ || this.§#I§ > 0))
            {
               if((!this.§"i§ || this.§#I§ > 6000) && !§'N§.objects.isPigsAlive())
               {
                  this.§#I§ = 6000;
                  this.§"i§ = true;
               }
               else if(!this.§"i§ && this.§5n§())
               {
                  this.§#I§ = 15000;
                  this.§"i§ = true;
               }
            }
            else if(!§'N§.objects.isPigsAlive() && !§'N§.objects.mSardineCanAdded && !§'N§.objects.mMightyEagleAdded)
            {
               this.§[q§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5n§())
            {
               if(§'N§.objects.mMightyEagleAdded)
               {
                  if(§'N§.objects.mMightyEagleHasTouchedGround && §'N§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§[q§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§'N§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§;o§ = §!s§;
                  }
               }
               else if(!§'N§.objects.mSardineCanAdded)
               {
                  this.§[q§(§]1§);
               }
            }
            if(this.§%;§(false))
            {
               §'N§.gameOver();
            }
         }
         this.§^!;§ -= param1;
         if(this.§^!;§ < 0)
         {
            this.§^!;§ = 0;
         }
         if(this.§2!"§ == §`!;§)
         {
            §'N§.updatePigAnimations(param1);
            if(!§'N§.camera.isOnCastleView() && §'N§.camera.mCurrentAction != §9Z§.§>6§)
            {
               this.§?!_§(§]!4§);
            }
         }
         else if(this.§2!"§ == §?!U§)
         {
            if(this.§^!;§ <= 0)
            {
               _loc3_ = §'N§.objects.hasBirds();
               if(_loc3_ && this.§57§ > 0)
               {
                  this.§^!;§ = 2000;
                  this.§;o§ = 0;
                  this.§57§ = this.§57§ - 1;
               }
               else if(!§@!Q§.§7l§.objects.mMightyEagleAdded)
               {
                  this.§?!_§(§]!4§);
               }
            }
            else
            {
               §'N§.updatePigAnimations(param1);
            }
            if(!§'N§.camera.isOnCastleView() && §'N§.camera.mCurrentAction != §9Z§.§>6§)
            {
               this.§?!_§(§]!4§);
            }
         }
         else if(this.§2!"§ == §`!J§)
         {
            if(this.§^!;§ <= 0)
            {
               this.§?!_§(§]!4§);
            }
         }
         else if(this.§2!"§ == §]!4§)
         {
            if(§'N§.camera.isOnCastleView() && §'N§.camera.mCurrentAction != §9Z§.§>6§)
            {
               this.§?!_§(§`!;§);
            }
         }
         else if(this.§2!"§ == §%!6§)
         {
            if(!(_loc4_ = §'N§.activeObject) || _loc4_.§5h§ < _loc4_.§!e§)
            {
               if(_loc4_ && _loc4_ is §;!_§ && (!(_loc4_ as §,!@§).§-g§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§%e§ = true;
                  this.§?!_§(§?!U§);
               }
               §'N§.activeObject = null;
               this.§?!_§(§?!U§);
            }
         }
         else if(this.§2!"§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§^!;§ <= 0)
            {
               if(§'N§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§^!;§ = 1000;
               }
               else
               {
                  this.§?!_§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §[q§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§"i§)
         {
            this.§"i§ = true;
         }
         if(new Date().time - §'N§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§'N§.slingshot.mDragging)
         {
            return;
         }
         if(§'N§.objects.isWorldAtSleep())
         {
            this.§#I§ = Math.min(this.§#I§,3500);
         }
         if(this.§#I§ <= 0)
         {
            this.§?!_§(param1,param2);
         }
      }
      
      public function §%;§(param1:Boolean = false) : Boolean
      {
         return (this.§2!"§ == LEVEL_STATE_VICTORY2_END || this.§2!"§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§2!"§ == §]1§) && (!param1 || this.§^!;§ <= 0 && this.§2!"§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §^V§() : Boolean
      {
         return this.§2!"§ == LEVEL_STATE_VICTORY2_END || this.§2!"§ == §]1§;
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
         if(!this.§3!V§ || !§'N§.mReadyToRun)
         {
            return;
         }
         if(!(§'N§.slingshot.mDragging || §'N§.camera.mDragging))
         {
            if(this.§2!"§ == §?!U§ || this.§2!"§ == §`!;§ || this.§2!"§ == §]!4§)
            {
               if(!§'N§.isPlayingReplay())
               {
                  §'N§.camera.adjustManualScale(param1);
               }
               else
               {
                  §'N§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §6!U§(param1:int) : void
      {
         this.§3!N§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§3!V§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §6!L§.§!5§();
         if(this.§%;§(false))
         {
            return;
         }
         if(!§'N§.isPlayingReplay())
         {
            if(§'N§.activeObject && this.§2!"§ == §%!6§ || this.§%e§)
            {
               this.§%e§ = false;
               §'N§.activatePowerup();
               return;
            }
            _loc4_ = §'N§.screenToBox2D(param1,param2);
            if(§'N§.slingshot.canStartDragging(_loc4_))
            {
               §'N§.slingshot.startDragging();
               this.§?!_§(§]!4§);
            }
            else
            {
               §'N§.camera.startDragging(param1,param2);
            }
            return;
         }
         §'N§.camera.startDragging(param1,param2);
         §'N§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§3!V§)
         {
            return;
         }
         §6!L§.§&-§();
         if(this.§2!"§ == §`!J§)
         {
            this.§?!_§(§]!4§);
         }
         if(§'N§.slingshot.mDragging)
         {
            _loc3_ = §'N§.screenToBox2D(param1,param2);
            §'N§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§'N§.slingshot.canShootTheBird())
            {
               §'N§.slingshot.shoot();
               this.§?!_§(§%!6§);
            }
            else
            {
               §'N§.slingshot.cancelDragging();
            }
         }
         if(§'N§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §'N§.camera.dragToNewPoint(param1,param2);
            }
            §'N§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§3!V§)
         {
            return;
         }
         if(§'N§.slingshot.mDragging)
         {
            _loc3_ = §'N§.screenToBox2D(param1,param2);
            §'N§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§'N§.camera.mDragging)
         {
            §'N§.camera.dragToNewPoint(param1,param2);
         }
         this.§3!<§ = param1;
         this.§7N§ = param2;
      }
      
      public function §@N§() : Point
      {
         return new Point(this.§3!<§,this.§7N§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§+!D§.§<R§(this.§+!D§.getValue() + param1);
         this.§[!@§(§+!N§);
         if(this.§2!"§ == §?!U§)
         {
            this.§^!;§ = 2000;
            this.§57§ = §&!L§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§+!D§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§@!Q§.§7l§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §7M§.getLevelForId(§7M§.§9-§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§3!V§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§3!V§ = param1;
      }
   }
}

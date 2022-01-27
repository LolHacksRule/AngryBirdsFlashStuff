package §=!1§
{
   import §"1§.§>I§;
   import §,!1§.§]e§;
   import §,T§.§@6§;
   import §,T§.§[-§;
   import §0=§.§#X§;
   import §0=§.§&!Q§;
   import §0=§.§2p§;
   import §5!6§.§&!!§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §`!8§.§7!G§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §"!D§ extends §#!J§
   {
      
      public static const §8i§:int = 0;
      
      public static const § ! §:int = 1;
      
      public static const §7J§:int = 2;
      
      public static const §&`§:int = 3;
      
      public static const §@v§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §64§:int = 7;
      
      protected static const §]9§:Number = §&!!§.§"K§ / 100;
      
      public static const §]w§:Number = 2000;
      
      public static const §]!'§:Number = 2500;
      
      public static const §2F§:int = 5;
       
      
      public var §;!;§:int = 0;
      
      protected var §3K§:int = 0;
      
      public var §=;§:Number;
      
      protected var §4!§:Number = 0;
      
      protected var §7X§:Boolean = false;
      
      private var §>[§:Number = 0;
      
      public var §0L§:Number = 0;
      
      protected var §5S§:Boolean;
      
      protected var §-$§:Number = 0;
      
      protected var §"!G§:Number = 0;
      
      protected var §5!@§:Boolean = true;
      
      protected var §`!O§:§7!G§;
      
      public function §"!D§(param1:§[-§)
      {
         this.§`!O§ = new §7!G§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§`!O§.assign(0);
         this.§;!;§ = -1;
         this.§3K§ = 0;
         this.§4!§ = 0;
         this.§7X§ = false;
         this.§[!9§(§8i§);
         this.§=;§ = §]w§;
         §]d§(true);
         §34§.objects.setDamageEnabled(true);
         §34§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §34§.update(param1,true);
         this.§;v§(param1);
         this.§!B§(param1);
      }
      
      private function §;v§(param1:int) : void
      {
         if(this.§3K§ != 0)
         {
            §34§.camera.adjustManualScale(this.§3K§ > 0,param1 * §]9§);
         }
      }
      
      public function clearLevel() : void
      {
         §34§.clearLevel();
         removeEventListeners();
         this.§;!;§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §;!$§() : Boolean
      {
         if(§34§.camera.mCurrentCameraSliderLocation < §&!!§.§0x§)
         {
            return false;
         }
         if(!§34§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §4!J§(param1:int) : void
      {
         var _loc2_:§&!!§ = §34§.camera;
         if(_loc2_.§8!%§ > 0)
         {
            _loc2_.§8!%§ -= param1;
            if(_loc2_.§8!%§ <= 0)
            {
               if(this.§;!$§())
               {
                  _loc2_.§8!%§ = -1;
                  if(§34§.slingshot.birdsAvailable)
                  {
                     _loc2_.§^Y§();
                  }
               }
               else
               {
                  _loc2_.§8!%§ = §&!!§.§=j§ / 2;
               }
            }
         }
      }
      
      public function §[!9§(param1:int, param2:Boolean = false) : void
      {
         if(this.§"!'§(false) && !param2)
         {
            return;
         }
         if(param1 == §8i§)
         {
            this.§0L§ = 2000;
         }
         else if(param1 == § ! §)
         {
            §34§.camera.goToBirdView();
         }
         else if(param1 == §7J§)
         {
            this.§5S§ = false;
            this.§0L§ = 5000;
            §34§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §&`§)
         {
            §34§.camera.goToCastleView();
         }
         else if(param1 == §@v§)
         {
            this.§0L§ = 2000;
            this.§>[§ = §2F§;
            §34§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§0L§ = 1200;
            if(!§34§.objects.mMightyEagleAdded)
            {
               §34§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§0L§ = 1200;
            if(!§34§.objects.mMightyEagleAdded)
            {
               §34§.camera.goToBirdView();
               §34§.slingshot.makeBirdsJumpForJoy();
            }
            §]e§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §64§)
         {
            §]e§.§>$§();
            §]e§.playSound("LevelFailedPigs1");
            this.§0L§ = 1200;
            §34§.camera.goToCastleView();
            §34§.objects.makePigsSmile(5);
         }
         this.§;!;§ = param1;
      }
      
      public function §;+§(param1:Number) : void
      {
         this.§4!§ = Math.max(this.§4!§,param1);
      }
      
      protected function §=!O§() : Boolean
      {
         return §34§.slingshot.mSlingShotState == §@6§.§'D§ && !§34§.objects.hasBirds();
      }
      
      public function §!B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§2p§ = null;
         this.§=;§ -= param1;
         if(this.§7X§)
         {
            this.§4!§ -= param1;
            if(this.§4!§ < 0)
            {
               this.§=;§ = 0;
            }
         }
         if(this.§=;§ <= 0 && !this.§"!'§(false))
         {
            this.§=;§ = §]w§;
            _loc2_ = §34§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§7X§ || this.§4!§ > 0))
            {
               if((!this.§7X§ || this.§4!§ > 6000) && !§34§.objects.isPigsAlive())
               {
                  this.§4!§ = 6000;
                  this.§7X§ = true;
               }
               else if(!this.§7X§ && this.§=!O§())
               {
                  this.§4!§ = 15000;
                  this.§7X§ = true;
               }
            }
            else if(!§34§.objects.isPigsAlive() && !§34§.objects.mSardineCanAdded && !§34§.objects.mMightyEagleAdded)
            {
               this.§1`§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§=!O§())
            {
               if(§34§.objects.mMightyEagleAdded)
               {
                  if(§34§.objects.mMightyEagleHasTouchedGround && §34§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§1`§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§34§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§=;§ = §]w§;
                  }
               }
               else if(!§34§.objects.mSardineCanAdded)
               {
                  this.§1`§(§64§);
               }
            }
            if(this.§"!'§(false))
            {
               §34§.gameOver();
            }
         }
         this.§0L§ -= param1;
         if(this.§0L§ < 0)
         {
            this.§0L§ = 0;
         }
         if(this.§;!;§ == §&`§)
         {
            §34§.updatePigAnimations(param1);
            if(!§34§.camera.isOnCastleView() && §34§.camera.mCurrentAction != §&!!§.§2V§)
            {
               this.§[!9§(§ ! §);
            }
         }
         else if(this.§;!;§ == §@v§)
         {
            if(this.§0L§ <= 0)
            {
               _loc3_ = §34§.objects.hasBirds();
               if(_loc3_ && this.§>[§ > 0)
               {
                  this.§0L§ = 2000;
                  this.§=;§ = 0;
                  this.§>[§ = this.§>[§ - 1;
               }
               else if(!§0!E§.§9!B§.objects.mMightyEagleAdded)
               {
                  this.§[!9§(§ ! §);
               }
            }
            else
            {
               §34§.updatePigAnimations(param1);
            }
            if(!§34§.camera.isOnCastleView() && §34§.camera.mCurrentAction != §&!!§.§2V§)
            {
               this.§[!9§(§ ! §);
            }
         }
         else if(this.§;!;§ == §8i§)
         {
            if(this.§0L§ <= 0)
            {
               this.§[!9§(§ ! §);
            }
         }
         else if(this.§;!;§ == § ! §)
         {
            if(§34§.camera.isOnCastleView() && §34§.camera.mCurrentAction != §&!!§.§2V§)
            {
               this.§[!9§(§&`§);
            }
         }
         else if(this.§;!;§ == §7J§)
         {
            if(!(_loc4_ = §34§.activeObject) || _loc4_.§[!J§ < _loc4_.§ !L§)
            {
               if(_loc4_ && _loc4_ is §#X§ && (!(_loc4_ as §&!Q§).§%#§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§5S§ = true;
                  this.§[!9§(§@v§);
               }
               §34§.activeObject = null;
               this.§[!9§(§@v§);
            }
         }
         else if(this.§;!;§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§0L§ <= 0)
            {
               if(§34§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§0L§ = 1000;
               }
               else
               {
                  this.§[!9§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §1`§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§7X§)
         {
            this.§7X§ = true;
         }
         if(new Date().time - §34§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§34§.slingshot.mDragging)
         {
            return;
         }
         if(§34§.objects.isWorldAtSleep())
         {
            this.§4!§ = Math.min(this.§4!§,3500);
         }
         if(this.§4!§ <= 0)
         {
            this.§[!9§(param1,param2);
         }
      }
      
      public function §"!'§(param1:Boolean = false) : Boolean
      {
         return (this.§;!;§ == LEVEL_STATE_VICTORY2_END || this.§;!;§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§;!;§ == §64§) && (!param1 || this.§0L§ <= 0 && this.§;!;§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §91§() : Boolean
      {
         return this.§;!;§ == LEVEL_STATE_VICTORY2_END || this.§;!;§ == §64§;
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
         if(!this.§5!@§ || !§34§.mReadyToRun)
         {
            return;
         }
         if(!(§34§.slingshot.mDragging || §34§.camera.mDragging))
         {
            if(this.§;!;§ == §@v§ || this.§;!;§ == §&`§ || this.§;!;§ == § ! §)
            {
               if(!§34§.isPlayingReplay())
               {
                  §34§.camera.adjustManualScale(param1);
               }
               else
               {
                  §34§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §28§(param1:int) : void
      {
         this.§3K§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§5!@§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §>I§.§]#§();
         if(this.§"!'§(false))
         {
            return;
         }
         if(!§34§.isPlayingReplay())
         {
            if(§34§.activeObject && this.§;!;§ == §7J§ || this.§5S§)
            {
               this.§5S§ = false;
               §34§.activatePowerup();
               return;
            }
            _loc4_ = §34§.screenToBox2D(param1,param2);
            if(§34§.slingshot.canStartDragging(_loc4_))
            {
               §34§.slingshot.startDragging();
               this.§[!9§(§ ! §);
            }
            else
            {
               §34§.camera.startDragging(param1,param2);
            }
            return;
         }
         §34§.camera.startDragging(param1,param2);
         §34§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§5!@§)
         {
            return;
         }
         §>I§.§0!O§();
         if(this.§;!;§ == §8i§)
         {
            this.§[!9§(§ ! §);
         }
         if(§34§.slingshot.mDragging)
         {
            _loc3_ = §34§.screenToBox2D(param1,param2);
            §34§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§34§.slingshot.canShootTheBird())
            {
               §34§.slingshot.shoot();
               this.§[!9§(§7J§);
            }
            else
            {
               §34§.slingshot.cancelDragging();
            }
         }
         if(§34§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §34§.camera.dragToNewPoint(param1,param2);
            }
            §34§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§5!@§)
         {
            return;
         }
         if(§34§.slingshot.mDragging)
         {
            _loc3_ = §34§.screenToBox2D(param1,param2);
            §34§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§34§.camera.mDragging)
         {
            §34§.camera.dragToNewPoint(param1,param2);
         }
         this.§-$§ = param1;
         this.§"!G§ = param2;
      }
      
      public function §3i§() : Point
      {
         return new Point(this.§-$§,this.§"!G§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§`!O§.assign(this.§`!O§.getValue() + param1);
         this.§;+§(§]!'§);
         if(this.§;!;§ == §@v§)
         {
            this.§0L§ = 2000;
            this.§>[§ = §2F§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§`!O§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§0!E§.§9!B§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §&u§.§`!0§(§&u§.§ !+§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§5!@§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§5!@§ = param1;
      }
   }
}

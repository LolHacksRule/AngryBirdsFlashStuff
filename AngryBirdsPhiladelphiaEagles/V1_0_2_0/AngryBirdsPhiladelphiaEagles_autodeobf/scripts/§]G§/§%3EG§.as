package §]G§
{
   import §%"§.§ do§;
   import §%"§.§7?§;
   import §'D§.§3h§;
   import §'R§.§&r§;
   import §'R§.§4k§;
   import §'R§.§7!0§;
   import §+y§.§3V§;
   import §9!0§.§3!2§;
   import §<!F§.§5!+§;
   import §?!;§.§6H§;
   import §@V§.§-'§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §>G§ extends §8!=§
   {
      
      public static const §=!9§:int = 0;
      
      public static const §"o§:int = 1;
      
      public static const §>3§:int = 2;
      
      public static const §,V§:int = 3;
      
      public static const §&!=§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §;o§:int = 7;
      
      protected static const §+A§:Number = §3h§.§#!<§ / 100;
      
      public static const §=Y§:Number = 2000;
      
      public static const §1!&§:Number = 2500;
      
      public static const §6!=§:int = 5;
       
      
      public var §&f§:int = 0;
      
      protected var §?,§:int = 0;
      
      public var §'!1§:Number;
      
      protected var §;!=§:Number = 0;
      
      protected var §&_§:Boolean = false;
      
      private var § !I§:Number = 0;
      
      public var §;!3§:Number = 0;
      
      protected var §8!@§:Boolean;
      
      protected var §true§:Number = 0;
      
      protected var §7§:Number = 0;
      
      protected var §[i§:Boolean = true;
      
      protected var §&2§:§3!2§;
      
      public function §>G§(param1:§ do§)
      {
         this.§&2§ = new §3!2§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§&2§.assign(0);
         this.§&f§ = -1;
         this.§?,§ = 0;
         this.§;!=§ = 0;
         this.§&_§ = false;
         this.§9y§(§=!9§);
         this.§'!1§ = §=Y§;
         §#S§(true);
         §-H§.objects.setDamageEnabled(true);
         §-H§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §-H§.update(param1,true);
         this.§>"§(param1);
         this.§4=§(param1);
      }
      
      private function §>"§(param1:int) : void
      {
         if(this.§?,§ != 0)
         {
            §-H§.camera.adjustManualScale(this.§?,§ > 0,param1 * §+A§);
         }
      }
      
      public function clearLevel() : void
      {
         §-H§.clearLevel();
         removeEventListeners();
         this.§&f§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §1!B§() : Boolean
      {
         if(§-H§.camera.mCurrentCameraSliderLocation < §3h§.§]t§)
         {
            return false;
         }
         if(!§-H§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §[!A§(param1:int) : void
      {
         var _loc2_:§3h§ = §-H§.camera;
         if(_loc2_.§@s§ > 0)
         {
            _loc2_.§@s§ -= param1;
            if(_loc2_.§@s§ <= 0)
            {
               if(this.§1!B§())
               {
                  _loc2_.§@s§ = -1;
                  if(§-H§.slingshot.birdsAvailable)
                  {
                     _loc2_.§9!9§();
                  }
               }
               else
               {
                  _loc2_.§@s§ = §3h§.§!!§ / 2;
               }
            }
         }
      }
      
      public function §9y§(param1:int, param2:Boolean = false) : void
      {
         if(this.§'!$§(false) && !param2)
         {
            return;
         }
         if(param1 == §=!9§)
         {
            this.§;!3§ = 2000;
         }
         else if(param1 == §"o§)
         {
            §-H§.camera.goToBirdView();
         }
         else if(param1 == §>3§)
         {
            this.§8!@§ = false;
            this.§;!3§ = 5000;
            §-H§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §,V§)
         {
            §-H§.camera.goToCastleView();
         }
         else if(param1 == §&!=§)
         {
            this.§;!3§ = 2000;
            this.§ !I§ = §6!=§;
            §-H§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§;!3§ = 1200;
            if(!§-H§.objects.mMightyEagleAdded)
            {
               §-H§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§;!3§ = 1200;
            if(!§-H§.objects.mMightyEagleAdded)
            {
               §-H§.camera.goToBirdView();
               §-H§.slingshot.makeBirdsJumpForJoy();
            }
            §3V§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §;o§)
         {
            §3V§.§0x§();
            §3V§.playSound("LevelFailedPigs1");
            this.§;!3§ = 1200;
            §-H§.camera.goToCastleView();
            §-H§.objects.makePigsSmile(5);
         }
         this.§&f§ = param1;
      }
      
      public function §%0§(param1:Number) : void
      {
         this.§;!=§ = Math.max(this.§;!=§,param1);
      }
      
      protected function §7#§() : Boolean
      {
         return §-H§.slingshot.mSlingShotState == §7?§.§?#§ && !§-H§.objects.hasBirds();
      }
      
      public function §4=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§&r§ = null;
         this.§'!1§ -= param1;
         if(this.§&_§)
         {
            this.§;!=§ -= param1;
            if(this.§;!=§ < 0)
            {
               this.§'!1§ = 0;
            }
         }
         if(this.§'!1§ <= 0 && !this.§'!$§(false))
         {
            this.§'!1§ = §=Y§;
            _loc2_ = §-H§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§&_§ || this.§;!=§ > 0))
            {
               if((!this.§&_§ || this.§;!=§ > 6000) && !§-H§.objects.isPigsAlive())
               {
                  this.§;!=§ = 6000;
                  this.§&_§ = true;
               }
               else if(!this.§&_§ && this.§7#§())
               {
                  this.§;!=§ = 15000;
                  this.§&_§ = true;
               }
            }
            else if(!§-H§.objects.isPigsAlive() && !§-H§.objects.mSardineCanAdded && !§-H§.objects.mMightyEagleAdded)
            {
               this.§,!9§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§7#§())
            {
               if(§-H§.objects.mMightyEagleAdded)
               {
                  if(§-H§.objects.mMightyEagleHasTouchedGround && §-H§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§,!9§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§-H§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§'!1§ = §=Y§;
                  }
               }
               else if(!§-H§.objects.mSardineCanAdded)
               {
                  this.§,!9§(§;o§);
               }
            }
            if(this.§'!$§(false))
            {
               §-H§.gameOver();
            }
         }
         this.§;!3§ -= param1;
         if(this.§;!3§ < 0)
         {
            this.§;!3§ = 0;
         }
         if(this.§&f§ == §,V§)
         {
            §-H§.updatePigAnimations(param1);
            if(!§-H§.camera.isOnCastleView() && §-H§.camera.mCurrentAction != §3h§.§;L§)
            {
               this.§9y§(§"o§);
            }
         }
         else if(this.§&f§ == §&!=§)
         {
            if(this.§;!3§ <= 0)
            {
               _loc3_ = §-H§.objects.hasBirds();
               if(_loc3_ && this.§ !I§ > 0)
               {
                  this.§;!3§ = 2000;
                  this.§'!1§ = 0;
                  this.§ !I§ = this.§ !I§ - 1;
               }
               else if(!§5!+§.§6!§.objects.mMightyEagleAdded)
               {
                  this.§9y§(§"o§);
               }
            }
            else
            {
               §-H§.updatePigAnimations(param1);
            }
            if(!§-H§.camera.isOnCastleView() && §-H§.camera.mCurrentAction != §3h§.§;L§)
            {
               this.§9y§(§"o§);
            }
         }
         else if(this.§&f§ == §=!9§)
         {
            if(this.§;!3§ <= 0)
            {
               this.§9y§(§"o§);
            }
         }
         else if(this.§&f§ == §"o§)
         {
            if(§-H§.camera.isOnCastleView() && §-H§.camera.mCurrentAction != §3h§.§;L§)
            {
               this.§9y§(§,V§);
            }
         }
         else if(this.§&f§ == §>3§)
         {
            if(!(_loc4_ = §-H§.activeObject) || _loc4_.§3! § < _loc4_.§`!O§)
            {
               if(_loc4_ && _loc4_ is §4k§ && (!(_loc4_ as §7!0§).§!z§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§8!@§ = true;
                  this.§9y§(§&!=§);
               }
               §-H§.activeObject = null;
               this.§9y§(§&!=§);
            }
         }
         else if(this.§&f§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§;!3§ <= 0)
            {
               if(§-H§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§;!3§ = 1000;
               }
               else
               {
                  this.§9y§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §,!9§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§&_§)
         {
            this.§&_§ = true;
         }
         if(new Date().time - §-H§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§-H§.slingshot.mDragging)
         {
            return;
         }
         if(§-H§.objects.isWorldAtSleep())
         {
            this.§;!=§ = Math.min(this.§;!=§,3500);
         }
         if(this.§;!=§ <= 0)
         {
            this.§9y§(param1,param2);
         }
      }
      
      public function §'!$§(param1:Boolean = false) : Boolean
      {
         return (this.§&f§ == LEVEL_STATE_VICTORY2_END || this.§&f§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§&f§ == §;o§) && (!param1 || this.§;!3§ <= 0 && this.§&f§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §<&§() : Boolean
      {
         return this.§&f§ == LEVEL_STATE_VICTORY2_END || this.§&f§ == §;o§;
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
         if(!this.§[i§ || !§-H§.mReadyToRun)
         {
            return;
         }
         if(!(§-H§.slingshot.mDragging || §-H§.camera.mDragging))
         {
            if(this.§&f§ == §&!=§ || this.§&f§ == §,V§ || this.§&f§ == §"o§)
            {
               if(!§-H§.isPlayingReplay())
               {
                  §-H§.camera.adjustManualScale(param1);
               }
               else
               {
                  §-H§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §%H§(param1:int) : void
      {
         this.§?,§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§[i§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §-'§.§'j§();
         if(this.§'!$§(false))
         {
            return;
         }
         if(!§-H§.isPlayingReplay())
         {
            if(§-H§.activeObject && this.§&f§ == §>3§ || this.§8!@§)
            {
               this.§8!@§ = false;
               §-H§.activatePowerup();
               return;
            }
            _loc4_ = §-H§.screenToBox2D(param1,param2);
            if(§-H§.slingshot.canStartDragging(_loc4_))
            {
               §-H§.slingshot.startDragging();
               this.§9y§(§"o§);
            }
            else
            {
               §-H§.camera.startDragging(param1,param2);
            }
            return;
         }
         §-H§.camera.startDragging(param1,param2);
         §-H§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§[i§)
         {
            return;
         }
         §-'§.§`!&§();
         if(this.§&f§ == §=!9§)
         {
            this.§9y§(§"o§);
         }
         if(§-H§.slingshot.mDragging)
         {
            _loc3_ = §-H§.screenToBox2D(param1,param2);
            §-H§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§-H§.slingshot.canShootTheBird())
            {
               §-H§.slingshot.shoot();
               this.§9y§(§>3§);
            }
            else
            {
               §-H§.slingshot.cancelDragging();
            }
         }
         if(§-H§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §-H§.camera.dragToNewPoint(param1,param2);
            }
            §-H§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§[i§)
         {
            return;
         }
         if(§-H§.slingshot.mDragging)
         {
            _loc3_ = §-H§.screenToBox2D(param1,param2);
            §-H§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§-H§.camera.mDragging)
         {
            §-H§.camera.dragToNewPoint(param1,param2);
         }
         this.§true§ = param1;
         this.§7§ = param2;
      }
      
      public function § !8§() : Point
      {
         return new Point(this.§true§,this.§7§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§&2§.assign(this.§&2§.getValue() + param1);
         this.§%0§(§1!&§);
         if(this.§&f§ == §&!=§)
         {
            this.§;!3§ = 2000;
            this.§ !I§ = §6!=§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§&2§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§5!+§.§6!§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §6H§.§,!C§(§6H§.§"Q§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§[i§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§[i§ = param1;
      }
   }
}

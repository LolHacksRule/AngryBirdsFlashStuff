package §>!?§
{
   import §&W§.§1!w§;
   import §,!!§.§0"!§;
   import §0s§.§8!z§;
   import §2b§.§"" §;
   import §8!E§.§1!6§;
   import §8!E§.§?!X§;
   import §=!<§.§5!U§;
   import §>Z§.§5;§;
   import §?"&§.§"!q§;
   import §?"&§.§<!+§;
   import §?"&§.§]!S§;
   import §?"&§.§`!k§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §=!?§ extends §'6§
   {
      
      public static const §2#§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const § -§:int = 2;
      
      public static const §"E§:int = 3;
      
      public static const §^!H§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §1G§:int = 7;
      
      protected static const §9"!§:Number = §"" §.MANUAL_SCALE_STEP / 100;
      
      public static const §^8§:Number = 2000;
      
      public static const §@&§:Number = 2500;
      
      public static const §3"-§:int = 5;
       
      
      public var §""%§:int = 0;
      
      protected var §%!,§:int = 0;
      
      public var §0;§:Number;
      
      protected var §8!&§:Number = 0;
      
      protected var §2X§:Boolean = false;
      
      private var §^! §:Number = 0;
      
      public var §0=§:Number = 0;
      
      protected var §1M§:Boolean;
      
      protected var §7m§:Number = 0;
      
      protected var §`"#§:Number = 0;
      
      protected var §[L§:Boolean = true;
      
      protected var §+!l§:§0"!§;
      
      public function §=!?§(param1:§?!X§)
      {
         this.§+!l§ = new §0"!§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§+!l§.§`S§(0);
         this.§""%§ = -1;
         this.§%!,§ = 0;
         this.§8!&§ = 0;
         this.§2X§ = false;
         this.§5!N§(§2#§);
         this.§0;§ = §^8§;
         §=o§(true);
         §7!;§.objects.setDamageEnabled(true);
         §7!;§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §7!;§.update(param1,true);
         this.§?!w§(param1);
         this.§>i§(param1);
      }
      
      private function §?!w§(param1:int) : void
      {
         if(this.§%!,§ != 0)
         {
            §7!;§.camera.adjustManualScale(this.§%!,§ > 0,param1 * §9"!§);
         }
      }
      
      public function clearLevel() : void
      {
         §7!;§.clearLevel();
         removeEventListeners();
         this.§""%§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §?";§() : Boolean
      {
         if(§7!;§.camera.mCurrentCameraSliderLocation < §"" §.§?!F§)
         {
            return false;
         }
         if(!§7!;§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §<!c§(param1:int) : void
      {
         var _loc2_:§"" § = §7!;§.camera;
         if(_loc2_.§+!'§ > 0)
         {
            _loc2_.§+!'§ -= param1;
            if(_loc2_.§+!'§ <= 0)
            {
               if(this.§?";§())
               {
                  _loc2_.§+!'§ = -1;
                  if(§7!;§.slingshot.birdsAvailable)
                  {
                     _loc2_.§8"0§();
                  }
               }
               else
               {
                  _loc2_.§+!'§ = §"" §.§>P§ / 2;
               }
            }
         }
      }
      
      public function §5!N§(param1:int, param2:Boolean = false) : void
      {
         if(this.§@"=§(false) && !param2)
         {
            return;
         }
         if(param1 == §2#§)
         {
            this.§0=§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §7!;§.camera.goToBirdView();
         }
         else if(param1 == § -§)
         {
            this.§1M§ = false;
            this.§0=§ = 5000;
            §7!;§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §"E§)
         {
            §7!;§.camera.goToCastleView();
         }
         else if(param1 == §^!H§)
         {
            this.§0=§ = 2000;
            this.§^! § = §3"-§;
            §7!;§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§0=§ = 1200;
            if(!§7!;§.objects.mMightyEagleAdded)
            {
               §7!;§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§0=§ = 1200;
            if(!§7!;§.objects.mMightyEagleAdded)
            {
               §7!;§.camera.goToBirdView();
               §7!;§.slingshot.makeBirdsJumpForJoy();
            }
            §5;§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §1G§)
         {
            §5;§.§8X§();
            §5;§.playSound("LevelFailedPigs1");
            this.§0=§ = 1200;
            §7!;§.camera.goToCastleView();
            §7!;§.objects.makePigsSmile(5);
         }
         this.§""%§ = param1;
      }
      
      public function §-r§() : void
      {
         this.§0=§ = 2000;
         this.§2X§ = false;
         this.§8!&§ = 2000;
         this.§5!N§(§=!?§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §2!0§(param1:Number) : void
      {
         this.§8!&§ = Math.max(this.§8!&§,param1);
      }
      
      protected function §;^§() : Boolean
      {
         return §7!;§.slingshot.mSlingShotState == §1!6§.§return§ && !§7!;§.objects.hasBirds();
      }
      
      public function §>i§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§"!q§ = null;
         this.§0;§ -= param1;
         if(this.§2X§)
         {
            this.§8!&§ -= param1;
            if(this.§8!&§ < 0)
            {
               this.§0;§ = 0;
            }
         }
         if(this.§0;§ <= 0 && !this.§@"=§(false))
         {
            this.§0;§ = §^8§;
            _loc2_ = §7!;§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§2X§ || this.§8!&§ > 0))
            {
               if((!this.§2X§ || this.§8!&§ > 6000) && !§7!;§.objects.isPigsAlive())
               {
                  this.§8!&§ = 6000;
                  this.§2X§ = true;
               }
               else if(!this.§2X§ && this.§;^§())
               {
                  this.§8!&§ = 15000;
                  this.§2X§ = true;
               }
            }
            else if(!§7!;§.objects.isPigsAlive() && !§7!;§.objects.mSardineCanAdded && !§7!;§.objects.mMightyEagleAdded)
            {
               this.§-!]§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§;^§())
            {
               if(§7!;§.objects.mMightyEagleAdded)
               {
                  if(§7!;§.objects.mMightyEagleHasTouchedGround && §7!;§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§-!]§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§7!;§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§0;§ = §^8§;
                  }
               }
               else if(!§7!;§.objects.mSardineCanAdded)
               {
                  this.§-!]§(§1G§);
               }
            }
            if(this.§@"=§(false))
            {
               §7!;§.gameOver();
            }
         }
         this.§0=§ -= param1;
         if(this.§0=§ < 0)
         {
            this.§0=§ = 0;
         }
         if(this.§""%§ == §"E§)
         {
            §7!;§.updatePigAnimations(param1);
            if(!§7!;§.camera.isOnCastleView() && §7!;§.camera.mCurrentAction != §"" §.§'!8§)
            {
               this.§5!N§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§""%§ == §^!H§)
         {
            if(this.§0=§ <= 0)
            {
               _loc3_ = §7!;§.objects.hasBirds();
               if(_loc3_ && this.§^! § > 0)
               {
                  this.§0=§ = 2000;
                  this.§0;§ = 0;
                  this.§^! § = this.§^! § - 1;
               }
               else if(!§5!U§.§,!E§.objects.mMightyEagleAdded)
               {
                  this.§5!N§(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §7!;§.updatePigAnimations(param1);
            }
            if(!§7!;§.camera.isOnCastleView() && §7!;§.camera.mCurrentAction != §"" §.§'!8§)
            {
               this.§5!N§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§""%§ == §2#§)
         {
            if(this.§0=§ <= 0)
            {
               this.§5!N§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§""%§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§7!;§.camera.isOnCastleView() && §7!;§.camera.mCurrentAction != §"" §.§'!8§)
            {
               this.§5!N§(§"E§);
            }
         }
         else if(this.§""%§ == § -§)
         {
            if(!(_loc4_ = §7!;§.activeObject) || _loc4_.§`X§ < _loc4_.§&<§)
            {
               if(_loc4_ && (_loc4_ is §]!S§ || _loc4_ is §<!+§ || _loc4_ is §<!+§) && (!(_loc4_ as §`!k§).§=!3§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§1M§ = true;
                  this.§5!N§(§^!H§);
               }
               §7!;§.activeObject = null;
               this.§5!N§(§^!H§);
            }
         }
         else if(this.§""%§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§0=§ <= 0)
            {
               if(§7!;§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§0=§ = 1000;
               }
               else
               {
                  this.§5!N§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §-!]§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§2X§)
         {
            this.§2X§ = true;
         }
         if(new Date().time - §7!;§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§7!;§.slingshot.mDragging)
         {
            return;
         }
         if(§7!;§.objects.isWorldAtSleep())
         {
            this.§8!&§ = Math.min(this.§8!&§,3500);
         }
         if(this.§8!&§ <= 0)
         {
            this.§5!N§(param1,param2);
         }
      }
      
      public function §@"=§(param1:Boolean = false) : Boolean
      {
         return (this.§""%§ == LEVEL_STATE_VICTORY2_END || this.§""%§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§""%§ == §1G§) && (!param1 || this.§0=§ <= 0 && this.§""%§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §@s§() : Boolean
      {
         return this.§""%§ == LEVEL_STATE_VICTORY2_END || this.§""%§ == §1G§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§1!F§(param1.delta > 0);
         }
      }
      
      public function §1!F§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§[L§ || !§7!;§.mReadyToRun)
         {
            return;
         }
         if(!(§7!;§.slingshot.mDragging || §7!;§.camera.mDragging))
         {
            if(this.§""%§ == §^!H§ || this.§""%§ == §"E§ || this.§""%§ == LEVEL_STATE_SLINGSHOT)
            {
               if(!§7!;§.isPlayingReplay())
               {
                  §7!;§.camera.adjustManualScale(param1,param2 == 0 ? Number(§"" §.MANUAL_SCALE_STEP) : Number(param2));
               }
               else
               {
                  §7!;§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §@!A§(param1:int) : void
      {
         this.§%!,§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§[L§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §1!w§.§@I§();
         if(this.§@"=§(false))
         {
            return;
         }
         if(!§7!;§.isPlayingReplay())
         {
            if(§7!;§.activeObject && this.§""%§ == § -§ || this.§1M§)
            {
               this.§1M§ = false;
               §7!;§.activatePowerup();
               return;
            }
            _loc4_ = §7!;§.screenToBox2D(param1,param2);
            if(§7!;§.slingshot.canStartDragging(_loc4_))
            {
               §7!;§.slingshot.startDragging();
               this.§5!N§(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §7!;§.camera.startDragging(param1,param2);
            }
            return;
         }
         §7!;§.camera.startDragging(param1,param2);
         §7!;§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§[L§)
         {
            return;
         }
         §1!w§.§9i§();
         if(this.§""%§ == §2#§)
         {
            this.§5!N§(LEVEL_STATE_SLINGSHOT);
         }
         if(§7!;§.slingshot.mDragging)
         {
            _loc3_ = §7!;§.screenToBox2D(param1,param2);
            §7!;§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§7!;§.slingshot.canShootTheBird())
            {
               §7!;§.slingshot.shoot();
               this.§5!N§(§ -§);
            }
            else
            {
               §7!;§.slingshot.cancelDragging();
            }
         }
         if(§7!;§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §7!;§.camera.dragToNewPoint(param1,param2);
            }
            §7!;§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§[L§)
         {
            return;
         }
         if(§7!;§.slingshot.mDragging)
         {
            _loc3_ = §7!;§.screenToBox2D(param1,param2);
            §7!;§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§7!;§.camera.mDragging)
         {
            §7!;§.camera.dragToNewPoint(param1,param2);
         }
         this.§7m§ = param1;
         this.§`"#§ = param2;
      }
      
      public function §@!-§() : Point
      {
         return new Point(this.§7m§,this.§`"#§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§+!l§.§`S§(this.§+!l§.getValue() + param1);
         this.§2!0§(§@&§);
         if(this.§""%§ == §^!H§)
         {
            this.§0=§ = 2000;
            this.§^! § = §3"-§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§+!l§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§5!U§.§,!E§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §8!z§.§5!L§(§8!z§.§>!&§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§[L§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§[L§ = param1;
      }
   }
}

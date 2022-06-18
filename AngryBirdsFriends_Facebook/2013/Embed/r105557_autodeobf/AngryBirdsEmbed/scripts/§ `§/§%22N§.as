package § `§
{
   import §#]§.§'5§;
   import §4n§.§#p§;
   import §4n§.§<!9§;
   import §4n§.§>!4§;
   import §4n§.§@!4§;
   import §5B§.§6!>§;
   import §8!=§.§]Q§;
   import §8T§.§@o§;
   import §;'§.§8!;§;
   import §;'§.§?!D§;
   import §<!M§.§[i§;
   import §?!8§.§7X§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §"N§ extends §"7§
   {
      
      public static const §`u§:int = 0;
      
      public static const § !E§:int = 1;
      
      public static const §`N§:int = 2;
      
      public static const §9M§:int = 3;
      
      public static const §3!G§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §3!7§:int = 7;
      
      protected static const §7h§:Number = §6!>§.§>V§ / 100;
      
      public static const §!!&§:Number = 2000;
      
      public static const §0V§:Number = 2500;
      
      public static const §<f§:int = 5;
      
      private static var §6x§:Boolean;
       
      
      public var §0W§:int = 0;
      
      protected var §?!-§:int = 0;
      
      public var §43§:Number;
      
      protected var § b§:Number = 0;
      
      protected var §?t§:Boolean = false;
      
      private var §5b§:Number = 0;
      
      public var §do§:Number = 0;
      
      protected var §do §:Number = 0;
      
      protected var §5j§:Number = 0;
      
      protected var §"8§:Boolean = true;
      
      protected var §;!%§:§]Q§;
      
      public function §"N§(param1:§?!D§)
      {
         this.§;!%§ = new §]Q§();
         super(param1);
      }
      
      public static function §=3§(param1:Boolean) : void
      {
         §6x§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§;!%§.assign(0);
         this.§0W§ = -1;
         this.§?!-§ = 0;
         this.§ b§ = 0;
         this.§?t§ = false;
         this.§@,§(§`u§);
         this.§43§ = §!!&§;
         §3X§(true);
         §2I§.objects.setDamageEnabled(true);
         §2I§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §2I§.update(param1,true);
         this.§#!1§(param1);
         this.§`P§(param1);
      }
      
      private function §#!1§(param1:int) : void
      {
         if(this.§?!-§ != 0)
         {
            §2I§.camera.adjustManualScale(this.§?!-§ > 0,param1 * §7h§);
         }
      }
      
      public function clearLevel() : void
      {
         §2I§.clearLevel();
         removeEventListeners();
         this.§0W§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §-!0§() : Boolean
      {
         if(§2I§.camera.mCurrentCameraSliderLocation < §6!>§.§>7§)
         {
            return false;
         }
         if(!§2I§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9+§(param1:int) : void
      {
         var _loc2_:§6!>§ = §2I§.camera;
         if(_loc2_.§7!D§ > 0)
         {
            _loc2_.§7!D§ -= param1;
            if(_loc2_.§7!D§ <= 0)
            {
               if(this.§-!0§())
               {
                  _loc2_.§7!D§ = -1;
                  if(§2I§.slingshot.birdsAvailable)
                  {
                     _loc2_.§!A§();
                  }
               }
               else
               {
                  _loc2_.§7!D§ = §6!>§.§"!I§ / 2;
               }
            }
         }
      }
      
      public function §@,§(param1:int, param2:Boolean = false) : void
      {
         if(this.§1h§(false) && !param2)
         {
            return;
         }
         if(param1 == §`u§)
         {
            this.§do§ = 2000;
         }
         else if(param1 == § !E§)
         {
            §2I§.camera.goToBirdView();
         }
         else if(param1 == §`N§)
         {
            §=3§(false);
            this.§do§ = 5000;
            §2I§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §9M§)
         {
            §2I§.camera.goToCastleView();
         }
         else if(param1 == §3!G§)
         {
            this.§do§ = 2000;
            this.§5b§ = §<f§;
            §2I§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§do§ = 1200;
            if(!§2I§.objects.mMightyEagleAdded)
            {
               §2I§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§do§ = 1200;
            if(!§2I§.objects.mMightyEagleAdded)
            {
               §2I§.camera.goToBirdView();
               §2I§.slingshot.makeBirdsJumpForJoy();
            }
            §@o§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §3!7§)
         {
            §@o§.§#!;§();
            §@o§.playSound("LevelFailedPigs1");
            this.§do§ = 1200;
            §2I§.camera.goToCastleView();
            §2I§.objects.makePigsSmile(5);
         }
         this.§0W§ = param1;
      }
      
      public function §7q§() : void
      {
         this.§do§ = 2000;
         this.§?t§ = false;
         this.§ b§ = 2000;
      }
      
      public function §8r§(param1:Number) : void
      {
         this.§ b§ = Math.max(this.§ b§,param1);
      }
      
      protected function §@!-§() : Boolean
      {
         return §2I§.slingshot.mSlingShotState == §8!;§.§4'§ && !§2I§.objects.hasBirds();
      }
      
      public function §`P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§@!4§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§43§ -= param1;
         if(this.§?t§)
         {
            this.§ b§ -= param1;
            if(this.§ b§ < 0)
            {
               this.§43§ = 0;
            }
         }
         if(this.§43§ <= 0 && !this.§1h§(false))
         {
            this.§43§ = §!!&§;
            _loc2_ = §2I§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§?t§ || this.§ b§ > 0))
            {
               if((!this.§?t§ || this.§ b§ > 6000) && !§2I§.objects.isPigsAlive())
               {
                  this.§ b§ = 6000;
                  this.§?t§ = true;
               }
               else if(!this.§?t§ && this.§@!-§())
               {
                  this.§ b§ = 15000;
                  this.§?t§ = true;
               }
            }
            else if(!§2I§.objects.isPigsAlive() && !§2I§.objects.mSardineCanAdded && !§2I§.objects.mMightyEagleAdded && (§'5§.§^;§.slingshot.§7j§.length == 0 || §'5§.§^;§.slingshot.§7j§[0].name != "BIRD_CHRISTMAS"))
            {
               this.§'O§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§@!-§())
            {
               if(§2I§.objects.mMightyEagleAdded)
               {
                  if(§2I§.objects.mMightyEagleHasTouchedGround && §2I§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§'O§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§2I§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§43§ = §!!&§;
                  }
               }
               else if(!§2I§.objects.mSardineCanAdded)
               {
                  this.§'O§(§3!7§);
               }
            }
            if(this.§1h§(false))
            {
               §2I§.gameOver();
            }
         }
         this.§do§ -= param1;
         if(this.§do§ < 0)
         {
            this.§do§ = 0;
         }
         if(this.§0W§ == §9M§)
         {
            §2I§.updatePigAnimations(param1);
            if(!§2I§.camera.isOnCastleView() && §2I§.camera.mCurrentAction != §6!>§.§#!@§)
            {
               this.§@,§(§ !E§);
            }
         }
         else if(this.§0W§ == §3!G§)
         {
            if(this.§do§ <= 0)
            {
               _loc3_ = §2I§.objects.hasBirds();
               if(_loc3_ && this.§5b§ > 0)
               {
                  this.§do§ = 2000;
                  this.§43§ = 0;
                  this.§5b§ = this.§5b§ - 1;
               }
               else if(!§'5§.§^;§.objects.mMightyEagleAdded)
               {
                  this.§@,§(§ !E§);
               }
            }
            else
            {
               §2I§.updatePigAnimations(param1);
            }
            if(!§2I§.camera.isOnCastleView() && §2I§.camera.mCurrentAction != §6!>§.§#!@§)
            {
               this.§@,§(§ !E§);
            }
         }
         else if(this.§0W§ == §`u§)
         {
            if(this.§do§ <= 0)
            {
               this.§@,§(§ !E§);
            }
         }
         else if(this.§0W§ == § !E§)
         {
            if(§2I§.camera.isOnCastleView() && §2I§.camera.mCurrentAction != §6!>§.§#!@§)
            {
               this.§@,§(§9M§);
            }
         }
         else if(this.§0W§ == §`N§)
         {
            if(!(_loc4_ = §2I§.activeObject) || _loc4_.§'s§ < _loc4_.§@g§)
            {
               if(_loc4_ && _loc4_ is §>!4§)
               {
                  _loc5_ = _loc4_ is §#p§;
                  _loc6_ = _loc4_ is §<!9§;
                  _loc7_ = (_loc4_ as §>!4§).§8m§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §=3§(true);
                        this.§@,§(§3!G§);
                     }
                  }
               }
               §2I§.activeObject = null;
               this.§@,§(§3!G§);
            }
         }
         else if(this.§0W§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§do§ <= 0)
            {
               if(§2I§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§do§ = 1000;
               }
               else
               {
                  this.§@,§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §'O§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§?t§)
         {
            this.§?t§ = true;
         }
         if(new Date().time - §2I§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§2I§.slingshot.mDragging)
         {
            return;
         }
         if(§2I§.objects.isWorldAtSleep())
         {
            this.§ b§ = Math.min(this.§ b§,3500);
         }
         if(this.§ b§ <= 0)
         {
            this.§@,§(param1,param2);
         }
      }
      
      public function §1h§(param1:Boolean = false) : Boolean
      {
         return (this.§0W§ == LEVEL_STATE_VICTORY2_END || this.§0W§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§0W§ == §3!7§) && (!param1 || this.§do§ <= 0 && this.§0W§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §4X§() : Boolean
      {
         return this.§0W§ == LEVEL_STATE_VICTORY2_END || this.§0W§ == §3!7§;
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
         if(!this.§"8§ || !§2I§.mReadyToRun)
         {
            return;
         }
         if(!(§2I§.slingshot.mDragging || §2I§.camera.mDragging))
         {
            if(this.§0W§ == §3!G§ || this.§0W§ == §9M§ || this.§0W§ == § !E§ || this.§0W§ == §`N§)
            {
               if(!§2I§.isPlayingReplay())
               {
                  §2I§.camera.adjustManualScale(param1,param2 == 0 ? Number(§6!>§.§>V§) : Number(param2));
               }
               else
               {
                  §2I§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §?!G§(param1:int) : void
      {
         this.§?!-§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§"8§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §7X§.§&!7§();
         if(this.§1h§(false))
         {
            return;
         }
         if(!§2I§.isPlayingReplay())
         {
            if(§2I§.activeObject && this.§0W§ == §`N§ || §6x§)
            {
               §=3§(false);
               §2I§.activatePowerup();
               return;
            }
            _loc4_ = §2I§.screenToBox2D(param1,param2);
            if(§2I§.slingshot.canStartDragging(_loc4_))
            {
               §2I§.slingshot.startDragging();
               _loc4_ = §2I§.screenToBox2D(param1,param2);
               §2I§.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
               this.§@,§(§ !E§);
            }
            else
            {
               §2I§.camera.startDragging(param1,param2);
            }
            return;
         }
         §2I§.camera.startDragging(param1,param2);
         §2I§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§"8§)
         {
            return;
         }
         §7X§.§2Y§();
         if(this.§0W§ == §`u§)
         {
            this.§@,§(§ !E§);
         }
         if(§2I§.slingshot.mDragging)
         {
            _loc3_ = §2I§.screenToBox2D(param1,param2);
            §2I§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§2I§.slingshot.canShootTheBird())
            {
               §2I§.slingshot.shoot();
               this.§@,§(§`N§);
            }
            else
            {
               §2I§.slingshot.cancelDragging();
            }
         }
         if(§2I§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §2I§.camera.dragToNewPoint(param1,param2);
            }
            §2I§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§"8§)
         {
            return;
         }
         if(§2I§.slingshot.mDragging)
         {
            _loc3_ = §2I§.screenToBox2D(param1,param2);
            §2I§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§2I§.camera.mDragging)
         {
            §2I§.camera.dragToNewPoint(param1,param2);
         }
         this.§do § = param1;
         this.§5j§ = param2;
      }
      
      public function §3$§() : Point
      {
         return new Point(this.§do §,this.§5j§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§;!%§.assign(this.§;!%§.getValue() + param1);
         this.§8r§(§0V§);
         if(this.§0W§ == §3!G§)
         {
            this.§do§ = 2000;
            this.§5b§ = §<f§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§;!%§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§'5§.§^;§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §[i§.§2!'§(§[i§.§0A§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§"8§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§"8§ = param1;
      }
   }
}

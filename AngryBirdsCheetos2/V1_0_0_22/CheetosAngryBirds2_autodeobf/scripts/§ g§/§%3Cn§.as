package § g§
{
   import §!V§.§!!i§;
   import §&!8§.§'E§;
   import §&!8§.§['§;
   import §&!8§.§[g§;
   import §&!8§.§]V§;
   import §,!K§.§[V§;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §-!Q§.§,!7§;
   import §>^§.§;!P§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §<n§ extends §"!X§
   {
      
      public static const §3-§:int = 0;
      
      public static const §>!V§:int = 1;
      
      public static const §7!O§:int = 2;
      
      public static const §!g§:int = 3;
      
      public static const §@!-§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §="§:int = 7;
      
      protected static const §0!<§:Number = §[V§.§=<§ / 100;
      
      public static const §0!@§:Number = 2000;
      
      public static const §5'§:Number = 2500;
      
      public static const §<!W§:int = 5;
      
      private static var §!!$§:Boolean;
       
      
      public var mLevelState:int = 0;
      
      protected var §1m§:int = 0;
      
      public var §6T§:Number;
      
      protected var §0!'§:Number = 0;
      
      protected var §=^§:Boolean = false;
      
      private var §+!B§:Number = 0;
      
      public var §7,§:Number = 0;
      
      protected var §#3§:Number = 0;
      
      protected var §3!4§:Number = 0;
      
      protected var §%+§:Boolean = true;
      
      protected var §=o§:§!!i§;
      
      public function §<n§(param1:§ p§)
      {
         this.§=o§ = new §!!i§();
         super(param1);
      }
      
      public static function §@B§(param1:Boolean) : void
      {
         §!!$§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§=o§.native(0);
         this.mLevelState = -1;
         this.§1m§ = 0;
         this.§0!'§ = 0;
         this.§=^§ = false;
         this.changeGameState(§3-§);
         this.§6T§ = §0!@§;
         §+F§(true);
         §^!I§.objects.setDamageEnabled(true);
         §^!I§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §^!I§.update(param1,true);
         this.§'!i§(param1);
         this.§5!-§(param1);
      }
      
      private function §'!i§(param1:int) : void
      {
         if(this.§1m§ != 0)
         {
            §^!I§.camera.adjustManualScale(this.§1m§ > 0,param1 * §0!<§);
         }
      }
      
      public function clearLevel() : void
      {
         §^!I§.clearLevel();
         removeEventListeners();
         this.mLevelState = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §;X§() : Boolean
      {
         if(§^!I§.camera.mCurrentCameraSliderLocation < §[V§.§7b§)
         {
            return false;
         }
         if(!§^!I§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §!%§(param1:int) : void
      {
         var _loc2_:§[V§ = §^!I§.camera;
         if(_loc2_.§!!H§ > 0)
         {
            _loc2_.§!!H§ -= param1;
            if(_loc2_.§!!H§ <= 0)
            {
               if(this.§;X§())
               {
                  _loc2_.§!!H§ = -1;
                  if(§^!I§.slingshot.birdsAvailable)
                  {
                     _loc2_.§0!W§();
                  }
               }
               else
               {
                  _loc2_.§!!H§ = §[V§.§-!R§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§ &§(false) && !param2)
         {
            return;
         }
         if(param1 == §3-§)
         {
            this.§7,§ = 2000;
         }
         else if(param1 == §>!V§)
         {
            §^!I§.camera.goToBirdView();
         }
         else if(param1 == §7!O§)
         {
            §@B§(false);
            this.§7,§ = 5000;
            §^!I§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §!g§)
         {
            §^!I§.camera.goToCastleView();
         }
         else if(param1 == §@!-§)
         {
            this.§7,§ = 2000;
            this.§+!B§ = §<!W§;
            §^!I§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§7,§ = 1200;
            if(!§^!I§.objects.mMightyEagleAdded)
            {
               §^!I§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§7,§ = 1200;
            if(!§^!I§.objects.mMightyEagleAdded)
            {
               §^!I§.camera.goToBirdView();
               §^!I§.slingshot.makeBirdsJumpForJoy();
            }
            §,!7§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §="§)
         {
            §,!7§.§13§();
            §,!7§.playSound("LevelFailedPigs1");
            this.§7,§ = 1200;
            §^!I§.camera.goToCastleView();
            §^!I§.objects.makePigsSmile(5);
         }
         this.mLevelState = param1;
      }
      
      public function §2D§() : void
      {
         this.§7,§ = 2000;
         this.§=^§ = false;
         this.§0!'§ = 2000;
      }
      
      public function §`<§(param1:Number) : void
      {
         this.§0!'§ = Math.max(this.§0!'§,param1);
      }
      
      protected function § b§() : Boolean
      {
         return §^!I§.slingshot.mSlingShotState == §7!N§.§0!A§ && !§^!I§.objects.hasBirds();
      }
      
      public function §5!-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§[g§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§6T§ -= param1;
         if(this.§=^§)
         {
            this.§0!'§ -= param1;
            if(this.§0!'§ < 0)
            {
               this.§6T§ = 0;
            }
         }
         if(this.§6T§ <= 0 && !this.§ &§(false))
         {
            this.§6T§ = §0!@§;
            _loc2_ = §^!I§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§=^§ || this.§0!'§ > 0))
            {
               if((!this.§=^§ || this.§0!'§ > 6000) && !§^!I§.objects.isPigsAlive())
               {
                  this.§0!'§ = 6000;
                  this.§=^§ = true;
               }
               else if(!this.§=^§ && this.§ b§())
               {
                  this.§0!'§ = 15000;
                  this.§=^§ = true;
               }
            }
            else if(!§^!I§.objects.isPigsAlive() && !§^!I§.objects.mSardineCanAdded && !§^!I§.objects.mMightyEagleAdded && (§@!Z§.§;!,§.slingshot.§0!b§.length == 0 || §@!Z§.§;!,§.slingshot.§0!b§[0].name != "BIRD_CHRISTMAS"))
            {
               this.§+V§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§ b§())
            {
               if(§^!I§.objects.mMightyEagleAdded)
               {
                  if(§^!I§.objects.mMightyEagleHasTouchedGround && §^!I§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§+V§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§^!I§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§6T§ = §0!@§;
                  }
               }
               else if(!§^!I§.objects.mSardineCanAdded)
               {
                  this.§+V§(§="§);
               }
            }
            if(this.§ &§(false))
            {
               §^!I§.gameOver();
            }
         }
         this.§7,§ -= param1;
         if(this.§7,§ < 0)
         {
            this.§7,§ = 0;
         }
         if(this.mLevelState == §!g§)
         {
            §^!I§.updatePigAnimations(param1);
            if(!§^!I§.camera.isOnCastleView() && §^!I§.camera.mCurrentAction != §[V§.§=!D§)
            {
               this.changeGameState(§>!V§);
            }
         }
         else if(this.mLevelState == §@!-§)
         {
            if(this.§7,§ <= 0)
            {
               _loc3_ = §^!I§.objects.hasBirds();
               if(_loc3_ && this.§+!B§ > 0)
               {
                  this.§7,§ = 2000;
                  this.§6T§ = 0;
                  this.§+!B§ = this.§+!B§ - 1;
               }
               else if(!§@!Z§.§;!,§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§>!V§);
               }
            }
            else
            {
               §^!I§.updatePigAnimations(param1);
            }
            if(!§^!I§.camera.isOnCastleView() && §^!I§.camera.mCurrentAction != §[V§.§=!D§)
            {
               this.changeGameState(§>!V§);
            }
         }
         else if(this.mLevelState == §3-§)
         {
            if(this.§7,§ <= 0)
            {
               this.changeGameState(§>!V§);
            }
         }
         else if(this.mLevelState == §>!V§)
         {
            if(§^!I§.camera.isOnCastleView() && §^!I§.camera.mCurrentAction != §[V§.§=!D§)
            {
               this.changeGameState(§!g§);
            }
         }
         else if(this.mLevelState == §7!O§)
         {
            if(!(_loc4_ = §^!I§.activeObject) || _loc4_.§+_§ < _loc4_.§ !G§)
            {
               if(_loc4_ && _loc4_ is §]V§)
               {
                  _loc5_ = _loc4_ is §'E§;
                  _loc6_ = _loc4_ is §['§;
                  _loc7_ = (_loc4_ as §]V§).§,B§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §@B§(true);
                        this.changeGameState(§@!-§);
                     }
                  }
               }
               §^!I§.activeObject = null;
               this.changeGameState(§@!-§);
            }
         }
         else if(this.mLevelState == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§7,§ <= 0)
            {
               if(§^!I§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§7,§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §+V§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§=^§)
         {
            this.§=^§ = true;
         }
         if(new Date().time - §^!I§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§^!I§.slingshot.mDragging)
         {
            return;
         }
         if(§^!I§.objects.isWorldAtSleep())
         {
            this.§0!'§ = Math.min(this.§0!'§,3500);
         }
         if(this.§0!'§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function § &§(param1:Boolean = false) : Boolean
      {
         return (this.mLevelState == LEVEL_STATE_VICTORY2_END || this.mLevelState == LEVEL_STATE_VICTORY1_SLINGSHOT || this.mLevelState == §="§) && (!param1 || this.§7,§ <= 0 && this.mLevelState != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §^o§() : Boolean
      {
         return this.mLevelState == LEVEL_STATE_VICTORY2_END || this.mLevelState == §="§;
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
         if(!this.§%+§ || !§^!I§.mReadyToRun)
         {
            return;
         }
         if(!(§^!I§.slingshot.mDragging || §^!I§.camera.mDragging))
         {
            if(this.mLevelState == §@!-§ || this.mLevelState == §!g§ || this.mLevelState == §>!V§ || this.mLevelState == §7!O§)
            {
               if(!§^!I§.isPlayingReplay())
               {
                  §^!I§.camera.adjustManualScale(param1,param2 == 0 ? Number(§[V§.§=<§) : Number(param2));
               }
               else
               {
                  §^!I§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §"!^§(param1:int) : void
      {
         this.§1m§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§%+§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §;!P§.§3l§();
         if(this.§ &§(false))
         {
            return;
         }
         if(!§^!I§.isPlayingReplay())
         {
            if(§^!I§.activeObject && this.mLevelState == §7!O§ || §!!$§)
            {
               §@B§(false);
               §^!I§.activatePowerup();
               return;
            }
            _loc4_ = §^!I§.screenToBox2D(param1,param2);
            if(§^!I§.slingshot.canStartDragging(_loc4_))
            {
               §^!I§.slingshot.startDragging();
               this.changeGameState(§>!V§);
            }
            else
            {
               §^!I§.camera.startDragging(param1,param2);
            }
            return;
         }
         §^!I§.camera.startDragging(param1,param2);
         §^!I§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§%+§)
         {
            return;
         }
         §;!P§.§ !>§();
         if(this.mLevelState == §3-§)
         {
            this.changeGameState(§>!V§);
         }
         if(§^!I§.slingshot.mDragging)
         {
            _loc3_ = §^!I§.screenToBox2D(param1,param2);
            §^!I§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§^!I§.slingshot.canShootTheBird())
            {
               §^!I§.slingshot.shoot();
               this.changeGameState(§7!O§);
            }
            else
            {
               §^!I§.slingshot.cancelDragging();
            }
         }
         if(§^!I§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §^!I§.camera.dragToNewPoint(param1,param2);
            }
            §^!I§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§%+§)
         {
            return;
         }
         if(§^!I§.slingshot.mDragging)
         {
            _loc3_ = §^!I§.screenToBox2D(param1,param2);
            §^!I§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§^!I§.camera.mDragging)
         {
            §^!I§.camera.dragToNewPoint(param1,param2);
         }
         this.§#3§ = param1;
         this.§3!4§ = param2;
      }
      
      public function §-!0§() : Point
      {
         return new Point(this.§#3§,this.§3!4§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§=o§.native(this.§=o§.getValue() + param1);
         this.§`<§(§5'§);
         if(this.mLevelState == §@!-§)
         {
            this.§7,§ = 2000;
            this.§+!B§ = §<!W§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§=o§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§@!Z§.§;!,§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §@;§.§6!M§(§@;§.§6!K§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%+§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§%+§ = param1;
      }
   }
}

package §48§
{
   import § var§.§ !V§;
   import § var§.§!u§;
   import § var§.§3!5§;
   import § var§.§7!u§;
   import §"!i§.LevelManager;
   import §1!B§.§7n§;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §[!b§.§-!Q§;
   import §`!M§.§%X§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §3!K§ extends §?x§
   {
      
      public static const §[!P§:int = 0;
      
      public static const §-!;§:int = 1;
      
      public static const §5B§:int = 2;
      
      public static const §,!3§:int = 3;
      
      public static const §0A§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%!%§:int = 7;
      
      protected static const §?!+§:Number = §%X§.§2O§ / 100;
      
      public static const §;!F§:Number = 2000;
      
      public static const §7!f§:Number = 2500;
      
      public static const §29§:int = 5;
      
      private static var §,!$§:Boolean;
       
      
      public var §4!j§:int = 0;
      
      protected var §0!h§:int = 0;
      
      public var §"!h§:Number;
      
      protected var §&!>§:Number = 0;
      
      protected var §%i§:Boolean = false;
      
      private var §3!G§:Number = 0;
      
      public var §-!H§:Number = 0;
      
      protected var §`?§:Number = 0;
      
      protected var §@o§:Number = 0;
      
      protected var §<B§:Boolean = true;
      
      protected var §4m§:§2B§;
      
      public function §3!K§(param1:§5G§)
      {
         this.§4m§ = new §2B§();
         super(param1);
      }
      
      public static function § !8§(param1:Boolean) : void
      {
         §,!$§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§4m§.assign(0);
         this.§4!j§ = -1;
         this.§0!h§ = 0;
         this.§&!>§ = 0;
         this.§%i§ = false;
         this.changeGameState(§[!P§);
         this.§"!h§ = §;!F§;
         § !J§(true);
         §#!U§.objects.setDamageEnabled(true);
         §#!U§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §#!U§.update(param1,true);
         this.§-!z§(param1);
         this.§<@§(param1);
      }
      
      private function §-!z§(param1:int) : void
      {
         if(this.§0!h§ != 0)
         {
            §#!U§.camera.adjustManualScale(this.§0!h§ > 0,param1 * §?!+§);
         }
      }
      
      public function clearLevel() : void
      {
         §#!U§.clearLevel();
         removeEventListeners();
         this.§4!j§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §7G§() : Boolean
      {
         if(§#!U§.camera.mCurrentCameraSliderLocation < §%X§.§#!e§)
         {
            return false;
         }
         if(!§#!U§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §+U§(param1:int) : void
      {
         var _loc2_:§%X§ = §#!U§.camera;
         if(_loc2_.§@!+§ > 0)
         {
            _loc2_.§@!+§ -= param1;
            if(_loc2_.§@!+§ <= 0)
            {
               if(this.§7G§())
               {
                  _loc2_.§@!+§ = -1;
                  if(§#!U§.slingshot.birdsAvailable)
                  {
                     _loc2_.§,M§();
                  }
               }
               else
               {
                  _loc2_.§@!+§ = §%X§.§'!i§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§[!6§(false) && !param2)
         {
            return;
         }
         if(param1 == §[!P§)
         {
            this.§-!H§ = 2000;
         }
         else if(param1 == §-!;§)
         {
            §#!U§.camera.goToBirdView();
         }
         else if(param1 == §5B§)
         {
            § !8§(false);
            this.§-!H§ = 5000;
            §#!U§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §,!3§)
         {
            §#!U§.camera.goToCastleView();
         }
         else if(param1 == §0A§)
         {
            this.§-!H§ = 2000;
            this.§3!G§ = §29§;
            §#!U§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§-!H§ = 1200;
            if(!§#!U§.objects.mMightyEagleAdded)
            {
               §#!U§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§-!H§ = 1200;
            if(!§#!U§.objects.mMightyEagleAdded)
            {
               §#!U§.camera.goToBirdView();
               §#!U§.slingshot.makeBirdsJumpForJoy();
            }
            §-!Q§.§#3§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §%!%§)
         {
            §-!Q§.§4!$§();
            §-!Q§.§#3§("LevelFailedPigs1");
            this.§-!H§ = 1200;
            §#!U§.camera.goToCastleView();
            §#!U§.objects.makePigsSmile(5);
         }
         this.§4!j§ = param1;
      }
      
      public function §3!x§() : void
      {
         this.§-!H§ = 2000;
         this.§%i§ = false;
         this.§&!>§ = 2000;
      }
      
      public function §8!a§(param1:Number) : void
      {
         this.§&!>§ = Math.max(this.§&!>§,param1);
      }
      
      protected function § !$§() : Boolean
      {
         return §#!U§.slingshot.mSlingShotState == §1!g§.§7r§ && !§#!U§.objects.hasBirds();
      }
      
      public function §<@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§!u§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§"!h§ -= param1;
         if(this.§%i§)
         {
            this.§&!>§ -= param1;
            if(this.§&!>§ < 0)
            {
               this.§"!h§ = 0;
            }
         }
         if(this.§"!h§ <= 0 && !this.§[!6§(false))
         {
            this.§"!h§ = §;!F§;
            _loc2_ = §#!U§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§%i§ || this.§&!>§ > 0))
            {
               if((!this.§%i§ || this.§&!>§ > 6000) && !§#!U§.objects.isPigsAlive())
               {
                  this.§&!>§ = 6000;
                  this.§%i§ = true;
               }
               else if(!this.§%i§ && this.§ !$§())
               {
                  this.§&!>§ = 15000;
                  this.§%i§ = true;
               }
            }
            else if(!§#!U§.objects.isPigsAlive() && !§#!U§.objects.mSardineCanAdded && !§#!U§.objects.mMightyEagleAdded && (§,!s§.§=!I§.slingshot.§ Y§.length == 0 || §,!s§.§=!I§.slingshot.§ Y§[0].name != "BIRD_CHRISTMAS"))
            {
               this.§-!R§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§ !$§())
            {
               if(§#!U§.objects.mMightyEagleAdded)
               {
                  if(§#!U§.objects.mMightyEagleHasTouchedGround && §#!U§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§-!R§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§#!U§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§"!h§ = §;!F§;
                  }
               }
               else if(!§#!U§.objects.mSardineCanAdded)
               {
                  this.§-!R§(§%!%§);
               }
            }
            if(this.§[!6§(false))
            {
               §#!U§.gameOver();
            }
         }
         this.§-!H§ -= param1;
         if(this.§-!H§ < 0)
         {
            this.§-!H§ = 0;
         }
         if(this.§4!j§ == §,!3§)
         {
            §#!U§.updatePigAnimations(param1);
            if(!§#!U§.camera.isOnCastleView() && §#!U§.camera.mCurrentAction != §%X§.§-!j§)
            {
               this.changeGameState(§-!;§);
            }
         }
         else if(this.§4!j§ == §0A§)
         {
            if(this.§-!H§ <= 0)
            {
               _loc3_ = §#!U§.objects.hasBirds();
               if(_loc3_ && this.§3!G§ > 0)
               {
                  this.§-!H§ = 2000;
                  this.§"!h§ = 0;
                  this.§3!G§ = this.§3!G§ - 1;
               }
               else if(!§,!s§.§=!I§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§-!;§);
               }
            }
            else
            {
               §#!U§.updatePigAnimations(param1);
            }
            if(!§#!U§.camera.isOnCastleView() && §#!U§.camera.mCurrentAction != §%X§.§-!j§)
            {
               this.changeGameState(§-!;§);
            }
         }
         else if(this.§4!j§ == §[!P§)
         {
            if(this.§-!H§ <= 0)
            {
               this.changeGameState(§-!;§);
            }
         }
         else if(this.§4!j§ == §-!;§)
         {
            if(§#!U§.camera.isOnCastleView() && §#!U§.camera.mCurrentAction != §%X§.§-!j§)
            {
               this.changeGameState(§,!3§);
            }
         }
         else if(this.§4!j§ == §5B§)
         {
            if(!(_loc4_ = §#!U§.activeObject) || _loc4_.§0M§ < _loc4_.§]!3§)
            {
               if(_loc4_ && _loc4_ is §3!5§)
               {
                  _loc5_ = _loc4_ is §7!u§;
                  _loc6_ = _loc4_ is § !V§;
                  _loc7_ = (_loc4_ as §3!5§).§2!K§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        § !8§(true);
                        this.changeGameState(§0A§);
                     }
                  }
               }
               §#!U§.activeObject = null;
               this.changeGameState(§0A§);
            }
         }
         else if(this.§4!j§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§-!H§ <= 0)
            {
               if(§#!U§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§-!H§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §-!R§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§%i§)
         {
            this.§%i§ = true;
         }
         if(new Date().time - §#!U§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§#!U§.slingshot.mDragging)
         {
            return;
         }
         if(§#!U§.objects.isWorldAtSleep())
         {
            this.§&!>§ = Math.min(this.§&!>§,3500);
         }
         if(this.§&!>§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §[!6§(param1:Boolean = false) : Boolean
      {
         return (this.§4!j§ == LEVEL_STATE_VICTORY2_END || this.§4!j§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§4!j§ == §%!%§) && (!param1 || this.§-!H§ <= 0 && this.§4!j§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §2d§() : Boolean
      {
         return this.§4!j§ == LEVEL_STATE_VICTORY2_END || this.§4!j§ == §%!%§;
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
         if(!this.§<B§ || !§#!U§.mReadyToRun)
         {
            return;
         }
         if(!(§#!U§.slingshot.mDragging || §#!U§.camera.mDragging))
         {
            if(this.§4!j§ == §0A§ || this.§4!j§ == §,!3§ || this.§4!j§ == §-!;§ || this.§4!j§ == §5B§)
            {
               if(!§#!U§.isPlayingReplay())
               {
                  §#!U§.camera.adjustManualScale(param1,param2 == 0 ? Number(§%X§.§2O§) : Number(param2));
               }
               else
               {
                  §#!U§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §^!!§(param1:int) : void
      {
         this.§0!h§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§<B§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §7n§.§@1§();
         if(this.§[!6§(false))
         {
            return;
         }
         if(!§#!U§.isPlayingReplay())
         {
            if(§#!U§.activeObject && this.§4!j§ == §5B§ || §,!$§)
            {
               § !8§(false);
               §#!U§.activatePowerup();
               return;
            }
            _loc4_ = §#!U§.screenToBox2D(param1,param2);
            if(§#!U§.slingshot.canStartDragging(_loc4_))
            {
               §#!U§.slingshot.startDragging();
               _loc4_ = §#!U§.screenToBox2D(param1,param2);
               §#!U§.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
               this.changeGameState(§-!;§);
            }
            else
            {
               §#!U§.camera.startDragging(param1,param2);
            }
            return;
         }
         §#!U§.camera.startDragging(param1,param2);
         §#!U§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§<B§)
         {
            return;
         }
         §7n§.§3F§();
         if(this.§4!j§ == §[!P§)
         {
            this.changeGameState(§-!;§);
         }
         if(§#!U§.slingshot.mDragging)
         {
            _loc3_ = §#!U§.screenToBox2D(param1,param2);
            §#!U§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§#!U§.slingshot.canShootTheBird())
            {
               §#!U§.slingshot.shoot();
               this.changeGameState(§5B§);
            }
            else
            {
               §#!U§.slingshot.cancelDragging();
            }
         }
         if(§#!U§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §#!U§.camera.dragToNewPoint(param1,param2);
            }
            §#!U§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§<B§)
         {
            return;
         }
         if(§#!U§.slingshot.mDragging)
         {
            _loc3_ = §#!U§.screenToBox2D(param1,param2);
            §#!U§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§#!U§.camera.mDragging)
         {
            §#!U§.camera.dragToNewPoint(param1,param2);
         }
         this.§`?§ = param1;
         this.§@o§ = param2;
      }
      
      public function §3u§() : Point
      {
         return new Point(this.§`?§,this.§@o§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§4m§.assign(this.§4m§.getValue() + param1);
         this.§8!a§(§7!f§);
         if(this.§4!j§ == §0A§)
         {
            this.§-!H§ = 2000;
            this.§3!G§ = §29§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§4m§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§,!s§.§=!I§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§"!l§(LevelManager.§"L§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§<B§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§<B§ = param1;
      }
   }
}

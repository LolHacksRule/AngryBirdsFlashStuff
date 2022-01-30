package §1Q§
{
   import §"P§.§'!2§;
   import §"P§.§?!§;
   import §"P§.§[!U§;
   import §"P§.§^!x§;
   import §%f§.§[o§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §9G§.§2F§;
   import §9G§.§9!G§;
   import §;4§.§-!+§;
   import §^!<§.§#t§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §#o§ extends §]_§
   {
      
      public static const §-!1§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §3T§:int = 2;
      
      public static const §0!>§:int = 3;
      
      public static const §0G§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §6"2§:int = 7;
      
      public static const §=!t§:Number = 2000;
      
      public static const §6" §:Number = 2500;
      
      public static const §3!c§:int = 5;
      
      private static const §4"2§:Number = §#t§.§"B§ / 100;
       
      
      protected var §`%§:int = 0;
      
      protected var §!!K§:Number;
      
      protected var §0,§:Number = 0;
      
      protected var §@'§:Boolean = false;
      
      protected var §%l§:Number = 0;
      
      private var §`!X§:Number = 0;
      
      private var §-l§:int = 0;
      
      private var §0!5§:Number = 0;
      
      private var §6H§:Number = 0;
      
      protected var §!!<§:Boolean = true;
      
      protected var §+",§:§[o§;
      
      protected var §5F§:Point;
      
      public function §#o§(param1:§2F§, param2:§3"&§)
      {
         this.§+",§ = new §[o§();
         this.§5F§ = new Point();
         super(param1,param2);
      }
      
      public function get §4d§() : int
      {
         return this.§`%§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§+",§.§6!a§(0);
         this.§`%§ = -1;
         this.§-l§ = 0;
         this.§0,§ = 0;
         this.§@'§ = false;
         this.changeGameState(§-!1§);
         this.§!!K§ = §=!t§;
         §'@§(true);
         §5M§.objects.setCollisionsEnabled(true);
         §5M§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §5M§.update(param1,true);
         this.§7"-§(param1);
         this.§9!z§(param1);
      }
      
      private function §7"-§(param1:int) : void
      {
         if(this.§-l§ != 0)
         {
            §5M§.camera.adjustManualScale(this.§-l§ > 0,param1 * §4"2§);
         }
      }
      
      public function clearLevel() : void
      {
         §5M§.clearLevel();
         removeEventListeners();
         this.§`%§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §0b§() : Boolean
      {
         if(§5M§.camera.mCurrentCameraSliderLocation < §#t§.§+!<§)
         {
            return false;
         }
         if(!§5M§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §!`§(param1:int) : void
      {
         var _loc2_:§#t§ = §5M§.camera;
         if(_loc2_.§-"!§ > 0)
         {
            _loc2_.§-"!§ -= param1;
            if(_loc2_.§-"!§ <= 0)
            {
               if(this.§0b§())
               {
                  _loc2_.§-"!§ = -1;
                  if(§5M§.slingshot.birdsAvailable)
                  {
                     _loc2_.§%O§();
                  }
               }
               else
               {
                  _loc2_.§-"!§ = §#t§.§4!=§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§;!s§(false) && !param2)
         {
            return;
         }
         if(param1 == §-!1§)
         {
            this.§%l§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §5M§.camera.goToBirdView();
         }
         else if(param1 == §3T§)
         {
            this.§%l§ = 5000;
            §5M§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §0!>§)
         {
            §5M§.camera.goToCastleView();
         }
         else if(param1 == §0G§)
         {
            this.§%l§ = 2000;
            this.§`!X§ = §3!c§;
            §5M§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§%l§ = 1200;
            if(!this.§"!w§)
            {
               §5M§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§%l§ = 1200;
            if(!this.§"!w§)
            {
               §5M§.camera.goToBirdView();
               §5M§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §6"2§)
         {
            this.§#N§();
            this.§%l§ = 1200;
            §5M§.camera.goToCastleView();
            §5M§.objects.makePigsSmile(5);
         }
         this.§`%§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §]d§.§]!u§();
         §]d§.§^!J§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §#N§() : void
      {
         §]d§.§]!u§();
         §]d§.§^!J§("LevelFailedPigs1");
      }
      
      public function §]h§() : void
      {
         this.§%l§ = 2000;
         this.§@'§ = false;
         this.§0,§ = 2000;
         this.changeGameState(§#o§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §4§(param1:Number) : void
      {
         this.§0,§ = Math.max(this.§0,§,param1);
      }
      
      public function §]!H§() : Boolean
      {
         return §5M§.slingshot.mSlingShotState == §9!G§.§#`§ && !§5M§.objects.hasBirds();
      }
      
      public function §9!z§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§'!2§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§?!§ = null;
         this.§!!K§ -= param1;
         if(this.§@'§)
         {
            this.§0,§ -= param1;
            if(this.§0,§ < 0)
            {
               this.§!!K§ = 0;
            }
         }
         if(this.§!!K§ <= 0 && !this.§;!s§(false))
         {
            _loc2_ = -1;
            this.§!!K§ = §=!t§;
            _loc3_ = §5M§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§@'§ || this.§0,§ > 0))
            {
               if((!this.§@'§ || this.§0,§ > 6000) && !§5M§.objects.isPigsAlive())
               {
                  this.§0,§ = 6000;
                  this.§@'§ = true;
               }
               else if(!this.§@'§ && this.§]!H§())
               {
                  this.§0,§ = 15000;
                  this.§@'§ = true;
               }
            }
            else if(!§5M§.objects.isPigsAlive() && this.§]!R§ && !this.§?!<§())
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§0H§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§]!H§())
            {
               if(_loc4_ = this.§4K§())
               {
                  if(_loc4_.§6@§ && _loc4_.§ +§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§0H§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§6@§)
                  {
                     this.§!!K§ = §=!t§;
                  }
               }
               else if(!this.§8!&§())
               {
                  _loc2_ = §6"2§;
                  this.§0H§(§6"2§);
               }
            }
            if(this.§;!s§(false))
            {
               §5M§.gameOver(_loc2_);
            }
         }
         this.§%l§ -= param1;
         if(this.§%l§ < 0)
         {
            this.§%l§ = 0;
         }
         if(this.§`%§ == §0!>§)
         {
            §5M§.updatePigAnimations(param1);
            if(!§5M§.camera.isOnCastleView() && §5M§.camera.mCurrentAction != §#t§.§7e§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§`%§ == §0G§)
         {
            if(this.§%l§ <= 0)
            {
               if((_loc5_ = §5M§.objects.hasBirds()) && this.§`!X§ > 0)
               {
                  this.§%l§ = 2000;
                  this.§!!K§ = 0;
                  this.§`!X§ = this.§`!X§ - 1;
               }
               else if(!this.§"!w§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §5M§.updatePigAnimations(param1);
            }
            if(!§5M§.camera.isOnCastleView() && §5M§.camera.mCurrentAction != §#t§.§7e§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§`%§ == §-!1§)
         {
            if(this.§%l§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§`%§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§5M§.camera.isOnCastleView() && §5M§.camera.mCurrentAction != §#t§.§7e§)
            {
               this.changeGameState(§0!>§);
            }
         }
         else if(this.§`%§ == §3T§)
         {
            if(_loc6_ = §5M§.levelObjects.activeObject as §?!§)
            {
            }
         }
         else if(this.§`%§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§%l§ <= 0)
            {
               if(§5M§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§%l§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §?!<§() : Boolean
      {
         return this.§"!w§;
      }
      
      protected function get §"!w§() : Boolean
      {
         if(this.§4K§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §]!R§() : Boolean
      {
         return true;
      }
      
      public function §4K§() : §'!2§
      {
         var _loc2_:§'!2§ = null;
         var _loc1_:int = §5M§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §5M§.objects.getObject(_loc1_) as §'!2§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §8!&§() : Boolean
      {
         var _loc2_:§[!U§ = null;
         var _loc1_:int = §5M§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §5M§.objects.getObject(_loc1_) as §[!U§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §0H§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§@'§)
         {
            this.§@'§ = true;
         }
         if(new Date().time - §5M§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§5M§.slingshot.mDragging)
         {
            return;
         }
         if(§5M§.objects.isWorldAtSleep())
         {
            this.§0,§ = Math.min(this.§0,§,3500);
         }
         if(this.§0,§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §;!s§(param1:Boolean = false) : Boolean
      {
         return (this.§`%§ == LEVEL_STATE_VICTORY2_END || this.§`%§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§`%§ == §6"2§) && (!param1 || this.§%l§ <= 0 && this.§`%§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §>"!§() : Boolean
      {
         return this.§`%§ == LEVEL_STATE_VICTORY2_END || this.§`%§ == §6"2§;
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
         if(!this.§!!<§ || !§5M§.mReadyToRun)
         {
            return;
         }
         if(this.§`%§ == §0G§ || this.§`%§ == §0!>§ || this.§`%§ == LEVEL_STATE_SLINGSHOT || this.§`%§ == §3T§)
         {
            if(!§5M§.isPlayingReplay())
            {
               §5M§.camera.adjustManualScale(param1,param2 == 0 ? Number(§#t§.§"B§) : Number(param2));
            }
            else
            {
               §5M§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §`]§(param1:int) : void
      {
         this.§-l§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§!!<§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §-!+§.mouseDown();
         if(this.§;!s§(false))
         {
            return;
         }
         if(!§5M§.isPlayingReplay())
         {
            this.§5F§ = §5M§.screenToBox2D(param1,param2,this.§5F§);
            if(§5M§.levelObjects.activeObject is §?!§)
            {
               _loc4_ = §?!§(§5M§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§?!§(§5M§.levelObjects.activeObject).specialPowerUsed)
               {
                  §5M§.activateSpecialPower(this.§5F§.x,this.§5F§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§5M§.slingshot.canStartDragging(this.§5F§))
            {
               §5M§.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §5M§.camera.startDragging(param1,param2);
            }
            return;
         }
         §5M§.camera.startDragging(param1,param2);
         §5M§.resetReplaySpeed();
      }
      
      protected function §5!'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §5M§.screenToBox2D(param1,param2,null);
         var _loc4_:§^!x§;
         if(_loc4_ = §5M§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §5M§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§!!<§)
         {
            return;
         }
         §-!+§.mouseUp();
         if(this.§`%§ == §-!1§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§5M§.slingshot.mDragging)
         {
            this.§5F§ = §5M§.screenToBox2D(param1,param2,this.§5F§);
            §5M§.slingshot.setNewCoordinatesForRubber(this.§5F§.x,this.§5F§.y,false);
            if(§5M§.slingshot.canShootTheBird)
            {
               §5M§.slingshot.shoot();
               this.changeGameState(§3T§);
               if(this.§0,§ < 6000)
               {
                  this.§0,§ = 6000;
               }
            }
            else
            {
               §5M§.slingshot.cancelDragging();
            }
         }
         if(§5M§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §5M§.camera.dragToNewPoint(param1,param2);
            }
            §5M§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§!!<§)
         {
            return;
         }
         if(§5M§.slingshot.mDragging)
         {
            this.§5F§ = §5M§.screenToBox2D(param1,param2,this.§5F§);
            §5M§.slingshot.setNewCoordinatesForRubber(this.§5F§.x,this.§5F§.y,false);
         }
         else if(§5M§.camera.mDragging)
         {
            §5M§.camera.dragToNewPoint(param1,param2);
         }
         this.§0!5§ = param1;
         this.§6H§ = param2;
      }
      
      public function §9H§() : Point
      {
         return new Point(this.§0!5§,this.§6H§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§+",§.§6!a§(this.§+",§.getValue() + param1);
         this.§4§(§6" §);
         if(this.§`%§ == §0G§)
         {
            this.§%l§ = 2000;
            this.§`!X§ = §3!c§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§+",§.getValue() / param1) * param1;
         }
         return this.§+",§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§"!w§)
         {
            return 0;
         }
         var _loc1_:Number = §!3§.getLevelForId(§!3§.currentLevel).getEagleScore(§5M§.levelItemManager,§5M§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§!!<§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§!!<§ = param1;
      }
      
      public function §@g§() : void
      {
         this.changeGameState(§6"2§,true);
      }
      
      public function §,!t§() : void
      {
         while(§5M§.slingshot.updateScoreForRemainingBirds())
         {
         }
         this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
      }
   }
}

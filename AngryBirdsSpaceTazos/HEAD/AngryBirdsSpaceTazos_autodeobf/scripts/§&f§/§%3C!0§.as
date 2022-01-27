package §&f§
{
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §3"#§.§0k§;
   import §3"#§.§`"8§;
   import §3h§.§'`§;
   import §4u§.§1!C§;
   import §9"!§.§!!H§;
   import §9"!§.§7"3§;
   import §9"!§.§]B§;
   import §9"!§.§^"3§;
   import §`!w§.§&!Q§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §<!0§ extends §9!6§
   {
      
      public static const §"O§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §?"!§:int = 2;
      
      public static const §0!Y§:int = 3;
      
      public static const §#Q§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §@!'§:int = 7;
      
      public static const §0G§:Number = 2000;
      
      public static const §6l§:Number = 2500;
      
      public static const §7!m§:int = 5;
      
      private static const §2!V§:Number = §'`§.§8?§ / 100;
       
      
      protected var §["3§:int = 0;
      
      protected var §#-§:Number;
      
      protected var §""H§:Number = 0;
      
      protected var §5!f§:Boolean = false;
      
      protected var §]!$§:Number = 0;
      
      private var §"q§:Number = 0;
      
      private var §5"C§:int = 0;
      
      private var §'"<§:Number = 0;
      
      private var §;"=§:Number = 0;
      
      protected var §&9§:Boolean = true;
      
      protected var §;L§:§1!C§;
      
      protected var §-"<§:Point;
      
      public function §<!0§(param1:§`"8§, param2:§^!@§)
      {
         this.§;L§ = new §1!C§();
         this.§-"<§ = new Point();
         super(param1,param2);
      }
      
      public function get §]k§() : int
      {
         return this.§["3§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§;L§.§;"6§(0);
         this.§["3§ = -1;
         this.§5"C§ = 0;
         this.§""H§ = 0;
         this.§5!f§ = false;
         this.changeGameState(§"O§);
         this.§#-§ = §0G§;
         § e§(true);
         §'"9§.objects.setCollisionsEnabled(true);
         §'"9§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §'"9§.update(param1,true);
         this.§1x§(param1);
         this.§<!Y§(param1);
      }
      
      private function §1x§(param1:int) : void
      {
         if(this.§5"C§ != 0)
         {
            §'"9§.camera.adjustManualScale(this.§5"C§ > 0,param1 * §2!V§);
         }
      }
      
      public function clearLevel() : void
      {
         §'"9§.clearLevel();
         removeEventListeners();
         this.§["3§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §'g§() : Boolean
      {
         if(§'"9§.camera.mCurrentCameraSliderLocation < §'`§.§4!n§)
         {
            return false;
         }
         if(!§'"9§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §;U§(param1:int) : void
      {
         var _loc2_:§'`§ = §'"9§.camera;
         if(_loc2_.§]=§ > 0)
         {
            _loc2_.§]=§ -= param1;
            if(_loc2_.§]=§ <= 0)
            {
               if(this.§'g§())
               {
                  _loc2_.§]=§ = -1;
                  if(§'"9§.slingshot.birdsAvailable)
                  {
                     _loc2_.§"_§();
                  }
               }
               else
               {
                  _loc2_.§]=§ = §'`§.§[=§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§`"G§(false) && !param2)
         {
            return;
         }
         if(param1 == §"O§)
         {
            this.§]!$§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §'"9§.camera.goToBirdView();
         }
         else if(param1 == §?"!§)
         {
            this.§]!$§ = 5000;
            §'"9§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §0!Y§)
         {
            §'"9§.camera.goToCastleView();
         }
         else if(param1 == §#Q§)
         {
            this.§]!$§ = 2000;
            this.§"q§ = §7!m§;
            §'"9§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§]!$§ = 1200;
            if(!this.§"!j§)
            {
               §'"9§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§]!$§ = 1200;
            if(!this.§"!j§)
            {
               §'"9§.camera.goToBirdView();
               §'"9§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §@!'§)
         {
            this.playFailSound();
            this.§]!$§ = 1200;
            §'"9§.camera.goToCastleView();
            §'"9§.objects.makePigsSmile(5);
         }
         this.§["3§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §<5§.§>!R§();
         §<5§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         §<5§.§>!R§();
         §<5§.playSound("LevelFailedPigs1");
      }
      
      public function §9O§() : void
      {
         this.§]!$§ = 2000;
         this.§5!f§ = false;
         this.§""H§ = 2000;
         this.changeGameState(§<!0§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §!!Y§(param1:Number) : void
      {
         this.§""H§ = Math.max(this.§""H§,param1);
      }
      
      protected function §%!v§() : Boolean
      {
         return §'"9§.slingshot.mSlingShotState == §0k§.§2+§ && !§'"9§.objects.hasBirds();
      }
      
      public function §<!Y§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§7"3§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§!!H§ = null;
         this.§#-§ -= param1;
         if(this.§5!f§)
         {
            this.§""H§ -= param1;
            if(this.§""H§ < 0)
            {
               this.§#-§ = 0;
            }
         }
         if(this.§#-§ <= 0 && !this.§`"G§(false))
         {
            _loc2_ = -1;
            this.§#-§ = §0G§;
            _loc3_ = §'"9§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§5!f§ || this.§""H§ > 0))
            {
               if((!this.§5!f§ || this.§""H§ > 6000) && !§'"9§.objects.isPigsAlive())
               {
                  this.§""H§ = 6000;
                  this.§5!f§ = true;
               }
               else if(!this.§5!f§ && this.§%!v§())
               {
                  this.§""H§ = 15000;
                  this.§5!f§ = true;
               }
            }
            else if(!§'"9§.objects.isPigsAlive() && !this.§"!j§ && this.§6G§)
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§+a§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§%!v§())
            {
               if(_loc4_ = this.§5!1§())
               {
                  if(_loc4_.§7!U§ && _loc4_.§`!L§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§+a§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§7!U§)
                  {
                     this.§#-§ = §0G§;
                  }
               }
               else if(!this.§@"§())
               {
                  _loc2_ = §@!'§;
                  this.§+a§(§@!'§);
               }
            }
            if(this.§`"G§(false))
            {
               §'"9§.gameOver(_loc2_);
            }
         }
         this.§]!$§ -= param1;
         if(this.§]!$§ < 0)
         {
            this.§]!$§ = 0;
         }
         if(this.§["3§ == §0!Y§)
         {
            §'"9§.updatePigAnimations(param1);
            if(!§'"9§.camera.isOnCastleView() && §'"9§.camera.mCurrentAction != §'`§.§%!t§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§["3§ == §#Q§)
         {
            if(this.§]!$§ <= 0)
            {
               if((_loc5_ = §'"9§.objects.hasBirds()) && this.§"q§ > 0)
               {
                  this.§]!$§ = 2000;
                  this.§#-§ = 0;
                  this.§"q§ = this.§"q§ - 1;
               }
               else if(!this.§"!j§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §'"9§.updatePigAnimations(param1);
            }
            if(!§'"9§.camera.isOnCastleView() && §'"9§.camera.mCurrentAction != §'`§.§%!t§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§["3§ == §"O§)
         {
            if(this.§]!$§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§["3§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§'"9§.camera.isOnCastleView() && §'"9§.camera.mCurrentAction != §'`§.§%!t§)
            {
               this.changeGameState(§0!Y§);
            }
         }
         else if(this.§["3§ == §?"!§)
         {
            if(_loc6_ = §'"9§.levelObjects.activeObject as §!!H§)
            {
            }
         }
         else if(this.§["3§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§]!$§ <= 0)
            {
               if(§'"9§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§]!$§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §"!j§() : Boolean
      {
         if(this.§5!1§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §6G§() : Boolean
      {
         return true;
      }
      
      public function §5!1§() : §7"3§
      {
         var _loc2_:§7"3§ = null;
         var _loc1_:int = §'"9§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §'"9§.objects.getObject(_loc1_) as §7"3§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §@"§() : Boolean
      {
         var _loc2_:§]B§ = null;
         var _loc1_:int = §'"9§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §'"9§.objects.getObject(_loc1_) as §]B§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §+a§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§5!f§)
         {
            this.§5!f§ = true;
         }
         if(new Date().time - §'"9§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§'"9§.slingshot.mDragging)
         {
            return;
         }
         if(§'"9§.objects.isWorldAtSleep())
         {
            this.§""H§ = Math.min(this.§""H§,3500);
         }
         if(this.§""H§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §`"G§(param1:Boolean = false) : Boolean
      {
         return (this.§["3§ == LEVEL_STATE_VICTORY2_END || this.§["3§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§["3§ == §@!'§) && (!param1 || this.§]!$§ <= 0 && this.§["3§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §]!]§() : Boolean
      {
         return this.§["3§ == LEVEL_STATE_VICTORY2_END || this.§["3§ == §@!'§;
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
         if(!this.§&9§ || !§'"9§.mReadyToRun)
         {
            return;
         }
         if(!(§'"9§.slingshot.mDragging || §'"9§.camera.mDragging))
         {
            if(this.§["3§ == §#Q§ || this.§["3§ == §0!Y§ || this.§["3§ == LEVEL_STATE_SLINGSHOT || this.§["3§ == §?"!§)
            {
               if(!§'"9§.isPlayingReplay())
               {
                  §'"9§.camera.adjustManualScale(param1,param2 == 0 ? Number(§'`§.§8?§) : Number(param2));
               }
               else
               {
                  §'"9§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §!!Z§(param1:int) : void
      {
         this.§5"C§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§&9§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §&!Q§.§!""§();
         if(this.§`"G§(false))
         {
            return;
         }
         if(!§'"9§.isPlayingReplay())
         {
            this.§-"<§ = §'"9§.screenToBox2D(param1,param2,this.§-"<§);
            if(§'"9§.levelObjects.activeObject is §!!H§)
            {
               _loc4_ = §!!H§(§'"9§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§!!H§(§'"9§.levelObjects.activeObject).specialPowerUsed)
               {
                  §'"9§.activateSpecialPower(this.§-"<§.x,this.§-"<§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§'"9§.slingshot.canStartDragging(this.§-"<§))
            {
               §'"9§.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §'"9§.camera.startDragging(param1,param2);
            }
            return;
         }
         §'"9§.camera.startDragging(param1,param2);
         §'"9§.resetReplaySpeed();
      }
      
      protected function §@0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §'"9§.screenToBox2D(param1,param2,null);
         var _loc4_:§^"3§;
         if(_loc4_ = §'"9§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §'"9§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§&9§)
         {
            return;
         }
         §&!Q§.§2'§();
         if(this.§["3§ == §"O§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§'"9§.slingshot.mDragging)
         {
            this.§-"<§ = §'"9§.screenToBox2D(param1,param2,this.§-"<§);
            §'"9§.slingshot.setNewCoordinatesForRubber(this.§-"<§.x,this.§-"<§.y,false);
            if(§'"9§.slingshot.canShootTheBird)
            {
               §'"9§.slingshot.shoot();
               this.changeGameState(§?"!§);
            }
            else
            {
               §'"9§.slingshot.cancelDragging();
            }
         }
         if(§'"9§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §'"9§.camera.dragToNewPoint(param1,param2);
            }
            §'"9§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§&9§)
         {
            return;
         }
         if(§'"9§.slingshot.mDragging)
         {
            this.§-"<§ = §'"9§.screenToBox2D(param1,param2,this.§-"<§);
            §'"9§.slingshot.setNewCoordinatesForRubber(this.§-"<§.x,this.§-"<§.y,false);
         }
         else if(§'"9§.camera.mDragging)
         {
            §'"9§.camera.dragToNewPoint(param1,param2);
         }
         this.§'"<§ = param1;
         this.§;"=§ = param2;
      }
      
      public function §=l§() : Point
      {
         return new Point(this.§'"<§,this.§;"=§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§;L§.§;"6§(this.§;L§.getValue() + param1);
         this.§!!Y§(§6l§);
         if(this.§["3§ == §#Q§)
         {
            this.§]!$§ = 2000;
            this.§"q§ = §7!m§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§;L§.getValue() / param1) * param1;
         }
         return this.§;L§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§"!j§)
         {
            return 0;
         }
         var _loc1_:Number = §#"=§.getLevelForId(§#"=§.currentLevel).getEagleScore(§'"9§.levelItemManager,§'"9§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§&9§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§&9§ = param1;
      }
   }
}

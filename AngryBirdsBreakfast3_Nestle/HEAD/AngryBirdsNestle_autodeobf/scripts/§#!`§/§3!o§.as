package §#!`§
{
   import §#!I§.§0k§;
   import §%!B§.§0![§;
   import §24§.§=!L§;
   import §4!i§.§@t§;
   import §@!"§.§>S§;
   import §@!"§.§@_§;
   import §@!"§.§[!J§;
   import §@!"§.§^"2§;
   import §@V§.§#=§;
   import §@V§.§0"§;
   import §[!Z§.§>D§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §3!o§ extends §+!i§
   {
      
      public static const §3"6§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §#!J§:int = 2;
      
      public static const §[!p§:int = 3;
      
      public static const §&!k§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §5!§:int = 7;
      
      public static const §9"1§:Number = 2000;
      
      public static const §"x§:Number = 2500;
      
      public static const §#"2§:int = 5;
      
      private static const §2H§:Number = §0k§.§<"2§ / 100;
       
      
      protected var §!!l§:int = 0;
      
      protected var §!!m§:Number;
      
      protected var §,!F§:Number = 0;
      
      protected var §1c§:Boolean = false;
      
      protected var §[!x§:Number = 0;
      
      private var §9!Q§:Number = 0;
      
      private var §@!§:int = 0;
      
      private var §5!c§:Number = 0;
      
      private var §>!§:Number = 0;
      
      protected var §8"'§:Boolean = true;
      
      protected var §;q§:§@t§;
      
      protected var §0!U§:Point;
      
      public function §3!o§(param1:§#=§, param2:§0![§)
      {
         this.§;q§ = new §@t§();
         this.§0!U§ = new Point();
         super(param1,param2);
      }
      
      public function get §import§() : int
      {
         return this.§!!l§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§;q§.§!8§(0);
         this.§!!l§ = -1;
         this.§@!§ = 0;
         this.§,!F§ = 0;
         this.§1c§ = false;
         this.changeGameState(§3"6§);
         this.§!!m§ = §9"1§;
         §,P§(true);
         §!`§.objects.setCollisionsEnabled(true);
         §!`§.objects.setGroundTextureEnabled(true);
         §!`§.slingshot.addEventListener(§0"§.§=!f§,this.§,t§);
      }
      
      private function §,t§(param1:Event) : void
      {
         this.changeGameState(§#!J§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §!`§.update(param1,true);
         this.§^!5§(param1);
         this.§5d§(param1);
      }
      
      private function §^!5§(param1:int) : void
      {
         if(this.§@!§ != 0)
         {
            §!`§.camera.adjustManualScale(this.§@!§ > 0,param1 * §2H§);
         }
      }
      
      public function clearLevel() : void
      {
         §!`§.clearLevel();
         removeEventListeners();
         this.§!!l§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §catch§() : Boolean
      {
         if(§!`§.camera.mCurrentCameraSliderLocation < §0k§.§-!m§)
         {
            return false;
         }
         if(!§!`§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §1!7§(param1:int) : void
      {
         var _loc2_:§0k§ = §!`§.camera;
         if(_loc2_.§&!V§ > 0)
         {
            _loc2_.§&!V§ -= param1;
            if(_loc2_.§&!V§ <= 0)
            {
               if(this.§catch§())
               {
                  _loc2_.§&!V§ = -1;
                  if(§!`§.slingshot.birdsAvailable)
                  {
                     _loc2_.§9C§();
                  }
               }
               else
               {
                  _loc2_.§&!V§ = §0k§.§ ![§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§6!W§(false) && !param2)
         {
            return;
         }
         if(param1 == §3"6§)
         {
            this.§[!x§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §!`§.camera.goToBirdView();
         }
         else if(param1 == §#!J§)
         {
            this.§[!x§ = 5000;
            §!`§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §[!p§)
         {
            §!`§.camera.goToCastleView();
         }
         else if(param1 == §&!k§)
         {
            this.§[!x§ = 2000;
            this.§9!Q§ = §#"2§;
            §!`§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§[!x§ = 1200;
            if(!this.§3!x§)
            {
               §!`§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§[!x§ = 1200;
            if(!this.§3!x§)
            {
               §!`§.camera.goToBirdView();
               §!`§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §5!§)
         {
            this.§&!@§();
            this.§[!x§ = 1200;
            §!`§.camera.goToCastleView();
            §!`§.objects.makePigsSmile(5);
         }
         this.§!!l§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §>D§.§>!%§();
         §>D§.§9!q§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §&!@§() : void
      {
         §>D§.§>!%§();
         §>D§.§9!q§("LevelFailedPigs1");
      }
      
      public function §?!Z§() : void
      {
         this.§[!x§ = 2000;
         this.§1c§ = false;
         this.§,!F§ = 2000;
         this.changeGameState(§3!o§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §@!J§(param1:Number) : void
      {
         this.§,!F§ = Math.max(this.§,!F§,param1);
      }
      
      public function §6!r§() : Boolean
      {
         return §!`§.slingshot.mSlingShotState == §0"§.§%!T§ && !§!`§.objects.hasBirds();
      }
      
      public function §5d§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§[!J§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§^"2§ = null;
         this.§!!m§ -= param1;
         if(this.§1c§)
         {
            this.§,!F§ -= param1;
            if(this.§,!F§ < 0)
            {
               this.§!!m§ = 0;
            }
         }
         if(this.§!!m§ <= 0 && !this.§6!W§(false))
         {
            _loc2_ = -1;
            this.§!!m§ = §9"1§;
            _loc3_ = §!`§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§1c§ || this.§,!F§ > 0))
            {
               if((!this.§1c§ || this.§,!F§ > 6000) && !§!`§.objects.isPigsAlive())
               {
                  this.§,!F§ = 6000;
                  this.§1c§ = true;
               }
               else if(!this.§1c§ && this.§6!r§())
               {
                  this.§,!F§ = 15000;
                  this.§1c§ = true;
               }
            }
            else if(!§!`§.objects.isPigsAlive() && this.§"!k§ && !this.§9!x§())
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§&! §(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§6!r§())
            {
               if(_loc4_ = this.§+!@§())
               {
                  if(_loc4_.§&@§ && _loc4_.§#e§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§&! §(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§&@§)
                  {
                     this.§!!m§ = §9"1§;
                  }
               }
               else if(!this.§;`§())
               {
                  _loc2_ = §5!§;
                  this.§&! §(§5!§);
               }
            }
            if(this.§6!W§(false))
            {
               §!`§.gameOver(_loc2_);
            }
         }
         this.§[!x§ -= param1;
         if(this.§[!x§ < 0)
         {
            this.§[!x§ = 0;
         }
         if(this.§!!l§ == §[!p§)
         {
            §!`§.updatePigAnimations(param1);
            if(!§!`§.camera.isOnCastleView() && §!`§.camera.mCurrentAction != §0k§.§^!z§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§!!l§ == §&!k§)
         {
            if(this.§[!x§ <= 0)
            {
               if((_loc5_ = §!`§.objects.hasBirds()) && this.§9!Q§ > 0)
               {
                  this.§[!x§ = 2000;
                  this.§!!m§ = 0;
                  this.§9!Q§ = this.§9!Q§ - 1;
               }
               else if(!this.§3!x§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §!`§.updatePigAnimations(param1);
            }
            if(!§!`§.camera.isOnCastleView() && §!`§.camera.mCurrentAction != §0k§.§^!z§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§!!l§ == §3"6§)
         {
            if(this.§[!x§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§!!l§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§!`§.camera.isOnCastleView() && §!`§.camera.mCurrentAction != §0k§.§^!z§)
            {
               this.changeGameState(§[!p§);
            }
         }
         else if(this.§!!l§ == §#!J§)
         {
            if(!(_loc6_ = §!`§.levelObjects.activeObject as §^"2§) || _loc6_ && !_loc6_.§#!G§)
            {
               this.changeGameState(§&!k§);
            }
         }
         else if(this.§!!l§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§[!x§ <= 0)
            {
               if(§!`§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§[!x§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §9!x§() : Boolean
      {
         return this.§3!x§;
      }
      
      protected function get §3!x§() : Boolean
      {
         if(this.§+!@§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §"!k§() : Boolean
      {
         return true;
      }
      
      public function §+!@§() : §[!J§
      {
         var _loc2_:§[!J§ = null;
         var _loc1_:int = §!`§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!`§.objects.getObject(_loc1_) as §[!J§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §;`§() : Boolean
      {
         var _loc2_:§>S§ = null;
         var _loc1_:int = §!`§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!`§.objects.getObject(_loc1_) as §>S§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §&! §(param1:int, param2:Boolean = false) : void
      {
         if(!this.§1c§)
         {
            this.§1c§ = true;
         }
         if(new Date().time - §!`§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§!`§.slingshot.mDragging)
         {
            return;
         }
         if(§!`§.objects.isWorldAtSleep())
         {
            this.§,!F§ = Math.min(this.§,!F§,3500);
         }
         if(this.§,!F§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §6!W§(param1:Boolean = false) : Boolean
      {
         return (this.§!!l§ == LEVEL_STATE_VICTORY2_END || this.§!!l§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§!!l§ == §5!§) && (!param1 || this.§[!x§ <= 0 && this.§!!l§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §?#§() : Boolean
      {
         return this.§!!l§ == LEVEL_STATE_VICTORY2_END || this.§!!l§ == §5!§;
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
         if(!this.§8"'§ || !§!`§.mReadyToRun)
         {
            return;
         }
         if(this.§!!l§ == §&!k§ || this.§!!l§ == §[!p§ || this.§!!l§ == LEVEL_STATE_SLINGSHOT || this.§!!l§ == §#!J§)
         {
            if(!§!`§.isPlayingReplay())
            {
               §!`§.camera.adjustManualScale(param1,param2 == 0 ? Number(§0k§.§<"2§) : Number(param2));
            }
            else
            {
               §!`§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function § !S§(param1:int) : void
      {
         this.§@!§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§8"'§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §=!L§.mouseDown();
         if(this.§6!W§(false))
         {
            return;
         }
         if(!§!`§.isPlayingReplay())
         {
            this.§0!U§ = §!`§.screenToBox2D(param1,param2,this.§0!U§);
            if(§!`§.levelObjects.activeObject is §^"2§)
            {
               _loc4_ = §^"2§(§!`§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§^"2§(§!`§.levelObjects.activeObject).specialPowerUsed)
               {
                  §!`§.activateSpecialPower(this.§0!U§.x,this.§0!U§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§!`§.slingshot.canStartDragging(this.§0!U§))
            {
               §!`§.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §!`§.camera.startDragging(param1,param2);
            }
            return;
         }
         §!`§.camera.startDragging(param1,param2);
         §!`§.resetReplaySpeed();
      }
      
      protected function §2j§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §!`§.screenToBox2D(param1,param2,null);
         var _loc4_:§@_§;
         if(_loc4_ = §!`§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §!`§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§8"'§)
         {
            return;
         }
         §=!L§.mouseUp();
         if(this.§!!l§ == §3"6§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§!`§.slingshot.mDragging)
         {
            this.§0!U§ = §!`§.screenToBox2D(param1,param2,this.§0!U§);
            §!`§.slingshot.setNewCoordinatesForRubber(this.§0!U§.x,this.§0!U§.y,false);
            if(§!`§.slingshot.canShootTheBird)
            {
               §!`§.slingshot.shoot();
               if(this.§,!F§ < 6000)
               {
                  this.§,!F§ = 6000;
               }
            }
            else
            {
               §!`§.slingshot.cancelDragging();
            }
         }
         if(§!`§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §!`§.camera.dragToNewPoint(param1,param2);
            }
            §!`§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§8"'§)
         {
            return;
         }
         if(§!`§.slingshot.mDragging)
         {
            this.§0!U§ = §!`§.screenToBox2D(param1,param2,this.§0!U§);
            §!`§.slingshot.setNewCoordinatesForRubber(this.§0!U§.x,this.§0!U§.y,false);
         }
         else if(§!`§.camera.mDragging)
         {
            §!`§.camera.dragToNewPoint(param1,param2);
         }
         this.§5!c§ = param1;
         this.§>!§ = param2;
      }
      
      public function §!!8§() : Point
      {
         return new Point(this.§5!c§,this.§>!§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§;q§.§!8§(this.§;q§.getValue() + param1);
         this.§@!J§(§"x§);
         if(this.§!!l§ == §&!k§)
         {
            this.§[!x§ = 2000;
            this.§9!Q§ = §#"2§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§;q§.getValue() / param1) * param1;
         }
         return this.§;q§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§3!x§)
         {
            return 0;
         }
         var _loc1_:Number = §4a§.getLevelForId(§4a§.currentLevel).getEagleScore(§!`§.levelItemManager,§!`§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§8"'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§8"'§ = param1;
      }
      
      public function §0!"§() : void
      {
         this.changeGameState(§5!§,true);
      }
      
      public function §8!W§() : void
      {
         while(§!`§.slingshot.updateScoreForRemainingBirds())
         {
         }
         this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
      }
   }
}

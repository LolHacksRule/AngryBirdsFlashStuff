package §5s§
{
   import §&!3§.§0!W§;
   import §'!n§.§??§;
   import §3R§.§,@§;
   import §3R§.§1!R§;
   import §4",§.§,!j§;
   import §5"D§.§"![§;
   import §5"D§.§1"G§;
   import §5"D§.§6!!§;
   import §5"D§.§^!H§;
   import §6!C§.§8!T§;
   import §>"!§.§@!9§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §"m§ extends §6z§
   {
      
      public static const §5"$§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §5P§:int = 2;
      
      public static const §6"%§:int = 3;
      
      public static const §3!q§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §7Q§:int = 7;
      
      public static const §0!F§:Number = 2000;
      
      public static const §2!,§:Number = 2500;
      
      public static const §4A§:int = 5;
      
      private static const §8"G§:Number = §0!W§.§9!x§ / 100;
       
      
      protected var §#!`§:int = 0;
      
      protected var §>>§:Number;
      
      protected var §>"<§:Number = 0;
      
      protected var §'3§:Boolean = false;
      
      protected var §<!J§:Number = 0;
      
      private var §8D§:Number = 0;
      
      private var §6&§:int = 0;
      
      private var § !;§:Number = 0;
      
      private var §8C§:Number = 0;
      
      protected var §%!W§:Boolean = true;
      
      protected var §#Y§:§??§;
      
      protected var §+;§:Point;
      
      public function §"m§(param1:§1!R§, param2:§,!j§)
      {
         this.§#Y§ = new §??§();
         this.§+;§ = new Point();
         super(param1,param2);
      }
      
      public function get §6!&§() : int
      {
         return this.§#!`§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§#Y§.§8!K§(0);
         this.§#!`§ = -1;
         this.§6&§ = 0;
         this.§>"<§ = 0;
         this.§'3§ = false;
         this.changeGameState(§5"$§);
         this.§>>§ = §0!F§;
         §`"D§(true);
         §;H§.objects.setCollisionsEnabled(true);
         §;H§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §;H§.update(param1,true);
         this.§+"§(param1);
         this.§&"E§(param1);
      }
      
      private function §+"§(param1:int) : void
      {
         if(this.§6&§ != 0)
         {
            §;H§.camera.adjustManualScale(this.§6&§ > 0,param1 * §8"G§);
         }
      }
      
      public function clearLevel() : void
      {
         §;H§.clearLevel();
         removeEventListeners();
         this.§#!`§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §"!_§() : Boolean
      {
         if(§;H§.camera.mCurrentCameraSliderLocation < §0!W§.§3"@§)
         {
            return false;
         }
         if(!§;H§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §'!3§(param1:int) : void
      {
         var _loc2_:§0!W§ = §;H§.camera;
         if(_loc2_.§&N§ > 0)
         {
            _loc2_.§&N§ -= param1;
            if(_loc2_.§&N§ <= 0)
            {
               if(this.§"!_§())
               {
                  _loc2_.§&N§ = -1;
                  if(§;H§.slingshot.birdsAvailable)
                  {
                     _loc2_.§]!+§();
                  }
               }
               else
               {
                  _loc2_.§&N§ = §0!W§.§8!p§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§1<§(false) && !param2)
         {
            return;
         }
         if(param1 == §5"$§)
         {
            this.§<!J§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §;H§.camera.goToBirdView();
         }
         else if(param1 == §5P§)
         {
            this.§<!J§ = 5000;
            §;H§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §6"%§)
         {
            §;H§.camera.goToCastleView();
         }
         else if(param1 == §3!q§)
         {
            this.§<!J§ = 2000;
            this.§8D§ = §4A§;
            §;H§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§<!J§ = 1200;
            if(!this.§'!"§)
            {
               §;H§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§<!J§ = 1200;
            if(!this.§'!"§)
            {
               §;H§.camera.goToBirdView();
               §;H§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §7Q§)
         {
            this.playFailSound();
            this.§<!J§ = 1200;
            §;H§.camera.goToCastleView();
            §;H§.objects.makePigsSmile(5);
         }
         this.§#!`§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §@!9§.§["6§();
         §@!9§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         §@!9§.§["6§();
         §@!9§.playSound("LevelFailedPigs1");
      }
      
      public function §#!G§() : void
      {
         this.§<!J§ = 2000;
         this.§'3§ = false;
         this.§>"<§ = 2000;
         this.changeGameState(§"m§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §8!l§(param1:Number) : void
      {
         this.§>"<§ = Math.max(this.§>"<§,param1);
      }
      
      protected function §61§() : Boolean
      {
         return §;H§.slingshot.mSlingShotState == §,@§.§,!R§ && !§;H§.objects.hasBirds();
      }
      
      public function §&"E§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§^!H§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§1"G§ = null;
         this.§>>§ -= param1;
         if(this.§'3§)
         {
            this.§>"<§ -= param1;
            if(this.§>"<§ < 0)
            {
               this.§>>§ = 0;
            }
         }
         if(this.§>>§ <= 0 && !this.§1<§(false))
         {
            _loc2_ = -1;
            this.§>>§ = §0!F§;
            _loc3_ = §;H§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§'3§ || this.§>"<§ > 0))
            {
               if((!this.§'3§ || this.§>"<§ > 6000) && !§;H§.objects.isPigsAlive())
               {
                  this.§>"<§ = 6000;
                  this.§'3§ = true;
               }
               else if(!this.§'3§ && this.§61§())
               {
                  this.§>"<§ = 15000;
                  this.§'3§ = true;
               }
            }
            else if(!§;H§.objects.isPigsAlive() && !this.§'!"§ && this.§%t§)
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§"K§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§61§())
            {
               if(_loc4_ = this.§&!1§())
               {
                  if(_loc4_.§<!!§ && _loc4_.§7J§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§"K§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§<!!§)
                  {
                     this.§>>§ = §0!F§;
                  }
               }
               else if(!this.§!!_§())
               {
                  _loc2_ = §7Q§;
                  this.§"K§(§7Q§);
               }
            }
            if(this.§1<§(false))
            {
               §;H§.gameOver(_loc2_);
            }
         }
         this.§<!J§ -= param1;
         if(this.§<!J§ < 0)
         {
            this.§<!J§ = 0;
         }
         if(this.§#!`§ == §6"%§)
         {
            §;H§.updatePigAnimations(param1);
            if(!§;H§.camera.isOnCastleView() && §;H§.camera.mCurrentAction != §0!W§.§-!9§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§#!`§ == §3!q§)
         {
            if(this.§<!J§ <= 0)
            {
               if((_loc5_ = §;H§.objects.hasBirds()) && this.§8D§ > 0)
               {
                  this.§<!J§ = 2000;
                  this.§>>§ = 0;
                  this.§8D§ = this.§8D§ - 1;
               }
               else if(!this.§'!"§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §;H§.updatePigAnimations(param1);
            }
            if(!§;H§.camera.isOnCastleView() && §;H§.camera.mCurrentAction != §0!W§.§-!9§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§#!`§ == §5"$§)
         {
            if(this.§<!J§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§#!`§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§;H§.camera.isOnCastleView() && §;H§.camera.mCurrentAction != §0!W§.§-!9§)
            {
               this.changeGameState(§6"%§);
            }
         }
         else if(this.§#!`§ == §5P§)
         {
            if(_loc6_ = §;H§.levelObjects.activeObject as §1"G§)
            {
            }
         }
         else if(this.§#!`§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§<!J§ <= 0)
            {
               if(§;H§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§<!J§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §'!"§() : Boolean
      {
         if(this.§&!1§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §%t§() : Boolean
      {
         return true;
      }
      
      public function §&!1§() : §^!H§
      {
         var _loc2_:§^!H§ = null;
         var _loc1_:int = §;H§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §;H§.objects.getObject(_loc1_) as §^!H§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §!!_§() : Boolean
      {
         var _loc2_:§"![§ = null;
         var _loc1_:int = §;H§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §;H§.objects.getObject(_loc1_) as §"![§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §"K§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§'3§)
         {
            this.§'3§ = true;
         }
         if(new Date().time - §;H§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§;H§.slingshot.mDragging)
         {
            return;
         }
         if(§;H§.objects.isWorldAtSleep())
         {
            this.§>"<§ = Math.min(this.§>"<§,3500);
         }
         if(this.§>"<§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §1<§(param1:Boolean = false) : Boolean
      {
         return (this.§#!`§ == LEVEL_STATE_VICTORY2_END || this.§#!`§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§#!`§ == §7Q§) && (!param1 || this.§<!J§ <= 0 && this.§#!`§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §%g§() : Boolean
      {
         return this.§#!`§ == LEVEL_STATE_VICTORY2_END || this.§#!`§ == §7Q§;
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
         if(!this.§%!W§ || !§;H§.mReadyToRun)
         {
            return;
         }
         if(!(§;H§.slingshot.mDragging || §;H§.camera.mDragging))
         {
            if(this.§#!`§ == §3!q§ || this.§#!`§ == §6"%§ || this.§#!`§ == LEVEL_STATE_SLINGSHOT || this.§#!`§ == §5P§)
            {
               if(!§;H§.isPlayingReplay())
               {
                  §;H§.camera.adjustManualScale(param1,param2 == 0 ? Number(§0!W§.§9!x§) : Number(param2));
               }
               else
               {
                  §;H§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §8h§(param1:int) : void
      {
         this.§6&§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§%!W§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §8!T§.§7"B§();
         if(this.§1<§(false))
         {
            return;
         }
         if(!§;H§.isPlayingReplay())
         {
            this.§+;§ = §;H§.screenToBox2D(param1,param2,this.§+;§);
            if(§;H§.levelObjects.activeObject is §1"G§)
            {
               _loc4_ = §1"G§(§;H§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§1"G§(§;H§.levelObjects.activeObject).specialPowerUsed)
               {
                  §;H§.activateSpecialPower(this.§+;§.x,this.§+;§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§;H§.slingshot.canStartDragging(this.§+;§))
            {
               §;H§.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §;H§.camera.startDragging(param1,param2);
            }
            return;
         }
         §;H§.camera.startDragging(param1,param2);
         §;H§.resetReplaySpeed();
      }
      
      protected function §false§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §;H§.screenToBox2D(param1,param2,null);
         var _loc4_:§6!!§;
         if(_loc4_ = §;H§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §;H§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§%!W§)
         {
            return;
         }
         §8!T§.§]z§();
         if(this.§#!`§ == §5"$§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§;H§.slingshot.mDragging)
         {
            this.§+;§ = §;H§.screenToBox2D(param1,param2,this.§+;§);
            §;H§.slingshot.setNewCoordinatesForRubber(this.§+;§.x,this.§+;§.y,false);
            if(§;H§.slingshot.canShootTheBird)
            {
               §;H§.slingshot.shoot();
               this.changeGameState(§5P§);
            }
            else
            {
               §;H§.slingshot.cancelDragging();
            }
         }
         if(§;H§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §;H§.camera.dragToNewPoint(param1,param2);
            }
            §;H§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§%!W§)
         {
            return;
         }
         if(§;H§.slingshot.mDragging)
         {
            this.§+;§ = §;H§.screenToBox2D(param1,param2,this.§+;§);
            §;H§.slingshot.setNewCoordinatesForRubber(this.§+;§.x,this.§+;§.y,false);
         }
         else if(§;H§.camera.mDragging)
         {
            §;H§.camera.dragToNewPoint(param1,param2);
         }
         this.§ !;§ = param1;
         this.§8C§ = param2;
      }
      
      public function §1!O§() : Point
      {
         return new Point(this.§ !;§,this.§8C§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§#Y§.§8!K§(this.§#Y§.getValue() + param1);
         this.§8!l§(§2!,§);
         if(this.§#!`§ == §3!q§)
         {
            this.§<!J§ = 2000;
            this.§8D§ = §4A§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§#Y§.getValue() / param1) * param1;
         }
         return this.§#Y§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§'!"§)
         {
            return 0;
         }
         var _loc1_:Number = §]m§.getLevelForId(§]m§.currentLevel).getEagleScore(§;H§.levelItemManager,§;H§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%!W§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§%!W§ = param1;
      }
   }
}

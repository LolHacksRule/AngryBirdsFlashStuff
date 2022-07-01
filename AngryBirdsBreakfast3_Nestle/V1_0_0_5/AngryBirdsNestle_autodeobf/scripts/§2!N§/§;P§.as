package §2!N§
{
   import § !T§.§ q§;
   import § 8§.§?!9§;
   import §0!$§.§4!Z§;
   import §2W§.§2E§;
   import §=!`§.§0!d§;
   import §=!`§.§6!-§;
   import §=!`§.§?!G§;
   import §=!`§.§^^§;
   import §@!6§.§3!5§;
   import §]k§.§<S§;
   import §]k§.§>!x§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §;P§ extends §<!N§
   {
      
      public static const §&!=§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §7,§:int = 2;
      
      public static const §#<§:int = 3;
      
      public static const §<!Q§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §[!^§:int = 7;
      
      public static const §#,§:Number = 2000;
      
      public static const §6I§:Number = 2500;
      
      public static const §`!>§:int = 5;
      
      private static const §4!u§:Number = §?!9§.§-!R§ / 100;
       
      
      protected var §@R§:int = 0;
      
      protected var §;M§:Number;
      
      protected var §%!R§:Number = 0;
      
      protected var §^"4§:Boolean = false;
      
      protected var §6!X§:Number = 0;
      
      private var §]!D§:Number = 0;
      
      private var §;"§:int = 0;
      
      private var §'!s§:Number = 0;
      
      private var §>"$§:Number = 0;
      
      protected var §@!J§:Boolean = true;
      
      protected var §8!n§:§2E§;
      
      protected var §=Y§:Point;
      
      public function §;P§(param1:§<S§, param2:§ q§)
      {
         this.§8!n§ = new §2E§();
         this.§=Y§ = new Point();
         super(param1,param2);
      }
      
      public function get §;0§() : int
      {
         return this.§@R§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§8!n§.§=-§(0);
         this.§@R§ = -1;
         this.§;"§ = 0;
         this.§%!R§ = 0;
         this.§^"4§ = false;
         this.changeGameState(§&!=§);
         this.§;M§ = §#,§;
         §9!>§(true);
         §#g§.objects.setCollisionsEnabled(true);
         §#g§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §#g§.update(param1,true);
         this.§&$§(param1);
         this.§,!n§(param1);
      }
      
      private function §&$§(param1:int) : void
      {
         if(this.§;"§ != 0)
         {
            §#g§.camera.adjustManualScale(this.§;"§ > 0,param1 * §4!u§);
         }
      }
      
      public function clearLevel() : void
      {
         §#g§.clearLevel();
         removeEventListeners();
         this.§@R§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §&]§() : Boolean
      {
         if(§#g§.camera.mCurrentCameraSliderLocation < §?!9§.§"!-§)
         {
            return false;
         }
         if(!§#g§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §&!I§(param1:int) : void
      {
         var _loc2_:§?!9§ = §#g§.camera;
         if(_loc2_.§&E§ > 0)
         {
            _loc2_.§&E§ -= param1;
            if(_loc2_.§&E§ <= 0)
            {
               if(this.§&]§())
               {
                  _loc2_.§&E§ = -1;
                  if(§#g§.slingshot.birdsAvailable)
                  {
                     _loc2_.§;!^§();
                  }
               }
               else
               {
                  _loc2_.§&E§ = §?!9§.§1!&§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§>&§(false) && !param2)
         {
            return;
         }
         if(param1 == §&!=§)
         {
            this.§6!X§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §#g§.camera.goToBirdView();
         }
         else if(param1 == §7,§)
         {
            this.§6!X§ = 5000;
            §#g§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §#<§)
         {
            §#g§.camera.goToCastleView();
         }
         else if(param1 == §<!Q§)
         {
            this.§6!X§ = 2000;
            this.§]!D§ = §`!>§;
            §#g§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§6!X§ = 1200;
            if(!this.§<!&§)
            {
               §#g§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§6!X§ = 1200;
            if(!this.§<!&§)
            {
               §#g§.camera.goToBirdView();
               §#g§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §[!^§)
         {
            this.§3!Y§();
            this.§6!X§ = 1200;
            §#g§.camera.goToCastleView();
            §#g§.objects.makePigsSmile(5);
         }
         this.§@R§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §3!5§.§,!8§();
         §3!5§.§<!9§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §3!Y§() : void
      {
         §3!5§.§,!8§();
         §3!5§.§<!9§("LevelFailedPigs1");
      }
      
      public function §^!N§() : void
      {
         this.§6!X§ = 2000;
         this.§^"4§ = false;
         this.§%!R§ = 2000;
         this.changeGameState(§;P§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §#!n§(param1:Number) : void
      {
         this.§^"4§ = false;
         this.§%!R§ = Math.max(this.§%!R§,param1);
      }
      
      protected function §=K§() : Boolean
      {
         return §#g§.slingshot.mSlingShotState == §>!x§.§&V§ && !§#g§.objects.hasBirds();
      }
      
      public function §,!n§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§0!d§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§6!-§ = null;
         this.§;M§ -= param1;
         if(this.§^"4§)
         {
            this.§%!R§ -= param1;
            if(this.§%!R§ < 0)
            {
               this.§;M§ = 0;
            }
         }
         if(this.§;M§ <= 0 && !this.§>&§(false))
         {
            _loc2_ = -1;
            this.§;M§ = §#,§;
            _loc3_ = §#g§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§^"4§ || this.§%!R§ > 0))
            {
               if((!this.§^"4§ || this.§%!R§ > 6000) && !§#g§.objects.isPigsAlive())
               {
                  this.§%!R§ = 6000;
                  this.§^"4§ = true;
               }
               else if(!this.§^"4§ && this.§=K§())
               {
                  this.§%!R§ = 15000;
                  this.§^"4§ = true;
               }
            }
            else if(!§#g§.objects.isPigsAlive() && !this.§<!&§ && this.§&#§)
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§<!c§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§=K§())
            {
               if(_loc4_ = this.§1!z§())
               {
                  if(_loc4_.§0!g§ && _loc4_.§&"4§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§<!c§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§0!g§)
                  {
                     this.§;M§ = §#,§;
                  }
               }
               else if(!this.§;U§())
               {
                  _loc2_ = §[!^§;
                  this.§<!c§(§[!^§);
               }
            }
            if(this.§>&§(false))
            {
               §#g§.gameOver(_loc2_);
            }
         }
         this.§6!X§ -= param1;
         if(this.§6!X§ < 0)
         {
            this.§6!X§ = 0;
         }
         if(this.§@R§ == §#<§)
         {
            §#g§.updatePigAnimations(param1);
            if(!§#g§.camera.isOnCastleView() && §#g§.camera.mCurrentAction != §?!9§.§7!-§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§@R§ == §<!Q§)
         {
            if(this.§6!X§ <= 0)
            {
               if((_loc5_ = §#g§.objects.hasBirds()) && this.§]!D§ > 0)
               {
                  this.§6!X§ = 2000;
                  this.§;M§ = 0;
                  this.§]!D§ = this.§]!D§ - 1;
               }
               else if(!this.§<!&§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §#g§.updatePigAnimations(param1);
            }
            if(!§#g§.camera.isOnCastleView() && §#g§.camera.mCurrentAction != §?!9§.§7!-§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§@R§ == §&!=§)
         {
            if(this.§6!X§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§@R§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§#g§.camera.isOnCastleView() && §#g§.camera.mCurrentAction != §?!9§.§7!-§)
            {
               this.changeGameState(§#<§);
            }
         }
         else if(this.§@R§ == §7,§)
         {
            if(_loc6_ = §#g§.levelObjects.activeObject as §6!-§)
            {
            }
         }
         else if(this.§@R§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§6!X§ <= 0)
            {
               if(§#g§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§6!X§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §<!&§() : Boolean
      {
         if(this.§1!z§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §&#§() : Boolean
      {
         return true;
      }
      
      public function §1!z§() : §0!d§
      {
         var _loc2_:§0!d§ = null;
         var _loc1_:int = §#g§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §#g§.objects.getObject(_loc1_) as §0!d§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §;U§() : Boolean
      {
         var _loc2_:§?!G§ = null;
         var _loc1_:int = §#g§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §#g§.objects.getObject(_loc1_) as §?!G§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §<!c§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§^"4§)
         {
            this.§^"4§ = true;
         }
         if(new Date().time - §#g§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§#g§.slingshot.mDragging)
         {
            return;
         }
         if(§#g§.objects.isWorldAtSleep())
         {
            this.§%!R§ = Math.min(this.§%!R§,3500);
         }
         if(this.§%!R§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §>&§(param1:Boolean = false) : Boolean
      {
         return (this.§@R§ == LEVEL_STATE_VICTORY2_END || this.§@R§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§@R§ == §[!^§) && (!param1 || this.§6!X§ <= 0 && this.§@R§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §]!G§() : Boolean
      {
         return this.§@R§ == LEVEL_STATE_VICTORY2_END || this.§@R§ == §[!^§;
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
         if(!this.§@!J§ || !§#g§.mReadyToRun)
         {
            return;
         }
         if(!(§#g§.slingshot.mDragging || §#g§.camera.mDragging))
         {
            if(this.§@R§ == §<!Q§ || this.§@R§ == §#<§ || this.§@R§ == LEVEL_STATE_SLINGSHOT || this.§@R§ == §7,§)
            {
               if(!§#g§.isPlayingReplay())
               {
                  §#g§.camera.adjustManualScale(param1,param2 == 0 ? Number(§?!9§.§-!R§) : Number(param2));
               }
               else
               {
                  §#g§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §'!+§(param1:int) : void
      {
         this.§;"§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§@!J§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §4!Z§.mouseDown();
         if(this.§>&§(false))
         {
            return;
         }
         if(!§#g§.isPlayingReplay())
         {
            this.§=Y§ = §#g§.screenToBox2D(param1,param2,this.§=Y§);
            if(§#g§.levelObjects.activeObject is §6!-§)
            {
               _loc4_ = §6!-§(§#g§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§6!-§(§#g§.levelObjects.activeObject).specialPowerUsed)
               {
                  §#g§.activateSpecialPower(this.§=Y§.x,this.§=Y§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§#g§.slingshot.canStartDragging(this.§=Y§))
            {
               §#g§.slingshot.startDragging();
               this.§=Y§ = §#g§.screenToBox2D(param1,param2);
               §#g§.slingshot.setNewCoordinatesForRubber(this.§=Y§.x,this.§=Y§.y,false);
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §#g§.camera.startDragging(param1,param2);
            }
            return;
         }
         §#g§.camera.startDragging(param1,param2);
         §#g§.resetReplaySpeed();
      }
      
      protected function §'1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §#g§.screenToBox2D(param1,param2,null);
         var _loc4_:§^^§;
         if(_loc4_ = §#g§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §#g§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§@!J§)
         {
            return;
         }
         §4!Z§.mouseUp();
         if(this.§@R§ == §&!=§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§#g§.slingshot.mDragging)
         {
            this.§=Y§ = §#g§.screenToBox2D(param1,param2,this.§=Y§);
            §#g§.slingshot.setNewCoordinatesForRubber(this.§=Y§.x,this.§=Y§.y,false);
            if(§#g§.slingshot.canShootTheBird)
            {
               §#g§.slingshot.shoot();
               this.changeGameState(§7,§);
            }
            else
            {
               §#g§.slingshot.cancelDragging();
            }
         }
         if(§#g§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §#g§.camera.dragToNewPoint(param1,param2);
            }
            §#g§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§@!J§)
         {
            return;
         }
         if(§#g§.slingshot.mDragging)
         {
            this.§=Y§ = §#g§.screenToBox2D(param1,param2,this.§=Y§);
            §#g§.slingshot.setNewCoordinatesForRubber(this.§=Y§.x,this.§=Y§.y,false);
         }
         else if(§#g§.camera.mDragging)
         {
            §#g§.camera.dragToNewPoint(param1,param2);
         }
         this.§'!s§ = param1;
         this.§>"$§ = param2;
      }
      
      public function §#!Y§() : Point
      {
         return new Point(this.§'!s§,this.§>"$§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§8!n§.§=-§(this.§8!n§.getValue() + param1);
         this.§#!n§(§6I§);
         if(this.§@R§ == §<!Q§)
         {
            this.§6!X§ = 2000;
            this.§]!D§ = §`!>§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§8!n§.getValue() / param1) * param1;
         }
         return this.§8!n§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§<!&§)
         {
            return 0;
         }
         var _loc1_:Number = §="4§.getLevelForId(§="4§.currentLevel).getEagleScore(§#g§.levelItemManager,§#g§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§@!J§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§@!J§ = param1;
      }
   }
}

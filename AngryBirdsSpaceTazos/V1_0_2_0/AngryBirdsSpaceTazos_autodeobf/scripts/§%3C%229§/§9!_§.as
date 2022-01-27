package §<"9§
{
   import §""<§.§9!p§;
   import §'#§.§4!!§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §?!<§.§&V§;
   import §?!<§.§'!1§;
   import §[,§.§#!v§;
   import §[,§.§1X§;
   import §[,§.§;W§;
   import §[r§.§ use§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §9!_§ extends §2!O§
   {
      
      public static const §=!%§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §%! §:int = 2;
      
      public static const §-!-§:int = 3;
      
      public static const §3Q§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §4#§:int = 7;
      
      public static const §,"H§:Number = 2000;
      
      public static const §4!-§:Number = 2500;
      
      public static const §^H§:int = 5;
      
      private static const §%"1§:Number = § use§.§5!D§ / 100;
       
      
      protected var §&?§:int = 0;
      
      protected var §+"<§:Number;
      
      protected var §^g§:Number = 0;
      
      protected var §<A§:Boolean = false;
      
      protected var §?n§:Number = 0;
      
      private var §,D§:Number = 0;
      
      private var § !9§:int = 0;
      
      private var §-w§:Number = 0;
      
      private var §1§:Number = 0;
      
      protected var §"u§:Boolean = true;
      
      protected var §'">§:§4!!§;
      
      protected var §5!O§:Point;
      
      public function §9!_§(param1:§'!1§, param2:§#2§)
      {
         this.§'">§ = new §4!!§();
         this.§5!O§ = new Point();
         super(param1,param2);
      }
      
      public function get §8l§() : int
      {
         return this.§&?§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§'">§.§[!s§(0);
         this.§&?§ = -1;
         this.§ !9§ = 0;
         this.§^g§ = 0;
         this.§<A§ = false;
         this.changeGameState(§=!%§);
         this.§+"<§ = §,"H§;
         §>!?§(true);
         §1!3§.objects.setCollisionsEnabled(true);
         §1!3§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §1!3§.update(param1,true);
         this.§6g§(param1);
         this.§+!C§(param1);
      }
      
      private function §6g§(param1:int) : void
      {
         if(this.§ !9§ != 0)
         {
            §1!3§.camera.adjustManualScale(this.§ !9§ > 0,param1 * §%"1§);
         }
      }
      
      public function clearLevel() : void
      {
         §1!3§.clearLevel();
         removeEventListeners();
         this.§&?§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §+!l§() : Boolean
      {
         if(§1!3§.camera.mCurrentCameraSliderLocation < § use§.§'N§)
         {
            return false;
         }
         if(!§1!3§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §6B§(param1:int) : void
      {
         var _loc2_:§ use§ = §1!3§.camera;
         if(_loc2_.§7"E§ > 0)
         {
            _loc2_.§7"E§ -= param1;
            if(_loc2_.§7"E§ <= 0)
            {
               if(this.§+!l§())
               {
                  _loc2_.§7"E§ = -1;
                  if(§1!3§.slingshot.birdsAvailable)
                  {
                     _loc2_.§"!T§();
                  }
               }
               else
               {
                  _loc2_.§7"E§ = § use§.§4h§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§<!-§(false) && !param2)
         {
            return;
         }
         if(param1 == §=!%§)
         {
            this.§?n§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §1!3§.camera.goToBirdView();
         }
         else if(param1 == §%! §)
         {
            this.§?n§ = 5000;
            §1!3§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §-!-§)
         {
            §1!3§.camera.goToCastleView();
         }
         else if(param1 == §3Q§)
         {
            this.§?n§ = 2000;
            this.§,D§ = §^H§;
            §1!3§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§?n§ = 1200;
            if(!this.§@A§)
            {
               §1!3§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§?n§ = 1200;
            if(!this.§@A§)
            {
               §1!3§.camera.goToBirdView();
               §1!3§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §4#§)
         {
            this.playFailSound();
            this.§?n§ = 1200;
            §1!3§.camera.goToCastleView();
            §1!3§.objects.makePigsSmile(5);
         }
         this.§&?§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §"!S§.§#9§();
         §"!S§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         §"!S§.§#9§();
         §"!S§.playSound("LevelFailedPigs1");
      }
      
      public function §9"-§() : void
      {
         this.§?n§ = 2000;
         this.§<A§ = false;
         this.§^g§ = 2000;
         this.changeGameState(§9!_§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §=!C§(param1:Number) : void
      {
         this.§^g§ = Math.max(this.§^g§,param1);
      }
      
      protected function §?!§() : Boolean
      {
         return §1!3§.slingshot.mSlingShotState == §&V§.§'!0§ && !§1!3§.objects.hasBirds();
      }
      
      public function §+!C§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§1X§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§#!v§ = null;
         this.§+"<§ -= param1;
         if(this.§<A§)
         {
            this.§^g§ -= param1;
            if(this.§^g§ < 0)
            {
               this.§+"<§ = 0;
            }
         }
         if(this.§+"<§ <= 0 && !this.§<!-§(false))
         {
            _loc2_ = -1;
            this.§+"<§ = §,"H§;
            _loc3_ = §1!3§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§<A§ || this.§^g§ > 0))
            {
               if((!this.§<A§ || this.§^g§ > 6000) && !§1!3§.objects.isPigsAlive())
               {
                  this.§^g§ = 6000;
                  this.§<A§ = true;
               }
               else if(!this.§<A§ && this.§?!§())
               {
                  this.§^g§ = 15000;
                  this.§<A§ = true;
               }
            }
            else if(!§1!3§.objects.isPigsAlive() && !this.§@A§ && this.§[!p§)
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§'"6§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§?!§())
            {
               if(_loc4_ = this.§;1§())
               {
                  if(_loc4_.§!!1§ && _loc4_.§8Y§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§'"6§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§!!1§)
                  {
                     this.§+"<§ = §,"H§;
                  }
               }
               else if(!this.§?!e§())
               {
                  _loc2_ = §4#§;
                  this.§'"6§(§4#§);
               }
            }
            if(this.§<!-§(false))
            {
               §1!3§.gameOver(_loc2_);
            }
         }
         this.§?n§ -= param1;
         if(this.§?n§ < 0)
         {
            this.§?n§ = 0;
         }
         if(this.§&?§ == §-!-§)
         {
            §1!3§.updatePigAnimations(param1);
            if(!§1!3§.camera.isOnCastleView() && §1!3§.camera.mCurrentAction != § use§.§;!Z§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§&?§ == §3Q§)
         {
            if(this.§?n§ <= 0)
            {
               if((_loc5_ = §1!3§.objects.hasBirds()) && this.§,D§ > 0)
               {
                  this.§?n§ = 2000;
                  this.§+"<§ = 0;
                  this.§,D§ = this.§,D§ - 1;
               }
               else if(!this.§@A§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §1!3§.updatePigAnimations(param1);
            }
            if(!§1!3§.camera.isOnCastleView() && §1!3§.camera.mCurrentAction != § use§.§;!Z§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§&?§ == §=!%§)
         {
            if(this.§?n§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§&?§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§1!3§.camera.isOnCastleView() && §1!3§.camera.mCurrentAction != § use§.§;!Z§)
            {
               this.changeGameState(§-!-§);
            }
         }
         else if(this.§&?§ == §%! §)
         {
            if(_loc6_ = §1!3§.levelObjects.activeObject as §#!v§)
            {
            }
         }
         else if(this.§&?§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§?n§ <= 0)
            {
               if(§1!3§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§?n§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §@A§() : Boolean
      {
         if(this.§;1§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §[!p§() : Boolean
      {
         return true;
      }
      
      public function §;1§() : §1X§
      {
         var _loc2_:§1X§ = null;
         var _loc1_:int = §1!3§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §1!3§.objects.getObject(_loc1_) as §1X§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §?!e§() : Boolean
      {
         var _loc2_:§;W§ = null;
         var _loc1_:int = §1!3§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §1!3§.objects.getObject(_loc1_) as §;W§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §'"6§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§<A§)
         {
            this.§<A§ = true;
         }
         if(new Date().time - §1!3§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§1!3§.slingshot.mDragging)
         {
            return;
         }
         if(§1!3§.objects.isWorldAtSleep())
         {
            this.§^g§ = Math.min(this.§^g§,3500);
         }
         if(this.§^g§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §<!-§(param1:Boolean = false) : Boolean
      {
         return (this.§&?§ == LEVEL_STATE_VICTORY2_END || this.§&?§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§&?§ == §4#§) && (!param1 || this.§?n§ <= 0 && this.§&?§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §^!P§() : Boolean
      {
         return this.§&?§ == LEVEL_STATE_VICTORY2_END || this.§&?§ == §4#§;
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
         if(!this.§"u§ || !§1!3§.mReadyToRun)
         {
            return;
         }
         if(!(§1!3§.slingshot.mDragging || §1!3§.camera.mDragging))
         {
            if(this.§&?§ == §3Q§ || this.§&?§ == §-!-§ || this.§&?§ == LEVEL_STATE_SLINGSHOT || this.§&?§ == §%! §)
            {
               if(!§1!3§.isPlayingReplay())
               {
                  §1!3§.camera.adjustManualScale(param1,param2 == 0 ? Number(§ use§.§5!D§) : Number(param2));
               }
               else
               {
                  §1!3§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §8"9§(param1:int) : void
      {
         this.§ !9§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§"u§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §9!p§.§5!y§();
         if(this.§<!-§(false))
         {
            return;
         }
         if(!§1!3§.isPlayingReplay())
         {
            this.§5!O§ = §1!3§.screenToBox2D(param1,param2,this.§5!O§);
            if(§1!3§.levelObjects.activeObject is §#!v§)
            {
               _loc4_ = §#!v§(§1!3§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§#!v§(§1!3§.levelObjects.activeObject).specialPowerUsed)
               {
                  §1!3§.activateSpecialPower(this.§5!O§.x,this.§5!O§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§1!3§.slingshot.canStartDragging(this.§5!O§))
            {
               §1!3§.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §1!3§.camera.startDragging(param1,param2);
            }
            return;
         }
         §1!3§.camera.startDragging(param1,param2);
         §1!3§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§"u§)
         {
            return;
         }
         §9!p§.§&1§();
         if(this.§&?§ == §=!%§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§1!3§.slingshot.mDragging)
         {
            this.§5!O§ = §1!3§.screenToBox2D(param1,param2,this.§5!O§);
            §1!3§.slingshot.setNewCoordinatesForRubber(this.§5!O§.x,this.§5!O§.y,false);
            if(§1!3§.slingshot.canShootTheBird)
            {
               §1!3§.slingshot.shoot();
               this.changeGameState(§%! §);
            }
            else
            {
               §1!3§.slingshot.cancelDragging();
            }
         }
         if(§1!3§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §1!3§.camera.dragToNewPoint(param1,param2);
            }
            §1!3§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§"u§)
         {
            return;
         }
         if(§1!3§.slingshot.mDragging)
         {
            this.§5!O§ = §1!3§.screenToBox2D(param1,param2,this.§5!O§);
            §1!3§.slingshot.setNewCoordinatesForRubber(this.§5!O§.x,this.§5!O§.y,false);
         }
         else if(§1!3§.camera.mDragging)
         {
            §1!3§.camera.dragToNewPoint(param1,param2);
         }
         this.§-w§ = param1;
         this.§1§ = param2;
      }
      
      public function §66§() : Point
      {
         return new Point(this.§-w§,this.§1§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§'">§.§[!s§(this.§'">§.getValue() + param1);
         this.§=!C§(§4!-§);
         if(this.§&?§ == §3Q§)
         {
            this.§?n§ = 2000;
            this.§,D§ = §^H§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§'">§.getValue() / param1) * param1;
         }
         return this.§'">§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§@A§)
         {
            return 0;
         }
         var _loc1_:Number = §,W§.getLevelForId(§,W§.currentLevel).getEagleScore(§1!3§.levelItemManager,§1!3§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§"u§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§"u§ = param1;
      }
   }
}

package §^x§
{
   import § !Q§.§9%§;
   import §!!&§.§0!_§;
   import §!P§.§5!1§;
   import §-6§.§%5§;
   import §2!k§.§+k§;
   import §2!k§.§6",§;
   import §2!k§.§;;§;
   import §2!k§.§try§;
   import §;s§.§%!c§;
   import §]A§.§[d§;
   import §]A§.§]"!§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §8v§ extends §"b§
   {
      
      public static const §&4§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §[>§:int = 2;
      
      public static const §<1§:int = 3;
      
      public static const §;l§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §#!5§:int = 7;
      
      public static const §-!<§:Number = 2000;
      
      public static const §-!W§:Number = 2500;
      
      public static const §2!f§:int = 5;
      
      private static const §6!d§:Number = §%5§.§;!w§ / 100;
       
      
      protected var §6!@§:int = 0;
      
      protected var §0!5§:Number;
      
      protected var §6T§:Number = 0;
      
      protected var §6"-§:Boolean = false;
      
      protected var §8!9§:Number = 0;
      
      private var §?i§:Number = 0;
      
      private var §>Q§:int = 0;
      
      private var §4!d§:Number = 0;
      
      private var §8!a§:Number = 0;
      
      protected var §+!l§:Boolean = true;
      
      protected var §'!@§:§0!_§;
      
      protected var §'-§:Point;
      
      public function §8v§(param1:§[d§, param2:§5!1§)
      {
         this.§'!@§ = new §0!_§();
         this.§'-§ = new Point();
         super(param1,param2);
      }
      
      public function get §2!n§() : int
      {
         return this.§6!@§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§'!@§.§[b§(0);
         this.§6!@§ = -1;
         this.§>Q§ = 0;
         this.§6T§ = 0;
         this.§6"-§ = false;
         this.changeGameState(§&4§);
         this.§0!5§ = §-!<§;
         §,!4§(true);
         §+"1§.objects.setCollisionsEnabled(true);
         §+"1§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §+"1§.update(param1,true);
         this.§5w§(param1);
         this.§^A§(param1);
      }
      
      private function §5w§(param1:int) : void
      {
         if(this.§>Q§ != 0)
         {
            §+"1§.camera.adjustManualScale(this.§>Q§ > 0,param1 * §6!d§);
         }
      }
      
      public function clearLevel() : void
      {
         §+"1§.clearLevel();
         removeEventListeners();
         this.§6!@§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §,!m§() : Boolean
      {
         if(§+"1§.camera.mCurrentCameraSliderLocation < §%5§.§>+§)
         {
            return false;
         }
         if(!§+"1§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9!O§(param1:int) : void
      {
         var _loc2_:§%5§ = §+"1§.camera;
         if(_loc2_.§;!4§ > 0)
         {
            _loc2_.§;!4§ -= param1;
            if(_loc2_.§;!4§ <= 0)
            {
               if(this.§,!m§())
               {
                  _loc2_.§;!4§ = -1;
                  if(§+"1§.slingshot.birdsAvailable)
                  {
                     _loc2_.§'+§();
                  }
               }
               else
               {
                  _loc2_.§;!4§ = §%5§.§<!`§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§8J§(false) && !param2)
         {
            return;
         }
         if(param1 == §&4§)
         {
            this.§8!9§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §+"1§.camera.goToBirdView();
         }
         else if(param1 == §[>§)
         {
            this.§8!9§ = 5000;
            §+"1§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §<1§)
         {
            §+"1§.camera.goToCastleView();
         }
         else if(param1 == §;l§)
         {
            this.§8!9§ = 2000;
            this.§?i§ = §2!f§;
            §+"1§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§8!9§ = 1200;
            if(!this.§%!]§)
            {
               §+"1§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§8!9§ = 1200;
            if(!this.§%!]§)
            {
               §+"1§.camera.goToBirdView();
               §+"1§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §#!5§)
         {
            this.§ !Z§();
            this.§8!9§ = 1200;
            §+"1§.camera.goToCastleView();
            §+"1§.objects.makePigsSmile(5);
         }
         this.§6!@§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §%!c§.§0O§();
         §%!c§.§8" §("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function § !Z§() : void
      {
         §%!c§.§0O§();
         §%!c§.§8" §("LevelFailedPigs1");
      }
      
      public function §3!'§() : void
      {
         this.§8!9§ = 2000;
         this.§6"-§ = false;
         this.§6T§ = 2000;
         this.changeGameState(§8v§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §<x§(param1:Number) : void
      {
         this.§6"-§ = false;
         this.§6T§ = Math.max(this.§6T§,param1);
      }
      
      protected function §%!W§() : Boolean
      {
         return §+"1§.slingshot.mSlingShotState == §]"!§.§7"%§ && !§+"1§.objects.hasBirds();
      }
      
      public function §^A§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§try§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§6",§ = null;
         this.§0!5§ -= param1;
         if(this.§6"-§)
         {
            this.§6T§ -= param1;
            if(this.§6T§ < 0)
            {
               this.§0!5§ = 0;
            }
         }
         if(this.§0!5§ <= 0 && !this.§8J§(false))
         {
            _loc2_ = -1;
            this.§0!5§ = §-!<§;
            _loc3_ = §+"1§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§6"-§ || this.§6T§ > 0))
            {
               if((!this.§6"-§ || this.§6T§ > 6000) && !§+"1§.objects.isPigsAlive())
               {
                  this.§6T§ = 6000;
                  this.§6"-§ = true;
               }
               else if(!this.§6"-§ && this.§%!W§())
               {
                  this.§6T§ = 15000;
                  this.§6"-§ = true;
               }
            }
            else if(!§+"1§.objects.isPigsAlive() && !this.§%!]§ && this.§[g§)
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§;K§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§%!W§())
            {
               if(_loc4_ = this.§%!H§())
               {
                  if(_loc4_.§ !h§ && _loc4_.§]!H§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§;K§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§ !h§)
                  {
                     this.§0!5§ = §-!<§;
                  }
               }
               else if(!this.§^!V§())
               {
                  _loc2_ = §#!5§;
                  this.§;K§(§#!5§);
               }
            }
            if(this.§8J§(false))
            {
               §+"1§.gameOver(_loc2_);
            }
         }
         this.§8!9§ -= param1;
         if(this.§8!9§ < 0)
         {
            this.§8!9§ = 0;
         }
         if(this.§6!@§ == §<1§)
         {
            §+"1§.updatePigAnimations(param1);
            if(!§+"1§.camera.isOnCastleView() && §+"1§.camera.mCurrentAction != §%5§.§!?§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§6!@§ == §;l§)
         {
            if(this.§8!9§ <= 0)
            {
               if((_loc5_ = §+"1§.objects.hasBirds()) && this.§?i§ > 0)
               {
                  this.§8!9§ = 2000;
                  this.§0!5§ = 0;
                  this.§?i§ = this.§?i§ - 1;
               }
               else if(!this.§%!]§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §+"1§.updatePigAnimations(param1);
            }
            if(!§+"1§.camera.isOnCastleView() && §+"1§.camera.mCurrentAction != §%5§.§!?§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§6!@§ == §&4§)
         {
            if(this.§8!9§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§6!@§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§+"1§.camera.isOnCastleView() && §+"1§.camera.mCurrentAction != §%5§.§!?§)
            {
               this.changeGameState(§<1§);
            }
         }
         else if(this.§6!@§ == §[>§)
         {
            if(_loc6_ = §+"1§.levelObjects.activeObject as §6",§)
            {
            }
         }
         else if(this.§6!@§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§8!9§ <= 0)
            {
               if(§+"1§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§8!9§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §%!]§() : Boolean
      {
         if(this.§%!H§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §[g§() : Boolean
      {
         return true;
      }
      
      public function §%!H§() : §try§
      {
         var _loc2_:§try§ = null;
         var _loc1_:int = §+"1§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+"1§.objects.getObject(_loc1_) as §try§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §^!V§() : Boolean
      {
         var _loc2_:§+k§ = null;
         var _loc1_:int = §+"1§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+"1§.objects.getObject(_loc1_) as §+k§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §;K§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§6"-§)
         {
            this.§6"-§ = true;
         }
         if(new Date().time - §+"1§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§+"1§.slingshot.mDragging)
         {
            return;
         }
         if(§+"1§.objects.isWorldAtSleep())
         {
            this.§6T§ = Math.min(this.§6T§,3500);
         }
         if(this.§6T§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §8J§(param1:Boolean = false) : Boolean
      {
         return (this.§6!@§ == LEVEL_STATE_VICTORY2_END || this.§6!@§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§6!@§ == §#!5§) && (!param1 || this.§8!9§ <= 0 && this.§6!@§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §9!t§() : Boolean
      {
         return this.§6!@§ == LEVEL_STATE_VICTORY2_END || this.§6!@§ == §#!5§;
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
         if(!this.§+!l§ || !§+"1§.mReadyToRun)
         {
            return;
         }
         if(!(§+"1§.slingshot.mDragging || §+"1§.camera.mDragging))
         {
            if(this.§6!@§ == §;l§ || this.§6!@§ == §<1§ || this.§6!@§ == LEVEL_STATE_SLINGSHOT || this.§6!@§ == §[>§)
            {
               if(!§+"1§.isPlayingReplay())
               {
                  §+"1§.camera.adjustManualScale(param1,param2 == 0 ? Number(§%5§.§;!w§) : Number(param2));
               }
               else
               {
                  §+"1§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §?!G§(param1:int) : void
      {
         this.§>Q§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§+!l§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §9%§.mouseDown();
         if(this.§8J§(false))
         {
            return;
         }
         if(!§+"1§.isPlayingReplay())
         {
            this.§'-§ = §+"1§.screenToBox2D(param1,param2,this.§'-§);
            if(§+"1§.levelObjects.activeObject is §6",§)
            {
               _loc4_ = §6",§(§+"1§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§6",§(§+"1§.levelObjects.activeObject).specialPowerUsed)
               {
                  §+"1§.activateSpecialPower(this.§'-§.x,this.§'-§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§+"1§.slingshot.canStartDragging(this.§'-§))
            {
               §+"1§.slingshot.startDragging();
               this.§'-§ = §+"1§.screenToBox2D(param1,param2);
               §+"1§.slingshot.setNewCoordinatesForRubber(this.§'-§.x,this.§'-§.y,false);
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §+"1§.camera.startDragging(param1,param2);
            }
            return;
         }
         §+"1§.camera.startDragging(param1,param2);
         §+"1§.resetReplaySpeed();
      }
      
      protected function §6&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §+"1§.screenToBox2D(param1,param2,null);
         var _loc4_:§;;§;
         if(_loc4_ = §+"1§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §+"1§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§+!l§)
         {
            return;
         }
         §9%§.mouseUp();
         if(this.§6!@§ == §&4§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§+"1§.slingshot.mDragging)
         {
            this.§'-§ = §+"1§.screenToBox2D(param1,param2,this.§'-§);
            §+"1§.slingshot.setNewCoordinatesForRubber(this.§'-§.x,this.§'-§.y,false);
            if(§+"1§.slingshot.canShootTheBird)
            {
               §+"1§.slingshot.shoot();
               this.changeGameState(§[>§);
            }
            else
            {
               §+"1§.slingshot.cancelDragging();
            }
         }
         if(§+"1§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §+"1§.camera.dragToNewPoint(param1,param2);
            }
            §+"1§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§+!l§)
         {
            return;
         }
         if(§+"1§.slingshot.mDragging)
         {
            this.§'-§ = §+"1§.screenToBox2D(param1,param2,this.§'-§);
            §+"1§.slingshot.setNewCoordinatesForRubber(this.§'-§.x,this.§'-§.y,false);
         }
         else if(§+"1§.camera.mDragging)
         {
            §+"1§.camera.dragToNewPoint(param1,param2);
         }
         this.§4!d§ = param1;
         this.§8!a§ = param2;
      }
      
      public function §9^§() : Point
      {
         return new Point(this.§4!d§,this.§8!a§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§'!@§.§[b§(this.§'!@§.getValue() + param1);
         this.§<x§(§-!W§);
         if(this.§6!@§ == §;l§)
         {
            this.§8!9§ = 2000;
            this.§?i§ = §2!f§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§'!@§.getValue() / param1) * param1;
         }
         return this.§'!@§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§%!]§)
         {
            return 0;
         }
         var _loc1_:Number = §97§.getLevelForId(§97§.currentLevel).getEagleScore(§+"1§.levelItemManager,§+"1§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§+!l§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§+!l§ = param1;
      }
   }
}

package §;f§
{
   import §"!-§.§ !§;
   import §"!-§.§2P§;
   import §"!-§.§93§;
   import §"!-§.§[-§;
   import §'w§.§ !7§;
   import §-!F§.§?!k§;
   import §9![§.§1!i§;
   import §=!7§.§9c§;
   import §>!a§.§5l§;
   import §@"1§.§"h§;
   import §@"1§.§`!j§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §'!3§ extends §8"5§
   {
      
      public static const §1D§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §<!4§:int = 2;
      
      public static const §+!L§:int = 3;
      
      public static const §>C§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §<!6§:int = 7;
      
      public static const §5"5§:Number = 2000;
      
      public static const §@!`§:Number = 2500;
      
      public static const §^9§:int = 5;
      
      private static const §8#§:Number = § !7§.§"!N§ / 100;
       
      
      protected var §-!D§:int = 0;
      
      protected var §9Y§:Number;
      
      protected var §#!k§:Number = 0;
      
      protected var §<W§:Boolean = false;
      
      protected var §3#§:Number = 0;
      
      private var §&!7§:Number = 0;
      
      private var § !p§:int = 0;
      
      private var §!"$§:Number = 0;
      
      private var §]3§:Number = 0;
      
      protected var §4!V§:Boolean = true;
      
      protected var §;!2§:§?!k§;
      
      protected var §&!X§:Point;
      
      public function §'!3§(param1:§"h§, param2:§5l§)
      {
         this.§;!2§ = new §?!k§();
         this.§&!X§ = new Point();
         super(param1,param2);
      }
      
      public function get §1!n§() : int
      {
         return this.§-!D§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§;!2§.§4!Y§(0);
         this.§-!D§ = -1;
         this.§ !p§ = 0;
         this.§#!k§ = 0;
         this.§<W§ = false;
         this.changeGameState(§1D§);
         this.§9Y§ = §5"5§;
         §?H§(true);
         §`W§.objects.setCollisionsEnabled(true);
         §`W§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §`W§.update(param1,true);
         this.§&a§(param1);
         this.§<u§(param1);
      }
      
      private function §&a§(param1:int) : void
      {
         if(this.§ !p§ != 0)
         {
            §`W§.camera.adjustManualScale(this.§ !p§ > 0,param1 * §8#§);
         }
      }
      
      public function clearLevel() : void
      {
         §`W§.clearLevel();
         removeEventListeners();
         this.§-!D§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §>!B§() : Boolean
      {
         if(§`W§.camera.mCurrentCameraSliderLocation < § !7§.§8x§)
         {
            return false;
         }
         if(!§`W§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §4T§(param1:int) : void
      {
         var _loc2_:§ !7§ = §`W§.camera;
         if(_loc2_.§4B§ > 0)
         {
            _loc2_.§4B§ -= param1;
            if(_loc2_.§4B§ <= 0)
            {
               if(this.§>!B§())
               {
                  _loc2_.§4B§ = -1;
                  if(§`W§.slingshot.birdsAvailable)
                  {
                     _loc2_.§4"2§();
                  }
               }
               else
               {
                  _loc2_.§4B§ = § !7§.§"!,§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§ U§(false) && !param2)
         {
            return;
         }
         if(param1 == §1D§)
         {
            this.§3#§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §`W§.camera.goToBirdView();
         }
         else if(param1 == §<!4§)
         {
            this.§3#§ = 5000;
            §`W§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §+!L§)
         {
            §`W§.camera.goToCastleView();
         }
         else if(param1 == §>C§)
         {
            this.§3#§ = 2000;
            this.§&!7§ = §^9§;
            §`W§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§3#§ = 1200;
            if(!this.§ !c§)
            {
               §`W§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§3#§ = 1200;
            if(!this.§ !c§)
            {
               §`W§.camera.goToBirdView();
               §`W§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §<!6§)
         {
            this.§`!D§();
            this.§3#§ = 1200;
            §`W§.camera.goToCastleView();
            §`W§.objects.makePigsSmile(5);
         }
         this.§-!D§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §1!i§.§ !S§();
         §1!i§.§+!Y§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §`!D§() : void
      {
         §1!i§.§ !S§();
         §1!i§.§+!Y§("LevelFailedPigs1");
      }
      
      public function §'z§() : void
      {
         this.§3#§ = 2000;
         this.§<W§ = false;
         this.§#!k§ = 2000;
         this.changeGameState(§'!3§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §>#§(param1:Number) : void
      {
         this.§<W§ = false;
         this.§#!k§ = Math.max(this.§#!k§,param1);
      }
      
      protected function §]q§() : Boolean
      {
         return §`W§.slingshot.mSlingShotState == §`!j§.§]!u§ && !§`W§.objects.hasBirds();
      }
      
      public function §<u§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§2P§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§ !§ = null;
         this.§9Y§ -= param1;
         if(this.§<W§)
         {
            this.§#!k§ -= param1;
            if(this.§#!k§ < 0)
            {
               this.§9Y§ = 0;
            }
         }
         if(this.§9Y§ <= 0 && !this.§ U§(false))
         {
            _loc2_ = -1;
            this.§9Y§ = §5"5§;
            _loc3_ = §`W§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§<W§ || this.§#!k§ > 0))
            {
               if((!this.§<W§ || this.§#!k§ > 6000) && !§`W§.objects.isPigsAlive())
               {
                  this.§#!k§ = 6000;
                  this.§<W§ = true;
               }
               else if(!this.§<W§ && this.§]q§())
               {
                  this.§#!k§ = 15000;
                  this.§<W§ = true;
               }
            }
            else if(!§`W§.objects.isPigsAlive() && !this.§ !c§ && this.§@E§)
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§2!M§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§]q§())
            {
               if(_loc4_ = this.§""3§())
               {
                  if(_loc4_.§-U§ && _loc4_.§5!4§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§2!M§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§-U§)
                  {
                     this.§9Y§ = §5"5§;
                  }
               }
               else if(!this.§[!9§())
               {
                  _loc2_ = §<!6§;
                  this.§2!M§(§<!6§);
               }
            }
            if(this.§ U§(false))
            {
               §`W§.gameOver(_loc2_);
            }
         }
         this.§3#§ -= param1;
         if(this.§3#§ < 0)
         {
            this.§3#§ = 0;
         }
         if(this.§-!D§ == §+!L§)
         {
            §`W§.updatePigAnimations(param1);
            if(!§`W§.camera.isOnCastleView() && §`W§.camera.mCurrentAction != § !7§.§9f§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§-!D§ == §>C§)
         {
            if(this.§3#§ <= 0)
            {
               if((_loc5_ = §`W§.objects.hasBirds()) && this.§&!7§ > 0)
               {
                  this.§3#§ = 2000;
                  this.§9Y§ = 0;
                  this.§&!7§ = this.§&!7§ - 1;
               }
               else if(!this.§ !c§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §`W§.updatePigAnimations(param1);
            }
            if(!§`W§.camera.isOnCastleView() && §`W§.camera.mCurrentAction != § !7§.§9f§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§-!D§ == §1D§)
         {
            if(this.§3#§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§-!D§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§`W§.camera.isOnCastleView() && §`W§.camera.mCurrentAction != § !7§.§9f§)
            {
               this.changeGameState(§+!L§);
            }
         }
         else if(this.§-!D§ == §<!4§)
         {
            if(_loc6_ = §`W§.levelObjects.activeObject as § !§)
            {
            }
         }
         else if(this.§-!D§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§3#§ <= 0)
            {
               if(§`W§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§3#§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get § !c§() : Boolean
      {
         if(this.§""3§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §@E§() : Boolean
      {
         return true;
      }
      
      public function §""3§() : §2P§
      {
         var _loc2_:§2P§ = null;
         var _loc1_:int = §`W§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §`W§.objects.getObject(_loc1_) as §2P§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §[!9§() : Boolean
      {
         var _loc2_:§93§ = null;
         var _loc1_:int = §`W§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §`W§.objects.getObject(_loc1_) as §93§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §2!M§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§<W§)
         {
            this.§<W§ = true;
         }
         if(new Date().time - §`W§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§`W§.slingshot.mDragging)
         {
            return;
         }
         if(§`W§.objects.isWorldAtSleep())
         {
            this.§#!k§ = Math.min(this.§#!k§,3500);
         }
         if(this.§#!k§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function § U§(param1:Boolean = false) : Boolean
      {
         return (this.§-!D§ == LEVEL_STATE_VICTORY2_END || this.§-!D§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§-!D§ == §<!6§) && (!param1 || this.§3#§ <= 0 && this.§-!D§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §3!B§() : Boolean
      {
         return this.§-!D§ == LEVEL_STATE_VICTORY2_END || this.§-!D§ == §<!6§;
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
         if(!this.§4!V§ || !§`W§.mReadyToRun)
         {
            return;
         }
         if(!(§`W§.slingshot.mDragging || §`W§.camera.mDragging))
         {
            if(this.§-!D§ == §>C§ || this.§-!D§ == §+!L§ || this.§-!D§ == LEVEL_STATE_SLINGSHOT || this.§-!D§ == §<!4§)
            {
               if(!§`W§.isPlayingReplay())
               {
                  §`W§.camera.adjustManualScale(param1,param2 == 0 ? Number(§ !7§.§"!N§) : Number(param2));
               }
               else
               {
                  §`W§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §4s§(param1:int) : void
      {
         this.§ !p§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§4!V§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §9c§.mouseDown();
         if(this.§ U§(false))
         {
            return;
         }
         if(!§`W§.isPlayingReplay())
         {
            this.§&!X§ = §`W§.screenToBox2D(param1,param2,this.§&!X§);
            if(§`W§.levelObjects.activeObject is § !§)
            {
               _loc4_ = § !§(§`W§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§ !§(§`W§.levelObjects.activeObject).specialPowerUsed)
               {
                  §`W§.activateSpecialPower(this.§&!X§.x,this.§&!X§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§`W§.slingshot.canStartDragging(this.§&!X§))
            {
               §`W§.slingshot.startDragging();
               this.§&!X§ = §`W§.screenToBox2D(param1,param2);
               §`W§.slingshot.setNewCoordinatesForRubber(this.§&!X§.x,this.§&!X§.y,false);
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §`W§.camera.startDragging(param1,param2);
            }
            return;
         }
         §`W§.camera.startDragging(param1,param2);
         §`W§.resetReplaySpeed();
      }
      
      protected function § I§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §`W§.screenToBox2D(param1,param2,null);
         var _loc4_:§[-§;
         if(_loc4_ = §`W§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §`W§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§4!V§)
         {
            return;
         }
         §9c§.mouseUp();
         if(this.§-!D§ == §1D§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§`W§.slingshot.mDragging)
         {
            this.§&!X§ = §`W§.screenToBox2D(param1,param2,this.§&!X§);
            §`W§.slingshot.setNewCoordinatesForRubber(this.§&!X§.x,this.§&!X§.y,false);
            if(§`W§.slingshot.canShootTheBird)
            {
               §`W§.slingshot.shoot();
               this.changeGameState(§<!4§);
            }
            else
            {
               §`W§.slingshot.cancelDragging();
            }
         }
         if(§`W§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §`W§.camera.dragToNewPoint(param1,param2);
            }
            §`W§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§4!V§)
         {
            return;
         }
         if(§`W§.slingshot.mDragging)
         {
            this.§&!X§ = §`W§.screenToBox2D(param1,param2,this.§&!X§);
            §`W§.slingshot.setNewCoordinatesForRubber(this.§&!X§.x,this.§&!X§.y,false);
         }
         else if(§`W§.camera.mDragging)
         {
            §`W§.camera.dragToNewPoint(param1,param2);
         }
         this.§!"$§ = param1;
         this.§]3§ = param2;
      }
      
      public function § !O§() : Point
      {
         return new Point(this.§!"$§,this.§]3§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§;!2§.§4!Y§(this.§;!2§.getValue() + param1);
         this.§>#§(§@!`§);
         if(this.§-!D§ == §>C§)
         {
            this.§3#§ = 2000;
            this.§&!7§ = §^9§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§;!2§.getValue() / param1) * param1;
         }
         return this.§;!2§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§ !c§)
         {
            return 0;
         }
         var _loc1_:Number = §^!§.getLevelForId(§^!§.currentLevel).getEagleScore(§`W§.levelItemManager,§`W§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§4!V§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§4!V§ = param1;
      }
   }
}

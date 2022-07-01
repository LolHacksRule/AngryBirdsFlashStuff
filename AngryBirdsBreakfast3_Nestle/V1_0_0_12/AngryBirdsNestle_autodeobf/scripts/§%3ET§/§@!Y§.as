package §>T§
{
   import § 2§.§<!F§;
   import § 2§.§=+§;
   import §%Z§.§&!-§;
   import §%Z§.§'!M§;
   import §%Z§.§2h§;
   import §%Z§.§=!V§;
   import §-'§.§ i§;
   import §8!$§.§ !D§;
   import §;X§.§4!@§;
   import §`!s§.§9!i§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@!Y§ extends §>X§
   {
      
      public static const §;!r§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §5!j§:int = 2;
      
      public static const §>!f§:int = 3;
      
      public static const §7b§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §3"4§:int = 7;
      
      public static const §'"%§:Number = 2000;
      
      public static const §8!F§:Number = 2500;
      
      public static const §?!q§:int = 5;
      
      private static const §6! §:Number = § i§.§@"-§ / 100;
       
      
      protected var §]!o§:int = 0;
      
      protected var §8!Z§:Number;
      
      protected var §-!j§:Number = 0;
      
      protected var §-!E§:Boolean = false;
      
      protected var §-!a§:Number = 0;
      
      private var §`!a§:Number = 0;
      
      private var §2$§:int = 0;
      
      private var §`q§:Number = 0;
      
      private var §,!x§:Number = 0;
      
      protected var §^!N§:Boolean = true;
      
      protected var §3[§:§9!i§;
      
      protected var §!!T§:Point;
      
      public function §@!Y§(param1:§=+§, param2:§-g§)
      {
         this.§3[§ = new §9!i§();
         this.§!!T§ = new Point();
         super(param1,param2);
      }
      
      public function get §1$§() : int
      {
         return this.§]!o§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§3[§.§7v§(0);
         this.§]!o§ = -1;
         this.§2$§ = 0;
         this.§-!j§ = 0;
         this.§-!E§ = false;
         this.changeGameState(§;!r§);
         this.§8!Z§ = §'"%§;
         §6<§(true);
         §false§.objects.setCollisionsEnabled(true);
         §false§.objects.setGroundTextureEnabled(true);
         §false§.slingshot.addEventListener(§<!F§.§!i§,this.§'F§);
      }
      
      private function §'F§(param1:Event) : void
      {
         this.changeGameState(§5!j§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §false§.update(param1,true);
         this.§^W§(param1);
         this.§0v§(param1);
      }
      
      private function §^W§(param1:int) : void
      {
         if(this.§2$§ != 0)
         {
            §false§.camera.adjustManualScale(this.§2$§ > 0,param1 * §6! §);
         }
      }
      
      public function clearLevel() : void
      {
         §false§.clearLevel();
         removeEventListeners();
         this.§]!o§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §0!n§() : Boolean
      {
         if(§false§.camera.mCurrentCameraSliderLocation < § i§.§"V§)
         {
            return false;
         }
         if(!§false§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §-!"§(param1:int) : void
      {
         var _loc2_:§ i§ = §false§.camera;
         if(_loc2_.§-=§ > 0)
         {
            _loc2_.§-=§ -= param1;
            if(_loc2_.§-=§ <= 0)
            {
               if(this.§0!n§())
               {
                  _loc2_.§-=§ = -1;
                  if(§false§.slingshot.birdsAvailable)
                  {
                     _loc2_.§!!3§();
                  }
               }
               else
               {
                  _loc2_.§-=§ = § i§.§+!z§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§5!;§(false) && !param2)
         {
            return;
         }
         if(param1 == §;!r§)
         {
            this.§-!a§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §false§.camera.goToBirdView();
         }
         else if(param1 == §5!j§)
         {
            this.§-!a§ = 5000;
            §false§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §>!f§)
         {
            §false§.camera.goToCastleView();
         }
         else if(param1 == §7b§)
         {
            this.§-!a§ = 2000;
            this.§`!a§ = §?!q§;
            §false§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§-!a§ = 1200;
            if(!this.§7!#§)
            {
               §false§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§-!a§ = 1200;
            if(!this.§7!#§)
            {
               §false§.camera.goToBirdView();
               §false§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §3"4§)
         {
            this.§9+§();
            this.§-!a§ = 1200;
            §false§.camera.goToCastleView();
            §false§.objects.makePigsSmile(5);
         }
         this.§]!o§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §4!@§.§ true§();
         §4!@§.§`!w§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §9+§() : void
      {
         §4!@§.§ true§();
         §4!@§.§`!w§("LevelFailedPigs1");
      }
      
      public function §#!u§() : void
      {
         this.§-!a§ = 2000;
         this.§-!E§ = false;
         this.§-!j§ = 2000;
         this.changeGameState(§@!Y§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §0!a§(param1:Number) : void
      {
         this.§-!j§ = Math.max(this.§-!j§,param1);
      }
      
      public function §,!^§() : Boolean
      {
         return §false§.slingshot.mSlingShotState == §<!F§.§]_§ && !§false§.objects.hasBirds();
      }
      
      public function §0v§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§2h§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§=!V§ = null;
         this.§8!Z§ -= param1;
         if(this.§-!E§)
         {
            this.§-!j§ -= param1;
            if(this.§-!j§ < 0)
            {
               this.§8!Z§ = 0;
            }
         }
         if(this.§8!Z§ <= 0 && !this.§5!;§(false))
         {
            _loc2_ = -1;
            this.§8!Z§ = §'"%§;
            _loc3_ = §false§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§-!E§ || this.§-!j§ > 0))
            {
               if((!this.§-!E§ || this.§-!j§ > 6000) && !§false§.objects.isPigsAlive())
               {
                  this.§-!j§ = 6000;
                  this.§-!E§ = true;
               }
               else if(!this.§-!E§ && this.§,!^§())
               {
                  this.§-!j§ = 15000;
                  this.§-!E§ = true;
               }
            }
            else if(!§false§.objects.isPigsAlive() && this.§%2§ && !this.§'!r§())
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§=t§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§,!^§())
            {
               if(_loc4_ = this.§"!u§())
               {
                  if(_loc4_.§0H§ && _loc4_.§54§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§=t§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§0H§)
                  {
                     this.§8!Z§ = §'"%§;
                  }
               }
               else if(!this.§>x§())
               {
                  _loc2_ = §3"4§;
                  this.§=t§(§3"4§);
               }
            }
            if(this.§5!;§(false))
            {
               §false§.gameOver(_loc2_);
            }
         }
         this.§-!a§ -= param1;
         if(this.§-!a§ < 0)
         {
            this.§-!a§ = 0;
         }
         if(this.§]!o§ == §>!f§)
         {
            §false§.updatePigAnimations(param1);
            if(!§false§.camera.isOnCastleView() && §false§.camera.mCurrentAction != § i§.§1!q§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§]!o§ == §7b§)
         {
            if(this.§-!a§ <= 0)
            {
               if((_loc5_ = §false§.objects.hasBirds()) && this.§`!a§ > 0)
               {
                  this.§-!a§ = 2000;
                  this.§8!Z§ = 0;
                  this.§`!a§ = this.§`!a§ - 1;
               }
               else if(!this.§7!#§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §false§.updatePigAnimations(param1);
            }
            if(!§false§.camera.isOnCastleView() && §false§.camera.mCurrentAction != § i§.§1!q§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§]!o§ == §;!r§)
         {
            if(this.§-!a§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§]!o§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§false§.camera.isOnCastleView() && §false§.camera.mCurrentAction != § i§.§1!q§)
            {
               this.changeGameState(§>!f§);
            }
         }
         else if(this.§]!o§ == §5!j§)
         {
            if(!(_loc6_ = §false§.levelObjects.activeObject as §=!V§) || _loc6_ && !_loc6_.§4c§)
            {
               this.changeGameState(§7b§);
            }
         }
         else if(this.§]!o§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§-!a§ <= 0)
            {
               if(§false§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§-!a§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §'!r§() : Boolean
      {
         return this.§7!#§;
      }
      
      protected function get §7!#§() : Boolean
      {
         if(this.§"!u§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §%2§() : Boolean
      {
         return true;
      }
      
      public function §"!u§() : §2h§
      {
         var _loc2_:§2h§ = null;
         var _loc1_:int = §false§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §false§.objects.getObject(_loc1_) as §2h§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §>x§() : Boolean
      {
         var _loc2_:§'!M§ = null;
         var _loc1_:int = §false§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §false§.objects.getObject(_loc1_) as §'!M§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §=t§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§-!E§)
         {
            this.§-!E§ = true;
         }
         if(new Date().time - §false§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§false§.slingshot.mDragging)
         {
            return;
         }
         if(§false§.objects.isWorldAtSleep())
         {
            this.§-!j§ = Math.min(this.§-!j§,3500);
         }
         if(this.§-!j§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §5!;§(param1:Boolean = false) : Boolean
      {
         return (this.§]!o§ == LEVEL_STATE_VICTORY2_END || this.§]!o§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§]!o§ == §3"4§) && (!param1 || this.§-!a§ <= 0 && this.§]!o§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §[!M§() : Boolean
      {
         return this.§]!o§ == LEVEL_STATE_VICTORY2_END || this.§]!o§ == §3"4§;
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
         if(!this.§^!N§ || !§false§.mReadyToRun)
         {
            return;
         }
         if(this.§]!o§ == §7b§ || this.§]!o§ == §>!f§ || this.§]!o§ == LEVEL_STATE_SLINGSHOT || this.§]!o§ == §5!j§)
         {
            if(!§false§.isPlayingReplay())
            {
               §false§.camera.adjustManualScale(param1,param2 == 0 ? Number(§ i§.§@"-§) : Number(param2));
            }
            else
            {
               §false§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §!t§(param1:int) : void
      {
         this.§2$§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§^!N§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         § !D§.mouseDown();
         if(this.§5!;§(false))
         {
            return;
         }
         if(!§false§.isPlayingReplay())
         {
            this.§!!T§ = §false§.screenToBox2D(param1,param2,this.§!!T§);
            if(§false§.levelObjects.activeObject is §=!V§)
            {
               _loc4_ = §=!V§(§false§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§=!V§(§false§.levelObjects.activeObject).specialPowerUsed)
               {
                  §false§.activateSpecialPower(this.§!!T§.x,this.§!!T§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§false§.slingshot.canStartDragging(this.§!!T§))
            {
               §false§.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §false§.camera.startDragging(param1,param2);
            }
            return;
         }
         §false§.camera.startDragging(param1,param2);
         §false§.resetReplaySpeed();
      }
      
      protected function §]!5§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §false§.screenToBox2D(param1,param2,null);
         var _loc4_:§&!-§;
         if(_loc4_ = §false§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §false§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§^!N§)
         {
            return;
         }
         § !D§.mouseUp();
         if(this.§]!o§ == §;!r§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§false§.slingshot.mDragging)
         {
            this.§!!T§ = §false§.screenToBox2D(param1,param2,this.§!!T§);
            §false§.slingshot.setNewCoordinatesForRubber(this.§!!T§.x,this.§!!T§.y,false);
            if(§false§.slingshot.canShootTheBird)
            {
               §false§.slingshot.shoot();
               if(this.§-!j§ < 6000)
               {
                  this.§-!j§ = 6000;
               }
            }
            else
            {
               §false§.slingshot.cancelDragging();
            }
         }
         if(§false§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §false§.camera.dragToNewPoint(param1,param2);
            }
            §false§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§^!N§)
         {
            return;
         }
         if(§false§.slingshot.mDragging)
         {
            this.§!!T§ = §false§.screenToBox2D(param1,param2,this.§!!T§);
            §false§.slingshot.setNewCoordinatesForRubber(this.§!!T§.x,this.§!!T§.y,false);
         }
         else if(§false§.camera.mDragging)
         {
            §false§.camera.dragToNewPoint(param1,param2);
         }
         this.§`q§ = param1;
         this.§,!x§ = param2;
      }
      
      public function §&!R§() : Point
      {
         return new Point(this.§`q§,this.§,!x§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§3[§.§7v§(this.§3[§.getValue() + param1);
         this.§0!a§(§8!F§);
         if(this.§]!o§ == §7b§)
         {
            this.§-!a§ = 2000;
            this.§`!a§ = §?!q§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§3[§.getValue() / param1) * param1;
         }
         return this.§3[§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§7!#§)
         {
            return 0;
         }
         var _loc1_:Number = §#n§.getLevelForId(§#n§.currentLevel).getEagleScore(§false§.levelItemManager,§false§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§^!N§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§^!N§ = param1;
      }
      
      public function §5!s§() : void
      {
         this.changeGameState(§3"4§,true);
      }
      
      public function §#!J§() : void
      {
         while(§false§.slingshot.updateScoreForRemainingBirds())
         {
         }
         this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
      }
   }
}

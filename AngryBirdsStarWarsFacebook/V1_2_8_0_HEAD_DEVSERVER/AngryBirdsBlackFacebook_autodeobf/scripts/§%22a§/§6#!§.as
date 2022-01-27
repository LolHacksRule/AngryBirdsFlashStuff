package §"a§
{
   import §-!_§.§,#Q§;
   import §1!i§.§;7§;
   import §5t§.§`"+§;
   import §7P§.§&#=§;
   import §7P§.§'"o§;
   import §7P§.§?"N§;
   import §7P§.§@#P§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   import §^#>§.§;x§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §6#!§ extends §3!z§
   {
      
      public static const §8#1§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §#"r§:int = 2;
      
      public static const §&!C§:int = 3;
      
      public static const §#"b§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §7!T§:int = 7;
      
      public static const §%"$§:Number = 2000;
      
      public static const §>"f§:Number = 2500;
      
      public static const §+#I§:int = 5;
      
      private static const §#`§:Number = §,#Q§.§#"E§ / 100;
       
      
      protected var §[F§:int = 0;
      
      protected var §+#B§:Number;
      
      protected var §+"U§:Number = 0;
      
      protected var §9H§:Boolean = false;
      
      protected var §%"J§:Number = 0;
      
      private var §""[§:Number = 0;
      
      private var §-#7§:int = 0;
      
      private var §-"p§:Number = 0;
      
      private var §]#?§:Number = 0;
      
      protected var §&%§:Boolean = true;
      
      protected var §5"9§:§;7§;
      
      protected var §'!5§:Point;
      
      public function §6#!§(param1:§#_§, param2:§+"2§)
      {
         this.§5"9§ = new §;7§();
         this.§'!5§ = new Point();
         super(param1,param2);
      }
      
      public function get §2#F§() : int
      {
         return this.§[F§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§5"9§.§3"Q§(0);
         this.§[F§ = -1;
         this.§-#7§ = 0;
         this.§+"U§ = 0;
         this.§9H§ = false;
         this.§,#A§(§8#1§);
         this.§+#B§ = §%"$§;
         §6"<§(true);
         §2#G§.objects.setCollisionsEnabled(true);
         §2#G§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §2#G§.update(param1,true);
         this.§2" §(param1);
         this.§"s§(param1);
      }
      
      private function §2" §(param1:int) : void
      {
         if(this.§-#7§ != 0)
         {
            §2#G§.camera.adjustManualScale(this.§-#7§ > 0,param1 * §#`§);
         }
      }
      
      public function clearLevel() : void
      {
         §2#G§.clearLevel();
         removeEventListeners();
         this.§[F§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §?[§() : Boolean
      {
         if(§2#G§.camera.mCurrentCameraSliderLocation < §,#Q§.§>!2§)
         {
            return false;
         }
         if(!§2#G§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §,"P§(param1:int) : void
      {
         var _loc2_:§,#Q§ = §2#G§.camera;
         if(_loc2_.§]U§ > 0)
         {
            _loc2_.§]U§ -= param1;
            if(_loc2_.§]U§ <= 0)
            {
               if(this.§?[§())
               {
                  _loc2_.§]U§ = -1;
                  if(§2#G§.slingshot.birdsAvailable)
                  {
                     _loc2_.§5#$§();
                  }
               }
               else
               {
                  _loc2_.§]U§ = §,#Q§.§>"<§ / 2;
               }
            }
         }
      }
      
      public function §,#A§(param1:int, param2:Boolean = false) : void
      {
         if(this.§-#I§(false) && !param2)
         {
            return;
         }
         if(param1 == §8#1§)
         {
            this.§%"J§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §2#G§.camera.goToBirdView();
         }
         else if(param1 == §#"r§)
         {
            this.§%"J§ = 5000;
            §2#G§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §&!C§)
         {
            §2#G§.camera.goToCastleView();
         }
         else if(param1 == §#"b§)
         {
            this.§%"J§ = 2000;
            this.§""[§ = §+#I§;
            §2#G§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§%"J§ = 1200;
            if(!this.§9#F§)
            {
               §2#G§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§%"J§ = 1200;
            if(!this.§9#F§)
            {
               §2#G§.camera.goToBirdView();
               §2#G§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §7!T§)
         {
            this.playFailSound();
            this.§%"J§ = 1200;
            §2#G§.camera.goToCastleView();
            §2#G§.objects.makePigsSmile(5);
         }
         this.§[F§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §?!r§.§0"#§();
         §?!r§.§"#_§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         §?!r§.§0"#§();
         §?!r§.§"#_§("LevelFailedPigs1");
      }
      
      public function §3x§() : void
      {
         this.§%"J§ = 2000;
         this.§9H§ = false;
         this.§+"U§ = 2000;
         this.§,#A§(§6#!§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §import§(param1:Number) : void
      {
         this.§+"U§ = Math.max(this.§+"U§,param1);
      }
      
      public function §0#Y§() : Boolean
      {
         return §2#G§.slingshot.mSlingShotState == §;x§.§2"R§ && !§2#G§.objects.hasBirds();
      }
      
      public function §"s§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§'"o§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§?"N§ = null;
         this.§+#B§ -= param1;
         if(this.§9H§)
         {
            this.§+"U§ -= param1;
            if(this.§+"U§ < 0)
            {
               this.§+#B§ = 0;
            }
         }
         if(this.§+#B§ <= 0 && !this.§-#I§(false))
         {
            _loc2_ = -1;
            this.§+#B§ = §%"$§;
            _loc3_ = §2#G§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§9H§ || this.§+"U§ > 0))
            {
               if((!this.§9H§ || this.§+"U§ > 6000) && !§2#G§.objects.isPigsAlive())
               {
                  this.§+"U§ = 6000;
                  this.§9H§ = true;
               }
               else if(!this.§9H§ && this.§0#Y§())
               {
                  this.§+"U§ = 15000;
                  this.§9H§ = true;
               }
            }
            else if(!§2#G§.objects.isPigsAlive() && this.isAllowedToWin && !this.isSpecialUsed())
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§><§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§0#Y§())
            {
               if(_loc4_ = this.§+!f§())
               {
                  if(_loc4_.§7!X§ && _loc4_.§3! § > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§><§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§7!X§)
                  {
                     this.§+#B§ = §%"$§;
                  }
               }
               else if(!this.isGameOverBlocked())
               {
                  _loc2_ = §7!T§;
                  this.§><§(§7!T§);
               }
            }
            if(this.§-#I§(false))
            {
               §2#G§.gameOver(_loc2_);
            }
         }
         this.§%"J§ -= param1;
         if(this.§%"J§ < 0)
         {
            this.§%"J§ = 0;
         }
         if(this.§[F§ == §&!C§)
         {
            §2#G§.updatePigAnimations(param1);
            if(!§2#G§.camera.isOnCastleView() && §2#G§.camera.mCurrentAction != §,#Q§.§>"?§)
            {
               this.§,#A§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§[F§ == §#"b§)
         {
            if(this.§%"J§ <= 0)
            {
               if((_loc5_ = §2#G§.objects.hasBirds()) && this.§""[§ > 0)
               {
                  this.§%"J§ = 2000;
                  this.§+#B§ = 0;
                  this.§""[§ = this.§""[§ - 1;
               }
               else if(!this.§9#F§)
               {
                  this.§,#A§(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §2#G§.updatePigAnimations(param1);
            }
            if(!§2#G§.camera.isOnCastleView() && §2#G§.camera.mCurrentAction != §,#Q§.§>"?§)
            {
               this.§,#A§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§[F§ == §8#1§)
         {
            if(this.§%"J§ <= 0)
            {
               this.§,#A§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§[F§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§2#G§.camera.isOnCastleView() && §2#G§.camera.mCurrentAction != §,#Q§.§>"?§)
            {
               this.§,#A§(§&!C§);
            }
         }
         else if(this.§[F§ == §#"r§)
         {
            if(_loc6_ = §2#G§.levelObjects.activeObject as §?"N§)
            {
            }
         }
         else if(this.§[F§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§%"J§ <= 0)
            {
               if(§2#G§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§%"J§ = 1000;
               }
               else
               {
                  this.§,#A§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function isSpecialUsed() : Boolean
      {
         return this.§9#F§;
      }
      
      protected function get §9#F§() : Boolean
      {
         if(this.§+!f§())
         {
            return true;
         }
         return false;
      }
      
      protected function get isAllowedToWin() : Boolean
      {
         return true;
      }
      
      public function §+!f§() : §'"o§
      {
         var _loc2_:§'"o§ = null;
         var _loc1_:int = §2#G§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §2#G§.objects.getObject(_loc1_) as §'"o§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function isGameOverBlocked() : Boolean
      {
         var _loc2_:§@#P§ = null;
         var _loc1_:int = §2#G§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §2#G§.objects.getObject(_loc1_) as §@#P§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §><§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§9H§)
         {
            this.§9H§ = true;
         }
         if(new Date().time - §2#G§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§2#G§.slingshot.mDragging)
         {
            return;
         }
         if(§2#G§.objects.isWorldAtSleep())
         {
            this.§+"U§ = Math.min(this.§+"U§,3500);
         }
         if(this.§+"U§ <= 0)
         {
            this.§,#A§(param1,param2);
         }
      }
      
      public function §-#I§(param1:Boolean = false) : Boolean
      {
         return (this.§[F§ == LEVEL_STATE_VICTORY2_END || this.§[F§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§[F§ == §7!T§) && (!param1 || this.§%"J§ <= 0 && this.§[F§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §2#Q§() : Boolean
      {
         return this.§[F§ == LEVEL_STATE_VICTORY2_END || this.§[F§ == §7!T§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§8"a§(param1.delta > 0);
         }
      }
      
      public function §8"a§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§&%§ || !§2#G§.mReadyToRun)
         {
            return;
         }
         if(this.§[F§ == §#"b§ || this.§[F§ == §&!C§ || this.§[F§ == LEVEL_STATE_SLINGSHOT || this.§[F§ == §#"r§)
         {
            if(!§2#G§.isPlayingReplay())
            {
               §2#G§.camera.adjustManualScale(param1,param2 == 0 ? Number(§,#Q§.§#"E§) : Number(param2));
            }
            else
            {
               §2#G§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §,!V§(param1:int) : void
      {
         this.§-#7§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§&%§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §`"+§.§^U§();
         if(this.§-#I§(false))
         {
            return;
         }
         if(!§2#G§.isPlayingReplay())
         {
            this.§'!5§ = §2#G§.screenToBox2D(param1,param2,this.§'!5§);
            if(§2#G§.levelObjects.activeObject is §?"N§)
            {
               _loc4_ = §?"N§(§2#G§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§?"N§(§2#G§.levelObjects.activeObject).specialPowerUsed)
               {
                  §2#G§.activateSpecialPower(this.§'!5§.x,this.§'!5§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§2#G§.slingshot.canStartDragging(this.§'!5§))
            {
               §2#G§.slingshot.startDragging();
               this.§,#A§(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §2#G§.camera.startDragging(param1,param2);
            }
            return;
         }
         §2#G§.camera.startDragging(param1,param2);
         §2#G§.resetReplaySpeed();
      }
      
      protected function §^#,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §2#G§.screenToBox2D(param1,param2,null);
         var _loc4_:§&#=§;
         if(_loc4_ = §2#G§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §2#G§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§&%§)
         {
            return;
         }
         §`"+§.§<"o§();
         if(this.§[F§ == §8#1§)
         {
            this.§,#A§(LEVEL_STATE_SLINGSHOT);
         }
         if(§2#G§.slingshot.mDragging)
         {
            this.§'!5§ = §2#G§.screenToBox2D(param1,param2,this.§'!5§);
            §2#G§.slingshot.setNewCoordinatesForRubber(this.§'!5§.x,this.§'!5§.y,false);
            if(§2#G§.slingshot.canShootTheBird)
            {
               §2#G§.slingshot.shoot();
               this.§,#A§(§#"r§);
               if(this.§+"U§ < 6000)
               {
                  this.§+"U§ = 6000;
               }
            }
            else
            {
               §2#G§.slingshot.cancelDragging();
            }
         }
         if(§2#G§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §2#G§.camera.dragToNewPoint(param1,param2);
            }
            §2#G§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§&%§)
         {
            return;
         }
         if(§2#G§.slingshot.mDragging)
         {
            this.§'!5§ = §2#G§.screenToBox2D(param1,param2,this.§'!5§);
            §2#G§.slingshot.setNewCoordinatesForRubber(this.§'!5§.x,this.§'!5§.y,false);
         }
         else if(§2#G§.camera.mDragging)
         {
            §2#G§.camera.dragToNewPoint(param1,param2);
         }
         this.§-"p§ = param1;
         this.§]#?§ = param2;
      }
      
      public function §'#"§() : Point
      {
         return new Point(this.§-"p§,this.§]#?§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§5"9§.§3"Q§(this.§5"9§.getValue() + param1);
         this.§import§(§>"f§);
         if(this.§[F§ == §#"b§)
         {
            this.§%"J§ = 2000;
            this.§""[§ = §+#I§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§5"9§.getValue() / param1) * param1;
         }
         return this.§5"9§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§9#F§)
         {
            return 0;
         }
         var _loc1_:Number = §+!b§.getLevelForId(§+!b§.currentLevel).getEagleScore(§2#G§.levelItemManager,§2#G§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§&%§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§&%§ = param1;
      }
      
      public function §9#^§() : void
      {
         this.§,#A§(§7!T§,true);
      }
      
      public function §`#$§() : void
      {
         while(§2#G§.slingshot.updateScoreForRemainingBirds())
         {
         }
         this.§,#A§(LEVEL_STATE_VICTORY2_END,true);
      }
   }
}

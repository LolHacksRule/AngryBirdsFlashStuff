package §]!=§
{
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §0"I§.§0"b§;
   import §5!q§.§-R§;
   import §5!q§.§3"X§;
   import §5i§.§+M§;
   import §6"R§.§%!0§;
   import §6"R§.§0!6§;
   import §6"R§.§4!w§;
   import §6"R§.§4;§;
   import §7A§.§<1§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §;"I§ extends §?,§
   {
      
      public static const §8!h§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §2!5§:int = 2;
      
      public static const §<4§:int = 3;
      
      public static const §?!H§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const § #§:int = 7;
      
      public static const §2u§:Number = 2000;
      
      public static const §%!>§:Number = 2500;
      
      public static const §[!3§:int = 5;
      
      private static const §^#"§:Number = §+M§.§2;§ / 100;
       
      
      protected var §9!J§:int = 0;
      
      protected var §'!-§:Number;
      
      protected var §>`§:Number = 0;
      
      protected var §7"X§:Boolean = false;
      
      protected var §"R§:Number = 0;
      
      private var §>b§:Number = 0;
      
      private var §%"]§:int = 0;
      
      private var §]"h§:Number = 0;
      
      private var §2§:Number = 0;
      
      protected var §?"9§:Boolean = true;
      
      protected var §4"2§:§<1§;
      
      protected var §#!@§:Point;
      
      public function §;"I§(param1:§3"X§, param2:§7!m§)
      {
         this.§4"2§ = new §<1§();
         this.§#!@§ = new Point();
         super(param1,param2);
      }
      
      public function get §9"t§() : int
      {
         return this.§9!J§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§4"2§.§6!b§(0);
         this.§9!J§ = -1;
         this.§%"]§ = 0;
         this.§>`§ = 0;
         this.§7"X§ = false;
         this.§@f§(§8!h§);
         this.§'!-§ = §2u§;
         §5"e§(true);
         §]""§.objects.setCollisionsEnabled(true);
         §]""§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §]""§.update(param1,true);
         this.§&"q§(param1);
         this.§<O§(param1);
      }
      
      private function §&"q§(param1:int) : void
      {
         if(this.§%"]§ != 0)
         {
            §]""§.camera.adjustManualScale(this.§%"]§ > 0,param1 * §^#"§);
         }
      }
      
      public function clearLevel() : void
      {
         §]""§.clearLevel();
         removeEventListeners();
         this.§9!J§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §1w§() : Boolean
      {
         if(§]""§.camera.mCurrentCameraSliderLocation < §+M§.§;!+§)
         {
            return false;
         }
         if(!§]""§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §0h§(param1:int) : void
      {
         var _loc2_:§+M§ = §]""§.camera;
         if(_loc2_.§5"Q§ > 0)
         {
            _loc2_.§5"Q§ -= param1;
            if(_loc2_.§5"Q§ <= 0)
            {
               if(this.§1w§())
               {
                  _loc2_.§5"Q§ = -1;
                  if(§]""§.slingshot.birdsAvailable)
                  {
                     _loc2_.§`!M§();
                  }
               }
               else
               {
                  _loc2_.§5"Q§ = §+M§.§-`§ / 2;
               }
            }
         }
      }
      
      public function §@f§(param1:int, param2:Boolean = false) : void
      {
         if(this.§?"v§(false) && !param2)
         {
            return;
         }
         if(param1 == §8!h§)
         {
            this.§"R§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §]""§.camera.goToBirdView();
         }
         else if(param1 == §2!5§)
         {
            this.§"R§ = 5000;
            §]""§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §<4§)
         {
            §]""§.camera.goToCastleView();
         }
         else if(param1 == §?!H§)
         {
            this.§"R§ = 2000;
            this.§>b§ = §[!3§;
            §]""§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§"R§ = 1200;
            if(!this.§6;§)
            {
               §]""§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§"R§ = 1200;
            if(!this.§6;§)
            {
               §]""§.camera.goToBirdView();
               §]""§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == § #§)
         {
            this.playFailSound();
            this.§"R§ = 1200;
            §]""§.camera.goToCastleView();
            §]""§.objects.makePigsSmile(5);
         }
         this.§9!J§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §@§.§+A§();
         §@§.§=Y§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         §@§.§+A§();
         §@§.§=Y§("LevelFailedPigs1");
      }
      
      public function §]"x§() : void
      {
         this.§"R§ = 2000;
         this.§7"X§ = false;
         this.§>`§ = 2000;
         this.§@f§(§;"I§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §#"V§(param1:Number) : void
      {
         this.§>`§ = Math.max(this.§>`§,param1);
      }
      
      public function §6p§() : Boolean
      {
         return §]""§.slingshot.mSlingShotState == §-R§.§?]§ && !§]""§.objects.hasBirds();
      }
      
      public function §<O§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§0!6§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§%!0§ = null;
         this.§'!-§ -= param1;
         if(this.§7"X§)
         {
            this.§>`§ -= param1;
            if(this.§>`§ < 0)
            {
               this.§'!-§ = 0;
            }
         }
         if(this.§'!-§ <= 0 && !this.§?"v§(false))
         {
            _loc2_ = -1;
            this.§'!-§ = §2u§;
            _loc3_ = §]""§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§7"X§ || this.§>`§ > 0))
            {
               if((!this.§7"X§ || this.§>`§ > 6000) && !§]""§.objects.isPigsAlive())
               {
                  this.§>`§ = 6000;
                  this.§7"X§ = true;
               }
               else if(!this.§7"X§ && this.§6p§())
               {
                  this.§>`§ = 15000;
                  this.§7"X§ = true;
               }
            }
            else if(!§]""§.objects.isPigsAlive() && this.isAllowedToWin && !this.isSpecialUsed())
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§+"'§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§6p§())
            {
               if(_loc4_ = this.§-"@§())
               {
                  if(_loc4_.§4"-§ && _loc4_.§-=§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§+"'§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§4"-§)
                  {
                     this.§'!-§ = §2u§;
                  }
               }
               else if(!this.isGameOverBlocked())
               {
                  _loc2_ = § #§;
                  this.§+"'§(§ #§);
               }
            }
            if(this.§?"v§(false))
            {
               §]""§.gameOver(_loc2_);
            }
         }
         this.§"R§ -= param1;
         if(this.§"R§ < 0)
         {
            this.§"R§ = 0;
         }
         if(this.§9!J§ == §<4§)
         {
            §]""§.updatePigAnimations(param1);
            if(!§]""§.camera.isOnCastleView() && §]""§.camera.mCurrentAction != §+M§.§@!_§)
            {
               this.§@f§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§9!J§ == §?!H§)
         {
            if(this.§"R§ <= 0)
            {
               if((_loc5_ = §]""§.objects.hasBirds()) && this.§>b§ > 0)
               {
                  this.§"R§ = 2000;
                  this.§'!-§ = 0;
                  this.§>b§ = this.§>b§ - 1;
               }
               else if(!this.§6;§)
               {
                  this.§@f§(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §]""§.updatePigAnimations(param1);
            }
            if(!§]""§.camera.isOnCastleView() && §]""§.camera.mCurrentAction != §+M§.§@!_§)
            {
               this.§@f§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§9!J§ == §8!h§)
         {
            if(this.§"R§ <= 0)
            {
               this.§@f§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§9!J§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§]""§.camera.isOnCastleView() && §]""§.camera.mCurrentAction != §+M§.§@!_§)
            {
               this.§@f§(§<4§);
            }
         }
         else if(this.§9!J§ == §2!5§)
         {
            if(_loc6_ = §]""§.levelObjects.activeObject as §%!0§)
            {
            }
         }
         else if(this.§9!J§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§"R§ <= 0)
            {
               if(§]""§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§"R§ = 1000;
               }
               else
               {
                  this.§@f§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function isSpecialUsed() : Boolean
      {
         return this.§6;§;
      }
      
      protected function get §6;§() : Boolean
      {
         if(this.§-"@§())
         {
            return true;
         }
         return false;
      }
      
      protected function get isAllowedToWin() : Boolean
      {
         return true;
      }
      
      public function §-"@§() : §0!6§
      {
         var _loc2_:§0!6§ = null;
         var _loc1_:int = §]""§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §]""§.objects.getObject(_loc1_) as §0!6§;
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
         var _loc2_:§4;§ = null;
         var _loc1_:int = §]""§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §]""§.objects.getObject(_loc1_) as §4;§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §+"'§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§7"X§)
         {
            this.§7"X§ = true;
         }
         if(new Date().time - §]""§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§]""§.slingshot.mDragging)
         {
            return;
         }
         if(§]""§.objects.isWorldAtSleep())
         {
            this.§>`§ = Math.min(this.§>`§,3500);
         }
         if(this.§>`§ <= 0)
         {
            this.§@f§(param1,param2);
         }
      }
      
      public function §?"v§(param1:Boolean = false) : Boolean
      {
         return (this.§9!J§ == LEVEL_STATE_VICTORY2_END || this.§9!J§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§9!J§ == § #§) && (!param1 || this.§"R§ <= 0 && this.§9!J§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §]!G§() : Boolean
      {
         return this.§9!J§ == LEVEL_STATE_VICTORY2_END || this.§9!J§ == § #§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§`T§(param1.delta > 0);
         }
      }
      
      public function §`T§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§?"9§ || !§]""§.mReadyToRun)
         {
            return;
         }
         if(this.§9!J§ == §?!H§ || this.§9!J§ == §<4§ || this.§9!J§ == LEVEL_STATE_SLINGSHOT || this.§9!J§ == §2!5§)
         {
            if(!§]""§.isPlayingReplay())
            {
               §]""§.camera.adjustManualScale(param1,param2 == 0 ? Number(§+M§.§2;§) : Number(param2));
            }
            else
            {
               §]""§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §["O§(param1:int) : void
      {
         this.§%"]§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§?"9§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §0"b§.§0#,§();
         if(this.§?"v§(false))
         {
            return;
         }
         if(!§]""§.isPlayingReplay())
         {
            this.§#!@§ = §]""§.screenToBox2D(param1,param2,this.§#!@§);
            if(§]""§.levelObjects.activeObject is §%!0§)
            {
               _loc4_ = §%!0§(§]""§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§%!0§(§]""§.levelObjects.activeObject).specialPowerUsed)
               {
                  §]""§.activateSpecialPower(this.§#!@§.x,this.§#!@§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§]""§.slingshot.canStartDragging(this.§#!@§))
            {
               §]""§.slingshot.startDragging();
               this.§@f§(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §]""§.camera.startDragging(param1,param2);
            }
            return;
         }
         §]""§.camera.startDragging(param1,param2);
         §]""§.resetReplaySpeed();
      }
      
      protected function §2!h§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §]""§.screenToBox2D(param1,param2,null);
         var _loc4_:§4!w§;
         if(_loc4_ = §]""§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §]""§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§?"9§)
         {
            return;
         }
         §0"b§.§;!p§();
         if(this.§9!J§ == §8!h§)
         {
            this.§@f§(LEVEL_STATE_SLINGSHOT);
         }
         if(§]""§.slingshot.mDragging)
         {
            this.§#!@§ = §]""§.screenToBox2D(param1,param2,this.§#!@§);
            §]""§.slingshot.setNewCoordinatesForRubber(this.§#!@§.x,this.§#!@§.y,false);
            if(§]""§.slingshot.canShootTheBird)
            {
               §]""§.slingshot.shoot();
               this.§@f§(§2!5§);
               if(this.§>`§ < 6000)
               {
                  this.§>`§ = 6000;
               }
            }
            else
            {
               §]""§.slingshot.cancelDragging();
            }
         }
         if(§]""§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §]""§.camera.dragToNewPoint(param1,param2);
            }
            §]""§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§?"9§)
         {
            return;
         }
         if(§]""§.slingshot.mDragging)
         {
            this.§#!@§ = §]""§.screenToBox2D(param1,param2,this.§#!@§);
            §]""§.slingshot.setNewCoordinatesForRubber(this.§#!@§.x,this.§#!@§.y,false);
         }
         else if(§]""§.camera.mDragging)
         {
            §]""§.camera.dragToNewPoint(param1,param2);
         }
         this.§]"h§ = param1;
         this.§2§ = param2;
      }
      
      public function §+,§() : Point
      {
         return new Point(this.§]"h§,this.§2§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§4"2§.§6!b§(this.§4"2§.getValue() + param1);
         this.§#"V§(§%!>§);
         if(this.§9!J§ == §?!H§)
         {
            this.§"R§ = 2000;
            this.§>b§ = §[!3§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§4"2§.getValue() / param1) * param1;
         }
         return this.§4"2§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§6;§)
         {
            return 0;
         }
         var _loc1_:Number = § !p§.getLevelForId(§ !p§.currentLevel).getEagleScore(§]""§.levelItemManager,§]""§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§?"9§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§?"9§ = param1;
      }
      
      public function §1"l§() : void
      {
         this.§@f§(§ #§,true);
      }
      
      public function §%Z§() : void
      {
         while(§]""§.slingshot.updateScoreForRemainingBirds())
         {
         }
         this.§@f§(LEVEL_STATE_VICTORY2_END,true);
      }
   }
}

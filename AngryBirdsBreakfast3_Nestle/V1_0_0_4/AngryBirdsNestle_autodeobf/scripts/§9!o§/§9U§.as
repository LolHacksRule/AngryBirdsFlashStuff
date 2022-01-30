package §9!o§
{
   import §"I§.§?"4§;
   import §&!>§.§3!k§;
   import §'<§.§=!o§;
   import §0I§.§!!p§;
   import §0I§.§;"0§;
   import §>j§.§`y§;
   import §]!q§.§'!;§;
   import §]!q§.§,6§;
   import §]!q§.§,[§;
   import §]!q§.§0"-§;
   import §`6§.§-!j§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §9U§ extends §=!>§
   {
      
      public static const §+E§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §8!9§:int = 2;
      
      public static const §8!S§:int = 3;
      
      public static const §<V§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §?^§:int = 7;
      
      public static const §%4§:Number = 2000;
      
      public static const §0!$§:Number = 2500;
      
      public static const §3!m§:int = 5;
      
      private static const §@!Y§:Number = §`y§.§@!§ / 100;
       
      
      protected var §&"$§:int = 0;
      
      protected var §;!-§:Number;
      
      protected var §%E§:Number = 0;
      
      protected var §@b§:Boolean = false;
      
      protected var §]"&§:Number = 0;
      
      private var §7!j§:Number = 0;
      
      private var §7!C§:int = 0;
      
      private var §#!§:Number = 0;
      
      private var §4!^§:Number = 0;
      
      protected var §>!c§:Boolean = true;
      
      protected var §^!,§:§-!j§;
      
      protected var §3!!§:Point;
      
      public function §9U§(param1:§!!p§, param2:§=!o§)
      {
         this.§^!,§ = new §-!j§();
         this.§3!!§ = new Point();
         super(param1,param2);
      }
      
      public function get § q§() : int
      {
         return this.§&"$§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§^!,§.§7!r§(0);
         this.§&"$§ = -1;
         this.§7!C§ = 0;
         this.§%E§ = 0;
         this.§@b§ = false;
         this.changeGameState(§+E§);
         this.§;!-§ = §%4§;
         §;n§(true);
         §-!r§.objects.setCollisionsEnabled(true);
         §-!r§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §-!r§.update(param1,true);
         this.§9"0§(param1);
         this.§,!o§(param1);
      }
      
      private function §9"0§(param1:int) : void
      {
         if(this.§7!C§ != 0)
         {
            §-!r§.camera.adjustManualScale(this.§7!C§ > 0,param1 * §@!Y§);
         }
      }
      
      public function clearLevel() : void
      {
         §-!r§.clearLevel();
         removeEventListeners();
         this.§&"$§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §,Q§() : Boolean
      {
         if(§-!r§.camera.mCurrentCameraSliderLocation < §`y§.§@!a§)
         {
            return false;
         }
         if(!§-!r§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §%!Q§(param1:int) : void
      {
         var _loc2_:§`y§ = §-!r§.camera;
         if(_loc2_.§9!<§ > 0)
         {
            _loc2_.§9!<§ -= param1;
            if(_loc2_.§9!<§ <= 0)
            {
               if(this.§,Q§())
               {
                  _loc2_.§9!<§ = -1;
                  if(§-!r§.slingshot.birdsAvailable)
                  {
                     _loc2_.§1J§();
                  }
               }
               else
               {
                  _loc2_.§9!<§ = §`y§.§4!'§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§1!K§(false) && !param2)
         {
            return;
         }
         if(param1 == §+E§)
         {
            this.§]"&§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §-!r§.camera.goToBirdView();
         }
         else if(param1 == §8!9§)
         {
            this.§]"&§ = 5000;
            §-!r§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §8!S§)
         {
            §-!r§.camera.goToCastleView();
         }
         else if(param1 == §<V§)
         {
            this.§]"&§ = 2000;
            this.§7!j§ = §3!m§;
            §-!r§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§]"&§ = 1200;
            if(!this.§5;§)
            {
               §-!r§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§]"&§ = 1200;
            if(!this.§5;§)
            {
               §-!r§.camera.goToBirdView();
               §-!r§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §?^§)
         {
            this.§%$§();
            this.§]"&§ = 1200;
            §-!r§.camera.goToCastleView();
            §-!r§.objects.makePigsSmile(5);
         }
         this.§&"$§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §3!k§.§#!3§();
         §3!k§.§]"4§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §%$§() : void
      {
         §3!k§.§#!3§();
         §3!k§.§]"4§("LevelFailedPigs1");
      }
      
      public function §#O§() : void
      {
         this.§]"&§ = 2000;
         this.§@b§ = false;
         this.§%E§ = 2000;
         this.changeGameState(§9U§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §5!q§(param1:Number) : void
      {
         this.§@b§ = false;
         this.§%E§ = Math.max(this.§%E§,param1);
      }
      
      protected function §8!Q§() : Boolean
      {
         return §-!r§.slingshot.mSlingShotState == §;"0§.§7N§ && !§-!r§.objects.hasBirds();
      }
      
      public function §,!o§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§'!;§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§,6§ = null;
         this.§;!-§ -= param1;
         if(this.§@b§)
         {
            this.§%E§ -= param1;
            if(this.§%E§ < 0)
            {
               this.§;!-§ = 0;
            }
         }
         if(this.§;!-§ <= 0 && !this.§1!K§(false))
         {
            _loc2_ = -1;
            this.§;!-§ = §%4§;
            _loc3_ = §-!r§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§@b§ || this.§%E§ > 0))
            {
               if((!this.§@b§ || this.§%E§ > 6000) && !§-!r§.objects.isPigsAlive())
               {
                  this.§%E§ = 6000;
                  this.§@b§ = true;
               }
               else if(!this.§@b§ && this.§8!Q§())
               {
                  this.§%E§ = 15000;
                  this.§@b§ = true;
               }
            }
            else if(!§-!r§.objects.isPigsAlive() && !this.§5;§ && this.§]"0§)
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§6"2§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§8!Q§())
            {
               if(_loc4_ = this.§4n§())
               {
                  if(_loc4_.§2M§ && _loc4_.§?6§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§6"2§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§2M§)
                  {
                     this.§;!-§ = §%4§;
                  }
               }
               else if(!this.§;!y§())
               {
                  _loc2_ = §?^§;
                  this.§6"2§(§?^§);
               }
            }
            if(this.§1!K§(false))
            {
               §-!r§.gameOver(_loc2_);
            }
         }
         this.§]"&§ -= param1;
         if(this.§]"&§ < 0)
         {
            this.§]"&§ = 0;
         }
         if(this.§&"$§ == §8!S§)
         {
            §-!r§.updatePigAnimations(param1);
            if(!§-!r§.camera.isOnCastleView() && §-!r§.camera.mCurrentAction != §`y§.§7^§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§&"$§ == §<V§)
         {
            if(this.§]"&§ <= 0)
            {
               if((_loc5_ = §-!r§.objects.hasBirds()) && this.§7!j§ > 0)
               {
                  this.§]"&§ = 2000;
                  this.§;!-§ = 0;
                  this.§7!j§ = this.§7!j§ - 1;
               }
               else if(!this.§5;§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §-!r§.updatePigAnimations(param1);
            }
            if(!§-!r§.camera.isOnCastleView() && §-!r§.camera.mCurrentAction != §`y§.§7^§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§&"$§ == §+E§)
         {
            if(this.§]"&§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§&"$§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§-!r§.camera.isOnCastleView() && §-!r§.camera.mCurrentAction != §`y§.§7^§)
            {
               this.changeGameState(§8!S§);
            }
         }
         else if(this.§&"$§ == §8!9§)
         {
            if(_loc6_ = §-!r§.levelObjects.activeObject as §,6§)
            {
            }
         }
         else if(this.§&"$§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§]"&§ <= 0)
            {
               if(§-!r§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§]"&§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §5;§() : Boolean
      {
         if(this.§4n§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §]"0§() : Boolean
      {
         return true;
      }
      
      public function §4n§() : §'!;§
      {
         var _loc2_:§'!;§ = null;
         var _loc1_:int = §-!r§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §-!r§.objects.getObject(_loc1_) as §'!;§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §;!y§() : Boolean
      {
         var _loc2_:§0"-§ = null;
         var _loc1_:int = §-!r§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §-!r§.objects.getObject(_loc1_) as §0"-§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §6"2§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§@b§)
         {
            this.§@b§ = true;
         }
         if(new Date().time - §-!r§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§-!r§.slingshot.mDragging)
         {
            return;
         }
         if(§-!r§.objects.isWorldAtSleep())
         {
            this.§%E§ = Math.min(this.§%E§,3500);
         }
         if(this.§%E§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §1!K§(param1:Boolean = false) : Boolean
      {
         return (this.§&"$§ == LEVEL_STATE_VICTORY2_END || this.§&"$§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§&"$§ == §?^§) && (!param1 || this.§]"&§ <= 0 && this.§&"$§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §0!,§() : Boolean
      {
         return this.§&"$§ == LEVEL_STATE_VICTORY2_END || this.§&"$§ == §?^§;
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
         if(!this.§>!c§ || !§-!r§.mReadyToRun)
         {
            return;
         }
         if(!(§-!r§.slingshot.mDragging || §-!r§.camera.mDragging))
         {
            if(this.§&"$§ == §<V§ || this.§&"$§ == §8!S§ || this.§&"$§ == LEVEL_STATE_SLINGSHOT || this.§&"$§ == §8!9§)
            {
               if(!§-!r§.isPlayingReplay())
               {
                  §-!r§.camera.adjustManualScale(param1,param2 == 0 ? Number(§`y§.§@!§) : Number(param2));
               }
               else
               {
                  §-!r§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §'"'§(param1:int) : void
      {
         this.§7!C§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§>!c§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §?"4§.mouseDown();
         if(this.§1!K§(false))
         {
            return;
         }
         if(!§-!r§.isPlayingReplay())
         {
            this.§3!!§ = §-!r§.screenToBox2D(param1,param2,this.§3!!§);
            if(§-!r§.levelObjects.activeObject is §,6§)
            {
               _loc4_ = §,6§(§-!r§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§,6§(§-!r§.levelObjects.activeObject).specialPowerUsed)
               {
                  §-!r§.activateSpecialPower(this.§3!!§.x,this.§3!!§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§-!r§.slingshot.canStartDragging(this.§3!!§))
            {
               §-!r§.slingshot.startDragging();
               this.§3!!§ = §-!r§.screenToBox2D(param1,param2);
               §-!r§.slingshot.setNewCoordinatesForRubber(this.§3!!§.x,this.§3!!§.y,false);
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §-!r§.camera.startDragging(param1,param2);
            }
            return;
         }
         §-!r§.camera.startDragging(param1,param2);
         §-!r§.resetReplaySpeed();
      }
      
      protected function §`J§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §-!r§.screenToBox2D(param1,param2,null);
         var _loc4_:§,[§;
         if(_loc4_ = §-!r§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §-!r§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§>!c§)
         {
            return;
         }
         §?"4§.mouseUp();
         if(this.§&"$§ == §+E§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§-!r§.slingshot.mDragging)
         {
            this.§3!!§ = §-!r§.screenToBox2D(param1,param2,this.§3!!§);
            §-!r§.slingshot.setNewCoordinatesForRubber(this.§3!!§.x,this.§3!!§.y,false);
            if(§-!r§.slingshot.canShootTheBird)
            {
               §-!r§.slingshot.shoot();
               this.changeGameState(§8!9§);
            }
            else
            {
               §-!r§.slingshot.cancelDragging();
            }
         }
         if(§-!r§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §-!r§.camera.dragToNewPoint(param1,param2);
            }
            §-!r§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§>!c§)
         {
            return;
         }
         if(§-!r§.slingshot.mDragging)
         {
            this.§3!!§ = §-!r§.screenToBox2D(param1,param2,this.§3!!§);
            §-!r§.slingshot.setNewCoordinatesForRubber(this.§3!!§.x,this.§3!!§.y,false);
         }
         else if(§-!r§.camera.mDragging)
         {
            §-!r§.camera.dragToNewPoint(param1,param2);
         }
         this.§#!§ = param1;
         this.§4!^§ = param2;
      }
      
      public function §#!A§() : Point
      {
         return new Point(this.§#!§,this.§4!^§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§^!,§.§7!r§(this.§^!,§.getValue() + param1);
         this.§5!q§(§0!$§);
         if(this.§&"$§ == §<V§)
         {
            this.§]"&§ = 2000;
            this.§7!j§ = §3!m§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§^!,§.getValue() / param1) * param1;
         }
         return this.§^!,§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§5;§)
         {
            return 0;
         }
         var _loc1_:Number = §+o§.getLevelForId(§+o§.currentLevel).getEagleScore(§-!r§.levelItemManager,§-!r§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§>!c§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§>!c§ = param1;
      }
   }
}

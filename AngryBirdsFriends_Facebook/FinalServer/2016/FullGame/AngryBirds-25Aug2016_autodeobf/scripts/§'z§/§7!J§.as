package §'z§
{
   import §!x§.§4"I§;
   import §#v§.§#!?§;
   import §52§.§#!,§;
   import §52§.§;!p§;
   import §52§.§@M§;
   import §8§.§#$+§;
   import §>!#§.§>p§;
   import §?§.§>"$§;
   import §["Q§.§0$,§;
   import §[#a§.§-k§;
   import §[#a§.§4!d§;
   import §[#a§.§8"i§;
   import §[#a§.§="@§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §7!J§ extends §5#b§
   {
      
      private static const §"#V§:int = 1;
      
      public static const §>"§:int = 0;
      
      public static const § #?§:int = 1;
      
      public static const §@!T§:int = 2;
      
      public static const §0"h§:int = 3;
      
      public static const §6!<§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%"!§:int = 7;
      
      public static const §-!S§:int = 5;
      
      private static const §,"`§:Number = §0$,§.§+#s§ / 100;
       
      
      protected var §-<§:int = 0;
      
      protected var §;$3§:Number = 0;
      
      private var §!!Y§:Number = 0;
      
      private var §^?§:int = 0;
      
      private var §0s§:Number = 0;
      
      private var §<#G§:Number = 0;
      
      protected var §&#B§:Boolean = true;
      
      protected var §!#-§:§>p§;
      
      protected var §+m§:Point;
      
      protected var §+E§:Boolean;
      
      protected var §[#V§:int;
      
      protected var §2k§:Boolean;
      
      public function §7!J§(param1:§#!,§, param2:§#!?§)
      {
         this.§!#-§ = new §>p§();
         this.§+m§ = new Point();
         super(param1,param2);
      }
      
      public function get §1#!§() : int
      {
         return this.§-<§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§!#-§.§,$-§(0);
         this.§-<§ = -1;
         this.§^?§ = 0;
         this.changeGameState(§>"§);
         §]"b§(true);
         §,#2§.objects.setCollisionsEnabled(true);
         §,#2§.objects.setGroundTextureEnabled(true);
         §,#2§.slingshot.addEventListener(§@M§.§4#s§,this.§1G§);
      }
      
      private function §1G§(param1:Event) : void
      {
         this.changeGameState(§@!T§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §,#2§.update(param1,true);
         this.§7'§(param1);
         this.§6!V§(param1);
      }
      
      private function §7'§(param1:int) : void
      {
         if(this.§^?§ != 0)
         {
            §,#2§.camera.adjustManualScale(this.§^?§ > 0,param1 * §,"`§);
         }
      }
      
      public function clearLevel() : void
      {
         §,#2§.clearLevel();
         removeEventListeners();
         this.§-<§ = -1;
         this.§7#j§();
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §0#1§() : Boolean
      {
         if(§,#2§.camera.mCurrentCameraSliderLocation < §0$,§.§&g§)
         {
            return false;
         }
         if(!§,#2§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §7!p§(param1:int) : void
      {
         var _loc2_:§0$,§ = §,#2§.camera;
         if(_loc2_.§`"Q§ > 0)
         {
            _loc2_.§`"Q§ -= param1;
            if(_loc2_.§`"Q§ <= 0)
            {
               if(this.§0#1§())
               {
                  _loc2_.§`"Q§ = -1;
                  if(§,#2§.slingshot.birdsAvailable)
                  {
                     _loc2_.§'"%§();
                  }
               }
               else
               {
                  _loc2_.§`"Q§ = §0$,§.§5$,§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§%!,§() && !param2)
         {
            return;
         }
         if(param1 == §>"§)
         {
            this.§;$3§ = 2000;
            this.§7#j§();
         }
         else if(param1 == § #?§)
         {
            §,#2§.camera.goToBirdView();
         }
         else if(param1 == §@!T§)
         {
            this.§;$3§ = 5000;
            §,#2§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §0"h§)
         {
            §,#2§.camera.goToCastleView();
         }
         else if(param1 == §6!<§)
         {
            this.§;$3§ = 2000;
            this.§!!Y§ = §-!S§;
            §,#2§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§;$3§ = 1200;
            if(!this.§&#8§)
            {
               §,#2§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§;$3§ = 1200;
            if(!this.§&#8§)
            {
               §,#2§.camera.goToBirdView();
               §,#2§.slingshot.makeBirdsJumpForJoy();
            }
            else
            {
               §,#2§.slingshot.setSlingShotState(§@M§.§!!R§);
            }
            this.§;!e§();
         }
         else if(param1 == §%"!§)
         {
            this.§;$3§ = 1200;
            §,#2§.camera.goToCastleView();
            §,#2§.objects.makePigsSmile(5);
         }
         this.§-<§ = param1;
      }
      
      protected function §;!e§() : void
      {
         §#$+§.§#$-§();
         §#$+§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      public function §>$0§() : void
      {
         this.§;$3§ = 2000;
         this.changeGameState(§7!J§.§ #?§,true);
      }
      
      public function §6!V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§-k§ = null;
         if(this.§[#V§ > 0)
         {
            this.§[#V§ -= param1;
            if(this.§[#V§ <= 0)
            {
               this.§2k§ = true;
            }
         }
         this.§;$3§ -= param1;
         if(this.§;$3§ < 0)
         {
            this.§;$3§ = 0;
         }
         if(this.§-<§ == §0"h§)
         {
            if(!§,#2§.camera.isOnCastleView() && §,#2§.camera.mCurrentAction != §0$,§.§1%§)
            {
               this.changeGameState(§ #?§);
            }
         }
         else if(this.§-<§ == §6!<§)
         {
            if(this.§;$3§ <= 0)
            {
               _loc2_ = §,#2§.objects.hasBirds();
               if(_loc2_ && this.§!!Y§ > 0)
               {
                  this.§;$3§ = 2000;
                  this.§!!Y§ = this.§!!Y§ - 1;
               }
               else if(!this.§&#8§)
               {
                  this.changeGameState(§ #?§);
               }
            }
            if(!§,#2§.camera.isOnCastleView() && §,#2§.camera.mCurrentAction != §0$,§.§1%§)
            {
               this.changeGameState(§ #?§);
            }
         }
         else if(this.§-<§ == §>"§)
         {
            if(this.§;$3§ <= 0)
            {
               this.changeGameState(§ #?§);
            }
         }
         else if(this.§-<§ == § #?§)
         {
            if(§,#2§.camera.isOnCastleView() && §,#2§.camera.mCurrentAction != §0$,§.§1%§)
            {
               this.changeGameState(§0"h§);
            }
         }
         else if(this.§-<§ == §@!T§)
         {
            _loc3_ = §,#2§.levelObjects.activeObject as §-k§;
            if(!_loc3_ || _loc3_ && !_loc3_.§>6§)
            {
               this.changeGameState(§6!<§);
            }
         }
         else if(this.§-<§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§;$3§ <= 0)
            {
               if(§,#2§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§;$3§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §&#8§() : Boolean
      {
         if(this.§5j§() || this.§%#n§())
         {
            return true;
         }
         return false;
      }
      
      private function §%#n§() : Boolean
      {
         var _loc2_:§4!d§ = null;
         var _loc1_:int = §,#2§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §,#2§.objects.getObject(_loc1_) as §4!d§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         if(§>"$§.§3#'§.slingshot.mBirds.length > 0)
         {
            if(§>"$§.§3#'§.slingshot.mBirds[0].name == "BIRD_SARDINE")
            {
               return true;
            }
         }
         return false;
      }
      
      public function §5j§() : §8"i§
      {
         var _loc2_:§8"i§ = null;
         var _loc1_:int = §,#2§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §,#2§.objects.getObject(_loc1_) as §8"i§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §%!,§() : Boolean
      {
         return (this.§-<§ == LEVEL_STATE_VICTORY2_END || this.§-<§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§-<§ == §%"!§) && (this.§;$3§ <= 0 && this.§-<§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public final function §0Z§() : Boolean
      {
         return !§,#2§.objects.isLevelGoalObjectsAlive();
      }
      
      public function §=!@§() : Boolean
      {
         return this.§-<§ == LEVEL_STATE_VICTORY2_END || this.§-<§ == §%"!§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§`c§(param1.delta > 0);
         }
      }
      
      public function §`c§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§&#B§ || !§,#2§.mReadyToRun)
         {
            return;
         }
         if(this.§-<§ == §6!<§ || this.§-<§ == §0"h§ || this.§-<§ == § #?§ || this.§-<§ == §@!T§)
         {
            if(!§,#2§.isPlayingReplay())
            {
               §,#2§.camera.adjustManualScale(param1,param2 == 0 ? Number(§0$,§.§+#s§) : Number(param2));
            }
            else
            {
               §,#2§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §2#_§(param1:int) : void
      {
         this.§^?§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§&#B§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §4"I§.§###§();
         if(this.§%!,§())
         {
            return;
         }
         if(!§,#2§.isPlayingReplay())
         {
            this.§+m§ = §,#2§.screenToBox2D(param1,param2,this.§+m§);
            if(§,#2§.levelObjects.activeObject is §-k§)
            {
               _loc4_ = §-k§(§,#2§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§-k§(§,#2§.levelObjects.activeObject).specialPowerUsed)
               {
                  §,#2§.activateSpecialPower(this.§+m§.x,this.§+m§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§,#2§.slingshot.canStartDragging(this.§+m§))
            {
               §,#2§.slingshot.startDragging();
               this.changeGameState(§ #?§);
            }
            else
            {
               §,#2§.camera.startDragging(param1,param2);
            }
            return;
         }
         §,#2§.camera.startDragging(param1,param2);
         §,#2§.resetReplaySpeed();
      }
      
      protected function §=$&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §,#2§.screenToBox2D(param1,param2,null);
         var _loc4_:§="@§;
         if(_loc4_ = §,#2§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §,#2§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§&#B§)
         {
            return;
         }
         §4"I§.§@#u§();
         if(this.§-<§ == §>"§)
         {
            this.changeGameState(§ #?§);
         }
         if(§,#2§.slingshot.mDragging)
         {
            this.§+m§ = §,#2§.screenToBox2D(param1,param2,this.§+m§);
            §,#2§.slingshot.setNewCoordinatesForRubber(this.§+m§.x,this.§+m§.y,false);
            if(§,#2§.slingshot.canShootTheBird)
            {
               §,#2§.slingshot.shoot();
            }
            else
            {
               §,#2§.slingshot.cancelDragging();
            }
         }
         if(§,#2§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §,#2§.camera.dragToNewPoint(param1,param2);
            }
            §,#2§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§&#B§)
         {
            return;
         }
         if(§,#2§.slingshot.mDragging)
         {
            this.§+m§ = §,#2§.screenToBox2D(param1,param2,this.§+m§);
            §,#2§.slingshot.setNewCoordinatesForRubber(this.§+m§.x,this.§+m§.y,false);
         }
         else if(§,#2§.camera.mDragging)
         {
            §,#2§.camera.dragToNewPoint(param1,param2);
         }
         this.§0s§ = param1;
         this.§<#G§ = param2;
      }
      
      public function §>#f§() : Point
      {
         return new Point(this.§0s§,this.§<#G§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!#-§.§,$-§(this.§!#-§.getValue() + param1);
         if(this.§-<§ == §6!<§)
         {
            this.§;$3§ = 2000;
            this.§!!Y§ = §-!S§;
         }
      }
      
      override public function getScore() : int
      {
         if(§"#V§ > 1)
         {
            return Math.floor(this.§!#-§.getValue() / §"#V§) * §"#V§;
         }
         return this.§!#-§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§&#8§)
         {
            return 0;
         }
         var _loc1_:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).scoreEagle;
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§&#B§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§&#B§ = param1;
      }
      
      public function §#"p§() : void
      {
         this.changeGameState(§%"!§,true);
      }
      
      public function §2"V§() : void
      {
         this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT,true);
         §,#2§.gameOver(LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      override public function checkForLevelEnd() : void
      {
         if(!this.§+E§)
         {
            if(§,#2§.slingshot.mSlingShotState == §@M§.§]I§ || !§,#2§.objects.isLevelGoalObjectsAlive())
            {
               this.§[#V§ = §;!p§.§<$%§;
               this.§+E§ = true;
            }
         }
      }
      
      public function §<!Y§(param1:Number) : void
      {
         if(this.§[#V§ > 0)
         {
            this.§[#V§ += param1;
         }
      }
      
      public function §4!y§() : Boolean
      {
         return this.§2k§;
      }
      
      public function §7#j§() : void
      {
         this.§+E§ = false;
         this.§[#V§ = 0;
         this.§2k§ = false;
      }
      
      public function §"#O§() : void
      {
         if(this.§+E§)
         {
            if(§,#2§.slingshot.mSlingShotState == §@M§.§]I§ && §,#2§.objects.isLevelGoalObjectsAlive() && !this.§2k§)
            {
               this.§7#j§();
            }
         }
      }
   }
}

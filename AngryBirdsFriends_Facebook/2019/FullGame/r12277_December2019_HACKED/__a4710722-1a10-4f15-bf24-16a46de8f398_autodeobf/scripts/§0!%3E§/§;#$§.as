package §0!>§
{
   import § "v§.§4$4§;
   import §#"3§.§2#>§;
   import §+!n§.§+!p§;
   import §2E§.§[S§;
   import §?$#§.§&$0§;
   import §?$#§.§2!"§;
   import §?$#§.§<d§;
   import §?o§.§4#?§;
   import §^0§.§ var§;
   import §^0§.§=Q§;
   import §^0§.§]#m§;
   import §`$=§.§5$E§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §;#$§ extends §+#5§
   {
      
      private static const §,[§:int = 1;
      
      public static const §var §:int = 0;
      
      public static const §1"'§:int = 1;
      
      public static const §5#,§:int = 2;
      
      public static const §-I§:int = 3;
      
      public static const §"![§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §4$,§:int = 7;
      
      public static const §0h§:int = 5;
      
      private static const §-!J§:Number = §5$E§.§1"p§ / 100;
       
      
      protected var §##@§:int = 0;
      
      protected var §>$C§:Number = 0;
      
      private var §3"8§:Number = 0;
      
      private var §4!"§:int = 0;
      
      private var §6"o§:Number = 0;
      
      private var §7!j§:Number = 0;
      
      protected var §&!v§:Boolean = true;
      
      protected var § #4§:§[S§;
      
      protected var §9!w§:Point;
      
      protected var §%$+§:Boolean;
      
      protected var §+#e§:int;
      
      protected var §5!O§:Boolean;
      
      public function §;#$§(param1:§<d§, param2:§4#?§)
      {
         this.§ #4§ = new §[S§();
         this.§9!w§ = new Point();
         super(param1,param2);
      }
      
      public function get §1"z§() : int
      {
         return this.§##@§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§ #4§.§,#T§(0);
         this.§##@§ = -1;
         this.§4!"§ = 0;
         this.changeGameState(§var §);
         §"!a§(true);
         § 6§.objects.setCollisionsEnabled(true);
         § 6§.objects.setGroundTextureEnabled(true);
         § 6§.slingshot.addEventListener(§2!"§.§5Q§,this.§]!0§);
      }
      
      private function §]!0§(param1:Event) : void
      {
         this.changeGameState(§5#,§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = § 6§.update(param1,true);
         this.§5u§(param1);
         this.§@"&§(param1);
      }
      
      private function §5u§(param1:int) : void
      {
         if(this.§4!"§ != 0)
         {
            § 6§.camera.adjustManualScale(this.§4!"§ > 0,param1 * §-!J§);
         }
      }
      
      public function clearLevel() : void
      {
         § 6§.clearLevel();
         removeEventListeners();
         this.§##@§ = -1;
         this.§>J§();
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §<!H§() : Boolean
      {
         if(§ 6§.camera.mCurrentCameraSliderLocation < §5$E§.§-"1§)
         {
            return false;
         }
         if(!§ 6§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §&U§(param1:int) : void
      {
         var _loc2_:§5$E§ = § 6§.camera;
         if(_loc2_.§%"z§ > 0)
         {
            _loc2_.§%"z§ -= param1;
            if(_loc2_.§%"z§ <= 0)
            {
               if(this.§<!H§())
               {
                  _loc2_.§%"z§ = -1;
                  if(§ 6§.slingshot.birdsAvailable)
                  {
                     _loc2_.§ i§();
                  }
               }
               else
               {
                  _loc2_.§%"z§ = §5$E§.§9"#§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§'"§() && !param2)
         {
            return;
         }
         if(param1 == §var §)
         {
            this.§>$C§ = 2000;
            this.§>J§();
         }
         else if(param1 == §1"'§)
         {
            § 6§.camera.goToBirdView();
         }
         else if(param1 == §5#,§)
         {
            this.§>$C§ = 5000;
            § 6§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §-I§)
         {
            § 6§.camera.goToCastleView();
         }
         else if(param1 == §"![§)
         {
            this.§>$C§ = 2000;
            this.§3"8§ = §0h§;
            § 6§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§>$C§ = 1200;
            if(!this.§=#=§)
            {
               § 6§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§>$C§ = 1200;
            if(!this.§=#=§)
            {
               § 6§.camera.goToBirdView();
               § 6§.slingshot.makeBirdsJumpForJoy();
            }
            else
            {
               § 6§.slingshot.setSlingShotState(§2!"§.§ "X§);
            }
            this.§""W§();
         }
         else if(param1 == §4$,§)
         {
            this.§>$C§ = 1200;
            § 6§.camera.goToCastleView();
            § 6§.objects.makePigsSmile(5);
         }
         this.§##@§ = param1;
      }
      
      protected function §""W§() : void
      {
         §4$4§.§?#l§();
         §4$4§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)));
      }
      
      public function §?"'§() : void
      {
         this.§>$C§ = 2000;
         this.changeGameState(§;#$§.§1"'§,true);
      }
      
      public function §@"&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§=Q§ = null;
         if(this.§+#e§ > 0)
         {
            this.§+#e§ -= param1;
            if(this.§+#e§ <= 0)
            {
               this.§5!O§ = true;
            }
         }
         this.§>$C§ -= param1;
         if(this.§>$C§ < 0)
         {
            this.§>$C§ = 0;
         }
         if(this.§##@§ == §-I§)
         {
            if(!§ 6§.camera.isOnCastleView() && § 6§.camera.mCurrentAction != §5$E§.§]#4§)
            {
               this.changeGameState(§1"'§);
            }
         }
         else if(this.§##@§ == §"![§)
         {
            if(this.§>$C§ <= 0)
            {
               _loc2_ = § 6§.objects.hasBirds();
               if(_loc2_ && this.§3"8§ > 0)
               {
                  this.§>$C§ = 2000;
                  this.§3"8§ = this.§3"8§ - 1;
               }
               else if(!this.§=#=§)
               {
                  this.changeGameState(§1"'§);
               }
            }
            if(!§ 6§.camera.isOnCastleView() && § 6§.camera.mCurrentAction != §5$E§.§]#4§)
            {
               this.changeGameState(§1"'§);
            }
         }
         else if(this.§##@§ == §var §)
         {
            if(this.§>$C§ <= 0)
            {
               this.changeGameState(§1"'§);
            }
         }
         else if(this.§##@§ == §1"'§)
         {
            if(§ 6§.camera.isOnCastleView() && § 6§.camera.mCurrentAction != §5$E§.§]#4§)
            {
               this.changeGameState(§-I§);
            }
         }
         else if(this.§##@§ == §5#,§)
         {
            _loc3_ = § 6§.levelObjects.activeObject;
            if(!_loc3_ || _loc3_ && !_loc3_.isFlying)
            {
               this.changeGameState(§"![§);
            }
         }
         else if(this.§##@§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§>$C§ <= 0)
            {
               if(§ 6§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§>$C§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §=#=§() : Boolean
      {
         if(this.§]V§() || this.§?#u§())
         {
            return true;
         }
         return false;
      }
      
      private function §?#u§() : Boolean
      {
         var _loc2_:§ var§ = null;
         var _loc1_:int = § 6§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § 6§.objects.getObject(_loc1_) as § var§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         if(§+!p§.§`?§.slingshot.mBirds.length > 0)
         {
            if(§+!p§.§`?§.slingshot.mBirds[0].name == "BIRD_SARDINE")
            {
               return true;
            }
         }
         return false;
      }
      
      public function §]V§() : §]#m§
      {
         var _loc2_:§]#m§ = null;
         var _loc1_:int = § 6§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § 6§.objects.getObject(_loc1_) as §]#m§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §'"§() : Boolean
      {
         return (this.§##@§ == LEVEL_STATE_VICTORY2_END || this.§##@§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§##@§ == §4$,§) && (this.§>$C§ <= 0 && this.§##@§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public final function §`[§() : Boolean
      {
         return !§ 6§.objects.isLevelGoalObjectsAlive();
      }
      
      public function §#$$§() : Boolean
      {
         return this.§##@§ == LEVEL_STATE_VICTORY2_END || this.§##@§ == §4$,§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§7$7§(param1.delta > 0);
         }
      }
      
      public function §7$7§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§&!v§ || !§ 6§.mReadyToRun)
         {
            return;
         }
         if(this.§##@§ == §"![§ || this.§##@§ == §-I§ || this.§##@§ == §1"'§ || this.§##@§ == §5#,§)
         {
            if(!§ 6§.isPlayingReplay())
            {
               § 6§.camera.adjustManualScale(param1,param2 == 0 ? Number(§5$E§.§1"p§) : Number(param2));
            }
            else
            {
               § 6§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §&Y§(param1:int) : void
      {
         this.§4!"§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§&!v§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §2#>§.§28§();
         if(this.§'"§())
         {
            return;
         }
         if(!§ 6§.isPlayingReplay())
         {
            this.§9!w§ = § 6§.screenToBox2D(param1,param2,this.§9!w§);
            if(§ 6§.levelObjects.activeObject)
            {
               _loc4_ = § 6§.levelObjects.activeObject.canActivateSpecialPower;
               if(!§ 6§.levelObjects.activeObject.specialPowerUsed)
               {
                  § 6§.activateSpecialPower(this.§9!w§.x,this.§9!w§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§ 6§.slingshot.canStartDragging(this.§9!w§))
            {
               § 6§.slingshot.startDragging();
               this.changeGameState(§1"'§);
            }
            else
            {
               § 6§.camera.startDragging(param1,param2);
            }
            return;
         }
         § 6§.camera.startDragging(param1,param2);
         § 6§.resetReplaySpeed();
      }
      
      protected function §`"#§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = § 6§.screenToBox2D(param1,param2,null);
         var _loc4_:§=Q§;
         if(_loc4_ = § 6§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            § 6§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§&!v§)
         {
            return;
         }
         §2#>§.§-`§();
         if(this.§##@§ == §var §)
         {
            this.changeGameState(§1"'§);
         }
         if(§ 6§.slingshot.mDragging)
         {
            this.§9!w§ = § 6§.screenToBox2D(param1,param2,this.§9!w§);
            § 6§.slingshot.setNewCoordinatesForRubber(this.§9!w§.x,this.§9!w§.y,false);
            if(§ 6§.slingshot.canShootTheBird)
            {
               § 6§.slingshot.shoot();
            }
            else
            {
               § 6§.slingshot.cancelDragging();
            }
         }
         if(§ 6§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               § 6§.camera.dragToNewPoint(param1,param2);
            }
            § 6§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§&!v§)
         {
            return;
         }
         if(§ 6§.slingshot.mDragging)
         {
            this.§9!w§ = § 6§.screenToBox2D(param1,param2,this.§9!w§);
            § 6§.slingshot.setNewCoordinatesForRubber(this.§9!w§.x,this.§9!w§.y,false);
         }
         else if(§ 6§.camera.mDragging)
         {
            § 6§.camera.dragToNewPoint(param1,param2);
         }
         this.§6"o§ = param1;
         this.§7!j§ = param2;
      }
      
      public function §!"-§() : Point
      {
         return new Point(this.§6"o§,this.§7!j§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§ #4§.§,#T§(this.§ #4§.getValue() + param1);
         if(this.§##@§ == §"![§)
         {
            this.§>$C§ = 2000;
            this.§3"8§ = §0h§;
         }
      }
      
      override public function getScore() : int
      {
         if(§,[§ > 1)
         {
            return Math.floor(this.§ #4§.getValue() / §,[§) * §,[§;
         }
         return this.§ #4§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§=#=§)
         {
            return 0;
         }
         var _loc1_:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).scoreEagle;
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§&!v§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§&!v§ = param1;
      }
      
      public function §,$1§() : void
      {
         this.changeGameState(§4$,§,true);
      }
      
      public function § !!§() : void
      {
         this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT,true);
         § 6§.gameOver(LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      override public function checkForLevelEnd() : void
      {
         if(!this.§%$+§)
         {
            if(§ 6§.slingshot.mSlingShotState == §2!"§.§1#%§ || !§ 6§.objects.isLevelGoalObjectsAlive())
            {
               this.§+#e§ = §&$0§.§;!n§;
               this.§%$+§ = true;
            }
         }
      }
      
      public function §9[§(param1:Number) : void
      {
         if(this.§+#e§ > 0)
         {
            this.§+#e§ += param1;
         }
      }
      
      public function §@!x§() : Boolean
      {
         return this.§5!O§;
      }
      
      public function §>J§() : void
      {
         this.§%$+§ = false;
         this.§+#e§ = 0;
         this.§5!O§ = false;
      }
      
      public function §9!d§() : void
      {
         if(this.§%$+§)
         {
            if(§ 6§.slingshot.mSlingShotState == §2!"§.§1#%§ && § 6§.objects.isLevelGoalObjectsAlive() && !this.§5!O§)
            {
               this.§>J§();
            }
         }
      }
   }
}

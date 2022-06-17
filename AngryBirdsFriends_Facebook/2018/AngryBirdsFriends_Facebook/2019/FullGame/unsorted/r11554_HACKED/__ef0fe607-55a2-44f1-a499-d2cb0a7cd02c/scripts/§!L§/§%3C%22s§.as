package §!L§
{
   import § !D§.§"b§;
   import § !D§.§'"u§;
   import § !D§.§;#W§;
   import §"$=§.§'![§;
   import §%_§.§;l§;
   import §+#B§.§["Q§;
   import §-!!§.§8"J§;
   import §-!!§.§9"<§;
   import §-!!§.§`§;
   import §9#K§.§=^§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §<"s§ extends § "+§
   {
      
      private static const §-#s§:int = 1;
      
      public static const §!`§:int = 0;
      
      public static const §7!"§:int = 1;
      
      public static const §3#f§:int = 2;
      
      public static const §]!4§:int = 3;
      
      public static const §+#$§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §&$A§:int = 7;
      
      public static const §&D§:int = 5;
      
      private static const § "#§:Number = §;l§.§3"b§ / 100;
       
      
      protected var §&#O§:int = 0;
      
      protected var §;"^§:Number = 0;
      
      private var §!!m§:Number = 0;
      
      private var §`;§:int = 0;
      
      private var §5"n§:Number = 0;
      
      private var §9"O§:Number = 0;
      
      protected var §[!f§:Boolean = true;
      
      protected var §^!G§:§["Q§;
      
      protected var §3"6§:Point;
      
      protected var §3!;§:Boolean;
      
      protected var §!#D§:int;
      
      protected var §`"g§:Boolean;
      
      public function §<"s§(param1:§'"u§, param2:§'![§)
      {
         this.§^!G§ = new §["Q§();
         this.§3"6§ = new Point();
         super(param1,param2);
      }
      
      public function get §="h§() : int
      {
         return this.§&#O§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§^!G§.§<!Q§(0);
         this.§&#O§ = -1;
         this.§`;§ = 0;
         this.changeGameState(§!`§);
         §!H§(true);
         §&!g§.objects.setCollisionsEnabled(true);
         §&!g§.objects.setGroundTextureEnabled(true);
         §&!g§.slingshot.addEventListener(§"b§.§&#<§,this.§4$6§);
      }
      
      private function §4$6§(param1:Event) : void
      {
         this.changeGameState(§3#f§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §&!g§.update(param1,true);
         this.§8M§(param1);
         this.§>#-§(param1);
      }
      
      private function §8M§(param1:int) : void
      {
         if(this.§`;§ != 0)
         {
            §&!g§.camera.adjustManualScale(this.§`;§ > 0,param1 * § "#§);
         }
      }
      
      public function clearLevel() : void
      {
         §&!g§.clearLevel();
         removeEventListeners();
         this.§&#O§ = -1;
         this.§+"_§();
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §?!6§() : Boolean
      {
         if(§&!g§.camera.mCurrentCameraSliderLocation < §;l§.§+2§)
         {
            return false;
         }
         if(!§&!g§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §-"w§(param1:int) : void
      {
         var _loc2_:§;l§ = §&!g§.camera;
         if(_loc2_.§,$@§ > 0)
         {
            _loc2_.§,$@§ -= param1;
            if(_loc2_.§,$@§ <= 0)
            {
               if(this.§?!6§())
               {
                  _loc2_.§,$@§ = -1;
                  if(§&!g§.slingshot.birdsAvailable)
                  {
                     _loc2_.§&=§();
                  }
               }
               else
               {
                  _loc2_.§,$@§ = §;l§.§<">§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§<"0§() && !param2)
         {
            return;
         }
         if(param1 == §!`§)
         {
            this.§;"^§ = 2000;
            this.§+"_§();
         }
         else if(param1 == §7!"§)
         {
            §&!g§.camera.goToBirdView();
         }
         else if(param1 == §3#f§)
         {
            this.§;"^§ = 5000;
            §&!g§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §]!4§)
         {
            §&!g§.camera.goToCastleView();
         }
         else if(param1 == §+#$§)
         {
            this.§;"^§ = 2000;
            this.§!!m§ = §&D§;
            §&!g§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§;"^§ = 1200;
            if(!this.§2!q§)
            {
               §&!g§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§;"^§ = 1200;
            if(!this.§2!q§)
            {
               §&!g§.camera.goToBirdView();
               §&!g§.slingshot.makeBirdsJumpForJoy();
            }
            else
            {
               §&!g§.slingshot.setSlingShotState(§"b§.§4#C§);
            }
            this.§,#-§();
         }
         else if(param1 == §&$A§)
         {
            this.§;"^§ = 1200;
            §&!g§.camera.goToCastleView();
            §&!g§.objects.makePigsSmile(5);
         }
         this.§&#O§ = param1;
      }
      
      protected function §,#-§() : void
      {
         §[#%§.§^L§();
         §[#%§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)));
      }
      
      public function §@#-§() : void
      {
         this.§;"^§ = 2000;
         this.changeGameState(§<"s§.§7!"§,true);
      }
      
      public function §>#-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§8"J§ = null;
         if(this.§!#D§ > 0)
         {
            this.§!#D§ -= param1;
            if(this.§!#D§ <= 0)
            {
               this.§`"g§ = true;
            }
         }
         this.§;"^§ -= param1;
         if(this.§;"^§ < 0)
         {
            this.§;"^§ = 0;
         }
         if(this.§&#O§ == §]!4§)
         {
            if(!§&!g§.camera.isOnCastleView() && §&!g§.camera.mCurrentAction != §;l§.§02§)
            {
               this.changeGameState(§7!"§);
            }
         }
         else if(this.§&#O§ == §+#$§)
         {
            if(this.§;"^§ <= 0)
            {
               _loc2_ = §&!g§.objects.hasBirds();
               if(_loc2_ && this.§!!m§ > 0)
               {
                  this.§;"^§ = 2000;
                  this.§!!m§ = this.§!!m§ - 1;
               }
               else if(!this.§2!q§)
               {
                  this.changeGameState(§7!"§);
               }
            }
            if(!§&!g§.camera.isOnCastleView() && §&!g§.camera.mCurrentAction != §;l§.§02§)
            {
               this.changeGameState(§7!"§);
            }
         }
         else if(this.§&#O§ == §!`§)
         {
            if(this.§;"^§ <= 0)
            {
               this.changeGameState(§7!"§);
            }
         }
         else if(this.§&#O§ == §7!"§)
         {
            if(§&!g§.camera.isOnCastleView() && §&!g§.camera.mCurrentAction != §;l§.§02§)
            {
               this.changeGameState(§]!4§);
            }
         }
         else if(this.§&#O§ == §3#f§)
         {
            _loc3_ = §&!g§.levelObjects.activeObject;
            if(!_loc3_ || _loc3_ && !_loc3_.isFlying)
            {
               this.changeGameState(§+#$§);
            }
         }
         else if(this.§&#O§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§;"^§ <= 0)
            {
               if(§&!g§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§;"^§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §2!q§() : Boolean
      {
         if(this.§@%§() || this.§1#I§())
         {
            return true;
         }
         return false;
      }
      
      private function §1#I§() : Boolean
      {
         var _loc2_:§9"<§ = null;
         var _loc1_:int = §&!g§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §&!g§.objects.getObject(_loc1_) as §9"<§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         if(§%"T§.§;`§.slingshot.mBirds.length > 0)
         {
            if(§%"T§.§;`§.slingshot.mBirds[0].name == "BIRD_SARDINE")
            {
               return true;
            }
         }
         return false;
      }
      
      public function §@%§() : §`#9§
      {
         var _loc2_:§`#9§ = null;
         var _loc1_:int = §&!g§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §&!g§.objects.getObject(_loc1_) as §`#9§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §<"0§() : Boolean
      {
         return (this.§&#O§ == LEVEL_STATE_VICTORY2_END || this.§&#O§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§&#O§ == §&$A§) && (this.§;"^§ <= 0 && this.§&#O§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public final function §[u§() : Boolean
      {
         return !§&!g§.objects.isLevelGoalObjectsAlive();
      }
      
      public function §?$&§() : Boolean
      {
         return this.§&#O§ == LEVEL_STATE_VICTORY2_END || this.§&#O§ == §&$A§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§+s§(param1.delta > 0);
         }
      }
      
      public function §+s§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§[!f§ || !§&!g§.mReadyToRun)
         {
            return;
         }
         if(this.§&#O§ == §+#$§ || this.§&#O§ == §]!4§ || this.§&#O§ == §7!"§ || this.§&#O§ == §3#f§)
         {
            if(!§&!g§.isPlayingReplay())
            {
               §&!g§.camera.adjustManualScale(param1,param2 == 0 ? Number(§;l§.§3"b§) : Number(param2));
            }
            else
            {
               §&!g§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §!"&§(param1:int) : void
      {
         this.§`;§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§[!f§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §=^§.§4!M§();
         if(this.§<"0§())
         {
            return;
         }
         if(!§&!g§.isPlayingReplay())
         {
            this.§3"6§ = §&!g§.screenToBox2D(param1,param2,this.§3"6§);
            if(§&!g§.levelObjects.activeObject)
            {
               _loc4_ = §&!g§.levelObjects.activeObject.canActivateSpecialPower;
               if(!§&!g§.levelObjects.activeObject.specialPowerUsed)
               {
                  §&!g§.activateSpecialPower(this.§3"6§.x,this.§3"6§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§&!g§.slingshot.canStartDragging(this.§3"6§))
            {
               §&!g§.slingshot.startDragging();
               this.changeGameState(§7!"§);
            }
            else
            {
               §&!g§.camera.startDragging(param1,param2);
            }
            return;
         }
         §&!g§.camera.startDragging(param1,param2);
         §&!g§.resetReplaySpeed();
      }
      
      protected function §##>§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §&!g§.screenToBox2D(param1,param2,null);
         var _loc4_:§8"J§;
         if(_loc4_ = §&!g§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §&!g§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§[!f§)
         {
            return;
         }
         §=^§.§1$@§();
         if(this.§&#O§ == §!`§)
         {
            this.changeGameState(§7!"§);
         }
         if(§&!g§.slingshot.mDragging)
         {
            this.§3"6§ = §&!g§.screenToBox2D(param1,param2,this.§3"6§);
            §&!g§.slingshot.setNewCoordinatesForRubber(this.§3"6§.x,this.§3"6§.y,false);
            if(§&!g§.slingshot.canShootTheBird)
            {
               §&!g§.slingshot.shoot();
            }
            else
            {
               §&!g§.slingshot.cancelDragging();
            }
         }
         if(§&!g§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §&!g§.camera.dragToNewPoint(param1,param2);
            }
            §&!g§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§[!f§)
         {
            return;
         }
         if(§&!g§.slingshot.mDragging)
         {
            this.§3"6§ = §&!g§.screenToBox2D(param1,param2,this.§3"6§);
            §&!g§.slingshot.setNewCoordinatesForRubber(this.§3"6§.x,this.§3"6§.y,false);
         }
         else if(§&!g§.camera.mDragging)
         {
            §&!g§.camera.dragToNewPoint(param1,param2);
         }
         this.§5"n§ = param1;
         this.§9"O§ = param2;
      }
      
      public function §9#[§() : Point
      {
         return new Point(this.§5"n§,this.§9"O§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§^!G§.§<!Q§(this.§^!G§.getValue() + param1);
         if(this.§&#O§ == §+#$§)
         {
            this.§;"^§ = 2000;
            this.§!!m§ = §&D§;
         }
      }
      
      override public function getScore() : int
      {
         if(§-#s§ > 1)
         {
            return Math.floor(this.§^!G§.getValue() / §-#s§) * §-#s§;
         }
         return this.§^!G§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§2!q§)
         {
            return 0;
         }
         var _loc1_:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).scoreEagle;
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§[!f§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§[!f§ = param1;
      }
      
      public function §"!_§() : void
      {
         this.changeGameState(§&$A§,true);
      }
      
      public function §1X§() : void
      {
         this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT,true);
         §&!g§.gameOver(LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      override public function checkForLevelEnd() : void
      {
         if(!this.§3!;§)
         {
            if(§&!g§.slingshot.mSlingShotState == §"b§.§70§ || !§&!g§.objects.isLevelGoalObjectsAlive())
            {
               this.§!#D§ = §;#W§.§&"j§;
               this.§3!;§ = true;
            }
         }
      }
      
      public function §^#P§(param1:Number) : void
      {
         if(this.§!#D§ > 0)
         {
            this.§!#D§ += param1;
         }
      }
      
      public function §2!0§() : Boolean
      {
         return this.§`"g§;
      }
      
      public function §+"_§() : void
      {
         this.§3!;§ = false;
         this.§!#D§ = 0;
         this.§`"g§ = false;
      }
      
      public function §-"'§() : void
      {
         if(this.§3!;§)
         {
            if(§&!g§.slingshot.mSlingShotState == §"b§.§70§ && §&!g§.objects.isLevelGoalObjectsAlive() && !this.§`"g§)
            {
               this.§+"_§();
            }
         }
      }
   }
}

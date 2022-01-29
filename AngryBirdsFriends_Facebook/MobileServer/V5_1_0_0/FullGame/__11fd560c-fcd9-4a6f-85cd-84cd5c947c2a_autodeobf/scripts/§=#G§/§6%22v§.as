package §=#G§
{
   import §%!P§.§4#u§;
   import §8§.§%$'§;
   import §8§.§4!y§;
   import §8§.§6"6§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §@!M§.§!"p§;
   import §@0§.§ !o§;
   import §@0§.§%!q§;
   import §@0§.§1§;
   import §]!6§.§7Z§;
   import §`7§.§;e§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §6"v§ extends §,!U§
   {
      
      private static const §2!z§:int = 1;
      
      public static const §2!r§:int = 0;
      
      public static const §9#q§:int = 1;
      
      public static const §=!g§:int = 2;
      
      public static const §[j§:int = 3;
      
      public static const §2"U§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%#?§:int = 7;
      
      public static const §;#+§:int = 5;
      
      private static const §;!H§:Number = §4#u§.§`P§ / 100;
       
      
      protected var §0!z§:int = 0;
      
      protected var §@$5§:Number = 0;
      
      private var §4$A§:Number = 0;
      
      private var §'3§:int = 0;
      
      private var §-!a§:Number = 0;
      
      private var §8%§:Number = 0;
      
      protected var §&#G§:Boolean = true;
      
      protected var §]V§:§;e§;
      
      protected var §!H§:Point;
      
      protected var §+"@§:Boolean;
      
      protected var §6!j§:int;
      
      protected var §%!s§:Boolean;
      
      public function §6"v§(param1:§%!q§, param2:§8=§)
      {
         this.§]V§ = new §;e§();
         this.§!H§ = new Point();
         super(param1,param2);
      }
      
      public function get §=!X§() : int
      {
         return this.§0!z§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§]V§.§ $;§(0);
         this.§0!z§ = -1;
         this.§'3§ = 0;
         this.changeGameState(§2!r§);
         §6%§(true);
         §=#N§.objects.setCollisionsEnabled(true);
         §=#N§.objects.setGroundTextureEnabled(true);
         §=#N§.slingshot.addEventListener(§ !o§.§+#l§,this.§^#=§);
      }
      
      private function §^#=§(param1:Event) : void
      {
         this.changeGameState(§=!g§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §=#N§.update(param1,true);
         this.§ #]§(param1);
         this.§+"1§(param1);
      }
      
      private function § #]§(param1:int) : void
      {
         if(this.§'3§ != 0)
         {
            §=#N§.camera.adjustManualScale(this.§'3§ > 0,param1 * §;!H§);
         }
      }
      
      public function clearLevel() : void
      {
         §=#N§.clearLevel();
         removeEventListeners();
         this.§0!z§ = -1;
         this.§-!$§();
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §#"3§() : Boolean
      {
         if(§=#N§.camera.mCurrentCameraSliderLocation < §4#u§.§4!b§)
         {
            return false;
         }
         if(!§=#N§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §6$0§(param1:int) : void
      {
         var _loc2_:§4#u§ = §=#N§.camera;
         if(_loc2_.§%#q§ > 0)
         {
            _loc2_.§%#q§ -= param1;
            if(_loc2_.§%#q§ <= 0)
            {
               if(this.§#"3§())
               {
                  _loc2_.§%#q§ = -1;
                  if(§=#N§.slingshot.birdsAvailable)
                  {
                     _loc2_.§ !T§();
                  }
               }
               else
               {
                  _loc2_.§%#q§ = §4#u§.§+!5§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§7"e§() && !param2)
         {
            return;
         }
         if(param1 == §2!r§)
         {
            this.§@$5§ = 2000;
            this.§-!$§();
         }
         else if(param1 == §9#q§)
         {
            §=#N§.camera.goToBirdView();
         }
         else if(param1 == §=!g§)
         {
            this.§@$5§ = 5000;
            §=#N§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §[j§)
         {
            §=#N§.camera.goToCastleView();
         }
         else if(param1 == §2"U§)
         {
            this.§@$5§ = 2000;
            this.§4$A§ = §;#+§;
            §=#N§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§@$5§ = 1200;
            if(!this.§]"B§)
            {
               §=#N§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§@$5§ = 1200;
            if(!this.§]"B§)
            {
               §=#N§.camera.goToBirdView();
               §=#N§.slingshot.makeBirdsJumpForJoy();
            }
            else
            {
               §=#N§.slingshot.setSlingShotState(§ !o§.§3"'§);
            }
            this.§<"A§();
         }
         else if(param1 == §%#?§)
         {
            this.§@$5§ = 1200;
            §=#N§.camera.goToCastleView();
            §=#N§.objects.makePigsSmile(5);
         }
         this.§0!z§ = param1;
      }
      
      protected function §<"A§() : void
      {
         §!"p§.§>#p§();
         §!"p§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)));
      }
      
      public function §^Q§() : void
      {
         this.§@$5§ = 2000;
         this.changeGameState(§6"v§.§9#q§,true);
      }
      
      public function §+"1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§4!y§ = null;
         if(this.§6!j§ > 0)
         {
            this.§6!j§ -= param1;
            if(this.§6!j§ <= 0)
            {
               this.§%!s§ = true;
            }
         }
         this.§@$5§ -= param1;
         if(this.§@$5§ < 0)
         {
            this.§@$5§ = 0;
         }
         if(this.§0!z§ == §[j§)
         {
            if(!§=#N§.camera.isOnCastleView() && §=#N§.camera.mCurrentAction != §4#u§.§<%§)
            {
               this.changeGameState(§9#q§);
            }
         }
         else if(this.§0!z§ == §2"U§)
         {
            if(this.§@$5§ <= 0)
            {
               _loc2_ = §=#N§.objects.hasBirds();
               if(_loc2_ && this.§4$A§ > 0)
               {
                  this.§@$5§ = 2000;
                  this.§4$A§ = this.§4$A§ - 1;
               }
               else if(!this.§]"B§)
               {
                  this.changeGameState(§9#q§);
               }
            }
            if(!§=#N§.camera.isOnCastleView() && §=#N§.camera.mCurrentAction != §4#u§.§<%§)
            {
               this.changeGameState(§9#q§);
            }
         }
         else if(this.§0!z§ == §2!r§)
         {
            if(this.§@$5§ <= 0)
            {
               this.changeGameState(§9#q§);
            }
         }
         else if(this.§0!z§ == §9#q§)
         {
            if(§=#N§.camera.isOnCastleView() && §=#N§.camera.mCurrentAction != §4#u§.§<%§)
            {
               this.changeGameState(§[j§);
            }
         }
         else if(this.§0!z§ == §=!g§)
         {
            _loc3_ = §=#N§.levelObjects.activeObject;
            if(!_loc3_ || _loc3_ && !_loc3_.isFlying)
            {
               this.changeGameState(§2"U§);
            }
         }
         else if(this.§0!z§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§@$5§ <= 0)
            {
               if(§=#N§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§@$5§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §]"B§() : Boolean
      {
         if(this.§5#8§() || this.§]"3§())
         {
            return true;
         }
         return false;
      }
      
      private function §]"3§() : Boolean
      {
         var _loc2_:§%$'§ = null;
         var _loc1_:int = §=#N§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §=#N§.objects.getObject(_loc1_) as §%$'§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         if(§3#U§.§#$4§.slingshot.mBirds.length > 0)
         {
            if(§3#U§.§#$4§.slingshot.mBirds[0].name == "BIRD_SARDINE")
            {
               return true;
            }
         }
         return false;
      }
      
      public function §5#8§() : §6"6§
      {
         var _loc2_:§6"6§ = null;
         var _loc1_:int = §=#N§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §=#N§.objects.getObject(_loc1_) as §6"6§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §7"e§() : Boolean
      {
         return (this.§0!z§ == LEVEL_STATE_VICTORY2_END || this.§0!z§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§0!z§ == §%#?§) && (this.§@$5§ <= 0 && this.§0!z§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public final function §,"Y§() : Boolean
      {
         return !§=#N§.objects.isLevelGoalObjectsAlive();
      }
      
      public function §9#-§() : Boolean
      {
         return this.§0!z§ == LEVEL_STATE_VICTORY2_END || this.§0!z§ == §%#?§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§5#q§(param1.delta > 0);
         }
      }
      
      public function §5#q§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§&#G§ || !§=#N§.mReadyToRun)
         {
            return;
         }
         if(this.§0!z§ == §2"U§ || this.§0!z§ == §[j§ || this.§0!z§ == §9#q§ || this.§0!z§ == §=!g§)
         {
            if(!§=#N§.isPlayingReplay())
            {
               §=#N§.camera.adjustManualScale(param1,param2 == 0 ? Number(§4#u§.§`P§) : Number(param2));
            }
            else
            {
               §=#N§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §?#M§(param1:int) : void
      {
         this.§'3§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§&#G§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §7Z§.§2# §();
         if(this.§7"e§())
         {
            return;
         }
         if(!§=#N§.isPlayingReplay())
         {
            this.§!H§ = §=#N§.screenToBox2D(param1,param2,this.§!H§);
            if(§=#N§.levelObjects.activeObject)
            {
               _loc4_ = §=#N§.levelObjects.activeObject.canActivateSpecialPower;
               if(!§=#N§.levelObjects.activeObject.specialPowerUsed)
               {
                  §=#N§.activateSpecialPower(this.§!H§.x,this.§!H§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§=#N§.slingshot.canStartDragging(this.§!H§))
            {
               §=#N§.slingshot.startDragging();
               this.changeGameState(§9#q§);
            }
            else
            {
               §=#N§.camera.startDragging(param1,param2);
            }
            return;
         }
         §=#N§.camera.startDragging(param1,param2);
         §=#N§.resetReplaySpeed();
      }
      
      protected function §["b§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §=#N§.screenToBox2D(param1,param2,null);
         var _loc4_:§4!y§;
         if(_loc4_ = §=#N§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §=#N§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§&#G§)
         {
            return;
         }
         §7Z§.§[!_§();
         if(this.§0!z§ == §2!r§)
         {
            this.changeGameState(§9#q§);
         }
         if(§=#N§.slingshot.mDragging)
         {
            this.§!H§ = §=#N§.screenToBox2D(param1,param2,this.§!H§);
            §=#N§.slingshot.setNewCoordinatesForRubber(this.§!H§.x,this.§!H§.y,false);
            if(§=#N§.slingshot.canShootTheBird)
            {
               §=#N§.slingshot.shoot();
            }
            else
            {
               §=#N§.slingshot.cancelDragging();
            }
         }
         if(§=#N§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §=#N§.camera.dragToNewPoint(param1,param2);
            }
            §=#N§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§&#G§)
         {
            return;
         }
         if(§=#N§.slingshot.mDragging)
         {
            this.§!H§ = §=#N§.screenToBox2D(param1,param2,this.§!H§);
            §=#N§.slingshot.setNewCoordinatesForRubber(this.§!H§.x,this.§!H§.y,false);
         }
         else if(§=#N§.camera.mDragging)
         {
            §=#N§.camera.dragToNewPoint(param1,param2);
         }
         this.§-!a§ = param1;
         this.§8%§ = param2;
      }
      
      public function §-"c§() : Point
      {
         return new Point(this.§-!a§,this.§8%§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§]V§.§ $;§(this.§]V§.getValue() + param1);
         if(this.§0!z§ == §2"U§)
         {
            this.§@$5§ = 2000;
            this.§4$A§ = §;#+§;
         }
      }
      
      override public function getScore() : int
      {
         if(§2!z§ > 1)
         {
            return Math.floor(this.§]V§.getValue() / §2!z§) * §2!z§;
         }
         return this.§]V§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§]"B§)
         {
            return 0;
         }
         var _loc1_:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).scoreEagle;
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§&#G§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§&#G§ = param1;
      }
      
      public function § "i§() : void
      {
         this.changeGameState(§%#?§,true);
      }
      
      public function §"!A§() : void
      {
         this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT,true);
         §=#N§.gameOver(LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      override public function checkForLevelEnd() : void
      {
         if(!this.§+"@§)
         {
            if(§=#N§.slingshot.mSlingShotState == § !o§.§2"j§ || !§=#N§.objects.isLevelGoalObjectsAlive())
            {
               this.§6!j§ = §1#7§.§<"6§;
               this.§+"@§ = true;
            }
         }
      }
      
      public function §0#?§(param1:Number) : void
      {
         if(this.§6!j§ > 0)
         {
            this.§6!j§ += param1;
         }
      }
      
      public function §,!X§() : Boolean
      {
         return this.§%!s§;
      }
      
      public function §-!$§() : void
      {
         this.§+"@§ = false;
         this.§6!j§ = 0;
         this.§%!s§ = false;
      }
      
      public function §]"V§() : void
      {
         if(this.§+"@§)
         {
            if(§=#N§.slingshot.mSlingShotState == § !o§.§2"j§ && §=#N§.objects.isLevelGoalObjectsAlive() && !this.§%!s§)
            {
               this.§-!$§();
            }
         }
      }
   }
}

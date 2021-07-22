package §4§#3
{
   import §&!_§.§@"E§;
   import §,"v§.§;"n§;
   import §1#u§.§;"Q§;
   import §1#v§.§4"l§;
   import §6!3§.§5K§;
   import §6!3§.§;!U§;
   import §6!3§.§<"V§;
   import §8#K§.§3Z§;
   import §>2§.§!!W§;
   import §>2§.§!6§;
   import §>2§.§6#t§;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §9#i§ extends §=#5§
   {
      
      private static const §`">§:int = 1;
      
      public static const §]!h§:int = 0;
      
      public static const §`!M§:int = 1;
      
      public static const §;"w§:int = 2;
      
      public static const §1"6§:int = 3;
      
      public static const §=!8§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §5#E§:int = 7;
      
      public static const §+!W§:int = 5;
      
      private static const §7"o§:Number = §;"Q§.§=_§ / 100;
       
      
      protected var §8!=§:int = 0;
      
      protected var §&"r§:Number = 0;
      
      private var §"D§:Number = 0;
      
      private var §?"S§:int = 0;
      
      private var §-!Q§:Number = 0;
      
      private var §>"b§:Number = 0;
      
      protected var §?#%§:Boolean = true;
      
      protected var §@"P§:§@"E§;
      
      protected var §8c§:Point;
      
      protected var §`!D§:Boolean;
      
      protected var §^3§:int;
      
      protected var §<#+§:Boolean;
      
      public function §9#i§(param1:§!6§, param2:§;"n§)
      {
         this.§@"P§ = new §@"E§();
         this.§8c§ = new Point();
         super(param1,param2);
      }
      
      public function get §7Z§() : int
      {
         return this.§8!=§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§@"P§.§@&§(0);
         this.§8!=§ = -1;
         this.§?"S§ = 0;
         this.changeGameState(§]!h§);
         §>#H§(true);
         §5#0§.objects.setCollisionsEnabled(true);
         §5#0§.objects.setGroundTextureEnabled(true);
         §5#0§.slingshot.addEventListener(§6#t§.§!#f§,this.§^"!§);
      }
      
      private function §^"!§(param1:Event) : void
      {
         this.changeGameState(§;"w§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §5#0§.update(param1,true);
         this.§]$A§(param1);
         this.§["E§(param1);
      }
      
      private function §]$A§(param1:int) : void
      {
         if(this.§?"S§ != 0)
         {
            §5#0§.camera.adjustManualScale(this.§?"S§ > 0,param1 * §7"o§);
         }
      }
      
      public function clearLevel() : void
      {
         §5#0§.clearLevel();
         removeEventListeners();
         this.§8!=§ = -1;
         this.§'A§();
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §,#t§() : Boolean
      {
         if(§5#0§.camera.mCurrentCameraSliderLocation < §;"Q§.§""9§)
         {
            return false;
         }
         if(!§5#0§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §7"S§(param1:int) : void
      {
         var _loc2_:§;"Q§ = §5#0§.camera;
         if(_loc2_.§?#$§ > 0)
         {
            _loc2_.§?#$§ -= param1;
            if(_loc2_.§?#$§ <= 0)
            {
               if(this.§,#t§())
               {
                  _loc2_.§?#$§ = -1;
                  if(§5#0§.slingshot.birdsAvailable)
                  {
                     _loc2_.§""5§();
                  }
               }
               else
               {
                  _loc2_.§?#$§ = §;"Q§.§8"U§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§4r§() && !param2)
         {
            return;
         }
         if(param1 == §]!h§)
         {
            this.§&"r§ = 2000;
            this.§'A§();
         }
         else if(param1 == §`!M§)
         {
            §5#0§.camera.goToBirdView();
         }
         else if(param1 == §;"w§)
         {
            this.§&"r§ = 5000;
            §5#0§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §1"6§)
         {
            §5#0§.camera.goToCastleView();
         }
         else if(param1 == §=!8§)
         {
            this.§&"r§ = 2000;
            this.§"D§ = §+!W§;
            §5#0§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§&"r§ = 1200;
            if(!this.§3$'§)
            {
               §5#0§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§&"r§ = 1200;
            if(!this.§3$'§)
            {
               §5#0§.camera.goToBirdView();
               §5#0§.slingshot.makeBirdsJumpForJoy();
            }
            else
            {
               §5#0§.slingshot.setSlingShotState(§6#t§.§`!t§);
            }
            this.§'i§();
         }
         else if(param1 == §5#E§)
         {
            this.§&"r§ = 1200;
            §5#0§.camera.goToCastleView();
            §5#0§.objects.makePigsSmile(5);
         }
         this.§8!=§ = param1;
      }
      
      protected function §'i§() : void
      {
         §3Z§.§3j§();
         §3Z§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)));
      }
      
      public function §<"Z§() : void
      {
         this.§&"r§ = 2000;
         this.changeGameState(§9#i§.§`!M§,true);
      }
      
      public function §["E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;!U§ = null;
         if(this.§^3§ > 0)
         {
            this.§^3§ -= param1;
            if(this.§^3§ <= 0)
            {
               this.§<#+§ = true;
            }
         }
         this.§&"r§ -= param1;
         if(this.§&"r§ < 0)
         {
            this.§&"r§ = 0;
         }
         if(this.§8!=§ == §1"6§)
         {
            if(!§5#0§.camera.isOnCastleView() && §5#0§.camera.mCurrentAction != §;"Q§.§;k§)
            {
               this.changeGameState(§`!M§);
            }
         }
         else if(this.§8!=§ == §=!8§)
         {
            if(this.§&"r§ <= 0)
            {
               _loc2_ = §5#0§.objects.hasBirds();
               if(_loc2_ && this.§"D§ > 0)
               {
                  this.§&"r§ = 2000;
                  this.§"D§ = this.§"D§ - 1;
               }
               else if(!this.§3$'§)
               {
                  this.changeGameState(§`!M§);
               }
            }
            if(!§5#0§.camera.isOnCastleView() && §5#0§.camera.mCurrentAction != §;"Q§.§;k§)
            {
               this.changeGameState(§`!M§);
            }
         }
         else if(this.§8!=§ == §]!h§)
         {
            if(this.§&"r§ <= 0)
            {
               this.changeGameState(§`!M§);
            }
         }
         else if(this.§8!=§ == §`!M§)
         {
            if(§5#0§.camera.isOnCastleView() && §5#0§.camera.mCurrentAction != §;"Q§.§;k§)
            {
               this.changeGameState(§1"6§);
            }
         }
         else if(this.§8!=§ == §;"w§)
         {
            _loc3_ = §5#0§.levelObjects.activeObject;
            if(!_loc3_ || _loc3_ && !_loc3_.isFlying)
            {
               this.changeGameState(§=!8§);
            }
         }
         else if(this.§8!=§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§&"r§ <= 0)
            {
               if(§5#0§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§&"r§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §3$'§() : Boolean
      {
         if(this.§9#N§() || this.§2!"§())
         {
            return true;
         }
         return false;
      }
      
      private function §2!"§() : Boolean
      {
         var _loc2_:§5K§ = null;
         var _loc1_:int = §5#0§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §5#0§.objects.getObject(_loc1_) as §5K§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         if(§7n§.§6#K§.slingshot.mBirds.length > 0)
         {
            if(§7n§.§6#K§.slingshot.mBirds[0].name == "BIRD_SARDINE")
            {
               return true;
            }
         }
         return false;
      }
      
      public function §9#N§() : §<"V§
      {
         var _loc2_:§<"V§ = null;
         var _loc1_:int = §5#0§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §5#0§.objects.getObject(_loc1_) as §<"V§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §4r§() : Boolean
      {
         return (this.§8!=§ == LEVEL_STATE_VICTORY2_END || this.§8!=§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§8!=§ == §5#E§) && (this.§&"r§ <= 0 && this.§8!=§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public final function §^"j§() : Boolean
      {
         return !§5#0§.objects.isLevelGoalObjectsAlive();
      }
      
      public function §&"l§() : Boolean
      {
         return this.§8!=§ == LEVEL_STATE_VICTORY2_END || this.§8!=§ == §5#E§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§=W§(param1.delta > 0);
         }
      }
      
      public function §=W§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§?#%§ || !§5#0§.mReadyToRun)
         {
            return;
         }
         if(this.§8!=§ == §=!8§ || this.§8!=§ == §1"6§ || this.§8!=§ == §`!M§ || this.§8!=§ == §;"w§)
         {
            if(!§5#0§.isPlayingReplay())
            {
               §5#0§.camera.adjustManualScale(param1,param2 == 0 ? Number(§;"Q§.§=_§) : Number(param2));
            }
            else
            {
               §5#0§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §"j§(param1:int) : void
      {
         this.§?"S§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§?#%§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §4"l§.§"!m§();
         if(this.§4r§())
         {
            return;
         }
         if(!§5#0§.isPlayingReplay())
         {
            this.§8c§ = §5#0§.screenToBox2D(param1,param2,this.§8c§);
            if(§5#0§.levelObjects.activeObject)
            {
               _loc4_ = §5#0§.levelObjects.activeObject.canActivateSpecialPower;
               if(!§5#0§.levelObjects.activeObject.specialPowerUsed)
               {
                  §5#0§.activateSpecialPower(this.§8c§.x,this.§8c§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§5#0§.slingshot.canStartDragging(this.§8c§))
            {
               §5#0§.slingshot.startDragging();
               this.changeGameState(§`!M§);
            }
            else
            {
               §5#0§.camera.startDragging(param1,param2);
            }
            return;
         }
         §5#0§.camera.startDragging(param1,param2);
         §5#0§.resetReplaySpeed();
      }
      
      protected function §'$C§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §5#0§.screenToBox2D(param1,param2,null);
         var _loc4_:§;!U§;
         if(_loc4_ = §5#0§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §5#0§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§?#%§)
         {
            return;
         }
         §4"l§.§3"B§();
         if(this.§8!=§ == §]!h§)
         {
            this.changeGameState(§`!M§);
         }
         if(§5#0§.slingshot.mDragging)
         {
            this.§8c§ = §5#0§.screenToBox2D(param1,param2,this.§8c§);
            §5#0§.slingshot.setNewCoordinatesForRubber(this.§8c§.x,this.§8c§.y,false);
            if(§5#0§.slingshot.canShootTheBird)
            {
               §5#0§.slingshot.shoot();
            }
            else
            {
               §5#0§.slingshot.cancelDragging();
            }
         }
         if(§5#0§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §5#0§.camera.dragToNewPoint(param1,param2);
            }
            §5#0§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§?#%§)
         {
            return;
         }
         if(§5#0§.slingshot.mDragging)
         {
            this.§8c§ = §5#0§.screenToBox2D(param1,param2,this.§8c§);
            §5#0§.slingshot.setNewCoordinatesForRubber(this.§8c§.x,this.§8c§.y,false);
         }
         else if(§5#0§.camera.mDragging)
         {
            §5#0§.camera.dragToNewPoint(param1,param2);
         }
         this.§-!Q§ = param1;
         this.§>"b§ = param2;
      }
      
      public function §6!a§() : Point
      {
         return new Point(this.§-!Q§,this.§>"b§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§@"P§.§@&§(this.§@"P§.getValue() + param1);
         if(this.§8!=§ == §=!8§)
         {
            this.§&"r§ = 2000;
            this.§"D§ = §+!W§;
         }
      }
      
      override public function getScore() : int
      {
         if(§`">§ > 1)
         {
            return Math.floor(this.§@"P§.getValue() / §`">§) * §`">§;
         }
         return this.§@"P§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§3$'§)
         {
            return 0;
         }
         var _loc1_:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).scoreEagle;
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§?#%§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§?#%§ = param1;
      }
      
      public function §7p§() : void
      {
         this.changeGameState(§5#E§,true);
      }
      
      public function §]!y§() : void
      {
         this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT,true);
         §5#0§.gameOver(LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      override public function checkForLevelEnd() : void
      {
         if(!this.§`!D§)
         {
            if(§5#0§.slingshot.mSlingShotState == §6#t§.§2Y§ || !§5#0§.objects.isLevelGoalObjectsAlive())
            {
               this.§^3§ = §!!W§.§`"I§;
               this.§`!D§ = true;
            }
         }
      }
      
      public function §'!H§(param1:Number) : void
      {
         if(this.§^3§ > 0)
         {
            this.§^3§ += param1;
         }
      }
      
      public function §,_§() : Boolean
      {
         return this.§<#+§;
      }
      
      public function §'A§() : void
      {
         this.§`!D§ = false;
         this.§^3§ = 0;
         this.§<#+§ = false;
      }
      
      public function §;!-§() : void
      {
         if(this.§`!D§)
         {
            if(§5#0§.slingshot.mSlingShotState == §6#t§.§2Y§ && §5#0§.objects.isLevelGoalObjectsAlive() && !this.§<#+§)
            {
               this.§'A§();
            }
         }
      }
   }
}

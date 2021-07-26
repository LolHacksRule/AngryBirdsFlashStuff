package §6#h§
{
   import §#"4§.§'#B§;
   import §#g§.§7#E§;
   import §#g§.§8§;
   import §#g§.§^"R§;
   import §3"V§.§ b§;
   import §4§.§`3§;
   import §6"p§.§8"M§;
   import §7#$§.§]#q§;
   import §;!=§.§"d§;
   import §;!=§.§;"h§;
   import §;!=§.§>"G§;
   import §?#z§.§]$?§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §'!t§ extends §]!E§
   {
      
      private static const §'#7§:int = 1;
      
      public static const §!"§:int = 0;
      
      public static const §+!S§:int = 1;
      
      public static const §9#Z§:int = 2;
      
      public static const §+j§:int = 3;
      
      public static const §!#W§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §3"v§:int = 7;
      
      public static const §?#%§:int = 5;
      
      private static const §]#a§:Number = §`3§.§`"K§ / 100;
       
      
      protected var §?$§:int = 0;
      
      protected var §]#E§:Number = 0;
      
      private var §!!D§:Number = 0;
      
      private var §48§:int = 0;
      
      private var §]$1§:Number = 0;
      
      private var §2"+§:Number = 0;
      
      protected var §>!,§:Boolean = true;
      
      protected var §+!Z§:§'#B§;
      
      protected var §9#S§:Point;
      
      protected var §7#I§:Boolean;
      
      protected var §6#N§:int;
      
      protected var §3"z§:Boolean;
      
      public function §'!t§(param1:§8#3§, param2:§]#q§)
      {
         this.§+!Z§ = new §'#B§();
         this.§9#S§ = new Point();
         super(param1,param2);
      }
      
      public function get §+"5§() : int
      {
         return this.§?$§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§+!Z§.§!!5§(0);
         this.§?$§ = -1;
         this.§48§ = 0;
         this.changeGameState(§!"§);
         §+"<§(true);
         §9!E§.objects.setCollisionsEnabled(true);
         §9!E§.objects.setGroundTextureEnabled(true);
         §9!E§.slingshot.addEventListener(§^"R§.§%"b§,this.§<"L§);
      }
      
      private function §<"L§(param1:Event) : void
      {
         this.changeGameState(§9#Z§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §9!E§.update(param1,true);
         this.§="2§(param1);
         this.§,#f§(param1);
      }
      
      private function §="2§(param1:int) : void
      {
         if(this.§48§ != 0)
         {
            §9!E§.camera.adjustManualScale(this.§48§ > 0,param1 * §]#a§);
         }
      }
      
      public function clearLevel() : void
      {
         §9!E§.clearLevel();
         removeEventListeners();
         this.§?$§ = -1;
         this.§!#i§();
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §]!s§() : Boolean
      {
         if(§9!E§.camera.mCurrentCameraSliderLocation < §`3§.§;!;§)
         {
            return false;
         }
         if(!§9!E§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §0"M§(param1:int) : void
      {
         var _loc2_:§`3§ = §9!E§.camera;
         if(_loc2_.§0!E§ > 0)
         {
            _loc2_.§0!E§ -= param1;
            if(_loc2_.§0!E§ <= 0)
            {
               if(this.§]!s§())
               {
                  _loc2_.§0!E§ = -1;
                  if(§9!E§.slingshot.birdsAvailable)
                  {
                     _loc2_.§+k§();
                  }
               }
               else
               {
                  _loc2_.§0!E§ = §`3§.§"%§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§%"!§() && !param2)
         {
            return;
         }
         if(param1 == §!"§)
         {
            this.§]#E§ = 2000;
            this.§!#i§();
         }
         else if(param1 == §+!S§)
         {
            §9!E§.camera.goToBirdView();
         }
         else if(param1 == §9#Z§)
         {
            this.§]#E§ = 5000;
            §9!E§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §+j§)
         {
            §9!E§.camera.goToCastleView();
         }
         else if(param1 == §!#W§)
         {
            this.§]#E§ = 2000;
            this.§!!D§ = §?#%§;
            §9!E§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§]#E§ = 1200;
            if(!this.§4#m§)
            {
               §9!E§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§]#E§ = 1200;
            if(!this.§4#m§)
            {
               §9!E§.camera.goToBirdView();
               §9!E§.slingshot.makeBirdsJumpForJoy();
            }
            else
            {
               §9!E§.slingshot.setSlingShotState(§^"R§.§@#+§);
            }
            this.§1`§();
         }
         else if(param1 == §3"v§)
         {
            this.§]#E§ = 1200;
            §9!E§.camera.goToCastleView();
            §9!E§.objects.makePigsSmile(5);
         }
         this.§?$§ = param1;
      }
      
      protected function §1`§() : void
      {
         § b§.§#! §();
         § b§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)));
      }
      
      public function §9#=§() : void
      {
         this.§]#E§ = 2000;
         this.changeGameState(§'!t§.§+!S§,true);
      }
      
      public function §,#f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§>"G§ = null;
         if(this.§6#N§ > 0)
         {
            this.§6#N§ -= param1;
            if(this.§6#N§ <= 0)
            {
               this.§3"z§ = true;
            }
         }
         this.§]#E§ -= param1;
         if(this.§]#E§ < 0)
         {
            this.§]#E§ = 0;
         }
         if(this.§?$§ == §+j§)
         {
            if(!§9!E§.camera.isOnCastleView() && §9!E§.camera.mCurrentAction != §`3§.§;!x§)
            {
               this.changeGameState(§+!S§);
            }
         }
         else if(this.§?$§ == §!#W§)
         {
            if(this.§]#E§ <= 0)
            {
               _loc2_ = §9!E§.objects.hasBirds();
               if(_loc2_ && this.§!!D§ > 0)
               {
                  this.§]#E§ = 2000;
                  this.§!!D§ = this.§!!D§ - 1;
               }
               else if(!this.§4#m§)
               {
                  this.changeGameState(§+!S§);
               }
            }
            if(!§9!E§.camera.isOnCastleView() && §9!E§.camera.mCurrentAction != §`3§.§;!x§)
            {
               this.changeGameState(§+!S§);
            }
         }
         else if(this.§?$§ == §!"§)
         {
            if(this.§]#E§ <= 0)
            {
               this.changeGameState(§+!S§);
            }
         }
         else if(this.§?$§ == §+!S§)
         {
            if(§9!E§.camera.isOnCastleView() && §9!E§.camera.mCurrentAction != §`3§.§;!x§)
            {
               this.changeGameState(§+j§);
            }
         }
         else if(this.§?$§ == §9#Z§)
         {
            _loc3_ = §9!E§.levelObjects.activeObject;
            if(!_loc3_ || _loc3_ && !_loc3_.isFlying)
            {
               this.changeGameState(§!#W§);
            }
         }
         else if(this.§?$§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§]#E§ <= 0)
            {
               if(§9!E§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§]#E§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §4#m§() : Boolean
      {
         if(this.§%"h§() || this.§?!]§())
         {
            return true;
         }
         return false;
      }
      
      private function §?!]§() : Boolean
      {
         var _loc2_:§"d§ = null;
         var _loc1_:int = §9!E§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §9!E§.objects.getObject(_loc1_) as §"d§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         if(§]$?§.§2#§.slingshot.mBirds.length > 0)
         {
            if(§]$?§.§2#§.slingshot.mBirds[0].name == "BIRD_SARDINE")
            {
               return true;
            }
         }
         return false;
      }
      
      public function §%"h§() : §;"h§
      {
         var _loc2_:§;"h§ = null;
         var _loc1_:int = §9!E§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §9!E§.objects.getObject(_loc1_) as §;"h§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §%"!§() : Boolean
      {
         return (this.§?$§ == LEVEL_STATE_VICTORY2_END || this.§?$§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§?$§ == §3"v§) && (this.§]#E§ <= 0 && this.§?$§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public final function §7X§() : Boolean
      {
         return !§9!E§.objects.isLevelGoalObjectsAlive();
      }
      
      public function §4"6§() : Boolean
      {
         return this.§?$§ == LEVEL_STATE_VICTORY2_END || this.§?$§ == §3"v§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§4!K§(param1.delta > 0);
         }
      }
      
      public function §4!K§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§>!,§ || !§9!E§.mReadyToRun)
         {
            return;
         }
         if(this.§?$§ == §!#W§ || this.§?$§ == §+j§ || this.§?$§ == §+!S§ || this.§?$§ == §9#Z§)
         {
            if(!§9!E§.isPlayingReplay())
            {
               §9!E§.camera.adjustManualScale(param1,param2 == 0 ? Number(§`3§.§`"K§) : Number(param2));
            }
            else
            {
               §9!E§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §7M§(param1:int) : void
      {
         this.§48§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§>!,§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §8"M§.§[#+§();
         if(this.§%"!§())
         {
            return;
         }
         if(!§9!E§.isPlayingReplay())
         {
            this.§9#S§ = §9!E§.screenToBox2D(param1,param2,this.§9#S§);
            if(§9!E§.levelObjects.activeObject)
            {
               _loc4_ = §9!E§.levelObjects.activeObject.canActivateSpecialPower;
               if(!§9!E§.levelObjects.activeObject.specialPowerUsed)
               {
                  §9!E§.activateSpecialPower(this.§9#S§.x,this.§9#S§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§9!E§.slingshot.canStartDragging(this.§9#S§))
            {
               §9!E§.slingshot.startDragging();
               this.changeGameState(§+!S§);
            }
            else
            {
               §9!E§.camera.startDragging(param1,param2);
            }
            return;
         }
         §9!E§.camera.startDragging(param1,param2);
         §9!E§.resetReplaySpeed();
      }
      
      protected function §>!6§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §9!E§.screenToBox2D(param1,param2,null);
         var _loc4_:§>"G§;
         if(_loc4_ = §9!E§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §9!E§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§>!,§)
         {
            return;
         }
         §8"M§.§+!M§();
         if(this.§?$§ == §!"§)
         {
            this.changeGameState(§+!S§);
         }
         if(§9!E§.slingshot.mDragging)
         {
            this.§9#S§ = §9!E§.screenToBox2D(param1,param2,this.§9#S§);
            §9!E§.slingshot.setNewCoordinatesForRubber(this.§9#S§.x,this.§9#S§.y,false);
            if(§9!E§.slingshot.canShootTheBird)
            {
               §9!E§.slingshot.shoot();
            }
            else
            {
               §9!E§.slingshot.cancelDragging();
            }
         }
         if(§9!E§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §9!E§.camera.dragToNewPoint(param1,param2);
            }
            §9!E§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§>!,§)
         {
            return;
         }
         if(§9!E§.slingshot.mDragging)
         {
            this.§9#S§ = §9!E§.screenToBox2D(param1,param2,this.§9#S§);
            §9!E§.slingshot.setNewCoordinatesForRubber(this.§9#S§.x,this.§9#S§.y,false);
         }
         else if(§9!E§.camera.mDragging)
         {
            §9!E§.camera.dragToNewPoint(param1,param2);
         }
         this.§]$1§ = param1;
         this.§2"+§ = param2;
      }
      
      public function §'"N§() : Point
      {
         return new Point(this.§]$1§,this.§2"+§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§+!Z§.§!!5§(this.§+!Z§.getValue() + param1);
         if(this.§?$§ == §!#W§)
         {
            this.§]#E§ = 2000;
            this.§!!D§ = §?#%§;
         }
      }
      
      override public function getScore() : int
      {
         if(§'#7§ > 1)
         {
            return Math.floor(this.§+!Z§.getValue() / §'#7§) * §'#7§;
         }
         return this.§+!Z§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§4#m§)
         {
            return 0;
         }
         var _loc1_:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).scoreEagle;
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§>!,§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§>!,§ = param1;
      }
      
      public function §&g§() : void
      {
         this.changeGameState(§3"v§,true);
      }
      
      public function §[$§() : void
      {
         this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT,true);
         §9!E§.gameOver(LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      override public function checkForLevelEnd() : void
      {
         if(!this.§7#I§)
         {
            if(§9!E§.slingshot.mSlingShotState == §^"R§.§`#A§ || !§9!E§.objects.isLevelGoalObjectsAlive())
            {
               this.§6#N§ = §7#E§.§1"q§;
               this.§7#I§ = true;
            }
         }
      }
      
      public function §&!q§(param1:Number) : void
      {
         if(this.§6#N§ > 0)
         {
            this.§6#N§ += param1;
         }
      }
      
      public function §;#H§() : Boolean
      {
         return this.§3"z§;
      }
      
      public function §!#i§() : void
      {
         this.§7#I§ = false;
         this.§6#N§ = 0;
         this.§3"z§ = false;
      }
      
      public function §"!#§() : void
      {
         if(this.§7#I§)
         {
            if(§9!E§.slingshot.mSlingShotState == §^"R§.§`#A§ && §9!E§.objects.isLevelGoalObjectsAlive() && !this.§3"z§)
            {
               this.§!#i§();
            }
         }
      }
   }
}

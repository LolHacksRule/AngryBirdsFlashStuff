package §-I§
{
   import §'_§.§2j§;
   import §'_§.§5!P§;
   import §'_§.§9V§;
   import §+I§.§9!%§;
   import §0!?§.§<K§;
   import §1k§.§%4§;
   import §3,§.§,!;§;
   import §3,§.§[!;§;
   import §<!<§.§,V§;
   import §[!z§.LevelManager;
   import §^6§.§0!w§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §package§ extends §5!%§
   {
      
      public static const §&!q§:int = 0;
      
      public static const §]!q§:int = 1;
      
      public static const §^"'§:int = 2;
      
      public static const §>!H§:int = 3;
      
      public static const §7!k§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §="1§:int = 7;
      
      protected static const §"!y§:Number = §0!w§.§6!_§ / 100;
      
      public static const §+!j§:Number = 2000;
      
      public static const §9<§:Number = 2500;
      
      public static const §]+§:int = 5;
       
      
      public var §9"§:int = 0;
      
      protected var §,M§:int = 0;
      
      public var §2w§:Number;
      
      protected var §1z§:Number = 0;
      
      protected var §-O§:Boolean = false;
      
      private var §'!W§:Number = 0;
      
      public var §<!%§:Number = 0;
      
      protected var §,!d§:Boolean;
      
      protected var §&!Z§:Number = 0;
      
      protected var §#"0§:Number = 0;
      
      protected var §&!2§:Boolean = true;
      
      protected var § !g§:§,V§;
      
      public function §package§(param1:§[!;§)
      {
         this.§ !g§ = new §,V§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§ !g§.assign(0);
         this.§9"§ = -1;
         this.§,M§ = 0;
         this.§1z§ = 0;
         this.§-O§ = false;
         this.changeGameState(§&!q§);
         this.§2w§ = §+!j§;
         §6"!§(true);
         §0!J§.objects.setDamageEnabled(true);
         §0!J§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §0!J§.update(param1,true);
         this.§=">§(param1);
         this.§ !]§(param1);
      }
      
      private function §=">§(param1:int) : void
      {
         if(this.§,M§ != 0)
         {
            §0!J§.camera.adjustManualScale(this.§,M§ > 0,param1 * §"!y§);
         }
      }
      
      public function clearLevel() : void
      {
         §0!J§.clearLevel();
         removeEventListeners();
         this.§9"§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §+"&§() : Boolean
      {
         if(§0!J§.camera.mCurrentCameraSliderLocation < §0!w§.§8!w§)
         {
            return false;
         }
         if(!§0!J§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §'!Y§(param1:int) : void
      {
         var _loc2_:§0!w§ = §0!J§.camera;
         if(_loc2_.§-4§ > 0)
         {
            _loc2_.§-4§ -= param1;
            if(_loc2_.§-4§ <= 0)
            {
               if(this.§+"&§())
               {
                  _loc2_.§-4§ = -1;
                  if(§0!J§.slingshot.birdsAvailable)
                  {
                     _loc2_.§0"$§();
                  }
               }
               else
               {
                  _loc2_.§-4§ = §0!w§.§#!V§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§ !<§(false) && !param2)
         {
            return;
         }
         if(param1 == §&!q§)
         {
            this.§<!%§ = 2000;
         }
         else if(param1 == §]!q§)
         {
            §0!J§.camera.goToBirdView();
         }
         else if(param1 == §^"'§)
         {
            this.§,!d§ = false;
            this.§<!%§ = 5000;
            §0!J§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §>!H§)
         {
            §0!J§.camera.goToCastleView();
         }
         else if(param1 == §7!k§)
         {
            this.§<!%§ = 2000;
            this.§'!W§ = §]+§;
            §0!J§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§<!%§ = 1200;
            if(!§0!J§.objects.mMightyEagleAdded)
            {
               §0!J§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§<!%§ = 1200;
            if(!§0!J§.objects.mMightyEagleAdded)
            {
               §0!J§.camera.goToBirdView();
               §0!J§.slingshot.makeBirdsJumpForJoy();
            }
            §%4§.§>f§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §="1§)
         {
            §%4§.§9!0§();
            §%4§.§>f§("LevelFailedPigs1");
            this.§<!%§ = 1200;
            §0!J§.camera.goToCastleView();
            §0!J§.objects.makePigsSmile(5);
         }
         this.§9"§ = param1;
      }
      
      public function §5!`§(param1:Number) : void
      {
         this.§1z§ = Math.max(this.§1z§,param1);
      }
      
      protected function §6<§() : Boolean
      {
         return §0!J§.slingshot.mSlingShotState == §,!;§.§;!L§ && !§0!J§.objects.hasBirds();
      }
      
      public function § !]§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§9V§ = null;
         this.§2w§ -= param1;
         if(this.§-O§)
         {
            this.§1z§ -= param1;
            if(this.§1z§ < 0)
            {
               this.§2w§ = 0;
            }
         }
         if(this.§2w§ <= 0 && !this.§ !<§(false))
         {
            this.§2w§ = §+!j§;
            _loc2_ = §0!J§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§-O§ || this.§1z§ > 0))
            {
               if((!this.§-O§ || this.§1z§ > 6000) && !§0!J§.objects.isPigsAlive())
               {
                  this.§1z§ = 6000;
                  this.§-O§ = true;
               }
               else if(!this.§-O§ && this.§6<§())
               {
                  this.§1z§ = 15000;
                  this.§-O§ = true;
               }
            }
            else if(!§0!J§.objects.isPigsAlive() && !§0!J§.objects.mSardineCanAdded && !§0!J§.objects.mMightyEagleAdded)
            {
               this.§ !0§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§6<§())
            {
               if(§0!J§.objects.mMightyEagleAdded)
               {
                  if(§0!J§.objects.mMightyEagleHasTouchedGround && §0!J§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§ !0§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§0!J§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§2w§ = §+!j§;
                  }
               }
               else if(!§0!J§.objects.mSardineCanAdded)
               {
                  this.§ !0§(§="1§);
               }
            }
            if(this.§ !<§(false))
            {
               §0!J§.gameOver();
            }
         }
         this.§<!%§ -= param1;
         if(this.§<!%§ < 0)
         {
            this.§<!%§ = 0;
         }
         if(this.§9"§ == §>!H§)
         {
            §0!J§.updatePigAnimations(param1);
            if(!§0!J§.camera.isOnCastleView() && §0!J§.camera.mCurrentAction != §0!w§.§,";§)
            {
               this.changeGameState(§]!q§);
            }
         }
         else if(this.§9"§ == §7!k§)
         {
            if(this.§<!%§ <= 0)
            {
               _loc3_ = §0!J§.objects.hasBirds();
               if(_loc3_ && this.§'!W§ > 0)
               {
                  this.§<!%§ = 2000;
                  this.§2w§ = 0;
                  this.§'!W§ = this.§'!W§ - 1;
               }
               else if(!§9!%§.§!!M§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§]!q§);
               }
            }
            else
            {
               §0!J§.updatePigAnimations(param1);
            }
            if(!§0!J§.camera.isOnCastleView() && §0!J§.camera.mCurrentAction != §0!w§.§,";§)
            {
               this.changeGameState(§]!q§);
            }
         }
         else if(this.§9"§ == §&!q§)
         {
            if(this.§<!%§ <= 0)
            {
               this.changeGameState(§]!q§);
            }
         }
         else if(this.§9"§ == §]!q§)
         {
            if(§0!J§.camera.isOnCastleView() && §0!J§.camera.mCurrentAction != §0!w§.§,";§)
            {
               this.changeGameState(§>!H§);
            }
         }
         else if(this.§9"§ == §^"'§)
         {
            if(!(_loc4_ = §0!J§.activeObject) || _loc4_.§9"8§ < _loc4_.§ i§)
            {
               if(_loc4_ && _loc4_ is §2j§ && (!(_loc4_ as §5!P§).§ p§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§,!d§ = true;
                  this.changeGameState(§7!k§);
               }
               §0!J§.activeObject = null;
               this.changeGameState(§7!k§);
            }
         }
         else if(this.§9"§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§<!%§ <= 0)
            {
               if(§0!J§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§<!%§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function § !0§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§-O§)
         {
            this.§-O§ = true;
         }
         if(new Date().time - §0!J§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§0!J§.slingshot.mDragging)
         {
            return;
         }
         if(§0!J§.objects.isWorldAtSleep())
         {
            this.§1z§ = Math.min(this.§1z§,3500);
         }
         if(this.§1z§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function § !<§(param1:Boolean = false) : Boolean
      {
         return (this.§9"§ == LEVEL_STATE_VICTORY2_END || this.§9"§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§9"§ == §="1§) && (!param1 || this.§<!%§ <= 0 && this.§9"§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §%!A§() : Boolean
      {
         return this.§9"§ == LEVEL_STATE_VICTORY2_END || this.§9"§ == §="1§;
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
         if(!this.§&!2§ || !§0!J§.mReadyToRun)
         {
            return;
         }
         if(!(§0!J§.slingshot.mDragging || §0!J§.camera.mDragging))
         {
            if(this.§9"§ == §7!k§ || this.§9"§ == §>!H§ || this.§9"§ == §]!q§)
            {
               if(!§0!J§.isPlayingReplay())
               {
                  §0!J§.camera.adjustManualScale(param1,param2 == 0 ? Number(§0!w§.§6!_§) : Number(param2));
               }
               else
               {
                  §0!J§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §!!k§(param1:int) : void
      {
         this.§,M§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§&!2§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §<K§.§%L§();
         if(this.§ !<§(false))
         {
            return;
         }
         if(!§0!J§.isPlayingReplay())
         {
            if(§0!J§.activeObject && this.§9"§ == §^"'§ || this.§,!d§)
            {
               this.§,!d§ = false;
               §0!J§.activatePowerup();
               return;
            }
            _loc4_ = §0!J§.screenToBox2D(param1,param2);
            if(§0!J§.slingshot.canStartDragging(_loc4_))
            {
               §0!J§.slingshot.startDragging();
               this.changeGameState(§]!q§);
            }
            else
            {
               §0!J§.camera.startDragging(param1,param2);
            }
            return;
         }
         §0!J§.camera.startDragging(param1,param2);
         §0!J§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§&!2§)
         {
            return;
         }
         §<K§.§#K§();
         if(this.§9"§ == §&!q§)
         {
            this.changeGameState(§]!q§);
         }
         if(§0!J§.slingshot.mDragging)
         {
            _loc3_ = §0!J§.screenToBox2D(param1,param2);
            §0!J§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§0!J§.slingshot.canShootTheBird())
            {
               §0!J§.slingshot.shoot();
               this.changeGameState(§^"'§);
            }
            else
            {
               §0!J§.slingshot.cancelDragging();
            }
         }
         if(§0!J§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §0!J§.camera.dragToNewPoint(param1,param2);
            }
            §0!J§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§&!2§)
         {
            return;
         }
         if(§0!J§.slingshot.mDragging)
         {
            _loc3_ = §0!J§.screenToBox2D(param1,param2);
            §0!J§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§0!J§.camera.mDragging)
         {
            §0!J§.camera.dragToNewPoint(param1,param2);
         }
         this.§&!Z§ = param1;
         this.§#"0§ = param2;
      }
      
      public function §'"5§() : Point
      {
         return new Point(this.§&!Z§,this.§#"0§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§ !g§.assign(this.§ !g§.getValue() + param1);
         this.§5!`§(§9<§);
         if(this.§9"§ == §7!k§)
         {
            this.§<!%§ = 2000;
            this.§'!W§ = §]+§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§ !g§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§9!%§.§!!M§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§]!W§(LevelManager.§[!<§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§&!2§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§&!2§ = param1;
      }
   }
}

package §"!E§
{
   import §!U§.§'!8§;
   import §"!@§.§3!+§;
   import §#!P§.§1f§;
   import §#!P§.§2!W§;
   import §#!P§.§`v§;
   import §-!6§.§3M§;
   import §0!F§.§8!;§;
   import §3E§.§6w§;
   import §3E§.§]Y§;
   import §5!G§.§31§;
   import §7!U§.§2!7§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §0O§ extends §=!3§
   {
      
      public static const §7!O§:int = 0;
      
      public static const §[M§:int = 1;
      
      public static const §6!,§:int = 2;
      
      public static const §!!E§:int = 3;
      
      public static const §0!0§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §+?§:int = 7;
      
      protected static const §>!2§:Number = §'!8§.§=!!§ / 100;
      
      public static const §=a§:Number = 2000;
      
      public static const §[n§:Number = 2500;
      
      public static const §,a§:int = 5;
       
      
      public var §2y§:int = 0;
      
      protected var §?S§:int = 0;
      
      public var §19§:Number;
      
      protected var §continue§:Number = 0;
      
      protected var §&@§:Boolean = false;
      
      private var §?o§:Number = 0;
      
      public var §8=§:Number = 0;
      
      protected var §"B§:Boolean;
      
      protected var §2'§:Number = 0;
      
      protected var §-V§:Number = 0;
      
      protected var §3!=§:Boolean = true;
      
      protected var §,?§:§8!;§;
      
      public function §0O§(param1:§6w§)
      {
         this.§,?§ = new §8!;§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§,?§.§+!Q§(0);
         this.§2y§ = -1;
         this.§?S§ = 0;
         this.§continue§ = 0;
         this.§&@§ = false;
         this.§=!Q§(§7!O§);
         this.§19§ = §=a§;
         §<w§(true);
         §]v§.objects.setDamageEnabled(true);
         §]v§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §]v§.update(param1,true);
         this.§8!_§(param1);
         this.§>1§(param1);
      }
      
      private function §8!_§(param1:int) : void
      {
         if(this.§?S§ != 0)
         {
            §]v§.camera.adjustManualScale(this.§?S§ > 0,param1 * §>!2§);
         }
      }
      
      public function clearLevel() : void
      {
         §]v§.clearLevel();
         removeEventListeners();
         this.§2y§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §41§() : Boolean
      {
         if(§]v§.camera.mCurrentCameraSliderLocation < §'!8§.§!!0§)
         {
            return false;
         }
         if(!§]v§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §`!#§(param1:int) : void
      {
         var _loc2_:§'!8§ = §]v§.camera;
         if(_loc2_.§+!a§ > 0)
         {
            _loc2_.§+!a§ -= param1;
            if(_loc2_.§+!a§ <= 0)
            {
               if(this.§41§())
               {
                  _loc2_.§+!a§ = -1;
                  if(§]v§.slingshot.birdsAvailable)
                  {
                     _loc2_.§^F§();
                  }
               }
               else
               {
                  _loc2_.§+!a§ = §'!8§.§!!8§ / 2;
               }
            }
         }
      }
      
      public function §=!Q§(param1:int, param2:Boolean = false) : void
      {
         if(this.§-t§(false) && !param2)
         {
            return;
         }
         if(param1 == §7!O§)
         {
            this.§8=§ = 2000;
         }
         else if(param1 == §[M§)
         {
            §]v§.camera.goToBirdView();
         }
         else if(param1 == §6!,§)
         {
            this.§"B§ = false;
            this.§8=§ = 5000;
            §]v§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §!!E§)
         {
            §]v§.camera.goToCastleView();
         }
         else if(param1 == §0!0§)
         {
            this.§8=§ = 2000;
            this.§?o§ = §,a§;
            §]v§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§8=§ = 1200;
            if(!§]v§.objects.mMightyEagleAdded)
            {
               §]v§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§8=§ = 1200;
            if(!§]v§.objects.mMightyEagleAdded)
            {
               §]v§.camera.goToBirdView();
               §]v§.slingshot.makeBirdsJumpForJoy();
            }
            §31§.§>%§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §+?§)
         {
            §31§.§55§();
            §31§.§>%§("LevelFailedPigs1");
            this.§8=§ = 1200;
            §]v§.camera.goToCastleView();
            §]v§.objects.makePigsSmile(5);
         }
         this.§2y§ = param1;
      }
      
      public function § x§(param1:Number) : void
      {
         this.§continue§ = Math.max(this.§continue§,param1);
      }
      
      protected function §&7§() : Boolean
      {
         return §]v§.slingshot.mSlingShotState == §]Y§.§-c§ && !§]v§.objects.hasBirds();
      }
      
      public function §>1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§2!W§ = null;
         this.§19§ -= param1;
         if(this.§&@§)
         {
            this.§continue§ -= param1;
            if(this.§continue§ < 0)
            {
               this.§19§ = 0;
            }
         }
         if(this.§19§ <= 0 && !this.§-t§(false))
         {
            this.§19§ = §=a§;
            _loc2_ = §]v§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§&@§ || this.§continue§ > 0))
            {
               if((!this.§&@§ || this.§continue§ > 6000) && !§]v§.objects.isPigsAlive())
               {
                  this.§continue§ = 6000;
                  this.§&@§ = true;
               }
               else if(!this.§&@§ && this.§&7§())
               {
                  this.§continue§ = 15000;
                  this.§&@§ = true;
               }
            }
            else if(!§]v§.objects.isPigsAlive() && !§]v§.objects.mSardineCanAdded && !§]v§.objects.mMightyEagleAdded)
            {
               this.§'!H§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§&7§())
            {
               if(§]v§.objects.mMightyEagleAdded)
               {
                  if(§]v§.objects.mMightyEagleHasTouchedGround && §]v§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§'!H§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§]v§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§19§ = §=a§;
                  }
               }
               else if(!§]v§.objects.mSardineCanAdded)
               {
                  this.§'!H§(§+?§);
               }
            }
            if(this.§-t§(false))
            {
               §]v§.gameOver();
            }
         }
         this.§8=§ -= param1;
         if(this.§8=§ < 0)
         {
            this.§8=§ = 0;
         }
         if(this.§2y§ == §!!E§)
         {
            §]v§.updatePigAnimations(param1);
            if(!§]v§.camera.isOnCastleView() && §]v§.camera.mCurrentAction != §'!8§.§;j§)
            {
               this.§=!Q§(§[M§);
            }
         }
         else if(this.§2y§ == §0!0§)
         {
            if(this.§8=§ <= 0)
            {
               _loc3_ = §]v§.objects.hasBirds();
               if(_loc3_ && this.§?o§ > 0)
               {
                  this.§8=§ = 2000;
                  this.§19§ = 0;
                  this.§?o§ = this.§?o§ - 1;
               }
               else if(!§2!7§.§5G§.objects.mMightyEagleAdded)
               {
                  this.§=!Q§(§[M§);
               }
            }
            else
            {
               §]v§.updatePigAnimations(param1);
            }
            if(!§]v§.camera.isOnCastleView() && §]v§.camera.mCurrentAction != §'!8§.§;j§)
            {
               this.§=!Q§(§[M§);
            }
         }
         else if(this.§2y§ == §7!O§)
         {
            if(this.§8=§ <= 0)
            {
               this.§=!Q§(§[M§);
            }
         }
         else if(this.§2y§ == §[M§)
         {
            if(§]v§.camera.isOnCastleView() && §]v§.camera.mCurrentAction != §'!8§.§;j§)
            {
               this.§=!Q§(§!!E§);
            }
         }
         else if(this.§2y§ == §6!,§)
         {
            if(!(_loc4_ = §]v§.activeObject) || _loc4_.§1!L§ < _loc4_.§!w§)
            {
               if(_loc4_ && _loc4_ is §1f§ && (!(_loc4_ as §`v§).§!N§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§"B§ = true;
                  this.§=!Q§(§0!0§);
               }
               §]v§.activeObject = null;
               this.§=!Q§(§0!0§);
            }
         }
         else if(this.§2y§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§8=§ <= 0)
            {
               if(§]v§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§8=§ = 1000;
               }
               else
               {
                  this.§=!Q§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §'!H§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§&@§)
         {
            this.§&@§ = true;
         }
         if(new Date().time - §]v§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§]v§.slingshot.mDragging)
         {
            return;
         }
         if(§]v§.objects.isWorldAtSleep())
         {
            this.§continue§ = Math.min(this.§continue§,3500);
         }
         if(this.§continue§ <= 0)
         {
            this.§=!Q§(param1,param2);
         }
      }
      
      public function §-t§(param1:Boolean = false) : Boolean
      {
         return (this.§2y§ == LEVEL_STATE_VICTORY2_END || this.§2y§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§2y§ == §+?§) && (!param1 || this.§8=§ <= 0 && this.§2y§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §^?§() : Boolean
      {
         return this.§2y§ == LEVEL_STATE_VICTORY2_END || this.§2y§ == §+?§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.doUserZoom(param1.delta > 0);
         }
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         if(!this.§3!=§ || !§]v§.mReadyToRun)
         {
            return;
         }
         if(!(§]v§.slingshot.mDragging || §]v§.camera.mDragging))
         {
            if(this.§2y§ == §0!0§ || this.§2y§ == §!!E§ || this.§2y§ == §[M§)
            {
               if(!§]v§.isPlayingReplay())
               {
                  §]v§.camera.adjustManualScale(param1);
               }
               else
               {
                  §]v§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §?,§(param1:int) : void
      {
         this.§?S§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§3!=§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §3M§.§'!;§();
         if(this.§-t§(false))
         {
            return;
         }
         if(!§]v§.isPlayingReplay())
         {
            if(§]v§.activeObject && this.§2y§ == §6!,§ || this.§"B§)
            {
               this.§"B§ = false;
               §]v§.activatePowerup();
               return;
            }
            _loc4_ = §]v§.screenToBox2D(param1,param2);
            if(§]v§.slingshot.canStartDragging(_loc4_))
            {
               §]v§.slingshot.startDragging();
               this.§=!Q§(§[M§);
            }
            else
            {
               §]v§.camera.startDragging(param1,param2);
            }
            return;
         }
         §]v§.camera.startDragging(param1,param2);
         §]v§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§3!=§)
         {
            return;
         }
         §3M§.§+8§();
         if(this.§2y§ == §7!O§)
         {
            this.§=!Q§(§[M§);
         }
         if(§]v§.slingshot.mDragging)
         {
            _loc3_ = §]v§.screenToBox2D(param1,param2);
            §]v§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§]v§.slingshot.canShootTheBird())
            {
               §]v§.slingshot.shoot();
               this.§=!Q§(§6!,§);
            }
            else
            {
               §]v§.slingshot.cancelDragging();
            }
         }
         if(§]v§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §]v§.camera.dragToNewPoint(param1,param2);
            }
            §]v§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§3!=§)
         {
            return;
         }
         if(§]v§.slingshot.mDragging)
         {
            _loc3_ = §]v§.screenToBox2D(param1,param2);
            §]v§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§]v§.camera.mDragging)
         {
            §]v§.camera.dragToNewPoint(param1,param2);
         }
         this.§2'§ = param1;
         this.§-V§ = param2;
      }
      
      public function § 8§() : Point
      {
         return new Point(this.§2'§,this.§-V§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§,?§.§+!Q§(this.§,?§.getValue() + param1);
         this.§ x§(§[n§);
         if(this.§2y§ == §0!0§)
         {
            this.§8=§ = 2000;
            this.§?o§ = §,a§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§,?§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§2!7§.§5G§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §3!+§.getLevelForId(§3!+§.§%2§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§3!=§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§3!=§ = param1;
      }
   }
}

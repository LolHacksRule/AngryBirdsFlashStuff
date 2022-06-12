package §;'§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §'@§.§^J§;
   import §+!o§.§6!>§;
   import §+!o§.§>G§;
   import §+!o§.§[f§;
   import §+!o§.§]"5§;
   import §-!n§.§5!U§;
   import §5!V§.§!w§;
   import §5!V§.§[!6§;
   import §=!#§.§`"=§;
   import §=!M§.§"o§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §`!V§ extends §"!&§
   {
      
      public static const §-R§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §&!V§:int = 2;
      
      public static const §'U§:int = 3;
      
      public static const §%!_§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §51§:int = 7;
      
      protected static const §7!R§:Number = §`"=§.MANUAL_SCALE_STEP / 100;
      
      public static const §,!a§:Number = 2000;
      
      public static const §!!'§:Number = 2500;
      
      public static const §3!G§:int = 5;
       
      
      public var §`""§:int = 0;
      
      protected var § K§:int = 0;
      
      public var §`"1§:Number;
      
      protected var §%"7§:Number = 0;
      
      protected var §>!Y§:Boolean = false;
      
      private var §-"0§:Number = 0;
      
      public var §<^§:Number = 0;
      
      protected var §&!,§:Boolean;
      
      protected var §3!_§:Number = 0;
      
      protected var §6!g§:Number = 0;
      
      protected var §-6§:Boolean = true;
      
      protected var §?!p§:§^J§;
      
      public function §`!V§(param1:§!w§)
      {
         this.§?!p§ = new §^J§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§?!p§.§&!Y§(0);
         this.§`""§ = -1;
         this.§ K§ = 0;
         this.§%"7§ = 0;
         this.§>!Y§ = false;
         this.§""<§(§-R§);
         this.§`"1§ = §,!a§;
         §;"3§(true);
         §9q§.objects.setDamageEnabled(true);
         §9q§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §9q§.update(param1,true);
         this.§0""§(param1);
         this.§#o§(param1);
      }
      
      private function §0""§(param1:int) : void
      {
         if(this.§ K§ != 0)
         {
            §9q§.camera.adjustManualScale(this.§ K§ > 0,param1 * §7!R§);
         }
      }
      
      public function clearLevel() : void
      {
         §9q§.clearLevel();
         removeEventListeners();
         this.§`""§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §`!o§() : Boolean
      {
         if(§9q§.camera.mCurrentCameraSliderLocation < §`"=§.§4!O§)
         {
            return false;
         }
         if(!§9q§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9Q§(param1:int) : void
      {
         var _loc2_:§`"=§ = §9q§.camera;
         if(_loc2_.§<!z§ > 0)
         {
            _loc2_.§<!z§ -= param1;
            if(_loc2_.§<!z§ <= 0)
            {
               if(this.§`!o§())
               {
                  _loc2_.§<!z§ = -1;
                  if(§9q§.slingshot.birdsAvailable)
                  {
                     _loc2_.§6"4§();
                  }
               }
               else
               {
                  _loc2_.§<!z§ = §`"=§.§@!H§ / 2;
               }
            }
         }
      }
      
      public function §""<§(param1:int, param2:Boolean = false) : void
      {
         if(this.§"!g§(false) && !param2)
         {
            return;
         }
         if(param1 == §-R§)
         {
            this.§<^§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §9q§.camera.goToBirdView();
         }
         else if(param1 == §&!V§)
         {
            this.§&!,§ = false;
            this.§<^§ = 5000;
            §9q§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §'U§)
         {
            §9q§.camera.goToCastleView();
         }
         else if(param1 == §%!_§)
         {
            this.§<^§ = 2000;
            this.§-"0§ = §3!G§;
            §9q§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§<^§ = 1200;
            if(!§9q§.objects.mMightyEagleAdded)
            {
               §9q§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§<^§ = 1200;
            if(!§9q§.objects.mMightyEagleAdded)
            {
               §9q§.camera.goToBirdView();
               §9q§.slingshot.makeBirdsJumpForJoy();
            }
            §5!U§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §51§)
         {
            §5!U§.§9&§();
            §5!U§.playSound("LevelFailedPigs1");
            this.§<^§ = 1200;
            §9q§.camera.goToCastleView();
            §9q§.objects.makePigsSmile(5);
         }
         this.§`""§ = param1;
      }
      
      public function §8"5§() : void
      {
         this.§<^§ = 2000;
         this.§>!Y§ = false;
         this.§%"7§ = 2000;
         this.§""<§(§`!V§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §-"7§(param1:Number) : void
      {
         this.§%"7§ = Math.max(this.§%"7§,param1);
      }
      
      protected function §5!c§() : Boolean
      {
         return §9q§.slingshot.mSlingShotState == §[!6§.§[B§ && !§9q§.objects.hasBirds();
      }
      
      public function §#o§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§]"5§ = null;
         this.§`"1§ -= param1;
         if(this.§>!Y§)
         {
            this.§%"7§ -= param1;
            if(this.§%"7§ < 0)
            {
               this.§`"1§ = 0;
            }
         }
         if(this.§`"1§ <= 0 && !this.§"!g§(false))
         {
            this.§`"1§ = §,!a§;
            _loc2_ = §9q§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§>!Y§ || this.§%"7§ > 0))
            {
               if((!this.§>!Y§ || this.§%"7§ > 6000) && !§9q§.objects.isPigsAlive())
               {
                  this.§%"7§ = 6000;
                  this.§>!Y§ = true;
               }
               else if(!this.§>!Y§ && this.§5!c§())
               {
                  this.§%"7§ = 15000;
                  this.§>!Y§ = true;
               }
            }
            else if(!§9q§.objects.isPigsAlive() && !§9q§.objects.mSardineCanAdded && !§9q§.objects.mMightyEagleAdded)
            {
               this.§@!'§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5!c§())
            {
               if(§9q§.objects.mMightyEagleAdded)
               {
                  if(§9q§.objects.mMightyEagleHasTouchedGround && §9q§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§@!'§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§9q§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§`"1§ = §,!a§;
                  }
               }
               else if(!§9q§.objects.mSardineCanAdded)
               {
                  this.§@!'§(§51§);
               }
            }
            if(this.§"!g§(false))
            {
               §9q§.gameOver();
            }
         }
         this.§<^§ -= param1;
         if(this.§<^§ < 0)
         {
            this.§<^§ = 0;
         }
         if(this.§`""§ == §'U§)
         {
            §9q§.updatePigAnimations(param1);
            if(!§9q§.camera.isOnCastleView() && §9q§.camera.mCurrentAction != §`"=§.§1@§)
            {
               this.§""<§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§`""§ == §%!_§)
         {
            if(this.§<^§ <= 0)
            {
               _loc3_ = §9q§.objects.hasBirds();
               if(_loc3_ && this.§-"0§ > 0)
               {
                  this.§<^§ = 2000;
                  this.§`"1§ = 0;
                  this.§-"0§ = this.§-"0§ - 1;
               }
               else if(!§=!X§.§!'§.objects.mMightyEagleAdded)
               {
                  this.§""<§(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §9q§.updatePigAnimations(param1);
            }
            if(!§9q§.camera.isOnCastleView() && §9q§.camera.mCurrentAction != §`"=§.§1@§)
            {
               this.§""<§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§`""§ == §-R§)
         {
            if(this.§<^§ <= 0)
            {
               this.§""<§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§`""§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§9q§.camera.isOnCastleView() && §9q§.camera.mCurrentAction != §`"=§.§1@§)
            {
               this.§""<§(§'U§);
            }
         }
         else if(this.§`""§ == §&!V§)
         {
            if(!(_loc4_ = §9q§.activeObject) || _loc4_.§@!P§ < _loc4_.§'">§)
            {
               if(_loc4_ && (_loc4_ is §6!>§ || _loc4_ is §[f§ || _loc4_ is §[f§) && (!(_loc4_ as §>G§).§6S§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§&!,§ = true;
                  this.§""<§(§%!_§);
               }
               §9q§.activeObject = null;
               this.§""<§(§%!_§);
            }
         }
         else if(this.§`""§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§<^§ <= 0)
            {
               if(§9q§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§<^§ = 1000;
               }
               else
               {
                  this.§""<§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §@!'§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§>!Y§)
         {
            this.§>!Y§ = true;
         }
         if(new Date().time - §9q§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§9q§.slingshot.mDragging)
         {
            return;
         }
         if(§9q§.objects.isWorldAtSleep())
         {
            this.§%"7§ = Math.min(this.§%"7§,3500);
         }
         if(this.§%"7§ <= 0)
         {
            this.§""<§(param1,param2);
         }
      }
      
      public function §"!g§(param1:Boolean = false) : Boolean
      {
         return (this.§`""§ == LEVEL_STATE_VICTORY2_END || this.§`""§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§`""§ == §51§) && (!param1 || this.§<^§ <= 0 && this.§`""§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §]e§() : Boolean
      {
         return this.§`""§ == LEVEL_STATE_VICTORY2_END || this.§`""§ == §51§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§>!&§(param1.delta > 0);
         }
      }
      
      public function §>!&§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§-6§ || !§9q§.mReadyToRun)
         {
            return;
         }
         if(!(§9q§.slingshot.mDragging || §9q§.camera.mDragging))
         {
            if(this.§`""§ == §%!_§ || this.§`""§ == §'U§ || this.§`""§ == LEVEL_STATE_SLINGSHOT)
            {
               if(!§9q§.isPlayingReplay())
               {
                  §9q§.camera.adjustManualScale(param1,param2 == 0 ? Number(§`"=§.MANUAL_SCALE_STEP) : Number(param2));
               }
               else
               {
                  §9q§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §0!Y§(param1:int) : void
      {
         this.§ K§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§-6§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §"o§.§2!a§();
         if(this.§"!g§(false))
         {
            return;
         }
         if(!§9q§.isPlayingReplay())
         {
            if(§9q§.activeObject && this.§`""§ == §&!V§ || this.§&!,§)
            {
               this.§&!,§ = false;
               §9q§.activatePowerup();
               return;
            }
            _loc4_ = §9q§.screenToBox2D(param1,param2);
            if(§9q§.slingshot.canStartDragging(_loc4_))
            {
               §9q§.slingshot.startDragging();
               this.§""<§(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §9q§.camera.startDragging(param1,param2);
            }
            return;
         }
         §9q§.camera.startDragging(param1,param2);
         §9q§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§-6§)
         {
            return;
         }
         §"o§.§[!?§();
         if(this.§`""§ == §-R§)
         {
            this.§""<§(LEVEL_STATE_SLINGSHOT);
         }
         if(§9q§.slingshot.mDragging)
         {
            _loc3_ = §9q§.screenToBox2D(param1,param2);
            §9q§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§9q§.slingshot.canShootTheBird())
            {
               §9q§.slingshot.shoot();
               this.§""<§(§&!V§);
            }
            else
            {
               §9q§.slingshot.cancelDragging();
            }
         }
         if(§9q§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §9q§.camera.dragToNewPoint(param1,param2);
            }
            §9q§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§-6§)
         {
            return;
         }
         if(§9q§.slingshot.mDragging)
         {
            _loc3_ = §9q§.screenToBox2D(param1,param2);
            §9q§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§9q§.camera.mDragging)
         {
            §9q§.camera.dragToNewPoint(param1,param2);
         }
         this.§3!_§ = param1;
         this.§6!g§ = param2;
      }
      
      public function §4z§() : Point
      {
         return new Point(this.§3!_§,this.§6!g§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§?!p§.§&!Y§(this.§?!p§.getValue() + param1);
         this.§-"7§(§!!'§);
         if(this.§`""§ == §%!_§)
         {
            this.§<^§ = 2000;
            this.§-"0§ = §3!G§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§?!p§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§=!X§.§!'§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §3!w§.§7%§(§3!w§.§%n§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§-6§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§-6§ = param1;
      }
   }
}

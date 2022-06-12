package §4!S§
{
   import §%!&§.§6""§;
   import §%!&§.§7!p§;
   import §%!&§.§;!x§;
   import §%h§.§5X§;
   import §%h§.§=$§;
   import §'!O§.§[!m§;
   import §,E§.§ t§;
   import §4u§.§9<§;
   import §6`§.§?!7§;
   import §>0§.§'L§;
   import §`%§.§8!0§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §06§ extends §"!K§
   {
      
      public static const §?O§:int = 0;
      
      public static const §1!,§:int = 1;
      
      public static const §]"2§:int = 2;
      
      public static const §>X§:int = 3;
      
      public static const §@!c§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §;B§:int = 7;
      
      protected static const §,!q§:Number = §'L§.MANUAL_SCALE_STEP / 100;
      
      public static const §?j§:Number = 2000;
      
      public static const §^!z§:Number = 2500;
      
      public static const §>!p§:int = 5;
       
      
      public var §8!^§:int = 0;
      
      protected var §>"4§:int = 0;
      
      public var § !U§:Number;
      
      protected var §4"$§:Number = 0;
      
      protected var §-+§:Boolean = false;
      
      private var §<q§:Number = 0;
      
      public var §%S§:Number = 0;
      
      protected var §`!Q§:Boolean;
      
      protected var §8!L§:Number = 0;
      
      protected var §=!q§:Number = 0;
      
      protected var §;a§:Boolean = true;
      
      protected var §4p§:§ t§;
      
      public function §06§(param1:§5X§)
      {
         this.§4p§ = new § t§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§4p§.§,V§(0);
         this.§8!^§ = -1;
         this.§>"4§ = 0;
         this.§4"$§ = 0;
         this.§-+§ = false;
         this.§1Q§(§?O§);
         this.§ !U§ = §?j§;
         §@v§(true);
         §>"2§.objects.setDamageEnabled(true);
         §>"2§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §>"2§.update(param1,true);
         this.§'!p§(param1);
         this.§>l§(param1);
      }
      
      private function §'!p§(param1:int) : void
      {
         if(this.§>"4§ != 0)
         {
            §>"2§.camera.adjustManualScale(this.§>"4§ > 0,param1 * §,!q§);
         }
      }
      
      public function clearLevel() : void
      {
         §>"2§.clearLevel();
         removeEventListeners();
         this.§8!^§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §-o§() : Boolean
      {
         if(§>"2§.camera.mCurrentCameraSliderLocation < §'L§.§]!u§)
         {
            return false;
         }
         if(!§>"2§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §6!R§(param1:int) : void
      {
         var _loc2_:§'L§ = §>"2§.camera;
         if(_loc2_.§[!Y§ > 0)
         {
            _loc2_.§[!Y§ -= param1;
            if(_loc2_.§[!Y§ <= 0)
            {
               if(this.§-o§())
               {
                  _loc2_.§[!Y§ = -1;
                  if(§>"2§.slingshot.birdsAvailable)
                  {
                     _loc2_.§>" §();
                  }
               }
               else
               {
                  _loc2_.§[!Y§ = §'L§.§&r§ / 2;
               }
            }
         }
      }
      
      public function §1Q§(param1:int, param2:Boolean = false) : void
      {
         if(this.§#G§(false) && !param2)
         {
            return;
         }
         if(param1 == §?O§)
         {
            this.§%S§ = 2000;
         }
         else if(param1 == §1!,§)
         {
            §>"2§.camera.goToBirdView();
         }
         else if(param1 == §]"2§)
         {
            this.§`!Q§ = false;
            this.§%S§ = 5000;
            §>"2§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §>X§)
         {
            §>"2§.camera.goToCastleView();
         }
         else if(param1 == §@!c§)
         {
            this.§%S§ = 2000;
            this.§<q§ = §>!p§;
            §>"2§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§%S§ = 1200;
            if(!§>"2§.objects.mMightyEagleAdded)
            {
               §>"2§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§%S§ = 1200;
            if(!§>"2§.objects.mMightyEagleAdded)
            {
               §>"2§.camera.goToBirdView();
               §>"2§.slingshot.makeBirdsJumpForJoy();
            }
            §?!7§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §;B§)
         {
            §?!7§.§@"!§();
            §?!7§.playSound("LevelFailedPigs1");
            this.§%S§ = 1200;
            §>"2§.camera.goToCastleView();
            §>"2§.objects.makePigsSmile(5);
         }
         this.§8!^§ = param1;
      }
      
      public function §7!A§(param1:Number) : void
      {
         this.§4"$§ = Math.max(this.§4"$§,param1);
      }
      
      protected function §5k§() : Boolean
      {
         return §>"2§.slingshot.mSlingShotState == §=$§.§,!b§ && !§>"2§.objects.hasBirds();
      }
      
      public function §>l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§;!x§ = null;
         this.§ !U§ -= param1;
         if(this.§-+§)
         {
            this.§4"$§ -= param1;
            if(this.§4"$§ < 0)
            {
               this.§ !U§ = 0;
            }
         }
         if(this.§ !U§ <= 0 && !this.§#G§(false))
         {
            this.§ !U§ = §?j§;
            _loc2_ = §>"2§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§-+§ || this.§4"$§ > 0))
            {
               if((!this.§-+§ || this.§4"$§ > 6000) && !§>"2§.objects.isPigsAlive())
               {
                  this.§4"$§ = 6000;
                  this.§-+§ = true;
               }
               else if(!this.§-+§ && this.§5k§())
               {
                  this.§4"$§ = 15000;
                  this.§-+§ = true;
               }
            }
            else if(!§>"2§.objects.isPigsAlive() && !§>"2§.objects.mSardineCanAdded && !§>"2§.objects.mMightyEagleAdded)
            {
               this.§&!z§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5k§())
            {
               if(§>"2§.objects.mMightyEagleAdded)
               {
                  if(§>"2§.objects.mMightyEagleHasTouchedGround && §>"2§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§&!z§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§>"2§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§ !U§ = §?j§;
                  }
               }
               else if(!§>"2§.objects.mSardineCanAdded)
               {
                  this.§&!z§(§;B§);
               }
            }
            if(this.§#G§(false))
            {
               §>"2§.gameOver();
            }
         }
         this.§%S§ -= param1;
         if(this.§%S§ < 0)
         {
            this.§%S§ = 0;
         }
         if(this.§8!^§ == §>X§)
         {
            §>"2§.updatePigAnimations(param1);
            if(!§>"2§.camera.isOnCastleView() && §>"2§.camera.mCurrentAction != §'L§.§extends§)
            {
               this.§1Q§(§1!,§);
            }
         }
         else if(this.§8!^§ == §@!c§)
         {
            if(this.§%S§ <= 0)
            {
               _loc3_ = §>"2§.objects.hasBirds();
               if(_loc3_ && this.§<q§ > 0)
               {
                  this.§%S§ = 2000;
                  this.§ !U§ = 0;
                  this.§<q§ = this.§<q§ - 1;
               }
               else if(!§8!0§.§?2§.objects.mMightyEagleAdded)
               {
                  this.§1Q§(§1!,§);
               }
            }
            else
            {
               §>"2§.updatePigAnimations(param1);
            }
            if(!§>"2§.camera.isOnCastleView() && §>"2§.camera.mCurrentAction != §'L§.§extends§)
            {
               this.§1Q§(§1!,§);
            }
         }
         else if(this.§8!^§ == §?O§)
         {
            if(this.§%S§ <= 0)
            {
               this.§1Q§(§1!,§);
            }
         }
         else if(this.§8!^§ == §1!,§)
         {
            if(§>"2§.camera.isOnCastleView() && §>"2§.camera.mCurrentAction != §'L§.§extends§)
            {
               this.§1Q§(§>X§);
            }
         }
         else if(this.§8!^§ == §]"2§)
         {
            if(!(_loc4_ = §>"2§.activeObject) || _loc4_.§^!n§ < _loc4_.§?!`§)
            {
               if(_loc4_ && _loc4_ is §7!p§ && (!(_loc4_ as §6""§).§&!I§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§`!Q§ = true;
                  this.§1Q§(§@!c§);
               }
               §>"2§.activeObject = null;
               this.§1Q§(§@!c§);
            }
         }
         else if(this.§8!^§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§%S§ <= 0)
            {
               if(§>"2§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§%S§ = 1000;
               }
               else
               {
                  this.§1Q§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §&!z§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§-+§)
         {
            this.§-+§ = true;
         }
         if(new Date().time - §>"2§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§>"2§.slingshot.mDragging)
         {
            return;
         }
         if(§>"2§.objects.isWorldAtSleep())
         {
            this.§4"$§ = Math.min(this.§4"$§,3500);
         }
         if(this.§4"$§ <= 0)
         {
            this.§1Q§(param1,param2);
         }
      }
      
      public function §#G§(param1:Boolean = false) : Boolean
      {
         return (this.§8!^§ == LEVEL_STATE_VICTORY2_END || this.§8!^§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§8!^§ == §;B§) && (!param1 || this.§%S§ <= 0 && this.§8!^§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §?"4§() : Boolean
      {
         return this.§8!^§ == LEVEL_STATE_VICTORY2_END || this.§8!^§ == §;B§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§<!g§(param1.delta > 0);
         }
      }
      
      public function §<!g§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§;a§ || !§>"2§.mReadyToRun)
         {
            return;
         }
         if(!(§>"2§.slingshot.mDragging || §>"2§.camera.mDragging))
         {
            if(this.§8!^§ == §@!c§ || this.§8!^§ == §>X§ || this.§8!^§ == §1!,§)
            {
               if(!§>"2§.isPlayingReplay())
               {
                  §>"2§.camera.adjustManualScale(param1,param2 == 0 ? Number(§'L§.MANUAL_SCALE_STEP) : Number(param2));
               }
               else
               {
                  §>"2§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §@!7§(param1:int) : void
      {
         this.§>"4§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§;a§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §9<§.§0!d§();
         if(this.§#G§(false))
         {
            return;
         }
         if(!§>"2§.isPlayingReplay())
         {
            if(§>"2§.activeObject && this.§8!^§ == §]"2§ || this.§`!Q§)
            {
               this.§`!Q§ = false;
               §>"2§.activatePowerup();
               return;
            }
            _loc4_ = §>"2§.screenToBox2D(param1,param2);
            if(§>"2§.slingshot.canStartDragging(_loc4_))
            {
               §>"2§.slingshot.startDragging();
               this.§1Q§(§1!,§);
            }
            else
            {
               §>"2§.camera.startDragging(param1,param2);
            }
            return;
         }
         §>"2§.camera.startDragging(param1,param2);
         §>"2§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§;a§)
         {
            return;
         }
         §9<§.§,w§();
         if(this.§8!^§ == §?O§)
         {
            this.§1Q§(§1!,§);
         }
         if(§>"2§.slingshot.mDragging)
         {
            _loc3_ = §>"2§.screenToBox2D(param1,param2);
            §>"2§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§>"2§.slingshot.canShootTheBird())
            {
               §>"2§.slingshot.shoot();
               this.§1Q§(§]"2§);
            }
            else
            {
               §>"2§.slingshot.cancelDragging();
            }
         }
         if(§>"2§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §>"2§.camera.dragToNewPoint(param1,param2);
            }
            §>"2§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§;a§)
         {
            return;
         }
         if(§>"2§.slingshot.mDragging)
         {
            _loc3_ = §>"2§.screenToBox2D(param1,param2);
            §>"2§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§>"2§.camera.mDragging)
         {
            §>"2§.camera.dragToNewPoint(param1,param2);
         }
         this.§8!L§ = param1;
         this.§=!q§ = param2;
      }
      
      public function §"!V§() : Point
      {
         return new Point(this.§8!L§,this.§=!q§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§4p§.§,V§(this.§4p§.getValue() + param1);
         this.§7!A§(§^!z§);
         if(this.§8!^§ == §@!c§)
         {
            this.§%S§ = 2000;
            this.§<q§ = §>!p§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§4p§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§8!0§.§?2§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §[!m§.§&l§(§[!m§.§<!D§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§;a§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§;a§ = param1;
      }
   }
}

package §,y§
{
   import §&!&§.§1"7§;
   import §1U§.§"!V§;
   import §2!§.§1!n§;
   import §4!s§.§%I§;
   import §4!s§.§4^§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §9!G§.§>!n§;
   import §="§.§+!j§;
   import §="§.§+H§;
   import §="§.§`T§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §8n§ extends §]s§
   {
      
      public static const §4!%§:int = 0;
      
      public static const §`"8§:int = 1;
      
      public static const §1"%§:int = 2;
      
      public static const §;P§:int = 3;
      
      public static const §3!6§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §1!v§:int = 7;
      
      protected static const §1!Z§:Number = §1!n§.MANUAL_SCALE_STEP / 100;
      
      public static const §=Z§:Number = 2000;
      
      public static const §each §:Number = 2500;
      
      public static const §^z§:int = 5;
       
      
      public var §"!e§:int = 0;
      
      protected var §-k§:int = 0;
      
      public var §%!x§:Number;
      
      protected var §5t§:Number = 0;
      
      protected var §%G§:Boolean = false;
      
      private var §7_§:Number = 0;
      
      public var §=3§:Number = 0;
      
      protected var §"!<§:Boolean;
      
      protected var §0!#§:Number = 0;
      
      protected var §]e§:Number = 0;
      
      protected var §-!o§:Boolean = true;
      
      protected var §,a§:§1"7§;
      
      public function §8n§(param1:§%I§)
      {
         this.§,a§ = new §1"7§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§,a§.§ <§(0);
         this.§"!e§ = -1;
         this.§-k§ = 0;
         this.§5t§ = 0;
         this.§%G§ = false;
         this.§1!d§(§4!%§);
         this.§%!x§ = §=Z§;
         §5!n§(true);
         §,!T§.objects.setDamageEnabled(true);
         §,!T§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §,!T§.update(param1,true);
         this.§ ""§(param1);
         this.§&!,§(param1);
      }
      
      private function § ""§(param1:int) : void
      {
         if(this.§-k§ != 0)
         {
            §,!T§.camera.adjustManualScale(this.§-k§ > 0,param1 * §1!Z§);
         }
      }
      
      public function clearLevel() : void
      {
         §,!T§.clearLevel();
         removeEventListeners();
         this.§"!e§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §!H§() : Boolean
      {
         if(§,!T§.camera.mCurrentCameraSliderLocation < §1!n§.§!"0§)
         {
            return false;
         }
         if(!§,!T§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §0J§(param1:int) : void
      {
         var _loc2_:§1!n§ = §,!T§.camera;
         if(_loc2_.§@]§ > 0)
         {
            _loc2_.§@]§ -= param1;
            if(_loc2_.§@]§ <= 0)
            {
               if(this.§!H§())
               {
                  _loc2_.§@]§ = -1;
                  if(§,!T§.slingshot.birdsAvailable)
                  {
                     _loc2_.§;v§();
                  }
               }
               else
               {
                  _loc2_.§@]§ = §1!n§.§ !Q§ / 2;
               }
            }
         }
      }
      
      public function §1!d§(param1:int, param2:Boolean = false) : void
      {
         if(this.§"!M§(false) && !param2)
         {
            return;
         }
         if(param1 == §4!%§)
         {
            this.§=3§ = 2000;
         }
         else if(param1 == §`"8§)
         {
            §,!T§.camera.goToBirdView();
         }
         else if(param1 == §1"%§)
         {
            this.§"!<§ = false;
            this.§=3§ = 5000;
            §,!T§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §;P§)
         {
            §,!T§.camera.goToCastleView();
         }
         else if(param1 == §3!6§)
         {
            this.§=3§ = 2000;
            this.§7_§ = §^z§;
            §,!T§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§=3§ = 1200;
            if(!§,!T§.objects.mMightyEagleAdded)
            {
               §,!T§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§=3§ = 1200;
            if(!§,!T§.objects.mMightyEagleAdded)
            {
               §,!T§.camera.goToBirdView();
               §,!T§.slingshot.makeBirdsJumpForJoy();
            }
            § !x§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §1!v§)
         {
            § !x§.§ X§();
            § !x§.playSound("LevelFailedPigs1");
            this.§=3§ = 1200;
            §,!T§.camera.goToCastleView();
            §,!T§.objects.makePigsSmile(5);
         }
         this.§"!e§ = param1;
      }
      
      public function §<!"§(param1:Number) : void
      {
         this.§5t§ = Math.max(this.§5t§,param1);
      }
      
      protected function §4K§() : Boolean
      {
         return §,!T§.slingshot.mSlingShotState == §4^§.§2"3§ && !§,!T§.objects.hasBirds();
      }
      
      public function §&!,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§`T§ = null;
         this.§%!x§ -= param1;
         if(this.§%G§)
         {
            this.§5t§ -= param1;
            if(this.§5t§ < 0)
            {
               this.§%!x§ = 0;
            }
         }
         if(this.§%!x§ <= 0 && !this.§"!M§(false))
         {
            this.§%!x§ = §=Z§;
            _loc2_ = §,!T§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§%G§ || this.§5t§ > 0))
            {
               if((!this.§%G§ || this.§5t§ > 6000) && !§,!T§.objects.isPigsAlive())
               {
                  this.§5t§ = 6000;
                  this.§%G§ = true;
               }
               else if(!this.§%G§ && this.§4K§())
               {
                  this.§5t§ = 15000;
                  this.§%G§ = true;
               }
            }
            else if(!§,!T§.objects.isPigsAlive() && !§,!T§.objects.mSardineCanAdded && !§,!T§.objects.mMightyEagleAdded)
            {
               this.§1k§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§4K§())
            {
               if(§,!T§.objects.mMightyEagleAdded)
               {
                  if(§,!T§.objects.mMightyEagleHasTouchedGround && §,!T§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§1k§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§,!T§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§%!x§ = §=Z§;
                  }
               }
               else if(!§,!T§.objects.mSardineCanAdded)
               {
                  this.§1k§(§1!v§);
               }
            }
            if(this.§"!M§(false))
            {
               §,!T§.gameOver();
            }
         }
         this.§=3§ -= param1;
         if(this.§=3§ < 0)
         {
            this.§=3§ = 0;
         }
         if(this.§"!e§ == §;P§)
         {
            §,!T§.updatePigAnimations(param1);
            if(!§,!T§.camera.isOnCastleView() && §,!T§.camera.mCurrentAction != §1!n§.§]=§)
            {
               this.§1!d§(§`"8§);
            }
         }
         else if(this.§"!e§ == §3!6§)
         {
            if(this.§=3§ <= 0)
            {
               _loc3_ = §,!T§.objects.hasBirds();
               if(_loc3_ && this.§7_§ > 0)
               {
                  this.§=3§ = 2000;
                  this.§%!x§ = 0;
                  this.§7_§ = this.§7_§ - 1;
               }
               else if(!§"!V§.§!j§.objects.mMightyEagleAdded)
               {
                  this.§1!d§(§`"8§);
               }
            }
            else
            {
               §,!T§.updatePigAnimations(param1);
            }
            if(!§,!T§.camera.isOnCastleView() && §,!T§.camera.mCurrentAction != §1!n§.§]=§)
            {
               this.§1!d§(§`"8§);
            }
         }
         else if(this.§"!e§ == §4!%§)
         {
            if(this.§=3§ <= 0)
            {
               this.§1!d§(§`"8§);
            }
         }
         else if(this.§"!e§ == §`"8§)
         {
            if(§,!T§.camera.isOnCastleView() && §,!T§.camera.mCurrentAction != §1!n§.§]=§)
            {
               this.§1!d§(§;P§);
            }
         }
         else if(this.§"!e§ == §1"%§)
         {
            if(!(_loc4_ = §,!T§.activeObject) || _loc4_.§+!_§ < _loc4_.§4>§)
            {
               if(_loc4_ && _loc4_ is §+H§ && (!(_loc4_ as §+!j§).§?!3§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§"!<§ = true;
                  this.§1!d§(§3!6§);
               }
               §,!T§.activeObject = null;
               this.§1!d§(§3!6§);
            }
         }
         else if(this.§"!e§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§=3§ <= 0)
            {
               if(§,!T§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§=3§ = 1000;
               }
               else
               {
                  this.§1!d§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §1k§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§%G§)
         {
            this.§%G§ = true;
         }
         if(new Date().time - §,!T§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§,!T§.slingshot.mDragging)
         {
            return;
         }
         if(§,!T§.objects.isWorldAtSleep())
         {
            this.§5t§ = Math.min(this.§5t§,3500);
         }
         if(this.§5t§ <= 0)
         {
            this.§1!d§(param1,param2);
         }
      }
      
      public function §"!M§(param1:Boolean = false) : Boolean
      {
         return (this.§"!e§ == LEVEL_STATE_VICTORY2_END || this.§"!e§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§"!e§ == §1!v§) && (!param1 || this.§=3§ <= 0 && this.§"!e§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §;!F§() : Boolean
      {
         return this.§"!e§ == LEVEL_STATE_VICTORY2_END || this.§"!e§ == §1!v§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§<1§(param1.delta > 0);
         }
      }
      
      public function §<1§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§-!o§ || !§,!T§.mReadyToRun)
         {
            return;
         }
         if(!(§,!T§.slingshot.mDragging || §,!T§.camera.mDragging))
         {
            if(this.§"!e§ == §3!6§ || this.§"!e§ == §;P§ || this.§"!e§ == §`"8§)
            {
               if(!§,!T§.isPlayingReplay())
               {
                  §,!T§.camera.adjustManualScale(param1,param2 == 0 ? Number(§1!n§.MANUAL_SCALE_STEP) : Number(param2));
               }
               else
               {
                  §,!T§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §]X§(param1:int) : void
      {
         this.§-k§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§-!o§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §>!n§.§ V§();
         if(this.§"!M§(false))
         {
            return;
         }
         if(!§,!T§.isPlayingReplay())
         {
            if(§,!T§.activeObject && this.§"!e§ == §1"%§ || this.§"!<§)
            {
               this.§"!<§ = false;
               §,!T§.activatePowerup();
               return;
            }
            _loc4_ = §,!T§.screenToBox2D(param1,param2);
            if(§,!T§.slingshot.canStartDragging(_loc4_))
            {
               §,!T§.slingshot.startDragging();
               this.§1!d§(§`"8§);
            }
            else
            {
               §,!T§.camera.startDragging(param1,param2);
            }
            return;
         }
         §,!T§.camera.startDragging(param1,param2);
         §,!T§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§-!o§)
         {
            return;
         }
         §>!n§.§`!H§();
         if(this.§"!e§ == §4!%§)
         {
            this.§1!d§(§`"8§);
         }
         if(§,!T§.slingshot.mDragging)
         {
            _loc3_ = §,!T§.screenToBox2D(param1,param2);
            §,!T§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§,!T§.slingshot.canShootTheBird())
            {
               §,!T§.slingshot.shoot();
               this.§1!d§(§1"%§);
            }
            else
            {
               §,!T§.slingshot.cancelDragging();
            }
         }
         if(§,!T§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §,!T§.camera.dragToNewPoint(param1,param2);
            }
            §,!T§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§-!o§)
         {
            return;
         }
         if(§,!T§.slingshot.mDragging)
         {
            _loc3_ = §,!T§.screenToBox2D(param1,param2);
            §,!T§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§,!T§.camera.mDragging)
         {
            §,!T§.camera.dragToNewPoint(param1,param2);
         }
         this.§0!#§ = param1;
         this.§]e§ = param2;
      }
      
      public function §4[§() : Point
      {
         return new Point(this.§0!#§,this.§]e§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§,a§.§ <§(this.§,a§.getValue() + param1);
         this.§<!"§(§each §);
         if(this.§"!e§ == §3!6§)
         {
            this.§=3§ = 2000;
            this.§7_§ = §^z§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§,a§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§"!V§.§!j§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §"?§.§+!M§(§"?§.§4M§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§-!o§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§-!o§ = param1;
      }
   }
}

package §-D§
{
   import § t§.§?U§;
   import §!!V§.§&I§;
   import §!!V§.§<!>§;
   import §"!S§.§"_§;
   import §%t§.§9!X§;
   import §1E§.§2^§;
   import §>8§.§?2§;
   import §]!+§.§ q§;
   import §]!+§.§";§;
   import §]!+§.§`H§;
   import §`!@§.§^v§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §]!<§ extends §4N§
   {
      
      public static const §;y§:int = 0;
      
      public static const §&!T§:int = 1;
      
      public static const §+! §:int = 2;
      
      public static const §;m§:int = 3;
      
      public static const §8!D§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §<v§:int = 7;
      
      protected static const §`X§:Number = §?U§.§#![§ / 100;
      
      public static const §<!M§:Number = 2000;
      
      public static const §3_§:Number = 2500;
      
      public static const §8L§:int = 5;
       
      
      public var §^! §:int = 0;
      
      protected var §,!H§:int = 0;
      
      public var §<!N§:Number;
      
      protected var §[o§:Number = 0;
      
      protected var §`!N§:Boolean = false;
      
      private var §"C§:Number = 0;
      
      public var §#+§:Number = 0;
      
      protected var §5Y§:Boolean;
      
      protected var §%!^§:Number = 0;
      
      protected var §,^§:Number = 0;
      
      protected var §1!X§:Boolean = true;
      
      protected var §,!D§:§^v§;
      
      public function §]!<§(param1:§&I§)
      {
         this.§,!D§ = new §^v§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§,!D§.§26§(0);
         this.§^! § = -1;
         this.§,!H§ = 0;
         this.§[o§ = 0;
         this.§`!N§ = false;
         this.§5!B§(§;y§);
         this.§<!N§ = §<!M§;
         §0k§(true);
         §%v§.objects.setDamageEnabled(true);
         §%v§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §%v§.update(param1,true);
         this.§?!M§(param1);
         this.§7B§(param1);
      }
      
      private function §?!M§(param1:int) : void
      {
         if(this.§,!H§ != 0)
         {
            §%v§.camera.adjustManualScale(this.§,!H§ > 0,param1 * §`X§);
         }
      }
      
      public function clearLevel() : void
      {
         §%v§.clearLevel();
         removeEventListeners();
         this.§^! § = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function § !N§() : Boolean
      {
         if(§%v§.camera.mCurrentCameraSliderLocation < §?U§.§2! §)
         {
            return false;
         }
         if(!§%v§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §>K§(param1:int) : void
      {
         var _loc2_:§?U§ = §%v§.camera;
         if(_loc2_.§!!G§ > 0)
         {
            _loc2_.§!!G§ -= param1;
            if(_loc2_.§!!G§ <= 0)
            {
               if(this.§ !N§())
               {
                  _loc2_.§!!G§ = -1;
                  if(§%v§.slingshot.birdsAvailable)
                  {
                     _loc2_.§`p§();
                  }
               }
               else
               {
                  _loc2_.§!!G§ = §?U§.§=[§ / 2;
               }
            }
         }
      }
      
      public function §5!B§(param1:int, param2:Boolean = false) : void
      {
         if(this.§!!7§(false) && !param2)
         {
            return;
         }
         if(param1 == §;y§)
         {
            this.§#+§ = 2000;
         }
         else if(param1 == §&!T§)
         {
            §%v§.camera.goToBirdView();
         }
         else if(param1 == §+! §)
         {
            this.§5Y§ = false;
            this.§#+§ = 5000;
            §%v§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §;m§)
         {
            §%v§.camera.goToCastleView();
         }
         else if(param1 == §8!D§)
         {
            this.§#+§ = 2000;
            this.§"C§ = §8L§;
            §%v§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§#+§ = 1200;
            if(!§%v§.objects.mMightyEagleAdded)
            {
               §%v§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§#+§ = 1200;
            if(!§%v§.objects.mMightyEagleAdded)
            {
               §%v§.camera.goToBirdView();
               §%v§.slingshot.makeBirdsJumpForJoy();
            }
            §2^§.§ !C§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §<v§)
         {
            §2^§.§ !]§();
            §2^§.§ !C§("LevelFailedPigs1");
            this.§#+§ = 1200;
            §%v§.camera.goToCastleView();
            §%v§.objects.makePigsSmile(5);
         }
         this.§^! § = param1;
      }
      
      public function §6!`§(param1:Number) : void
      {
         this.§[o§ = Math.max(this.§[o§,param1);
      }
      
      protected function §8!$§() : Boolean
      {
         return §%v§.slingshot.mSlingShotState == §<!>§.§+<§ && !§%v§.objects.hasBirds();
      }
      
      public function §7B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§";§ = null;
         this.§<!N§ -= param1;
         if(this.§`!N§)
         {
            this.§[o§ -= param1;
            if(this.§[o§ < 0)
            {
               this.§<!N§ = 0;
            }
         }
         if(this.§<!N§ <= 0 && !this.§!!7§(false))
         {
            this.§<!N§ = §<!M§;
            _loc2_ = §%v§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§`!N§ || this.§[o§ > 0))
            {
               if((!this.§`!N§ || this.§[o§ > 6000) && !§%v§.objects.isPigsAlive())
               {
                  this.§[o§ = 6000;
                  this.§`!N§ = true;
               }
               else if(!this.§`!N§ && this.§8!$§())
               {
                  this.§[o§ = 15000;
                  this.§`!N§ = true;
               }
            }
            else if(!§%v§.objects.isPigsAlive() && !§%v§.objects.mSardineCanAdded && !§%v§.objects.mMightyEagleAdded)
            {
               this.§7!8§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§8!$§())
            {
               if(§%v§.objects.mMightyEagleAdded)
               {
                  if(§%v§.objects.mMightyEagleHasTouchedGround && §%v§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§7!8§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§%v§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§<!N§ = §<!M§;
                  }
               }
               else if(!§%v§.objects.mSardineCanAdded)
               {
                  this.§7!8§(§<v§);
               }
            }
            if(this.§!!7§(false))
            {
               §%v§.gameOver();
            }
         }
         this.§#+§ -= param1;
         if(this.§#+§ < 0)
         {
            this.§#+§ = 0;
         }
         if(this.§^! § == §;m§)
         {
            §%v§.updatePigAnimations(param1);
            if(!§%v§.camera.isOnCastleView() && §%v§.camera.mCurrentAction != §?U§.§4!9§)
            {
               this.§5!B§(§&!T§);
            }
         }
         else if(this.§^! § == §8!D§)
         {
            if(this.§#+§ <= 0)
            {
               _loc3_ = §%v§.objects.hasBirds();
               if(_loc3_ && this.§"C§ > 0)
               {
                  this.§#+§ = 2000;
                  this.§<!N§ = 0;
                  this.§"C§ = this.§"C§ - 1;
               }
               else if(!§"_§.§+!^§.objects.mMightyEagleAdded)
               {
                  this.§5!B§(§&!T§);
               }
            }
            else
            {
               §%v§.updatePigAnimations(param1);
            }
            if(!§%v§.camera.isOnCastleView() && §%v§.camera.mCurrentAction != §?U§.§4!9§)
            {
               this.§5!B§(§&!T§);
            }
         }
         else if(this.§^! § == §;y§)
         {
            if(this.§#+§ <= 0)
            {
               this.§5!B§(§&!T§);
            }
         }
         else if(this.§^! § == §&!T§)
         {
            if(§%v§.camera.isOnCastleView() && §%v§.camera.mCurrentAction != §?U§.§4!9§)
            {
               this.§5!B§(§;m§);
            }
         }
         else if(this.§^! § == §+! §)
         {
            if(!(_loc4_ = §%v§.activeObject) || _loc4_.§0!C§ < _loc4_.§6!;§)
            {
               if(_loc4_ && _loc4_ is § q§ && (!(_loc4_ as §`H§).§#!8§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§5Y§ = true;
                  this.§5!B§(§8!D§);
               }
               §%v§.activeObject = null;
               this.§5!B§(§8!D§);
            }
         }
         else if(this.§^! § == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§#+§ <= 0)
            {
               if(§%v§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§#+§ = 1000;
               }
               else
               {
                  this.§5!B§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §7!8§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§`!N§)
         {
            this.§`!N§ = true;
         }
         if(new Date().time - §%v§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§%v§.slingshot.mDragging)
         {
            return;
         }
         if(§%v§.objects.isWorldAtSleep())
         {
            this.§[o§ = Math.min(this.§[o§,3500);
         }
         if(this.§[o§ <= 0)
         {
            this.§5!B§(param1,param2);
         }
      }
      
      public function §!!7§(param1:Boolean = false) : Boolean
      {
         return (this.§^! § == LEVEL_STATE_VICTORY2_END || this.§^! § == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§^! § == §<v§) && (!param1 || this.§#+§ <= 0 && this.§^! § != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §%!<§() : Boolean
      {
         return this.§^! § == LEVEL_STATE_VICTORY2_END || this.§^! § == §<v§;
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
         if(!this.§1!X§ || !§%v§.mReadyToRun)
         {
            return;
         }
         if(!(§%v§.slingshot.mDragging || §%v§.camera.mDragging))
         {
            if(this.§^! § == §8!D§ || this.§^! § == §;m§ || this.§^! § == §&!T§)
            {
               if(!§%v§.isPlayingReplay())
               {
                  §%v§.camera.adjustManualScale(param1);
               }
               else
               {
                  §%v§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §!3§(param1:int) : void
      {
         this.§,!H§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§1!X§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §9!X§.§[y§();
         if(this.§!!7§(false))
         {
            return;
         }
         if(!§%v§.isPlayingReplay())
         {
            if(§%v§.activeObject && this.§^! § == §+! § || this.§5Y§)
            {
               this.§5Y§ = false;
               §%v§.activatePowerup();
               return;
            }
            _loc4_ = §%v§.screenToBox2D(param1,param2);
            if(§%v§.slingshot.canStartDragging(_loc4_))
            {
               §%v§.slingshot.startDragging();
               this.§5!B§(§&!T§);
            }
            else
            {
               §%v§.camera.startDragging(param1,param2);
            }
            return;
         }
         §%v§.camera.startDragging(param1,param2);
         §%v§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§1!X§)
         {
            return;
         }
         §9!X§.§3N§();
         if(this.§^! § == §;y§)
         {
            this.§5!B§(§&!T§);
         }
         if(§%v§.slingshot.mDragging)
         {
            _loc3_ = §%v§.screenToBox2D(param1,param2);
            §%v§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§%v§.slingshot.canShootTheBird())
            {
               §%v§.slingshot.shoot();
               this.§5!B§(§+! §);
            }
            else
            {
               §%v§.slingshot.cancelDragging();
            }
         }
         if(§%v§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §%v§.camera.dragToNewPoint(param1,param2);
            }
            §%v§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§1!X§)
         {
            return;
         }
         if(§%v§.slingshot.mDragging)
         {
            _loc3_ = §%v§.screenToBox2D(param1,param2);
            §%v§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§%v§.camera.mDragging)
         {
            §%v§.camera.dragToNewPoint(param1,param2);
         }
         this.§%!^§ = param1;
         this.§,^§ = param2;
      }
      
      public function §=!D§() : Point
      {
         return new Point(this.§%!^§,this.§,^§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§,!D§.§26§(this.§,!D§.getValue() + param1);
         this.§6!`§(§3_§);
         if(this.§^! § == §8!D§)
         {
            this.§#+§ = 2000;
            this.§"C§ = §8L§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§,!D§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§"_§.§+!^§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §?2§.getLevelForId(§?2§.§=$§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§1!X§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§1!X§ = param1;
      }
   }
}

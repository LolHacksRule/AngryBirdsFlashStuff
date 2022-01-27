package §"!J§
{
   import §"I§.§,&§;
   import §-!5§.§1`§;
   import §3F§.§ 8§;
   import §3F§.§2!3§;
   import §3F§.§=4§;
   import §5=§.§^n§;
   import §>2§.§+!E§;
   import §>2§.§4h§;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §^Q§.§<a§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §5!'§ extends §@4§
   {
      
      public static const §]$§:int = 0;
      
      public static const §!!=§:int = 1;
      
      public static const §%!$§:int = 2;
      
      public static const §6!;§:int = 3;
      
      public static const §#a§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §1!,§:int = 7;
      
      protected static const §%! §:Number = §<a§.§^G§ / 100;
      
      public static const §^!-§:Number = 2000;
      
      public static const §4!5§:Number = 2500;
      
      public static const §4!O§:int = 5;
       
      
      public var §^6§:int = 0;
      
      protected var §'W§:int = 0;
      
      public var §6e§:Number;
      
      protected var §?!N§:Number = 0;
      
      protected var §9!E§:Boolean = false;
      
      private var §'!$§:Number = 0;
      
      public var §4!1§:Number = 0;
      
      protected var §;_§:Boolean;
      
      protected var §`E§:Number = 0;
      
      protected var §`b§:Number = 0;
      
      protected var §&!;§:Boolean = true;
      
      protected var §"1§:§,&§;
      
      public function §5!'§(param1:§4h§)
      {
         this.§"1§ = new §,&§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§"1§.assign(0);
         this.§^6§ = -1;
         this.§'W§ = 0;
         this.§?!N§ = 0;
         this.§9!E§ = false;
         this.§,!4§(§]$§);
         this.§6e§ = §^!-§;
         §+a§(true);
         §@k§.objects.setDamageEnabled(true);
         §@k§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §@k§.update(param1,true);
         this.§=i§(param1);
         this.§%X§(param1);
      }
      
      private function §=i§(param1:int) : void
      {
         if(this.§'W§ != 0)
         {
            §@k§.camera.adjustManualScale(this.§'W§ > 0,param1 * §%! §);
         }
      }
      
      public function clearLevel() : void
      {
         §@k§.clearLevel();
         removeEventListeners();
         this.§^6§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §4j§() : Boolean
      {
         if(§@k§.camera.mCurrentCameraSliderLocation < §<a§.§8!#§)
         {
            return false;
         }
         if(!§@k§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §4,§(param1:int) : void
      {
         var _loc2_:§<a§ = §@k§.camera;
         if(_loc2_.§^a§ > 0)
         {
            _loc2_.§^a§ -= param1;
            if(_loc2_.§^a§ <= 0)
            {
               if(this.§4j§())
               {
                  _loc2_.§^a§ = -1;
                  if(§@k§.slingshot.birdsAvailable)
                  {
                     _loc2_.§,!+§();
                  }
               }
               else
               {
                  _loc2_.§^a§ = §<a§.§61§ / 2;
               }
            }
         }
      }
      
      public function §,!4§(param1:int, param2:Boolean = false) : void
      {
         if(this.§^!6§(false) && !param2)
         {
            return;
         }
         if(param1 == §]$§)
         {
            this.§4!1§ = 2000;
         }
         else if(param1 == §!!=§)
         {
            §@k§.camera.goToBirdView();
         }
         else if(param1 == §%!$§)
         {
            this.§;_§ = false;
            this.§4!1§ = 5000;
            §@k§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §6!;§)
         {
            §@k§.camera.goToCastleView();
         }
         else if(param1 == §#a§)
         {
            this.§4!1§ = 2000;
            this.§'!$§ = §4!O§;
            §@k§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§4!1§ = 1200;
            if(!§@k§.objects.mMightyEagleAdded)
            {
               §@k§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§4!1§ = 1200;
            if(!§@k§.objects.mMightyEagleAdded)
            {
               §@k§.camera.goToBirdView();
               §@k§.slingshot.makeBirdsJumpForJoy();
            }
            §9k§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §1!,§)
         {
            §9k§.§return§();
            §9k§.playSound("LevelFailedPigs1");
            this.§4!1§ = 1200;
            §@k§.camera.goToCastleView();
            §@k§.objects.makePigsSmile(5);
         }
         this.§^6§ = param1;
      }
      
      public function §@h§(param1:Number) : void
      {
         this.§?!N§ = Math.max(this.§?!N§,param1);
      }
      
      protected function §#!?§() : Boolean
      {
         return §@k§.slingshot.mSlingShotState == §+!E§.§!]§ && !§@k§.objects.hasBirds();
      }
      
      public function §%X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§2!3§ = null;
         this.§6e§ -= param1;
         if(this.§9!E§)
         {
            this.§?!N§ -= param1;
            if(this.§?!N§ < 0)
            {
               this.§6e§ = 0;
            }
         }
         if(this.§6e§ <= 0 && !this.§^!6§(false))
         {
            this.§6e§ = §^!-§;
            _loc2_ = §@k§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§9!E§ || this.§?!N§ > 0))
            {
               if((!this.§9!E§ || this.§?!N§ > 6000) && !§@k§.objects.isPigsAlive())
               {
                  this.§?!N§ = 6000;
                  this.§9!E§ = true;
               }
               else if(!this.§9!E§ && this.§#!?§())
               {
                  this.§?!N§ = 15000;
                  this.§9!E§ = true;
               }
            }
            else if(!§@k§.objects.isPigsAlive() && !§@k§.objects.mSardineCanAdded && !§@k§.objects.mMightyEagleAdded)
            {
               this.§`w§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§#!?§())
            {
               if(§@k§.objects.mMightyEagleAdded)
               {
                  if(§@k§.objects.mMightyEagleHasTouchedGround && §@k§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§`w§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§@k§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§6e§ = §^!-§;
                  }
               }
               else if(!§@k§.objects.mSardineCanAdded)
               {
                  this.§`w§(§1!,§);
               }
            }
            if(this.§^!6§(false))
            {
               §@k§.gameOver();
            }
         }
         this.§4!1§ -= param1;
         if(this.§4!1§ < 0)
         {
            this.§4!1§ = 0;
         }
         if(this.§^6§ == §6!;§)
         {
            §@k§.updatePigAnimations(param1);
            if(!§@k§.camera.isOnCastleView() && §@k§.camera.mCurrentAction != §<a§.§@!4§)
            {
               this.§,!4§(§!!=§);
            }
         }
         else if(this.§^6§ == §#a§)
         {
            if(this.§4!1§ <= 0)
            {
               _loc3_ = §@k§.objects.hasBirds();
               if(_loc3_ && this.§'!$§ > 0)
               {
                  this.§4!1§ = 2000;
                  this.§6e§ = 0;
                  this.§'!$§ = this.§'!$§ - 1;
               }
               else if(!§2G§.§7!,§.objects.mMightyEagleAdded)
               {
                  this.§,!4§(§!!=§);
               }
            }
            else
            {
               §@k§.updatePigAnimations(param1);
            }
            if(!§@k§.camera.isOnCastleView() && §@k§.camera.mCurrentAction != §<a§.§@!4§)
            {
               this.§,!4§(§!!=§);
            }
         }
         else if(this.§^6§ == §]$§)
         {
            if(this.§4!1§ <= 0)
            {
               this.§,!4§(§!!=§);
            }
         }
         else if(this.§^6§ == §!!=§)
         {
            if(§@k§.camera.isOnCastleView() && §@k§.camera.mCurrentAction != §<a§.§@!4§)
            {
               this.§,!4§(§6!;§);
            }
         }
         else if(this.§^6§ == §%!$§)
         {
            if(!(_loc4_ = §@k§.activeObject) || _loc4_.§7^§ < _loc4_.§0-§)
            {
               if(_loc4_ && _loc4_ is § 8§ && (!(_loc4_ as §=4§).§"i§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§;_§ = true;
                  this.§,!4§(§#a§);
               }
               §@k§.activeObject = null;
               this.§,!4§(§#a§);
            }
         }
         else if(this.§^6§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§4!1§ <= 0)
            {
               if(§@k§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§4!1§ = 1000;
               }
               else
               {
                  this.§,!4§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §`w§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§9!E§)
         {
            this.§9!E§ = true;
         }
         if(new Date().time - §@k§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§@k§.slingshot.mDragging)
         {
            return;
         }
         if(§@k§.objects.isWorldAtSleep())
         {
            this.§?!N§ = Math.min(this.§?!N§,3500);
         }
         if(this.§?!N§ <= 0)
         {
            this.§,!4§(param1,param2);
         }
      }
      
      public function §^!6§(param1:Boolean = false) : Boolean
      {
         return (this.§^6§ == LEVEL_STATE_VICTORY2_END || this.§^6§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§^6§ == §1!,§) && (!param1 || this.§4!1§ <= 0 && this.§^6§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §0!A§() : Boolean
      {
         return this.§^6§ == LEVEL_STATE_VICTORY2_END || this.§^6§ == §1!,§;
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
         if(!this.§&!;§ || !§@k§.mReadyToRun)
         {
            return;
         }
         if(!(§@k§.slingshot.mDragging || §@k§.camera.mDragging))
         {
            if(this.§^6§ == §#a§ || this.§^6§ == §6!;§ || this.§^6§ == §!!=§)
            {
               if(!§@k§.isPlayingReplay())
               {
                  §@k§.camera.adjustManualScale(param1);
               }
               else
               {
                  §@k§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §;l§(param1:int) : void
      {
         this.§'W§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§&!;§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §1`§.§2s§();
         if(this.§^!6§(false))
         {
            return;
         }
         if(!§@k§.isPlayingReplay())
         {
            if(§@k§.activeObject && this.§^6§ == §%!$§ || this.§;_§)
            {
               this.§;_§ = false;
               §@k§.activatePowerup();
               return;
            }
            _loc4_ = §@k§.screenToBox2D(param1,param2);
            if(§@k§.slingshot.canStartDragging(_loc4_))
            {
               §@k§.slingshot.startDragging();
               this.§,!4§(§!!=§);
            }
            else
            {
               §@k§.camera.startDragging(param1,param2);
            }
            return;
         }
         §@k§.camera.startDragging(param1,param2);
         §@k§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§&!;§)
         {
            return;
         }
         §1`§.§8@§();
         if(this.§^6§ == §]$§)
         {
            this.§,!4§(§!!=§);
         }
         if(§@k§.slingshot.mDragging)
         {
            _loc3_ = §@k§.screenToBox2D(param1,param2);
            §@k§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§@k§.slingshot.canShootTheBird())
            {
               §@k§.slingshot.shoot();
               this.§,!4§(§%!$§);
            }
            else
            {
               §@k§.slingshot.cancelDragging();
            }
         }
         if(§@k§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §@k§.camera.dragToNewPoint(param1,param2);
            }
            §@k§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§&!;§)
         {
            return;
         }
         if(§@k§.slingshot.mDragging)
         {
            _loc3_ = §@k§.screenToBox2D(param1,param2);
            §@k§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§@k§.camera.mDragging)
         {
            §@k§.camera.dragToNewPoint(param1,param2);
         }
         this.§`E§ = param1;
         this.§`b§ = param2;
      }
      
      public function §0!@§() : Point
      {
         return new Point(this.§`E§,this.§`b§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§"1§.assign(this.§"1§.getValue() + param1);
         this.§@h§(§4!5§);
         if(this.§^6§ == §#a§)
         {
            this.§4!1§ = 2000;
            this.§'!$§ = §4!O§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§"1§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§2G§.§7!,§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §^n§.§5'§(§^n§.§-7§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§&!;§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§&!;§ = param1;
      }
   }
}

package §'8§
{
   import § `§.§3F§;
   import §+!%§.§'!"§;
   import §+!%§.§-C§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §2x§.§9!@§;
   import §<!@§.§!P§;
   import §<[§.§#K§;
   import §<[§.§<!9§;
   import §<[§.§>!4§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §while§.§03§;
   
   public class §^§ extends §2^§
   {
      
      public static const §=!;§:int = 0;
      
      public static const §2!G§:int = 1;
      
      public static const §!Z§:int = 2;
      
      public static const §<j§:int = 3;
      
      public static const §var§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §8@§:int = 7;
      
      private static const §9!=§:Number = §3F§.§=6§ / 100;
      
      public static const §2O§:Number = 2000;
      
      public static const §3U§:Number = 2500;
       
      
      public var § !4§:int = 0;
      
      private var §use §:int = 0;
      
      public var §"!1§:Number;
      
      protected var §+!6§:Number = 0;
      
      protected var §0i§:Boolean = false;
      
      public var §!j§:Number = 0;
      
      protected var §]e§:Boolean;
      
      private var §8!'§:Number = 0;
      
      private var §5!<§:Number = 0;
      
      protected var § J§:Boolean = true;
      
      protected var §3t§:§03§;
      
      public function §^§(param1:§'!"§)
      {
         this.§3t§ = new §03§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§3t§.assign(0);
         this.§ !4§ = -1;
         this.§use § = 0;
         this.§+!6§ = 0;
         this.§0i§ = false;
         this.§0h§(§=!;§);
         this.§"!1§ = §2O§;
         §<<§(true);
         §]U§.objects.setDamageEnabled(true);
         §]U§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §]U§.update(param1,true);
         this.§1-§(param1);
         this.§4r§(param1);
      }
      
      private function §1-§(param1:int) : void
      {
         if(this.§use § != 0)
         {
            §]U§.camera.adjustManualScale(this.§use § > 0,param1 * §9!=§);
         }
      }
      
      public function clearLevel() : void
      {
         §]U§.clearLevel();
         removeEventListeners();
         this.§ !4§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §!e§() : Boolean
      {
         if(§]U§.camera.mCurrentCameraSliderLocation < §3F§.§-O§)
         {
            return false;
         }
         if(!§]U§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §in§(param1:int) : void
      {
         var _loc2_:§3F§ = §]U§.camera;
         if(_loc2_.§^`§ > 0)
         {
            _loc2_.§^`§ -= param1;
            if(_loc2_.§^`§ <= 0)
            {
               if(this.§!e§())
               {
                  _loc2_.§^`§ = -1;
                  if(§]U§.slingshot.birdsAvailable)
                  {
                     _loc2_.§4z§();
                  }
               }
               else
               {
                  _loc2_.§^`§ = §3F§.§%$§ / 2;
               }
            }
         }
      }
      
      public function §0h§(param1:int, param2:Boolean = false) : void
      {
         if(this.§`!=§(false) && !param2)
         {
            return;
         }
         if(param1 == §=!;§)
         {
            this.§!j§ = 2000;
         }
         else if(param1 == §2!G§)
         {
            §]U§.camera.goToBirdView();
         }
         else if(param1 == §!Z§)
         {
            this.§]e§ = false;
            this.§!j§ = 5000;
            §]U§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §<j§)
         {
            §]U§.camera.goToCastleView();
         }
         else if(param1 == §var§)
         {
            this.§!j§ = 2000;
            §]U§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§!j§ = 1200;
            if(!§]U§.objects.mMightyEagleAdded)
            {
               §]U§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§!j§ = 1200;
            if(!§]U§.objects.mMightyEagleAdded)
            {
               §]U§.camera.goToBirdView();
               §]U§.slingshot.makeBirdsJumpForJoy();
            }
            §;!>§.§>t§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §8@§)
         {
            §;!>§.§&;§();
            §;!>§.§>t§("LevelFailedPigs1");
            this.§!j§ = 1200;
            §]U§.camera.goToCastleView();
            §]U§.objects.makePigsSmile(5);
         }
         this.§ !4§ = param1;
      }
      
      public function §#T§(param1:Number) : void
      {
         this.§+!6§ = Math.max(this.§+!6§,param1);
      }
      
      protected function §&i§() : Boolean
      {
         return §]U§.slingshot.mSlingShotState == §-C§.§>d§ && !§]U§.objects.hasBirds();
      }
      
      public function §4r§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§>!4§ = null;
         this.§"!1§ -= param1;
         if(this.§0i§)
         {
            this.§+!6§ -= param1;
            if(this.§+!6§ < 0)
            {
               this.§"!1§ = 0;
            }
         }
         if(this.§"!1§ <= 0 && !this.§`!=§(false))
         {
            this.§"!1§ = §2O§;
            _loc2_ = §]U§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§0i§ || this.§+!6§ > 0))
            {
               if((!this.§0i§ || this.§+!6§ > 6000) && !§]U§.objects.isPigsAlive())
               {
                  this.§+!6§ = 6000;
                  this.§0i§ = true;
               }
               else if(!this.§0i§ && this.§&i§())
               {
                  this.§+!6§ = 15000;
                  this.§0i§ = true;
               }
            }
            else if(!§]U§.objects.isPigsAlive() && !§]U§.objects.mSardineCanAdded && !§]U§.objects.mMightyEagleAdded)
            {
               this.§1k§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§&i§())
            {
               if(§]U§.objects.mMightyEagleAdded)
               {
                  if(§]U§.objects.mMightyEagleHasTouchedGround && §]U§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§1k§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§]U§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§"!1§ = §2O§;
                  }
               }
               else if(!§]U§.objects.mSardineCanAdded)
               {
                  this.§1k§(§8@§);
               }
            }
            if(this.§`!=§(false))
            {
               §]U§.gameOver();
            }
         }
         this.§!j§ -= param1;
         if(this.§!j§ < 0)
         {
            this.§!j§ = 0;
         }
         if(this.§ !4§ == §<j§)
         {
            §]U§.updatePigAnimations(param1);
            if(!§]U§.camera.isOnCastleView() && §]U§.camera.mCurrentAction != §3F§.§5j§)
            {
               this.§0h§(§2!G§);
            }
         }
         else if(this.§ !4§ == §var§)
         {
            if(this.§!j§ <= 0)
            {
               if(§]U§.objects.isWorldAtSleep())
               {
                  if(!§?'§.§5!§.objects.mMightyEagleAdded)
                  {
                     this.§0h§(§2!G§);
                  }
               }
               else
               {
                  this.§"!1§ = 0;
                  this.§!j§ = 2000;
               }
            }
            else
            {
               §]U§.updatePigAnimations(param1);
            }
            if(!§]U§.camera.isOnCastleView() && §]U§.camera.mCurrentAction != §3F§.§5j§)
            {
               this.§0h§(§2!G§);
            }
         }
         else if(this.§ !4§ == §=!;§)
         {
            if(this.§!j§ <= 0)
            {
               this.§0h§(§2!G§);
            }
         }
         else if(this.§ !4§ == §2!G§)
         {
            if(§]U§.camera.isOnCastleView() && §]U§.camera.mCurrentAction != §3F§.§5j§)
            {
               this.§0h§(§<j§);
            }
         }
         else if(this.§ !4§ == §!Z§)
         {
            _loc3_ = §]U§.activeObject;
            if(!_loc3_ || _loc3_.§;%§ < _loc3_.§&?§)
            {
               if(_loc3_ && _loc3_ is §#K§ && (!(_loc3_ as §<!9§).§6X§ || _loc3_.getSpecialAnimationProgress() >= 0))
               {
                  this.§]e§ = true;
                  this.§0h§(§var§);
               }
               §]U§.activeObject = null;
               this.§0h§(§var§);
            }
         }
         else if(this.§ !4§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§!j§ <= 0)
            {
               if(§]U§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§!j§ = 1000;
               }
               else
               {
                  this.§0h§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §1k§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§0i§)
         {
            this.§0i§ = true;
         }
         if(new Date().time - §]U§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§]U§.slingshot.mDragging)
         {
            return;
         }
         if(§]U§.objects.isWorldAtSleep())
         {
            this.§+!6§ = Math.min(this.§+!6§,3500);
         }
         if(this.§+!6§ <= 0)
         {
            this.§0h§(param1,param2);
         }
      }
      
      public function §`!=§(param1:Boolean = false) : Boolean
      {
         return (this.§ !4§ == LEVEL_STATE_VICTORY2_END || this.§ !4§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§ !4§ == §8@§) && (!param1 || this.§!j§ <= 0 && this.§ !4§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §?!#§() : Boolean
      {
         return this.§ !4§ == LEVEL_STATE_VICTORY2_END || this.§ !4§ == §8@§;
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
         if(!this.§ J§ || !§]U§.mReadyToRun)
         {
            return;
         }
         if(!(§]U§.slingshot.mDragging || §]U§.camera.mDragging))
         {
            if(this.§ !4§ == §var§ || this.§ !4§ == §<j§ || this.§ !4§ == §2!G§)
            {
               if(!§]U§.isPlayingReplay())
               {
                  §]U§.camera.adjustManualScale(param1);
               }
               else
               {
                  §]U§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §?w§(param1:int) : void
      {
         this.§use § = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§ J§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §9!@§.§&=§();
         if(this.§`!=§(false))
         {
            return;
         }
         if(!§]U§.isPlayingReplay())
         {
            if(§]U§.activeObject && this.§ !4§ == §!Z§ || this.§]e§)
            {
               this.§]e§ = false;
               §]U§.activatePowerup();
               return;
            }
            _loc4_ = §]U§.screenToBox2D(param1,param2);
            if(§]U§.slingshot.canStartDragging(_loc4_))
            {
               §]U§.slingshot.startDragging();
               this.§0h§(§2!G§);
            }
            else
            {
               §]U§.camera.startDragging(param1,param2);
            }
            return;
         }
         §]U§.camera.startDragging(param1,param2);
         §]U§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§ J§)
         {
            return;
         }
         §9!@§.§]!$§();
         if(this.§ !4§ == §=!;§)
         {
            this.§0h§(§2!G§);
         }
         if(§]U§.slingshot.mDragging)
         {
            _loc3_ = §]U§.screenToBox2D(param1,param2);
            §]U§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§]U§.slingshot.canShootTheBird())
            {
               §]U§.slingshot.shoot();
               this.§0h§(§!Z§);
            }
            else
            {
               §]U§.slingshot.cancelDragging();
            }
         }
         if(§]U§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §]U§.camera.dragToNewPoint(param1,param2);
            }
            §]U§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§ J§)
         {
            return;
         }
         if(§]U§.slingshot.mDragging)
         {
            _loc3_ = §]U§.screenToBox2D(param1,param2);
            §]U§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§]U§.camera.mDragging)
         {
            §]U§.camera.dragToNewPoint(param1,param2);
         }
         this.§8!'§ = param1;
         this.§5!<§ = param2;
      }
      
      public function §4!+§() : Point
      {
         return new Point(this.§8!'§,this.§5!<§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§3t§.assign(this.§3t§.getValue() + param1);
         this.§#T§(§3U§);
      }
      
      override public function getScore() : int
      {
         return this.§3t§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§?'§.§5!§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §!P§.§1'§(§!P§.§4R§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§ J§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§ J§ = param1;
      }
   }
}

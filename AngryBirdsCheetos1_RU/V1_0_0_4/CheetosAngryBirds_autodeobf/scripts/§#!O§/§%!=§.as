package §#!O§
{
   import § T§.§"!2§;
   import § T§.§1M§;
   import § T§.§<U§;
   import §#!H§.§7V§;
   import §#K§.§,3§;
   import §7z§.§0!D§;
   import §7z§.§]!-§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §^!&§.§#U§;
   import §^3§.§6Y§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §%!=§ extends §7j§
   {
      
      public static const §-U§:int = 0;
      
      public static const §5!P§:int = 1;
      
      public static const §+!F§:int = 2;
      
      public static const §>B§:int = 3;
      
      public static const §0q§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §4!§:int = 7;
      
      protected static const §&Q§:Number = §7V§.§!!#§ / 100;
      
      public static const §&!=§:Number = 2000;
      
      public static const §,q§:Number = 2500;
      
      public static const §-!U§:int = 5;
       
      
      public var §6E§:int = 0;
      
      protected var §5!4§:int = 0;
      
      public var §?! §:Number;
      
      protected var §2a§:Number = 0;
      
      protected var §"!V§:Boolean = false;
      
      private var §7C§:Number = 0;
      
      public var §]1§:Number = 0;
      
      protected var §%!?§:Boolean;
      
      protected var §?O§:Number = 0;
      
      protected var §+!Y§:Number = 0;
      
      protected var §'S§:Boolean = true;
      
      protected var §-!"§:§6Y§;
      
      public function §%!=§(param1:§]!-§)
      {
         this.§-!"§ = new §6Y§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§-!"§.§ !-§(0);
         this.§6E§ = -1;
         this.§5!4§ = 0;
         this.§2a§ = 0;
         this.§"!V§ = false;
         this.§?!2§(§-U§);
         this.§?! § = §&!=§;
         §5T§(true);
         §^'§.objects.setDamageEnabled(true);
         §^'§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §^'§.update(param1,true);
         this.§<I§(param1);
         this.§]!O§(param1);
      }
      
      private function §<I§(param1:int) : void
      {
         if(this.§5!4§ != 0)
         {
            §^'§.camera.adjustManualScale(this.§5!4§ > 0,param1 * §&Q§);
         }
      }
      
      public function clearLevel() : void
      {
         §^'§.clearLevel();
         removeEventListeners();
         this.§6E§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §6!$§() : Boolean
      {
         if(§^'§.camera.mCurrentCameraSliderLocation < §7V§.§2-§)
         {
            return false;
         }
         if(!§^'§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §"%§(param1:int) : void
      {
         var _loc2_:§7V§ = §^'§.camera;
         if(_loc2_.§]f§ > 0)
         {
            _loc2_.§]f§ -= param1;
            if(_loc2_.§]f§ <= 0)
            {
               if(this.§6!$§())
               {
                  _loc2_.§]f§ = -1;
                  if(§^'§.slingshot.birdsAvailable)
                  {
                     _loc2_.§[R§();
                  }
               }
               else
               {
                  _loc2_.§]f§ = §7V§.§0d§ / 2;
               }
            }
         }
      }
      
      public function §?!2§(param1:int, param2:Boolean = false) : void
      {
         if(this.§+W§(false) && !param2)
         {
            return;
         }
         if(param1 == §-U§)
         {
            this.§]1§ = 2000;
         }
         else if(param1 == §5!P§)
         {
            §^'§.camera.goToBirdView();
         }
         else if(param1 == §+!F§)
         {
            this.§%!?§ = false;
            this.§]1§ = 5000;
            §^'§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §>B§)
         {
            §^'§.camera.goToCastleView();
         }
         else if(param1 == §0q§)
         {
            this.§]1§ = 2000;
            this.§7C§ = §-!U§;
            §^'§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§]1§ = 1200;
            if(!§^'§.objects.mMightyEagleAdded)
            {
               §^'§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§]1§ = 1200;
            if(!§^'§.objects.mMightyEagleAdded)
            {
               §^'§.camera.goToBirdView();
               §^'§.slingshot.makeBirdsJumpForJoy();
            }
            §,3§.§7!=§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §4!§)
         {
            §,3§.§`8§();
            §,3§.§7!=§("LevelFailedPigs1");
            this.§]1§ = 1200;
            §^'§.camera.goToCastleView();
            §^'§.objects.makePigsSmile(5);
         }
         this.§6E§ = param1;
      }
      
      public function §"t§(param1:Number) : void
      {
         this.§2a§ = Math.max(this.§2a§,param1);
      }
      
      protected function §2i§() : Boolean
      {
         return §^'§.slingshot.mSlingShotState == §0!D§.§6N§ && !§^'§.objects.hasBirds();
      }
      
      public function §]!O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§"!2§ = null;
         this.§?! § -= param1;
         if(this.§"!V§)
         {
            this.§2a§ -= param1;
            if(this.§2a§ < 0)
            {
               this.§?! § = 0;
            }
         }
         if(this.§?! § <= 0 && !this.§+W§(false))
         {
            this.§?! § = §&!=§;
            _loc2_ = §^'§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§"!V§ || this.§2a§ > 0))
            {
               if((!this.§"!V§ || this.§2a§ > 6000) && !§^'§.objects.isPigsAlive())
               {
                  this.§2a§ = 6000;
                  this.§"!V§ = true;
               }
               else if(!this.§"!V§ && this.§2i§())
               {
                  this.§2a§ = 15000;
                  this.§"!V§ = true;
               }
            }
            else if(!§^'§.objects.isPigsAlive() && !§^'§.objects.mSardineCanAdded && !§^'§.objects.mMightyEagleAdded)
            {
               this.§3!?§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§2i§())
            {
               if(§^'§.objects.mMightyEagleAdded)
               {
                  if(§^'§.objects.mMightyEagleHasTouchedGround && §^'§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§3!?§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§^'§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§?! § = §&!=§;
                  }
               }
               else if(!§^'§.objects.mSardineCanAdded)
               {
                  this.§3!?§(§4!§);
               }
            }
            if(this.§+W§(false))
            {
               §^'§.gameOver();
            }
         }
         this.§]1§ -= param1;
         if(this.§]1§ < 0)
         {
            this.§]1§ = 0;
         }
         if(this.§6E§ == §>B§)
         {
            §^'§.updatePigAnimations(param1);
            if(!§^'§.camera.isOnCastleView() && §^'§.camera.mCurrentAction != §7V§.§!e§)
            {
               this.§?!2§(§5!P§);
            }
         }
         else if(this.§6E§ == §0q§)
         {
            if(this.§]1§ <= 0)
            {
               _loc3_ = §^'§.objects.hasBirds();
               if(_loc3_ && this.§7C§ > 0)
               {
                  this.§]1§ = 2000;
                  this.§?! § = 0;
                  this.§7C§ = this.§7C§ - 1;
               }
               else if(!§7`§.§2'§.objects.mMightyEagleAdded)
               {
                  this.§?!2§(§5!P§);
               }
            }
            else
            {
               §^'§.updatePigAnimations(param1);
            }
            if(!§^'§.camera.isOnCastleView() && §^'§.camera.mCurrentAction != §7V§.§!e§)
            {
               this.§?!2§(§5!P§);
            }
         }
         else if(this.§6E§ == §-U§)
         {
            if(this.§]1§ <= 0)
            {
               this.§?!2§(§5!P§);
            }
         }
         else if(this.§6E§ == §5!P§)
         {
            if(§^'§.camera.isOnCastleView() && §^'§.camera.mCurrentAction != §7V§.§!e§)
            {
               this.§?!2§(§>B§);
            }
         }
         else if(this.§6E§ == §+!F§)
         {
            if(!(_loc4_ = §^'§.activeObject) || _loc4_.§'!"§ < _loc4_.§get §)
            {
               if(_loc4_ && _loc4_ is §<U§ && (!(_loc4_ as §1M§).§#!2§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§%!?§ = true;
                  this.§?!2§(§0q§);
               }
               §^'§.activeObject = null;
               this.§?!2§(§0q§);
            }
         }
         else if(this.§6E§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§]1§ <= 0)
            {
               if(§^'§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§]1§ = 1000;
               }
               else
               {
                  this.§?!2§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §3!?§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§"!V§)
         {
            this.§"!V§ = true;
         }
         if(new Date().time - §^'§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§^'§.slingshot.mDragging)
         {
            return;
         }
         if(§^'§.objects.isWorldAtSleep())
         {
            this.§2a§ = Math.min(this.§2a§,3500);
         }
         if(this.§2a§ <= 0)
         {
            this.§?!2§(param1,param2);
         }
      }
      
      public function §+W§(param1:Boolean = false) : Boolean
      {
         return (this.§6E§ == LEVEL_STATE_VICTORY2_END || this.§6E§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§6E§ == §4!§) && (!param1 || this.§]1§ <= 0 && this.§6E§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §7!!§() : Boolean
      {
         return this.§6E§ == LEVEL_STATE_VICTORY2_END || this.§6E§ == §4!§;
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
         if(!this.§'S§ || !§^'§.mReadyToRun)
         {
            return;
         }
         if(!(§^'§.slingshot.mDragging || §^'§.camera.mDragging))
         {
            if(this.§6E§ == §0q§ || this.§6E§ == §>B§ || this.§6E§ == §5!P§)
            {
               if(!§^'§.isPlayingReplay())
               {
                  §^'§.camera.adjustManualScale(param1);
               }
               else
               {
                  §^'§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §,E§(param1:int) : void
      {
         this.§5!4§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§'S§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §#U§.§@!%§();
         if(this.§+W§(false))
         {
            return;
         }
         if(!§^'§.isPlayingReplay())
         {
            if(§^'§.activeObject && this.§6E§ == §+!F§ || this.§%!?§)
            {
               this.§%!?§ = false;
               §^'§.activatePowerup();
               return;
            }
            _loc4_ = §^'§.screenToBox2D(param1,param2);
            if(§^'§.slingshot.canStartDragging(_loc4_))
            {
               §^'§.slingshot.startDragging();
               this.§?!2§(§5!P§);
            }
            else
            {
               §^'§.camera.startDragging(param1,param2);
            }
            return;
         }
         §^'§.camera.startDragging(param1,param2);
         §^'§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§'S§)
         {
            return;
         }
         §#U§.§@s§();
         if(this.§6E§ == §-U§)
         {
            this.§?!2§(§5!P§);
         }
         if(§^'§.slingshot.mDragging)
         {
            _loc3_ = §^'§.screenToBox2D(param1,param2);
            §^'§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§^'§.slingshot.canShootTheBird())
            {
               §^'§.slingshot.shoot();
               this.§?!2§(§+!F§);
            }
            else
            {
               §^'§.slingshot.cancelDragging();
            }
         }
         if(§^'§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §^'§.camera.dragToNewPoint(param1,param2);
            }
            §^'§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§'S§)
         {
            return;
         }
         if(§^'§.slingshot.mDragging)
         {
            _loc3_ = §^'§.screenToBox2D(param1,param2);
            §^'§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§^'§.camera.mDragging)
         {
            §^'§.camera.dragToNewPoint(param1,param2);
         }
         this.§?O§ = param1;
         this.§+!Y§ = param2;
      }
      
      public function §8H§() : Point
      {
         return new Point(this.§?O§,this.§+!Y§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§-!"§.§ !-§(this.§-!"§.getValue() + param1);
         this.§"t§(§,q§);
         if(this.§6E§ == §0q§)
         {
            this.§]1§ = 2000;
            this.§7C§ = §-!U§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§-!"§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§7`§.§2'§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §<!,§.getLevelForId(§<!,§.§1D§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§'S§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§'S§ = param1;
      }
   }
}

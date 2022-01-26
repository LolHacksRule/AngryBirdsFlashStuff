package §!F§
{
   import §!Y§.§[o§;
   import §0!!§.§2N§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §9_§.§ p§;
   import §9_§.§+>§;
   import §9_§.§4!;§;
   import §;8§.§!$§;
   import §[K§.§2!1§;
   import §[x§.§2^§;
   import §[x§.§9"§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §#T§ extends §`!&§
   {
      
      public static const §<h§:int = 0;
      
      public static const §^§:int = 1;
      
      public static const §%]§:int = 2;
      
      public static const §case §:int = 3;
      
      public static const § i§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §9!F§:int = 7;
      
      private static const §9!;§:Number = §2!1§.each / 100;
      
      public static const §;!5§:Number = 2000;
      
      public static const §&S§:Number = 2500;
       
      
      public var §5_§:int = 0;
      
      private var §>F§:int = 0;
      
      public var §]q§:Number;
      
      protected var §2f§:Number = 0;
      
      protected var §`!§:Boolean = false;
      
      public var §<=§:Number = 0;
      
      protected var §3R§:Boolean;
      
      private var §;i§:Number = 0;
      
      private var §8t§:Number = 0;
      
      protected var §=V§:Boolean = true;
      
      protected var §1!E§:§2N§;
      
      public function §#T§(param1:§2^§)
      {
         this.§1!E§ = new §2N§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§1!E§.assign(0);
         this.§5_§ = -1;
         this.§>F§ = 0;
         this.§2f§ = 0;
         this.§`!§ = false;
         this.§>!6§(§<h§);
         this.§]q§ = §;!5§;
         §@T§(true);
         §1! §.objects.setDamageEnabled(true);
         §1! §.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §1! §.update(param1,true);
         this.§^!&§(param1);
         this.§?§(param1);
      }
      
      private function §^!&§(param1:int) : void
      {
         if(this.§>F§ != 0)
         {
            §1! §.camera.adjustManualScale(this.§>F§ > 0,param1 * §9!;§);
         }
      }
      
      public function clearLevel() : void
      {
         §1! §.clearLevel();
         removeEventListeners();
         this.§5_§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §]!;§() : Boolean
      {
         if(§1! §.camera.mCurrentCameraSliderLocation < §2!1§.§,J§)
         {
            return false;
         }
         if(!§1! §.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §6Q§(param1:int) : void
      {
         var _loc2_:§2!1§ = §1! §.camera;
         if(_loc2_.§^G§ > 0)
         {
            _loc2_.§^G§ -= param1;
            if(_loc2_.§^G§ <= 0)
            {
               if(this.§]!;§())
               {
                  _loc2_.§^G§ = -1;
                  if(§1! §.slingshot.birdsAvailable)
                  {
                     _loc2_.§6!0§();
                  }
               }
               else
               {
                  _loc2_.§^G§ = §2!1§.§ m§ / 2;
               }
            }
         }
      }
      
      public function §>!6§(param1:int, param2:Boolean = false) : void
      {
         if(this.§9S§(false) && !param2)
         {
            return;
         }
         if(param1 == §<h§)
         {
            this.§<=§ = 2000;
         }
         else if(param1 == §^§)
         {
            §1! §.camera.goToBirdView();
         }
         else if(param1 == §%]§)
         {
            this.§3R§ = false;
            this.§<=§ = 5000;
            §1! §.particles.moveTrailsNewToOld();
         }
         else if(param1 == §case §)
         {
            §1! §.camera.goToCastleView();
         }
         else if(param1 == § i§)
         {
            this.§<=§ = 2000;
            §1! §.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§<=§ = 1200;
            if(!§1! §.objects.mMightyEagleAdded)
            {
               §1! §.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§<=§ = 1200;
            if(!§1! §.objects.mMightyEagleAdded)
            {
               §1! §.camera.goToBirdView();
               §1! §.slingshot.makeBirdsJumpForJoy();
            }
            §@6§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §9!F§)
         {
            §@6§.§&t§();
            §@6§.playSound("LevelFailedPigs1");
            this.§<=§ = 1200;
            §1! §.camera.goToCastleView();
            §1! §.objects.makePigsSmile(5);
         }
         this.§5_§ = param1;
      }
      
      public function §1u§(param1:Number) : void
      {
         this.§2f§ = Math.max(this.§2f§,param1);
      }
      
      protected function §[§() : Boolean
      {
         return §1! §.slingshot.mSlingShotState == §9"§.§<g§ && !§1! §.objects.hasBirds();
      }
      
      public function §?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§+>§ = null;
         this.§]q§ -= param1;
         if(this.§`!§)
         {
            this.§2f§ -= param1;
            if(this.§2f§ < 0)
            {
               this.§]q§ = 0;
            }
         }
         if(this.§]q§ <= 0 && !this.§9S§(false))
         {
            this.§]q§ = §;!5§;
            _loc2_ = §1! §.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§`!§ || this.§2f§ > 0))
            {
               if((!this.§`!§ || this.§2f§ > 6000) && !§1! §.objects.isPigsAlive())
               {
                  this.§2f§ = 6000;
                  this.§`!§ = true;
               }
               else if(!this.§`!§ && this.§[§())
               {
                  this.§2f§ = 15000;
                  this.§`!§ = true;
               }
            }
            else if(!§1! §.objects.isPigsAlive() && !§1! §.objects.mSardineCanAdded && !§1! §.objects.mMightyEagleAdded)
            {
               this.§=S§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§[§())
            {
               if(§1! §.objects.mMightyEagleAdded)
               {
                  if(§1! §.objects.mMightyEagleHasTouchedGround && §1! §.objects.mMightyEagleTimer > 5500)
                  {
                     this.§=S§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§1! §.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§]q§ = §;!5§;
                  }
               }
               else if(!§1! §.objects.mSardineCanAdded)
               {
                  this.§=S§(§9!F§);
               }
            }
            if(this.§9S§(false))
            {
               §1! §.gameOver();
            }
         }
         this.§<=§ -= param1;
         if(this.§<=§ < 0)
         {
            this.§<=§ = 0;
         }
         if(this.§5_§ == §case §)
         {
            §1! §.updatePigAnimations(param1);
            if(!§1! §.camera.isOnCastleView() && §1! §.camera.mCurrentAction != §2!1§.§^4§)
            {
               this.§>!6§(§^§);
            }
         }
         else if(this.§5_§ == § i§)
         {
            if(this.§<=§ <= 0)
            {
               if(§1! §.objects.isWorldAtSleep())
               {
                  if(!§[o§.§='§.objects.mMightyEagleAdded)
                  {
                     this.§>!6§(§^§);
                  }
               }
               else
               {
                  this.§]q§ = 0;
                  this.§<=§ = 2000;
               }
            }
            else
            {
               §1! §.updatePigAnimations(param1);
            }
            if(!§1! §.camera.isOnCastleView() && §1! §.camera.mCurrentAction != §2!1§.§^4§)
            {
               this.§>!6§(§^§);
            }
         }
         else if(this.§5_§ == §<h§)
         {
            if(this.§<=§ <= 0)
            {
               this.§>!6§(§^§);
            }
         }
         else if(this.§5_§ == §^§)
         {
            if(§1! §.camera.isOnCastleView() && §1! §.camera.mCurrentAction != §2!1§.§^4§)
            {
               this.§>!6§(§case §);
            }
         }
         else if(this.§5_§ == §%]§)
         {
            _loc3_ = §1! §.activeObject;
            if(!_loc3_ || _loc3_.§8!'§ < _loc3_.§[!3§)
            {
               if(_loc3_ && _loc3_ is § p§ && (!(_loc3_ as §4!;§).§;$§ || _loc3_.getSpecialAnimationProgress() >= 0))
               {
                  this.§3R§ = true;
                  this.§>!6§(§ i§);
               }
               §1! §.activeObject = null;
               this.§>!6§(§ i§);
            }
         }
         else if(this.§5_§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§<=§ <= 0)
            {
               if(§1! §.slingshot.updateScoreForRemainingBirds())
               {
                  this.§<=§ = 1000;
               }
               else
               {
                  this.§>!6§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §=S§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§`!§)
         {
            this.§`!§ = true;
         }
         if(new Date().time - §1! §.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§1! §.slingshot.mDragging)
         {
            return;
         }
         if(§1! §.objects.isWorldAtSleep())
         {
            this.§2f§ = Math.min(this.§2f§,3500);
         }
         if(this.§2f§ <= 0)
         {
            this.§>!6§(param1,param2);
         }
      }
      
      public function §9S§(param1:Boolean = false) : Boolean
      {
         return (this.§5_§ == LEVEL_STATE_VICTORY2_END || this.§5_§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§5_§ == §9!F§) && (!param1 || this.§<=§ <= 0 && this.§5_§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §;Q§() : Boolean
      {
         return this.§5_§ == LEVEL_STATE_VICTORY2_END || this.§5_§ == §9!F§;
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
         if(!this.§=V§ || !§1! §.mReadyToRun)
         {
            return;
         }
         if(!(§1! §.slingshot.mDragging || §1! §.camera.mDragging))
         {
            if(this.§5_§ == § i§ || this.§5_§ == §case § || this.§5_§ == §^§)
            {
               if(!§1! §.isPlayingReplay())
               {
                  §1! §.camera.adjustManualScale(param1);
               }
               else
               {
                  §1! §.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §4f§(param1:int) : void
      {
         this.§>F§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§=V§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §!$§.§"r§();
         if(this.§9S§(false))
         {
            return;
         }
         if(!§1! §.isPlayingReplay())
         {
            if(§1! §.activeObject && this.§5_§ == §%]§ || this.§3R§)
            {
               this.§3R§ = false;
               §1! §.activatePowerup();
               return;
            }
            _loc4_ = §1! §.screenToBox2D(param1,param2);
            if(§1! §.slingshot.canStartDragging(_loc4_))
            {
               §1! §.slingshot.startDragging();
               this.§>!6§(§^§);
            }
            else
            {
               §1! §.camera.startDragging(param1,param2);
            }
            return;
         }
         §1! §.camera.startDragging(param1,param2);
         §1! §.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§=V§)
         {
            return;
         }
         §!$§.§`?§();
         if(this.§5_§ == §<h§)
         {
            this.§>!6§(§^§);
         }
         if(§1! §.slingshot.mDragging)
         {
            _loc3_ = §1! §.screenToBox2D(param1,param2);
            §1! §.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§1! §.slingshot.canShootTheBird())
            {
               §1! §.slingshot.shoot();
               this.§>!6§(§%]§);
            }
            else
            {
               §1! §.slingshot.cancelDragging();
            }
         }
         if(§1! §.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §1! §.camera.dragToNewPoint(param1,param2);
            }
            §1! §.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§=V§)
         {
            return;
         }
         if(§1! §.slingshot.mDragging)
         {
            _loc3_ = §1! §.screenToBox2D(param1,param2);
            §1! §.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§1! §.camera.mDragging)
         {
            §1! §.camera.dragToNewPoint(param1,param2);
         }
         this.§;i§ = param1;
         this.§8t§ = param2;
      }
      
      public function §=z§() : Point
      {
         return new Point(this.§;i§,this.§8t§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§1!E§.assign(this.§1!E§.getValue() + param1);
         this.§1u§(§&S§);
      }
      
      override public function getScore() : int
      {
         return this.§1!E§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§[o§.§='§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §0$§.§2Q§(§0$§.§[C§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§=V§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§=V§ = param1;
      }
   }
}

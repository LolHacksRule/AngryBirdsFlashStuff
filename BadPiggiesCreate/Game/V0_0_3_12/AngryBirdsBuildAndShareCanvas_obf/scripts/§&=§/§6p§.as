package §&=§
{
   import §"p§.§`!y§;
   import §%B§.§^k§;
   import §-!^§.§<s§;
   import §0E§.§-!F§;
   import §4!#§.§60§;
   import §4!#§.§=§;
   import §4!#§.§?!5§;
   import §4!#§.§@!m§;
   import §7"1§.§%W§;
   import §@r§.§3!+§;
   import §[B§.§"d§;
   import §[B§.§^W§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §6p§ extends §0?§
   {
      
      public static const §=!D§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §7"%§:int = 2;
      
      public static const §<8§:int = 3;
      
      public static const §^!&§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §#H§:int = 7;
      
      protected static const §"!d§:Number = §3!+§.MANUAL_SCALE_STEP / 100;
      
      public static const §]K§:Number = 2000;
      
      public static const §+R§:Number = 2500;
      
      public static const §7!S§:int = 5;
       
      
      public var §3z§:int = 0;
      
      protected var §9!A§:int = 0;
      
      public var §?!i§:Number;
      
      protected var §>!'§:Number = 0;
      
      protected var §7!l§:Boolean = false;
      
      private var §#7§:Number = 0;
      
      public var §4!M§:Number = 0;
      
      protected var §"!!§:Boolean;
      
      protected var §,!U§:Number = 0;
      
      protected var §!"-§:Number = 0;
      
      protected var §-!p§:Boolean = true;
      
      protected var §-A§:§<s§;
      
      public function §6p§(param1:§"d§)
      {
         this.§-A§ = new §<s§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§-A§.§8>§(0);
         this.§3z§ = -1;
         this.§9!A§ = 0;
         this.§>!'§ = 0;
         this.§7!l§ = false;
         this.§>"4§(§=!D§);
         this.§?!i§ = §]K§;
         §0!w§(true);
         §]!3§.objects.setDamageEnabled(true);
         §]!3§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §]!3§.update(param1,true);
         this.§[C§(param1);
         this.§3"=§(param1);
      }
      
      private function §[C§(param1:int) : void
      {
         if(this.§9!A§ != 0)
         {
            §]!3§.camera.adjustManualScale(this.§9!A§ > 0,param1 * §"!d§);
         }
      }
      
      public function clearLevel() : void
      {
         §]!3§.clearLevel();
         removeEventListeners();
         this.§3z§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §?t§() : Boolean
      {
         if(§]!3§.camera.mCurrentCameraSliderLocation < §3!+§.§2o§)
         {
            return false;
         }
         if(!§]!3§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §+D§(param1:int) : void
      {
         var _loc2_:§3!+§ = §]!3§.camera;
         if(_loc2_.§2!&§ > 0)
         {
            _loc2_.§2!&§ -= param1;
            if(_loc2_.§2!&§ <= 0)
            {
               if(this.§?t§())
               {
                  _loc2_.§2!&§ = -1;
                  if(§]!3§.slingshot.birdsAvailable)
                  {
                     _loc2_.§'h§();
                  }
               }
               else
               {
                  _loc2_.§2!&§ = §3!+§.§-2§ / 2;
               }
            }
         }
      }
      
      public function §>"4§(param1:int, param2:Boolean = false) : void
      {
         if(this.§ j§(false) && !param2)
         {
            return;
         }
         if(param1 == §=!D§)
         {
            this.§4!M§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §]!3§.camera.goToBirdView();
         }
         else if(param1 == §7"%§)
         {
            this.§"!!§ = false;
            this.§4!M§ = 5000;
            §]!3§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §<8§)
         {
            §]!3§.camera.goToCastleView();
         }
         else if(param1 == §^!&§)
         {
            this.§4!M§ = 2000;
            this.§#7§ = §7!S§;
            §]!3§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§4!M§ = 1200;
            if(!§]!3§.objects.mMightyEagleAdded)
            {
               §]!3§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§4!M§ = 1200;
            if(!§]!3§.objects.mMightyEagleAdded)
            {
               §]!3§.camera.goToBirdView();
               §]!3§.slingshot.makeBirdsJumpForJoy();
            }
            §^k§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §#H§)
         {
            §^k§.§3,§();
            §^k§.playSound("LevelFailedPigs1");
            this.§4!M§ = 1200;
            §]!3§.camera.goToCastleView();
            §]!3§.objects.makePigsSmile(5);
         }
         this.§3z§ = param1;
      }
      
      public function §0!W§() : void
      {
         this.§4!M§ = 2000;
         this.§7!l§ = false;
         this.§>!'§ = 2000;
         this.§>"4§(§6p§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §7!'§(param1:Number) : void
      {
         this.§>!'§ = Math.max(this.§>!'§,param1);
      }
      
      protected function §3!-§() : Boolean
      {
         return §]!3§.slingshot.mSlingShotState == §^W§.§07§ && !§]!3§.objects.hasBirds();
      }
      
      public function §3"=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§60§ = null;
         this.§?!i§ -= param1;
         if(this.§7!l§)
         {
            this.§>!'§ -= param1;
            if(this.§>!'§ < 0)
            {
               this.§?!i§ = 0;
            }
         }
         if(this.§?!i§ <= 0 && !this.§ j§(false))
         {
            this.§?!i§ = §]K§;
            _loc2_ = §]!3§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§7!l§ || this.§>!'§ > 0))
            {
               if((!this.§7!l§ || this.§>!'§ > 6000) && !§]!3§.objects.isPigsAlive())
               {
                  this.§>!'§ = 6000;
                  this.§7!l§ = true;
               }
               else if(!this.§7!l§ && this.§3!-§())
               {
                  this.§>!'§ = 15000;
                  this.§7!l§ = true;
               }
            }
            else if(!§]!3§.objects.isPigsAlive() && !§]!3§.objects.mSardineCanAdded && !§]!3§.objects.mMightyEagleAdded)
            {
               this.§+";§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§3!-§())
            {
               if(§]!3§.objects.mMightyEagleAdded)
               {
                  if(§]!3§.objects.mMightyEagleHasTouchedGround && §]!3§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§+";§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§]!3§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§?!i§ = §]K§;
                  }
               }
               else if(!§]!3§.objects.mSardineCanAdded)
               {
                  this.§+";§(§#H§);
               }
            }
            if(this.§ j§(false))
            {
               §]!3§.gameOver();
            }
         }
         this.§4!M§ -= param1;
         if(this.§4!M§ < 0)
         {
            this.§4!M§ = 0;
         }
         if(this.§3z§ == §<8§)
         {
            §]!3§.updatePigAnimations(param1);
            if(!§]!3§.camera.isOnCastleView() && §]!3§.camera.mCurrentAction != §3!+§.§`y§)
            {
               this.§>"4§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§3z§ == §^!&§)
         {
            if(this.§4!M§ <= 0)
            {
               _loc3_ = §]!3§.objects.hasBirds();
               if(_loc3_ && this.§#7§ > 0)
               {
                  this.§4!M§ = 2000;
                  this.§?!i§ = 0;
                  this.§#7§ = this.§#7§ - 1;
               }
               else if(!§%W§.§5"8§.objects.mMightyEagleAdded)
               {
                  this.§>"4§(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §]!3§.updatePigAnimations(param1);
            }
            if(!§]!3§.camera.isOnCastleView() && §]!3§.camera.mCurrentAction != §3!+§.§`y§)
            {
               this.§>"4§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§3z§ == §=!D§)
         {
            if(this.§4!M§ <= 0)
            {
               this.§>"4§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§3z§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§]!3§.camera.isOnCastleView() && §]!3§.camera.mCurrentAction != §3!+§.§`y§)
            {
               this.§>"4§(§<8§);
            }
         }
         else if(this.§3z§ == §7"%§)
         {
            if(!(_loc4_ = §]!3§.activeObject) || _loc4_.§2E§ < _loc4_.§<e§)
            {
               if(_loc4_ && (_loc4_ is §=§ || _loc4_ is §?!5§ || _loc4_ is §?!5§) && (!(_loc4_ as §@!m§).§3!b§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§"!!§ = true;
                  this.§>"4§(§^!&§);
               }
               §]!3§.activeObject = null;
               this.§>"4§(§^!&§);
            }
         }
         else if(this.§3z§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§4!M§ <= 0)
            {
               if(§]!3§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§4!M§ = 1000;
               }
               else
               {
                  this.§>"4§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §+";§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§7!l§)
         {
            this.§7!l§ = true;
         }
         if(new Date().time - §]!3§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§]!3§.slingshot.mDragging)
         {
            return;
         }
         if(§]!3§.objects.isWorldAtSleep())
         {
            this.§>!'§ = Math.min(this.§>!'§,3500);
         }
         if(this.§>!'§ <= 0)
         {
            this.§>"4§(param1,param2);
         }
      }
      
      public function § j§(param1:Boolean = false) : Boolean
      {
         return (this.§3z§ == LEVEL_STATE_VICTORY2_END || this.§3z§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§3z§ == §#H§) && (!param1 || this.§4!M§ <= 0 && this.§3z§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §1"$§() : Boolean
      {
         return this.§3z§ == LEVEL_STATE_VICTORY2_END || this.§3z§ == §#H§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§+B§(param1.delta > 0);
         }
      }
      
      public function §+B§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§-!p§ || !§]!3§.mReadyToRun)
         {
            return;
         }
         if(!(§]!3§.slingshot.mDragging || §]!3§.camera.mDragging))
         {
            if(this.§3z§ == §^!&§ || this.§3z§ == §<8§ || this.§3z§ == LEVEL_STATE_SLINGSHOT)
            {
               if(!§]!3§.isPlayingReplay())
               {
                  §]!3§.camera.adjustManualScale(param1,param2 == 0 ? Number(§3!+§.MANUAL_SCALE_STEP) : Number(param2));
               }
               else
               {
                  §]!3§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §]!s§(param1:int) : void
      {
         this.§9!A§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§-!p§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §`!y§.§%0§();
         if(this.§ j§(false))
         {
            return;
         }
         if(!§]!3§.isPlayingReplay())
         {
            if(§]!3§.activeObject && this.§3z§ == §7"%§ || this.§"!!§)
            {
               this.§"!!§ = false;
               §]!3§.activatePowerup();
               return;
            }
            _loc4_ = §]!3§.screenToBox2D(param1,param2);
            if(§]!3§.slingshot.canStartDragging(_loc4_))
            {
               §]!3§.slingshot.startDragging();
               this.§>"4§(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §]!3§.camera.startDragging(param1,param2);
            }
            return;
         }
         §]!3§.camera.startDragging(param1,param2);
         §]!3§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§-!p§)
         {
            return;
         }
         §`!y§.§6>§();
         if(this.§3z§ == §=!D§)
         {
            this.§>"4§(LEVEL_STATE_SLINGSHOT);
         }
         if(§]!3§.slingshot.mDragging)
         {
            _loc3_ = §]!3§.screenToBox2D(param1,param2);
            §]!3§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§]!3§.slingshot.canShootTheBird())
            {
               §]!3§.slingshot.shoot();
               this.§>"4§(§7"%§);
            }
            else
            {
               §]!3§.slingshot.cancelDragging();
            }
         }
         if(§]!3§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §]!3§.camera.dragToNewPoint(param1,param2);
            }
            §]!3§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§-!p§)
         {
            return;
         }
         if(§]!3§.slingshot.mDragging)
         {
            _loc3_ = §]!3§.screenToBox2D(param1,param2);
            §]!3§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§]!3§.camera.mDragging)
         {
            §]!3§.camera.dragToNewPoint(param1,param2);
         }
         this.§,!U§ = param1;
         this.§!"-§ = param2;
      }
      
      public function §-!N§() : Point
      {
         return new Point(this.§,!U§,this.§!"-§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§-A§.§8>§(this.§-A§.getValue() + param1);
         this.§7!'§(§+R§);
         if(this.§3z§ == §^!&§)
         {
            this.§4!M§ = 2000;
            this.§#7§ = §7!S§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§-A§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§%W§.§5"8§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §-!F§.§,!_§(§-!F§.§"!L§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§-!p§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§-!p§ = param1;
      }
   }
}

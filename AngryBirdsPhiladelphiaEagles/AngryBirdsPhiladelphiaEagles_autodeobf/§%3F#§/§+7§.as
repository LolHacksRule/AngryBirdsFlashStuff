package §?#§
{
   import §&^§.§[!7§;
   import §-!&§.§1!"§;
   import §-!&§.§3!,§;
   import §-!&§.§implements§;
   import §-!O§.§?Z§;
   import §0!E§.§;!D§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.§97§;
   import §^]§.§`!K§;
   import §`K§.§4N§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §+7§ extends §1q§
   {
      
      public static const §=Y§:int = 0;
      
      public static const §]]§:int = 1;
      
      public static const §^!%§:int = 2;
      
      public static const §'X§:int = 3;
      
      public static const §4!'§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §2F§:int = 7;
      
      protected static const §27§:Number = §?Z§.§;!;§ / 100;
      
      public static const §[6§:Number = 2000;
      
      public static const §]1§:Number = 2500;
      
      public static const §4E§:int = 5;
       
      
      public var §;q§:int = 0;
      
      protected var §0s§:int = 0;
      
      public var §]9§:Number;
      
      protected var §#L§:Number = 0;
      
      protected var §6q§:Boolean = false;
      
      private var §'c§:Number = 0;
      
      public var §4!E§:Number = 0;
      
      protected var §>H§:Boolean;
      
      protected var §>!5§:Number = 0;
      
      protected var §%S§:Number = 0;
      
      protected var §!<§:Boolean = true;
      
      protected var §]r§:§;!D§;
      
      public function §+7§(param1:§1r§)
      {
         this.§]r§ = new §;!D§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§]r§.assign(0);
         this.§;q§ = -1;
         this.§0s§ = 0;
         this.§#L§ = 0;
         this.§6q§ = false;
         this.§1B§(§=Y§);
         this.§]9§ = §[6§;
         §?!!§(true);
         §;§.objects.setDamageEnabled(true);
         §;§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §;§.update(param1,true);
         this.§"!1§(param1);
         this.§2!J§(param1);
      }
      
      private function §"!1§(param1:int) : void
      {
         if(this.§0s§ != 0)
         {
            §;§.camera.adjustManualScale(this.§0s§ > 0,param1 * §27§);
         }
      }
      
      public function clearLevel() : void
      {
         §;§.clearLevel();
         removeEventListeners();
         this.§;q§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §<x§() : Boolean
      {
         if(§;§.camera.mCurrentCameraSliderLocation < §?Z§.§+!O§)
         {
            return false;
         }
         if(!§;§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9!A§(param1:int) : void
      {
         var _loc2_:§?Z§ = §;§.camera;
         if(_loc2_.§%o§ > 0)
         {
            _loc2_.§%o§ -= param1;
            if(_loc2_.§%o§ <= 0)
            {
               if(this.§<x§())
               {
                  _loc2_.§%o§ = -1;
                  if(§;§.slingshot.birdsAvailable)
                  {
                     _loc2_.§1!7§();
                  }
               }
               else
               {
                  _loc2_.§%o§ = §?Z§.§,!=§ / 2;
               }
            }
         }
      }
      
      public function §1B§(param1:int, param2:Boolean = false) : void
      {
         if(this.§7q§(false) && !param2)
         {
            return;
         }
         if(param1 == §=Y§)
         {
            this.§4!E§ = 2000;
         }
         else if(param1 == §]]§)
         {
            §;§.camera.goToBirdView();
         }
         else if(param1 == §^!%§)
         {
            this.§>H§ = false;
            this.§4!E§ = 5000;
            §;§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §'X§)
         {
            §;§.camera.goToCastleView();
         }
         else if(param1 == §4!'§)
         {
            this.§4!E§ = 2000;
            this.§'c§ = §4E§;
            §;§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§4!E§ = 1200;
            if(!§;§.objects.mMightyEagleAdded)
            {
               §;§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§4!E§ = 1200;
            if(!§;§.objects.mMightyEagleAdded)
            {
               §;§.camera.goToBirdView();
               §;§.slingshot.makeBirdsJumpForJoy();
            }
            §[!7§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §2F§)
         {
            §[!7§.§=0§();
            §[!7§.playSound("LevelFailedPigs1");
            this.§4!E§ = 1200;
            §;§.camera.goToCastleView();
            §;§.objects.makePigsSmile(5);
         }
         this.§;q§ = param1;
      }
      
      public function §3q§(param1:Number) : void
      {
         this.§#L§ = Math.max(this.§#L§,param1);
      }
      
      protected function §7!3§() : Boolean
      {
         return §;§.slingshot.mSlingShotState == §97§.§5!I§ && !§;§.objects.hasBirds();
      }
      
      public function §2!J§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§3!,§ = null;
         this.§]9§ -= param1;
         if(this.§6q§)
         {
            this.§#L§ -= param1;
            if(this.§#L§ < 0)
            {
               this.§]9§ = 0;
            }
         }
         if(this.§]9§ <= 0 && !this.§7q§(false))
         {
            this.§]9§ = §[6§;
            _loc2_ = §;§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§6q§ || this.§#L§ > 0))
            {
               if((!this.§6q§ || this.§#L§ > 6000) && !§;§.objects.isPigsAlive())
               {
                  this.§#L§ = 6000;
                  this.§6q§ = true;
               }
               else if(!this.§6q§ && this.§7!3§())
               {
                  this.§#L§ = 15000;
                  this.§6q§ = true;
               }
            }
            else if(!§;§.objects.isPigsAlive() && !§;§.objects.mSardineCanAdded && !§;§.objects.mMightyEagleAdded)
            {
               this.§`s§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§7!3§())
            {
               if(§;§.objects.mMightyEagleAdded)
               {
                  if(§;§.objects.mMightyEagleHasTouchedGround && §;§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§`s§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§;§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§]9§ = §[6§;
                  }
               }
               else if(!§;§.objects.mSardineCanAdded)
               {
                  this.§`s§(§2F§);
               }
            }
            if(this.§7q§(false))
            {
               §;§.gameOver();
            }
         }
         this.§4!E§ -= param1;
         if(this.§4!E§ < 0)
         {
            this.§4!E§ = 0;
         }
         if(this.§;q§ == §'X§)
         {
            §;§.updatePigAnimations(param1);
            if(!§;§.camera.isOnCastleView() && §;§.camera.mCurrentAction != §?Z§.§[D§)
            {
               this.§1B§(§]]§);
            }
         }
         else if(this.§;q§ == §4!'§)
         {
            if(this.§4!E§ <= 0)
            {
               _loc3_ = §;§.objects.hasBirds();
               if(_loc3_ && this.§'c§ > 0)
               {
                  this.§4!E§ = 2000;
                  this.§]9§ = 0;
                  this.§'c§ = this.§'c§ - 1;
               }
               else if(!§#! §.§`'§.objects.mMightyEagleAdded)
               {
                  this.§1B§(§]]§);
               }
            }
            else
            {
               §;§.updatePigAnimations(param1);
            }
            if(!§;§.camera.isOnCastleView() && §;§.camera.mCurrentAction != §?Z§.§[D§)
            {
               this.§1B§(§]]§);
            }
         }
         else if(this.§;q§ == §=Y§)
         {
            if(this.§4!E§ <= 0)
            {
               this.§1B§(§]]§);
            }
         }
         else if(this.§;q§ == §]]§)
         {
            if(§;§.camera.isOnCastleView() && §;§.camera.mCurrentAction != §?Z§.§[D§)
            {
               this.§1B§(§'X§);
            }
         }
         else if(this.§;q§ == §^!%§)
         {
            if(!(_loc4_ = §;§.activeObject) || _loc4_.§8!2§ < _loc4_.§53§)
            {
               if(_loc4_ && _loc4_ is §implements§ && (!(_loc4_ as §1!"§).§ I§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§>H§ = true;
                  this.§1B§(§4!'§);
               }
               §;§.activeObject = null;
               this.§1B§(§4!'§);
            }
         }
         else if(this.§;q§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§4!E§ <= 0)
            {
               if(§;§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§4!E§ = 1000;
               }
               else
               {
                  this.§1B§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §`s§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§6q§)
         {
            this.§6q§ = true;
         }
         if(new Date().time - §;§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§;§.slingshot.mDragging)
         {
            return;
         }
         if(§;§.objects.isWorldAtSleep())
         {
            this.§#L§ = Math.min(this.§#L§,3500);
         }
         if(this.§#L§ <= 0)
         {
            this.§1B§(param1,param2);
         }
      }
      
      public function §7q§(param1:Boolean = false) : Boolean
      {
         return (this.§;q§ == LEVEL_STATE_VICTORY2_END || this.§;q§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§;q§ == §2F§) && (!param1 || this.§4!E§ <= 0 && this.§;q§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §"`§() : Boolean
      {
         return this.§;q§ == LEVEL_STATE_VICTORY2_END || this.§;q§ == §2F§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.doUserZoom(param1.delta > 0);
         }
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§!<§ || !§;§.mReadyToRun)
         {
            return;
         }
         if(!(§;§.slingshot.mDragging || §;§.camera.mDragging))
         {
            if(this.§;q§ == §4!'§ || this.§;q§ == §'X§ || this.§;q§ == §]]§)
            {
               if(!§;§.isPlayingReplay())
               {
                  §;§.camera.adjustManualScale(param1,param2 == 0 ? Number(§?Z§.§;!;§) : Number(param2));
               }
               else
               {
                  §;§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §<!2§(param1:int) : void
      {
         this.§0s§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§!<§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §4N§.§7J§();
         if(this.§7q§(false))
         {
            return;
         }
         if(!§;§.isPlayingReplay())
         {
            if(§;§.activeObject && this.§;q§ == §^!%§ || this.§>H§)
            {
               this.§>H§ = false;
               §;§.activatePowerup();
               return;
            }
            _loc4_ = §;§.screenToBox2D(param1,param2);
            if(§;§.slingshot.canStartDragging(_loc4_))
            {
               §;§.slingshot.startDragging();
               this.§1B§(§]]§);
            }
            else
            {
               §;§.camera.startDragging(param1,param2);
            }
            return;
         }
         §;§.camera.startDragging(param1,param2);
         §;§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§!<§)
         {
            return;
         }
         §4N§.§>a§();
         if(this.§;q§ == §=Y§)
         {
            this.§1B§(§]]§);
         }
         if(§;§.slingshot.mDragging)
         {
            _loc3_ = §;§.screenToBox2D(param1,param2);
            §;§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§;§.slingshot.canShootTheBird())
            {
               §;§.slingshot.shoot();
               this.§1B§(§^!%§);
            }
            else
            {
               §;§.slingshot.cancelDragging();
            }
         }
         if(§;§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §;§.camera.dragToNewPoint(param1,param2);
            }
            §;§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§!<§)
         {
            return;
         }
         if(§;§.slingshot.mDragging)
         {
            _loc3_ = §;§.screenToBox2D(param1,param2);
            §;§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§;§.camera.mDragging)
         {
            §;§.camera.dragToNewPoint(param1,param2);
         }
         this.§>!5§ = param1;
         this.§%S§ = param2;
      }
      
      public function §>n§() : Point
      {
         return new Point(this.§>!5§,this.§%S§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§]r§.assign(this.§]r§.getValue() + param1);
         this.§3q§(§]1§);
         if(this.§;q§ == §4!'§)
         {
            this.§4!E§ = 2000;
            this.§'c§ = §4E§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§]r§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§#! §.§`'§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §`!K§.§!I§(§`!K§.§5g§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§!<§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§!<§ = param1;
      }
   }
}

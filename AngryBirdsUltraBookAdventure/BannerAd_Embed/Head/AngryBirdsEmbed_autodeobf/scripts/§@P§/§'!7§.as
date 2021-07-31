package §@P§
{
   import § !3§.§'§;
   import § !3§.§1?§;
   import § !3§.§75§;
   import § !;§.§`! §;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §%x§.§3=§;
   import §2!<§.§?!?§;
   import §2§.§=h§;
   import §4>§.§[F§;
   import §>!C§.§6M§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §'!7§ extends §@!$§
   {
      
      public static const §;!2§:int = 0;
      
      public static const §%!8§:int = 1;
      
      public static const §3!4§:int = 2;
      
      public static const §-t§:int = 3;
      
      public static const §!!8§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §'5§:int = 7;
      
      protected static const § get§:Number = §[F§.§]@§ / 100;
      
      public static const §4!H§:Number = 2000;
      
      public static const §<V§:Number = 2500;
      
      public static const §>!7§:int = 5;
       
      
      public var §if§:int = 0;
      
      protected var §^I§:int = 0;
      
      public var §7!"§:Number;
      
      protected var §#[§:Number = 0;
      
      protected var §%h§:Boolean = false;
      
      private var §`!=§:Number = 0;
      
      public var § v§:Number = 0;
      
      protected var §-n§:Boolean;
      
      protected var §>5§:Number = 0;
      
      protected var §>!B§:Number = 0;
      
      protected var §+b§:Boolean = true;
      
      protected var §<!&§:§`! §;
      
      public function §'!7§(param1:§#;§)
      {
         this.§<!&§ = new §`! §();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§<!&§.assign(0);
         this.§if§ = -1;
         this.§^I§ = 0;
         this.§#[§ = 0;
         this.§%h§ = false;
         this.§9g§(§;!2§);
         this.§7!"§ = §4!H§;
         §-A§(true);
         §7C§.objects.setDamageEnabled(true);
         §7C§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §7C§.update(param1,true);
         this.§3r§(param1);
         this.§>_§(param1);
      }
      
      private function §3r§(param1:int) : void
      {
         if(this.§^I§ != 0)
         {
            §7C§.camera.adjustManualScale(this.§^I§ > 0,param1 * § get§);
         }
      }
      
      public function clearLevel() : void
      {
         §7C§.clearLevel();
         removeEventListeners();
         this.§if§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §[$§() : Boolean
      {
         if(§7C§.camera.mCurrentCameraSliderLocation < §[F§.§`c§)
         {
            return false;
         }
         if(!§7C§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9!"§(param1:int) : void
      {
         var _loc2_:§[F§ = §7C§.camera;
         if(_loc2_.§6C§ > 0)
         {
            _loc2_.§6C§ -= param1;
            if(_loc2_.§6C§ <= 0)
            {
               if(this.§[$§())
               {
                  _loc2_.§6C§ = -1;
                  if(§7C§.slingshot.birdsAvailable)
                  {
                     _loc2_.§>!0§();
                  }
               }
               else
               {
                  _loc2_.§6C§ = §[F§.§%!6§ / 2;
               }
            }
         }
      }
      
      public function §9g§(param1:int, param2:Boolean = false) : void
      {
         if(this.§0!9§(false) && !param2)
         {
            return;
         }
         if(param1 == §;!2§)
         {
            this.§ v§ = 2000;
         }
         else if(param1 == §%!8§)
         {
            §7C§.camera.goToBirdView();
         }
         else if(param1 == §3!4§)
         {
            this.§-n§ = false;
            this.§ v§ = 5000;
            §7C§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §-t§)
         {
            §7C§.camera.goToCastleView();
         }
         else if(param1 == §!!8§)
         {
            this.§ v§ = 2000;
            this.§`!=§ = §>!7§;
            §7C§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§ v§ = 1200;
            if(!§7C§.objects.mMightyEagleAdded)
            {
               §7C§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§ v§ = 1200;
            if(!§7C§.objects.mMightyEagleAdded)
            {
               §7C§.camera.goToBirdView();
               §7C§.slingshot.makeBirdsJumpForJoy();
            }
            §?!?§.§#'§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §'5§)
         {
            §?!?§.§%!%§();
            §?!?§.§#'§("LevelFailedPigs1");
            this.§ v§ = 1200;
            §7C§.camera.goToCastleView();
            §7C§.objects.makePigsSmile(5);
         }
         this.§if§ = param1;
      }
      
      public function §?t§(param1:Number) : void
      {
         this.§#[§ = Math.max(this.§#[§,param1);
      }
      
      protected function §2!5§() : Boolean
      {
         return §7C§.slingshot.mSlingShotState == §3=§.§ in§ && !§7C§.objects.hasBirds();
      }
      
      public function §>_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§'§ = null;
         this.§7!"§ -= param1;
         if(this.§%h§)
         {
            this.§#[§ -= param1;
            if(this.§#[§ < 0)
            {
               this.§7!"§ = 0;
            }
         }
         if(this.§7!"§ <= 0 && !this.§0!9§(false))
         {
            this.§7!"§ = §4!H§;
            _loc2_ = §7C§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§%h§ || this.§#[§ > 0))
            {
               if((!this.§%h§ || this.§#[§ > 6000) && !§7C§.objects.isPigsAlive())
               {
                  this.§#[§ = 6000;
                  this.§%h§ = true;
               }
               else if(!this.§%h§ && this.§2!5§())
               {
                  this.§#[§ = 15000;
                  this.§%h§ = true;
               }
            }
            else if(!§7C§.objects.isPigsAlive() && !§7C§.objects.mSardineCanAdded && !§7C§.objects.mMightyEagleAdded)
            {
               this.§>I§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§2!5§())
            {
               if(§7C§.objects.mMightyEagleAdded)
               {
                  if(§7C§.objects.mMightyEagleHasTouchedGround && §7C§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§>I§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§7C§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§7!"§ = §4!H§;
                  }
               }
               else if(!§7C§.objects.mSardineCanAdded)
               {
                  this.§>I§(§'5§);
               }
            }
            if(this.§0!9§(false))
            {
               §7C§.gameOver();
            }
         }
         this.§ v§ -= param1;
         if(this.§ v§ < 0)
         {
            this.§ v§ = 0;
         }
         if(this.§if§ == §-t§)
         {
            §7C§.updatePigAnimations(param1);
            if(!§7C§.camera.isOnCastleView() && §7C§.camera.mCurrentAction != §[F§.§@M§)
            {
               this.§9g§(§%!8§);
            }
         }
         else if(this.§if§ == §!!8§)
         {
            if(this.§ v§ <= 0)
            {
               _loc3_ = §7C§.objects.hasBirds();
               if(_loc3_ && this.§`!=§ > 0)
               {
                  this.§ v§ = 2000;
                  this.§7!"§ = 0;
                  this.§`!=§ = this.§`!=§ - 1;
               }
               else if(!§,!!§.§;4§.objects.mMightyEagleAdded)
               {
                  this.§9g§(§%!8§);
               }
            }
            else
            {
               §7C§.updatePigAnimations(param1);
            }
            if(!§7C§.camera.isOnCastleView() && §7C§.camera.mCurrentAction != §[F§.§@M§)
            {
               this.§9g§(§%!8§);
            }
         }
         else if(this.§if§ == §;!2§)
         {
            if(this.§ v§ <= 0)
            {
               this.§9g§(§%!8§);
            }
         }
         else if(this.§if§ == §%!8§)
         {
            if(§7C§.camera.isOnCastleView() && §7C§.camera.mCurrentAction != §[F§.§@M§)
            {
               this.§9g§(§-t§);
            }
         }
         else if(this.§if§ == §3!4§)
         {
            if(!(_loc4_ = §7C§.activeObject) || _loc4_.§7j§ < _loc4_.§`9§)
            {
               if(_loc4_ && _loc4_ is §75§ && (!(_loc4_ as §1?§).§`'§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§-n§ = true;
                  this.§9g§(§!!8§);
               }
               §7C§.activeObject = null;
               this.§9g§(§!!8§);
            }
         }
         else if(this.§if§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§ v§ <= 0)
            {
               if(§7C§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§ v§ = 1000;
               }
               else
               {
                  this.§9g§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §>I§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§%h§)
         {
            this.§%h§ = true;
         }
         if(new Date().time - §7C§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§7C§.slingshot.mDragging)
         {
            return;
         }
         if(§7C§.objects.isWorldAtSleep())
         {
            this.§#[§ = Math.min(this.§#[§,3500);
         }
         if(this.§#[§ <= 0)
         {
            this.§9g§(param1,param2);
         }
      }
      
      public function §0!9§(param1:Boolean = false) : Boolean
      {
         return (this.§if§ == LEVEL_STATE_VICTORY2_END || this.§if§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§if§ == §'5§) && (!param1 || this.§ v§ <= 0 && this.§if§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §2c§() : Boolean
      {
         return this.§if§ == LEVEL_STATE_VICTORY2_END || this.§if§ == §'5§;
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
         if(!this.§+b§ || !§7C§.mReadyToRun)
         {
            return;
         }
         if(!(§7C§.slingshot.mDragging || §7C§.camera.mDragging))
         {
            if(this.§if§ == §!!8§ || this.§if§ == §-t§ || this.§if§ == §%!8§)
            {
               if(!§7C§.isPlayingReplay())
               {
                  §7C§.camera.adjustManualScale(param1);
               }
               else
               {
                  §7C§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §4x§(param1:int) : void
      {
         this.§^I§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§+b§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §=h§.§-H§();
         if(this.§0!9§(false))
         {
            return;
         }
         if(!§7C§.isPlayingReplay())
         {
            if(§7C§.activeObject && this.§if§ == §3!4§ || this.§-n§)
            {
               this.§-n§ = false;
               §7C§.activatePowerup();
               return;
            }
            _loc4_ = §7C§.screenToBox2D(param1,param2);
            if(§7C§.slingshot.canStartDragging(_loc4_))
            {
               §7C§.slingshot.startDragging();
               this.§9g§(§%!8§);
            }
            else
            {
               §7C§.camera.startDragging(param1,param2);
            }
            return;
         }
         §7C§.camera.startDragging(param1,param2);
         §7C§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§+b§)
         {
            return;
         }
         §=h§.§'m§();
         if(this.§if§ == §;!2§)
         {
            this.§9g§(§%!8§);
         }
         if(§7C§.slingshot.mDragging)
         {
            _loc3_ = §7C§.screenToBox2D(param1,param2);
            §7C§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§7C§.slingshot.canShootTheBird())
            {
               §7C§.slingshot.shoot();
               this.§9g§(§3!4§);
            }
            else
            {
               §7C§.slingshot.cancelDragging();
            }
         }
         if(§7C§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §7C§.camera.dragToNewPoint(param1,param2);
            }
            §7C§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§+b§)
         {
            return;
         }
         if(§7C§.slingshot.mDragging)
         {
            _loc3_ = §7C§.screenToBox2D(param1,param2);
            §7C§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§7C§.camera.mDragging)
         {
            §7C§.camera.dragToNewPoint(param1,param2);
         }
         this.§>5§ = param1;
         this.§>!B§ = param2;
      }
      
      public function §2!G§() : Point
      {
         return new Point(this.§>5§,this.§>!B§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§<!&§.assign(this.§<!&§.getValue() + param1);
         this.§?t§(§<V§);
         if(this.§if§ == §!!8§)
         {
            this.§ v§ = 2000;
            this.§`!=§ = §>!7§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§<!&§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§,!!§.§;4§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §6M§.getLevelForId(§6M§.§[z§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§+b§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§+b§ = param1;
      }
   }
}

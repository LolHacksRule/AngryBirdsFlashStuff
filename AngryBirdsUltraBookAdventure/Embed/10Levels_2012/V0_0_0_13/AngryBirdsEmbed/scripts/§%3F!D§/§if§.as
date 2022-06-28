package §?!D§
{
   import § !;§.§`! §;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §%x§.§3=§;
   import §0!<§.§%r§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §[F§.§`m§;
   import §]!9§.§&v§;
   import §]!9§.§+k§;
   import §]!9§.§>2§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §if§ extends §]x§
   {
      
      public static const §%!8§:int = 0;
      
      public static const §3!4§:int = 1;
      
      public static const §-t§:int = 2;
      
      public static const §!!8§:int = 3;
      
      public static const §'5§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const § get§:int = 7;
      
      protected static const §4!H§:Number = §`m§.§0`§ / 100;
      
      public static const §<V§:Number = 2000;
      
      public static const §>!7§:Number = 2500;
      
      public static const §`;§:int = 5;
       
      
      public var §^I§:int = 0;
      
      protected var §7!"§:int = 0;
      
      public var §#[§:Number;
      
      protected var §%h§:Number = 0;
      
      protected var §`!=§:Boolean = false;
      
      private var § v§:Number = 0;
      
      public var §-n§:Number = 0;
      
      protected var §>5§:Boolean;
      
      protected var §>!B§:Number = 0;
      
      protected var §<!&§:Number = 0;
      
      protected var §+b§:Boolean = true;
      
      protected var §3r§:§`! §;
      
      public function §if§(param1:§#;§)
      {
         this.§3r§ = new §`! §();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§3r§.assign(0);
         this.§^I§ = -1;
         this.§7!"§ = 0;
         this.§%h§ = 0;
         this.§`!=§ = false;
         this.§?t§(§%!8§);
         this.§#[§ = §<V§;
         §;!!§(true);
         §7C§.objects.setDamageEnabled(true);
         §7C§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §7C§.update(param1,true);
         this.§[$§(param1);
         this.§>I§(param1);
      }
      
      private function §[$§(param1:int) : void
      {
         if(this.§7!"§ != 0)
         {
            §7C§.camera.adjustManualScale(this.§7!"§ > 0,param1 * §4!H§);
         }
      }
      
      public function clearLevel() : void
      {
         §7C§.clearLevel();
         removeEventListeners();
         this.§^I§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §9!"§() : Boolean
      {
         if(§7C§.camera.mCurrentCameraSliderLocation < §`m§.§&9§)
         {
            return false;
         }
         if(!§7C§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9g§(param1:int) : void
      {
         var _loc2_:§`m§ = §7C§.camera;
         if(_loc2_.§7]§ > 0)
         {
            _loc2_.§7]§ -= param1;
            if(_loc2_.§7]§ <= 0)
            {
               if(this.§9!"§())
               {
                  _loc2_.§7]§ = -1;
                  if(§7C§.slingshot.birdsAvailable)
                  {
                     _loc2_.§?! §();
                  }
               }
               else
               {
                  _loc2_.§7]§ = §`m§.§`c§ / 2;
               }
            }
         }
      }
      
      public function §?t§(param1:int, param2:Boolean = false) : void
      {
         if(this.§2c§(false) && !param2)
         {
            return;
         }
         if(param1 == §%!8§)
         {
            this.§-n§ = 2000;
         }
         else if(param1 == §3!4§)
         {
            §7C§.camera.goToBirdView();
         }
         else if(param1 == §-t§)
         {
            this.§>5§ = false;
            this.§-n§ = 5000;
            §7C§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §!!8§)
         {
            §7C§.camera.goToCastleView();
         }
         else if(param1 == §'5§)
         {
            this.§-n§ = 2000;
            this.§ v§ = §`;§;
            §7C§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§-n§ = 1200;
            if(!§7C§.objects.mMightyEagleAdded)
            {
               §7C§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§-n§ = 1200;
            if(!§7C§.objects.mMightyEagleAdded)
            {
               §7C§.camera.goToBirdView();
               §7C§.slingshot.makeBirdsJumpForJoy();
            }
            §3!E§.§<!,§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == § get§)
         {
            §3!E§.§#'§();
            §3!E§.§<!,§("LevelFailedPigs1");
            this.§-n§ = 1200;
            §7C§.camera.goToCastleView();
            §7C§.objects.makePigsSmile(5);
         }
         this.§^I§ = param1;
      }
      
      public function §>_§(param1:Number) : void
      {
         this.§%h§ = Math.max(this.§%h§,param1);
      }
      
      protected function §2!5§() : Boolean
      {
         return §7C§.slingshot.mSlingShotState == §3=§.§ in§ && !§7C§.objects.hasBirds();
      }
      
      public function §>I§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§>2§ = null;
         this.§#[§ -= param1;
         if(this.§`!=§)
         {
            this.§%h§ -= param1;
            if(this.§%h§ < 0)
            {
               this.§#[§ = 0;
            }
         }
         if(this.§#[§ <= 0 && !this.§2c§(false))
         {
            this.§#[§ = §<V§;
            _loc2_ = §7C§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§`!=§ || this.§%h§ > 0))
            {
               if((!this.§`!=§ || this.§%h§ > 6000) && !§7C§.objects.isPigsAlive())
               {
                  this.§%h§ = 6000;
                  this.§`!=§ = true;
               }
               else if(!this.§`!=§ && this.§2!5§())
               {
                  this.§%h§ = 15000;
                  this.§`!=§ = true;
               }
            }
            else if(!§7C§.objects.isPigsAlive() && !§7C§.objects.mSardineCanAdded && !§7C§.objects.mMightyEagleAdded)
            {
               this.§0!9§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§2!5§())
            {
               if(§7C§.objects.mMightyEagleAdded)
               {
                  if(§7C§.objects.mMightyEagleHasTouchedGround && §7C§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§0!9§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§7C§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§#[§ = §<V§;
                  }
               }
               else if(!§7C§.objects.mSardineCanAdded)
               {
                  this.§0!9§(§ get§);
               }
            }
            if(this.§2c§(false))
            {
               §7C§.gameOver();
            }
         }
         this.§-n§ -= param1;
         if(this.§-n§ < 0)
         {
            this.§-n§ = 0;
         }
         if(this.§^I§ == §!!8§)
         {
            §7C§.updatePigAnimations(param1);
            if(!§7C§.camera.isOnCastleView() && §7C§.camera.mCurrentAction != §`m§.§!p§)
            {
               this.§?t§(§3!4§);
            }
         }
         else if(this.§^I§ == §'5§)
         {
            if(this.§-n§ <= 0)
            {
               _loc3_ = §7C§.objects.hasBirds();
               if(_loc3_ && this.§ v§ > 0)
               {
                  this.§-n§ = 2000;
                  this.§#[§ = 0;
                  this.§ v§ = this.§ v§ - 1;
               }
               else if(!§,!!§.§;4§.objects.mMightyEagleAdded)
               {
                  this.§?t§(§3!4§);
               }
            }
            else
            {
               §7C§.updatePigAnimations(param1);
            }
            if(!§7C§.camera.isOnCastleView() && §7C§.camera.mCurrentAction != §`m§.§!p§)
            {
               this.§?t§(§3!4§);
            }
         }
         else if(this.§^I§ == §%!8§)
         {
            if(this.§-n§ <= 0)
            {
               this.§?t§(§3!4§);
            }
         }
         else if(this.§^I§ == §3!4§)
         {
            if(§7C§.camera.isOnCastleView() && §7C§.camera.mCurrentAction != §`m§.§!p§)
            {
               this.§?t§(§!!8§);
            }
         }
         else if(this.§^I§ == §-t§)
         {
            if(!(_loc4_ = §7C§.activeObject) || _loc4_.§4!;§ < _loc4_.§8!,§)
            {
               if(_loc4_ && _loc4_ is §+k§ && (!(_loc4_ as §&v§).§?-§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§>5§ = true;
                  this.§?t§(§'5§);
               }
               §7C§.activeObject = null;
               this.§?t§(§'5§);
            }
         }
         else if(this.§^I§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§-n§ <= 0)
            {
               if(§7C§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§-n§ = 1000;
               }
               else
               {
                  this.§?t§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §0!9§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§`!=§)
         {
            this.§`!=§ = true;
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
            this.§%h§ = Math.min(this.§%h§,3500);
         }
         if(this.§%h§ <= 0)
         {
            this.§?t§(param1,param2);
         }
      }
      
      public function §2c§(param1:Boolean = false) : Boolean
      {
         return (this.§^I§ == LEVEL_STATE_VICTORY2_END || this.§^I§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§^I§ == § get§) && (!param1 || this.§-n§ <= 0 && this.§^I§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §4x§() : Boolean
      {
         return this.§^I§ == LEVEL_STATE_VICTORY2_END || this.§^I§ == § get§;
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
            if(this.§^I§ == §'5§ || this.§^I§ == §!!8§ || this.§^I§ == §3!4§)
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
      
      private function §2!G§(param1:int) : void
      {
         this.§7!"§ = param1;
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
         §%r§.§'m§();
         if(this.§2c§(false))
         {
            return;
         }
         if(!§7C§.isPlayingReplay())
         {
            if(§7C§.activeObject && this.§^I§ == §-t§ || this.§>5§)
            {
               this.§>5§ = false;
               §7C§.activatePowerup();
               return;
            }
            _loc4_ = §7C§.screenToBox2D(param1,param2);
            if(§7C§.slingshot.canStartDragging(_loc4_))
            {
               §7C§.slingshot.startDragging();
               this.§?t§(§3!4§);
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
         §%r§.§[m§();
         if(this.§^I§ == §%!8§)
         {
            this.§?t§(§3!4§);
         }
         if(§7C§.slingshot.mDragging)
         {
            _loc3_ = §7C§.screenToBox2D(param1,param2);
            §7C§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§7C§.slingshot.canShootTheBird())
            {
               §7C§.slingshot.shoot();
               this.§?t§(§-t§);
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
         this.§>!B§ = param1;
         this.§<!&§ = param2;
      }
      
      public function §;!2§() : Point
      {
         return new Point(this.§>!B§,this.§<!&§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§3r§.assign(this.§3r§.getValue() + param1);
         this.§>_§(§>!7§);
         if(this.§^I§ == §'5§)
         {
            this.§-n§ = 2000;
            this.§ v§ = §`;§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§3r§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§,!!§.§;4§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §6M§.§ r§(§6M§.§[z§).getEagleScore();
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

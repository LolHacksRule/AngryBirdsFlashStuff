package §!!G§
{
   import § "§.§8!3§;
   import §-'§.§%!$§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §9!?§.§%g§;
   import §9!?§.§^]§;
   import §9H§.§-!7§;
   import §[+§.§'!6§;
   import §`"§.§"e§;
   import §`"§.§&>§;
   import §`"§.§1!B§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §#!"§ extends §+l§
   {
      
      public static const §=I§:int = 0;
      
      public static const §+§:int = 1;
      
      public static const §!d§:int = 2;
      
      public static const §+$§:int = 3;
      
      public static const §&!6§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §-D§:int = 7;
      
      private static const §9k§:Number = §'!6§.§]!E§ / 100;
      
      public static const §3!&§:Number = 2000;
      
      public static const §[F§:Number = 2500;
       
      
      public var §,%§:int = 0;
      
      private var §<V§:int = 0;
      
      public var §8k§:Number;
      
      protected var §5y§:Number = 0;
      
      protected var §0@§:Boolean = false;
      
      public var §%!'§:Number = 0;
      
      protected var §^!4§:Boolean;
      
      private var §'A§:Number = 0;
      
      private var §%!9§:Number = 0;
      
      protected var §7?§:Boolean = true;
      
      protected var §61§:§%!$§;
      
      public function §#!"§(param1:§^]§)
      {
         this.§61§ = new §%!$§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§61§.assign(0);
         this.§,%§ = -1;
         this.§<V§ = 0;
         this.§5y§ = 0;
         this.§0@§ = false;
         this.§]x§(§=I§);
         this.§8k§ = §3!&§;
         §@K§(true);
         §]!9§.objects.setDamageEnabled(true);
         §]!9§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §]!9§.update(param1,true);
         this.§3%§(param1);
         this.§`V§(param1);
      }
      
      private function §3%§(param1:int) : void
      {
         if(this.§<V§ != 0)
         {
            §]!9§.camera.adjustManualScale(this.§<V§ > 0,param1 * §9k§);
         }
      }
      
      public function clearLevel() : void
      {
         §]!9§.clearLevel();
         removeEventListeners();
         this.§,%§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §#!+§() : Boolean
      {
         if(§]!9§.camera.mCurrentCameraSliderLocation < §'!6§.§-!@§)
         {
            return false;
         }
         if(!§]!9§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §]?§(param1:int) : void
      {
         var _loc2_:§'!6§ = §]!9§.camera;
         if(_loc2_.§6!=§ > 0)
         {
            _loc2_.§6!=§ -= param1;
            if(_loc2_.§6!=§ <= 0)
            {
               if(this.§#!+§())
               {
                  _loc2_.§6!=§ = -1;
                  if(§]!9§.slingshot.birdsAvailable)
                  {
                     _loc2_.§3^§();
                  }
               }
               else
               {
                  _loc2_.§6!=§ = §'!6§.§`]§ / 2;
               }
            }
         }
      }
      
      public function §]x§(param1:int, param2:Boolean = false) : void
      {
         if(this.§,I§(false) && !param2)
         {
            return;
         }
         if(param1 == §=I§)
         {
            this.§%!'§ = 2000;
         }
         else if(param1 == §+§)
         {
            §]!9§.camera.goToBirdView();
         }
         else if(param1 == §!d§)
         {
            this.§^!4§ = false;
            this.§%!'§ = 5000;
            §]!9§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §+$§)
         {
            §]!9§.camera.goToCastleView();
         }
         else if(param1 == §&!6§)
         {
            this.§%!'§ = 2000;
            §]!9§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§%!'§ = 1200;
            if(!§]!9§.objects.mMightyEagleAdded)
            {
               §]!9§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§%!'§ = 1200;
            if(!§]!9§.objects.mMightyEagleAdded)
            {
               §]!9§.camera.goToBirdView();
               §]!9§.slingshot.makeBirdsJumpForJoy();
            }
            §7_§.§4!5§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §-D§)
         {
            §7_§.§@l§();
            §7_§.§4!5§("LevelFailedPigs1");
            this.§%!'§ = 1200;
            §]!9§.camera.goToCastleView();
            §]!9§.objects.makePigsSmile(5);
         }
         this.§,%§ = param1;
      }
      
      public function §5!#§(param1:Number) : void
      {
         this.§5y§ = Math.max(this.§5y§,param1);
      }
      
      protected function §6$§() : Boolean
      {
         return §]!9§.slingshot.mSlingShotState == §%g§.§2O§ && !§]!9§.objects.hasBirds();
      }
      
      public function §`V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§"e§ = null;
         this.§8k§ -= param1;
         if(this.§0@§)
         {
            this.§5y§ -= param1;
            if(this.§5y§ < 0)
            {
               this.§8k§ = 0;
            }
         }
         if(this.§8k§ <= 0 && !this.§,I§(false))
         {
            this.§8k§ = §3!&§;
            _loc2_ = §]!9§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§0@§ || this.§5y§ > 0))
            {
               if((!this.§0@§ || this.§5y§ > 6000) && !§]!9§.objects.isPigsAlive())
               {
                  this.§5y§ = 6000;
                  this.§0@§ = true;
               }
               else if(!this.§0@§ && this.§6$§())
               {
                  this.§5y§ = 15000;
                  this.§0@§ = true;
               }
            }
            else if(!§]!9§.objects.isPigsAlive() && !§]!9§.objects.mSardineCanAdded)
            {
               this.§>!1§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§6$§())
            {
               if(§]!9§.objects.mMightyEagleAdded)
               {
                  if(§]!9§.objects.mMightyEagleHasTouchedGround && §]!9§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§>!1§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§]!9§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§8k§ = §3!&§;
                  }
               }
               else if(!§]!9§.objects.mSardineCanAdded)
               {
                  this.§>!1§(§-D§);
               }
            }
            if(this.§,I§(false))
            {
               §]!9§.gameOver();
            }
         }
         this.§%!'§ -= param1;
         if(this.§%!'§ < 0)
         {
            this.§%!'§ = 0;
         }
         if(this.§,%§ == §+$§)
         {
            §]!9§.updatePigAnimations(param1);
            if(!§]!9§.camera.isOnCastleView() && §]!9§.camera.mCurrentAction != §'!6§.§^G§)
            {
               this.§]x§(§+§);
            }
         }
         else if(this.§,%§ == §&!6§)
         {
            if(this.§%!'§ <= 0)
            {
               if(§]!9§.objects.isWorldAtSleep())
               {
                  if(!§#!4§.§^Y§.objects.mMightyEagleAdded)
                  {
                     this.§]x§(§+§);
                  }
               }
               else
               {
                  this.§8k§ = 0;
                  this.§%!'§ = 2000;
               }
            }
            else
            {
               §]!9§.updatePigAnimations(param1);
            }
            if(!§]!9§.camera.isOnCastleView() && §]!9§.camera.mCurrentAction != §'!6§.§^G§)
            {
               this.§]x§(§+§);
            }
         }
         else if(this.§,%§ == §=I§)
         {
            if(this.§%!'§ <= 0)
            {
               this.§]x§(§+§);
            }
         }
         else if(this.§,%§ == §+§)
         {
            if(§]!9§.camera.isOnCastleView() && §]!9§.camera.mCurrentAction != §'!6§.§^G§)
            {
               this.§]x§(§+$§);
            }
         }
         else if(this.§,%§ == §!d§)
         {
            _loc3_ = §]!9§.activeObject;
            if(!_loc3_ || _loc3_.§`h§ < _loc3_.§'R§)
            {
               if(_loc3_ && _loc3_ is §1!B§ && (!(_loc3_ as §&>§).§->§ || _loc3_.getSpecialAnimationProgress() >= 0))
               {
                  this.§^!4§ = true;
                  this.§]x§(§&!6§);
               }
               §]!9§.activeObject = null;
               this.§]x§(§&!6§);
            }
         }
         else if(this.§,%§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§%!'§ <= 0)
            {
               if(§]!9§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§%!'§ = 1000;
               }
               else
               {
                  this.§]x§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §>!1§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§0@§)
         {
            this.§0@§ = true;
         }
         if(new Date().time - §]!9§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§]!9§.slingshot.mDragging)
         {
            return;
         }
         if(§]!9§.objects.isWorldAtSleep())
         {
            this.§5y§ = Math.min(this.§5y§,3500);
         }
         if(this.§5y§ <= 0)
         {
            this.§]x§(param1,param2);
         }
      }
      
      public function §,I§(param1:Boolean = false) : Boolean
      {
         return (this.§,%§ == LEVEL_STATE_VICTORY2_END || this.§,%§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§,%§ == §-D§) && (!param1 || this.§%!'§ <= 0 && this.§,%§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §0!?§() : Boolean
      {
         return this.§,%§ == LEVEL_STATE_VICTORY2_END || this.§,%§ == §-D§;
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
         if(!this.§7?§ || !§]!9§.mReadyToRun)
         {
            return;
         }
         if(!(§]!9§.slingshot.mDragging || §]!9§.camera.mDragging))
         {
            if(this.§,%§ == §&!6§ || this.§,%§ == §+$§ || this.§,%§ == §+§)
            {
               if(!§]!9§.isPlayingReplay())
               {
                  §]!9§.camera.adjustManualScale(param1);
               }
               else
               {
                  §]!9§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function § w§(param1:int) : void
      {
         this.§<V§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§7?§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §-!7§.§8!#§();
         if(this.§,I§(false))
         {
            return;
         }
         if(!§]!9§.isPlayingReplay())
         {
            if(§]!9§.activeObject && this.§,%§ == §!d§ || this.§^!4§)
            {
               this.§^!4§ = false;
               §]!9§.activatePowerup();
               return;
            }
            _loc4_ = §]!9§.screenToBox2D(param1,param2);
            if(§]!9§.slingshot.canStartDragging(_loc4_))
            {
               §]!9§.slingshot.startDragging();
               this.§]x§(§+§);
            }
            else
            {
               §]!9§.camera.startDragging(param1,param2);
            }
            return;
         }
         §]!9§.camera.startDragging(param1,param2);
         §]!9§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§7?§)
         {
            return;
         }
         §-!7§.§]!$§();
         if(this.§,%§ == §=I§)
         {
            this.§]x§(§+§);
         }
         if(§]!9§.slingshot.mDragging)
         {
            _loc3_ = §]!9§.screenToBox2D(param1,param2);
            §]!9§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§]!9§.slingshot.canShootTheBird())
            {
               §]!9§.slingshot.shoot();
               this.§]x§(§!d§);
            }
            else
            {
               §]!9§.slingshot.cancelDragging();
            }
         }
         if(§]!9§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §]!9§.camera.dragToNewPoint(param1,param2);
            }
            §]!9§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§7?§)
         {
            return;
         }
         if(§]!9§.slingshot.mDragging)
         {
            _loc3_ = §]!9§.screenToBox2D(param1,param2);
            §]!9§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§]!9§.camera.mDragging)
         {
            §]!9§.camera.dragToNewPoint(param1,param2);
         }
         this.§'A§ = param1;
         this.§%!9§ = param2;
      }
      
      public function §%K§() : Point
      {
         return new Point(this.§'A§,this.§%!9§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§61§.assign(this.§61§.getValue() + param1);
         this.§5!#§(§[F§);
      }
      
      override public function getScore() : int
      {
         return this.§61§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§#!4§.§^Y§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §8!3§.§]!>§(§8!3§.§-[§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§7?§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§7?§ = param1;
      }
   }
}

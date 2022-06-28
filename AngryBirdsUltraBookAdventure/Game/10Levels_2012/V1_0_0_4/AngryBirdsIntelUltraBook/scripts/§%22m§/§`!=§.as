package §"m§
{
   import §"R§.§ !Q§;
   import §%Q§.§%d§;
   import §%Q§.§3L§;
   import §%Q§.§`!<§;
   import §,!5§.§>!A§;
   import §,!5§.§^g§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import §2!R§.§#C§;
   import §^_§.§=H§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §true§.§ _§;
   
   public class §`!=§ extends §1!%§
   {
      
      public static const §<n§:int = 0;
      
      public static const §%8§:int = 1;
      
      public static const §==§:int = 2;
      
      public static const §8R§:int = 3;
      
      public static const §3j§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §[3§:int = 7;
      
      protected static const §6!V§:Number = §#C§.§ M§ / 100;
      
      public static const §[,§:Number = 2000;
      
      public static const §%7§:Number = 2500;
      
      public static const §5K§:int = 5;
       
      
      public var §2?§:int = 0;
      
      protected var §@!H§:int = 0;
      
      public var §4!q§:Number;
      
      protected var §^h§:Number = 0;
      
      protected var §^!#§:Boolean = false;
      
      private var §%!j§:Number = 0;
      
      public var §?!9§:Number = 0;
      
      protected var §!!O§:Boolean;
      
      protected var §9!M§:Number = 0;
      
      protected var §&a§:Number = 0;
      
      protected var §2!'§:Boolean = true;
      
      protected var §'R§:§&'§;
      
      public function §`!=§(param1:§^g§)
      {
         this.§'R§ = new §&'§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§'R§.assign(0);
         this.§2?§ = -1;
         this.§@!H§ = 0;
         this.§^h§ = 0;
         this.§^!#§ = false;
         this.§@&§(§<n§);
         this.§4!q§ = §[,§;
         §#!X§(true);
         §?l§.objects.setDamageEnabled(true);
         §?l§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §?l§.update(param1,true);
         this.§2y§(param1);
         this.§;6§(param1);
      }
      
      private function §2y§(param1:int) : void
      {
         if(this.§@!H§ != 0)
         {
            §?l§.camera.adjustManualScale(this.§@!H§ > 0,param1 * §6!V§);
         }
      }
      
      public function clearLevel() : void
      {
         §?l§.clearLevel();
         removeEventListeners();
         this.§2?§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §7!Q§() : Boolean
      {
         if(§?l§.camera.mCurrentCameraSliderLocation < §#C§.§]!q§)
         {
            return false;
         }
         if(!§?l§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9!V§(param1:int) : void
      {
         var _loc2_:§#C§ = §?l§.camera;
         if(_loc2_.§7!3§ > 0)
         {
            _loc2_.§7!3§ -= param1;
            if(_loc2_.§7!3§ <= 0)
            {
               if(this.§7!Q§())
               {
                  _loc2_.§7!3§ = -1;
                  if(§?l§.slingshot.birdsAvailable)
                  {
                     _loc2_.§"!2§();
                  }
               }
               else
               {
                  _loc2_.§7!3§ = §#C§.§7d§ / 2;
               }
            }
         }
      }
      
      public function §@&§(param1:int, param2:Boolean = false) : void
      {
         if(this.§<$§(false) && !param2)
         {
            return;
         }
         if(param1 == §<n§)
         {
            this.§?!9§ = 2000;
         }
         else if(param1 == §%8§)
         {
            §?l§.camera.goToBirdView();
         }
         else if(param1 == §==§)
         {
            this.§!!O§ = false;
            this.§?!9§ = 5000;
            §?l§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §8R§)
         {
            §?l§.camera.goToCastleView();
         }
         else if(param1 == §3j§)
         {
            this.§?!9§ = 2000;
            this.§%!j§ = §5K§;
            §?l§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§?!9§ = 1200;
            if(!§?l§.objects.mMightyEagleAdded)
            {
               §?l§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§?!9§ = 1200;
            if(!§?l§.objects.mMightyEagleAdded)
            {
               §?l§.camera.goToBirdView();
               §?l§.slingshot.makeBirdsJumpForJoy();
            }
            § !Q§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §[3§)
         {
            § !Q§.§"!"§();
            § !Q§.playSound("LevelFailedPigs1");
            this.§?!9§ = 1200;
            §?l§.camera.goToCastleView();
            §?l§.objects.makePigsSmile(5);
         }
         this.§2?§ = param1;
      }
      
      public function §'k§(param1:Number) : void
      {
         this.§^h§ = Math.max(this.§^h§,param1);
      }
      
      protected function §5k§() : Boolean
      {
         return §?l§.slingshot.mSlingShotState == §>!A§.§-8§ && !§?l§.objects.hasBirds();
      }
      
      public function §;6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§`!<§ = null;
         this.§4!q§ -= param1;
         if(this.§^!#§)
         {
            this.§^h§ -= param1;
            if(this.§^h§ < 0)
            {
               this.§4!q§ = 0;
            }
         }
         if(this.§4!q§ <= 0 && !this.§<$§(false))
         {
            this.§4!q§ = §[,§;
            _loc2_ = §?l§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§^!#§ || this.§^h§ > 0))
            {
               if((!this.§^!#§ || this.§^h§ > 6000) && !§?l§.objects.isPigsAlive())
               {
                  this.§^h§ = 6000;
                  this.§^!#§ = true;
               }
               else if(!this.§^!#§ && this.§5k§())
               {
                  this.§^h§ = 15000;
                  this.§^!#§ = true;
               }
            }
            else if(!§?l§.objects.isPigsAlive() && !§?l§.objects.mSardineCanAdded && !§?l§.objects.mMightyEagleAdded)
            {
               this.§[L§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5k§())
            {
               if(§?l§.objects.mMightyEagleAdded)
               {
                  if(§?l§.objects.mMightyEagleHasTouchedGround && §?l§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§[L§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§?l§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§4!q§ = §[,§;
                  }
               }
               else if(!§?l§.objects.mSardineCanAdded)
               {
                  this.§[L§(§[3§);
               }
            }
            if(this.§<$§(false))
            {
               §?l§.gameOver();
            }
         }
         this.§?!9§ -= param1;
         if(this.§?!9§ < 0)
         {
            this.§?!9§ = 0;
         }
         if(this.§2?§ == §8R§)
         {
            §?l§.updatePigAnimations(param1);
            if(!§?l§.camera.isOnCastleView() && §?l§.camera.mCurrentAction != §#C§.§%Y§)
            {
               this.§@&§(§%8§);
            }
         }
         else if(this.§2?§ == §3j§)
         {
            if(this.§?!9§ <= 0)
            {
               _loc3_ = §?l§.objects.hasBirds();
               if(_loc3_ && this.§%!j§ > 0)
               {
                  this.§?!9§ = 2000;
                  this.§4!q§ = 0;
                  this.§%!j§ = this.§%!j§ - 1;
               }
               else if(!§ _§.§!6§.objects.mMightyEagleAdded)
               {
                  this.§@&§(§%8§);
               }
            }
            else
            {
               §?l§.updatePigAnimations(param1);
            }
            if(!§?l§.camera.isOnCastleView() && §?l§.camera.mCurrentAction != §#C§.§%Y§)
            {
               this.§@&§(§%8§);
            }
         }
         else if(this.§2?§ == §<n§)
         {
            if(this.§?!9§ <= 0)
            {
               this.§@&§(§%8§);
            }
         }
         else if(this.§2?§ == §%8§)
         {
            if(§?l§.camera.isOnCastleView() && §?l§.camera.mCurrentAction != §#C§.§%Y§)
            {
               this.§@&§(§8R§);
            }
         }
         else if(this.§2?§ == §==§)
         {
            if(!(_loc4_ = §?l§.activeObject) || _loc4_.§%!R§ < _loc4_.§-!!§)
            {
               if(_loc4_ && _loc4_ is §%d§ && (!(_loc4_ as §3L§).§?!?§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§!!O§ = true;
                  this.§@&§(§3j§);
               }
               §?l§.activeObject = null;
               this.§@&§(§3j§);
            }
         }
         else if(this.§2?§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§?!9§ <= 0)
            {
               if(§?l§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§?!9§ = 1000;
               }
               else
               {
                  this.§@&§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §[L§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§^!#§)
         {
            this.§^!#§ = true;
         }
         if(new Date().time - §?l§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§?l§.slingshot.mDragging)
         {
            return;
         }
         if(§?l§.objects.isWorldAtSleep())
         {
            this.§^h§ = Math.min(this.§^h§,3500);
         }
         if(this.§^h§ <= 0)
         {
            this.§@&§(param1,param2);
         }
      }
      
      public function §<$§(param1:Boolean = false) : Boolean
      {
         return (this.§2?§ == LEVEL_STATE_VICTORY2_END || this.§2?§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§2?§ == §[3§) && (!param1 || this.§?!9§ <= 0 && this.§2?§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §]!!§() : Boolean
      {
         return this.§2?§ == LEVEL_STATE_VICTORY2_END || this.§2?§ == §[3§;
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
         if(!this.§2!'§ || !§?l§.mReadyToRun)
         {
            return;
         }
         if(!(§?l§.slingshot.mDragging || §?l§.camera.mDragging))
         {
            if(this.§2?§ == §3j§ || this.§2?§ == §8R§ || this.§2?§ == §%8§)
            {
               if(!§?l§.isPlayingReplay())
               {
                  §?l§.camera.adjustManualScale(param1);
               }
               else
               {
                  §?l§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §]!m§(param1:int) : void
      {
         this.§@!H§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§2!'§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §=H§.§4!2§();
         if(this.§<$§(false))
         {
            return;
         }
         if(!§?l§.isPlayingReplay())
         {
            if(§?l§.activeObject && this.§2?§ == §==§ || this.§!!O§)
            {
               this.§!!O§ = false;
               §?l§.activatePowerup();
               return;
            }
            _loc4_ = §?l§.screenToBox2D(param1,param2);
            if(§?l§.slingshot.canStartDragging(_loc4_))
            {
               §?l§.slingshot.startDragging();
               this.§@&§(§%8§);
            }
            else
            {
               §?l§.camera.startDragging(param1,param2);
            }
            return;
         }
         §?l§.camera.startDragging(param1,param2);
         §?l§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§2!'§)
         {
            return;
         }
         §=H§.§function§();
         if(this.§2?§ == §<n§)
         {
            this.§@&§(§%8§);
         }
         if(§?l§.slingshot.mDragging)
         {
            _loc3_ = §?l§.screenToBox2D(param1,param2);
            §?l§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§?l§.slingshot.canShootTheBird())
            {
               §?l§.slingshot.shoot();
               this.§@&§(§==§);
            }
            else
            {
               §?l§.slingshot.cancelDragging();
            }
         }
         if(§?l§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §?l§.camera.dragToNewPoint(param1,param2);
            }
            §?l§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§2!'§)
         {
            return;
         }
         if(§?l§.slingshot.mDragging)
         {
            _loc3_ = §?l§.screenToBox2D(param1,param2);
            §?l§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§?l§.camera.mDragging)
         {
            §?l§.camera.dragToNewPoint(param1,param2);
         }
         this.§9!M§ = param1;
         this.§&a§ = param2;
      }
      
      public function §%K§() : Point
      {
         return new Point(this.§9!M§,this.§&a§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§'R§.assign(this.§'R§.getValue() + param1);
         this.§'k§(§%7§);
         if(this.§2?§ == §3j§)
         {
            this.§?!9§ = 2000;
            this.§%!j§ = §5K§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§'R§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§ _§.§!6§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§-V§(LevelManager.§4Y§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§2!'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§2!'§ = param1;
      }
   }
}

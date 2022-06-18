package §>A§
{
   import §#!1§.§"K§;
   import §#!1§.§4!,§;
   import §#!1§.§9!'§;
   import §'N§.§^]§;
   import §+6§.§4j§;
   import §-!C§.§#!G§;
   import §3v§.§5G§;
   import §4!'§.§#,§;
   import §>%§.§]3§;
   import §`i§.§2W§;
   import §`i§.§while§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §-!"§ extends §2!1§
   {
      
      public static const §@!B§:int = 0;
      
      public static const §-q§:int = 1;
      
      public static const §>!!§:int = 2;
      
      public static const §`!;§:int = 3;
      
      public static const § !D§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%_§:int = 7;
      
      protected static const §0U§:Number = §4j§.§]t§ / 100;
      
      public static const §=!B§:Number = 2000;
      
      public static const §@!?§:Number = 2500;
      
      public static const §"&§:int = 5;
       
      
      public var §+'§:int = 0;
      
      protected var § !1§:int = 0;
      
      public var §#!'§:Number;
      
      protected var §'-§:Number = 0;
      
      protected var §1P§:Boolean = false;
      
      private var §6!6§:Number = 0;
      
      public var §`!3§:Number = 0;
      
      protected var §'c§:Boolean;
      
      protected var §04§:Number = 0;
      
      protected var §[K§:Number = 0;
      
      protected var §%!0§:Boolean = true;
      
      protected var §3`§:§#,§;
      
      public function §-!"§(param1:§2W§)
      {
         this.§3`§ = new §#,§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§3`§.assign(0);
         this.§+'§ = -1;
         this.§ !1§ = 0;
         this.§'-§ = 0;
         this.§1P§ = false;
         this.§&9§(§@!B§);
         this.§#!'§ = §=!B§;
         §6J§(true);
         §"8§.objects.setDamageEnabled(true);
         §"8§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §"8§.update(param1,true);
         this.§8!G§(param1);
         this.§7p§(param1);
      }
      
      private function §8!G§(param1:int) : void
      {
         if(this.§ !1§ != 0)
         {
            §"8§.camera.adjustManualScale(this.§ !1§ > 0,param1 * §0U§);
         }
      }
      
      public function clearLevel() : void
      {
         §"8§.clearLevel();
         removeEventListeners();
         this.§+'§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §#F§() : Boolean
      {
         if(§"8§.camera.mCurrentCameraSliderLocation < §4j§.§4w§)
         {
            return false;
         }
         if(!§"8§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §4!8§(param1:int) : void
      {
         var _loc2_:§4j§ = §"8§.camera;
         if(_loc2_.§=!+§ > 0)
         {
            _loc2_.§=!+§ -= param1;
            if(_loc2_.§=!+§ <= 0)
            {
               if(this.§#F§())
               {
                  _loc2_.§=!+§ = -1;
                  if(§"8§.slingshot.birdsAvailable)
                  {
                     _loc2_.§]!8§();
                  }
               }
               else
               {
                  _loc2_.§=!+§ = §4j§.§'w§ / 2;
               }
            }
         }
      }
      
      public function §&9§(param1:int, param2:Boolean = false) : void
      {
         if(this.§35§(false) && !param2)
         {
            return;
         }
         if(param1 == §@!B§)
         {
            this.§`!3§ = 2000;
         }
         else if(param1 == §-q§)
         {
            §"8§.camera.goToBirdView();
         }
         else if(param1 == §>!!§)
         {
            this.§'c§ = false;
            this.§`!3§ = 5000;
            §"8§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §`!;§)
         {
            §"8§.camera.goToCastleView();
         }
         else if(param1 == § !D§)
         {
            this.§`!3§ = 2000;
            this.§6!6§ = §"&§;
            §"8§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§`!3§ = 1200;
            if(!§"8§.objects.mMightyEagleAdded)
            {
               §"8§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§`!3§ = 1200;
            if(!§"8§.objects.mMightyEagleAdded)
            {
               §"8§.camera.goToBirdView();
               §"8§.slingshot.makeBirdsJumpForJoy();
            }
            §^]§.§1g§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §%_§)
         {
            §^]§.§@n§();
            §^]§.§1g§("LevelFailedPigs1");
            this.§`!3§ = 1200;
            §"8§.camera.goToCastleView();
            §"8§.objects.makePigsSmile(5);
         }
         this.§+'§ = param1;
      }
      
      public function §6k§(param1:Number) : void
      {
         this.§'-§ = Math.max(this.§'-§,param1);
      }
      
      protected function §5e§() : Boolean
      {
         return §"8§.slingshot.mSlingShotState == §while§.§,?§ && !§"8§.objects.hasBirds();
      }
      
      public function §7p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§4!,§ = null;
         this.§#!'§ -= param1;
         if(this.§1P§)
         {
            this.§'-§ -= param1;
            if(this.§'-§ < 0)
            {
               this.§#!'§ = 0;
            }
         }
         if(this.§#!'§ <= 0 && !this.§35§(false))
         {
            this.§#!'§ = §=!B§;
            _loc2_ = §"8§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§1P§ || this.§'-§ > 0))
            {
               if((!this.§1P§ || this.§'-§ > 6000) && !§"8§.objects.isPigsAlive())
               {
                  this.§'-§ = 6000;
                  this.§1P§ = true;
               }
               else if(!this.§1P§ && this.§5e§())
               {
                  this.§'-§ = 15000;
                  this.§1P§ = true;
               }
            }
            else if(!§"8§.objects.isPigsAlive() && !§"8§.objects.mSardineCanAdded && !§"8§.objects.mMightyEagleAdded)
            {
               this.§`T§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5e§())
            {
               if(§"8§.objects.mMightyEagleAdded)
               {
                  if(§"8§.objects.mMightyEagleHasTouchedGround && §"8§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§`T§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§"8§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§#!'§ = §=!B§;
                  }
               }
               else if(!§"8§.objects.mSardineCanAdded)
               {
                  this.§`T§(§%_§);
               }
            }
            if(this.§35§(false))
            {
               §"8§.gameOver();
            }
         }
         this.§`!3§ -= param1;
         if(this.§`!3§ < 0)
         {
            this.§`!3§ = 0;
         }
         if(this.§+'§ == §`!;§)
         {
            §"8§.updatePigAnimations(param1);
            if(!§"8§.camera.isOnCastleView() && §"8§.camera.mCurrentAction != §4j§.§]B§)
            {
               this.§&9§(§-q§);
            }
         }
         else if(this.§+'§ == § !D§)
         {
            if(this.§`!3§ <= 0)
            {
               _loc3_ = §"8§.objects.hasBirds();
               if(_loc3_ && this.§6!6§ > 0)
               {
                  this.§`!3§ = 2000;
                  this.§#!'§ = 0;
                  this.§6!6§ = this.§6!6§ - 1;
               }
               else if(!§]3§.§;v§.objects.mMightyEagleAdded)
               {
                  this.§&9§(§-q§);
               }
            }
            else
            {
               §"8§.updatePigAnimations(param1);
            }
            if(!§"8§.camera.isOnCastleView() && §"8§.camera.mCurrentAction != §4j§.§]B§)
            {
               this.§&9§(§-q§);
            }
         }
         else if(this.§+'§ == §@!B§)
         {
            if(this.§`!3§ <= 0)
            {
               this.§&9§(§-q§);
            }
         }
         else if(this.§+'§ == §-q§)
         {
            if(§"8§.camera.isOnCastleView() && §"8§.camera.mCurrentAction != §4j§.§]B§)
            {
               this.§&9§(§`!;§);
            }
         }
         else if(this.§+'§ == §>!!§)
         {
            if(!(_loc4_ = §"8§.activeObject) || _loc4_.§,s§ < _loc4_.§?!+§)
            {
               if(_loc4_ && _loc4_ is §"K§ && (!(_loc4_ as §9!'§).§9z§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§'c§ = true;
                  this.§&9§(§ !D§);
               }
               §"8§.activeObject = null;
               this.§&9§(§ !D§);
            }
         }
         else if(this.§+'§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§`!3§ <= 0)
            {
               if(§"8§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§`!3§ = 1000;
               }
               else
               {
                  this.§&9§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §`T§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§1P§)
         {
            this.§1P§ = true;
         }
         if(new Date().time - §"8§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§"8§.slingshot.mDragging)
         {
            return;
         }
         if(§"8§.objects.isWorldAtSleep())
         {
            this.§'-§ = Math.min(this.§'-§,3500);
         }
         if(this.§'-§ <= 0)
         {
            this.§&9§(param1,param2);
         }
      }
      
      public function §35§(param1:Boolean = false) : Boolean
      {
         return (this.§+'§ == LEVEL_STATE_VICTORY2_END || this.§+'§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§+'§ == §%_§) && (!param1 || this.§`!3§ <= 0 && this.§+'§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function § f§() : Boolean
      {
         return this.§+'§ == LEVEL_STATE_VICTORY2_END || this.§+'§ == §%_§;
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
         if(!this.§%!0§ || !§"8§.mReadyToRun)
         {
            return;
         }
         if(!(§"8§.slingshot.mDragging || §"8§.camera.mDragging))
         {
            if(this.§+'§ == § !D§ || this.§+'§ == §`!;§ || this.§+'§ == §-q§)
            {
               if(!§"8§.isPlayingReplay())
               {
                  §"8§.camera.adjustManualScale(param1);
               }
               else
               {
                  §"8§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §-a§(param1:int) : void
      {
         this.§ !1§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§%!0§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §5G§.§ u§();
         if(this.§35§(false))
         {
            return;
         }
         if(!§"8§.isPlayingReplay())
         {
            if(§"8§.activeObject && this.§+'§ == §>!!§ || this.§'c§)
            {
               this.§'c§ = false;
               §"8§.activatePowerup();
               return;
            }
            _loc4_ = §"8§.screenToBox2D(param1,param2);
            if(§"8§.slingshot.canStartDragging(_loc4_))
            {
               §"8§.slingshot.startDragging();
               this.§&9§(§-q§);
            }
            else
            {
               §"8§.camera.startDragging(param1,param2);
            }
            return;
         }
         §"8§.camera.startDragging(param1,param2);
         §"8§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§%!0§)
         {
            return;
         }
         §5G§.§'_§();
         if(this.§+'§ == §@!B§)
         {
            this.§&9§(§-q§);
         }
         if(§"8§.slingshot.mDragging)
         {
            _loc3_ = §"8§.screenToBox2D(param1,param2);
            §"8§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§"8§.slingshot.canShootTheBird())
            {
               §"8§.slingshot.shoot();
               this.§&9§(§>!!§);
            }
            else
            {
               §"8§.slingshot.cancelDragging();
            }
         }
         if(§"8§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §"8§.camera.dragToNewPoint(param1,param2);
            }
            §"8§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§%!0§)
         {
            return;
         }
         if(§"8§.slingshot.mDragging)
         {
            _loc3_ = §"8§.screenToBox2D(param1,param2);
            §"8§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§"8§.camera.mDragging)
         {
            §"8§.camera.dragToNewPoint(param1,param2);
         }
         this.§04§ = param1;
         this.§[K§ = param2;
      }
      
      public function §8!!§() : Point
      {
         return new Point(this.§04§,this.§[K§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§3`§.assign(this.§3`§.getValue() + param1);
         this.§6k§(§@!?§);
         if(this.§+'§ == § !D§)
         {
            this.§`!3§ = 2000;
            this.§6!6§ = §"&§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§3`§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§]3§.§;v§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §#!G§.§2!0§(§#!G§.§9C§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%!0§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§%!0§ = param1;
      }
   }
}

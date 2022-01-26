package §>!]§
{
   import §!%§.§1m§;
   import §!4§.§%!]§;
   import §"C§.§ !7§;
   import §"C§.§'!+§;
   import §"C§.§?w§;
   import §%b§.§0!Z§;
   import §%b§.§=!!§;
   import §'d§.§3>§;
   import §0C§.§"!T§;
   import §;C§.§5!O§;
   import §[!Q§.§ true§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §5m§ extends §%G§
   {
      
      public static const § !C§:int = 0;
      
      public static const §&!M§:int = 1;
      
      public static const §while§:int = 2;
      
      public static const §>!Z§:int = 3;
      
      public static const §#!2§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §0i§:int = 7;
      
      protected static const §5!J§:Number = § true§.§7O§ / 100;
      
      public static const §'!P§:Number = 2000;
      
      public static const §3v§:Number = 2500;
      
      public static const §>G§:int = 5;
       
      
      public var §;!X§:int = 0;
      
      protected var § V§:int = 0;
      
      public var §=N§:Number;
      
      protected var §'!6§:Number = 0;
      
      protected var §=7§:Boolean = false;
      
      private var §+!5§:Number = 0;
      
      public var §,#§:Number = 0;
      
      protected var §-c§:Boolean;
      
      protected var §&!S§:Number = 0;
      
      protected var §6§:Number = 0;
      
      protected var §3r§:Boolean = true;
      
      protected var §5!1§:§1m§;
      
      public function §5m§(param1:§0!Z§)
      {
         this.§5!1§ = new §1m§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§5!1§.§0!S§(0);
         this.§;!X§ = -1;
         this.§ V§ = 0;
         this.§'!6§ = 0;
         this.§=7§ = false;
         this.§;!^§(§ !C§);
         this.§=N§ = §'!P§;
         §=[§(true);
         §]!8§.objects.setDamageEnabled(true);
         §]!8§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §]!8§.update(param1,true);
         this.§-!H§(param1);
         this.§?!P§(param1);
      }
      
      private function §-!H§(param1:int) : void
      {
         if(this.§ V§ != 0)
         {
            §]!8§.camera.adjustManualScale(this.§ V§ > 0,param1 * §5!J§);
         }
      }
      
      public function clearLevel() : void
      {
         §]!8§.clearLevel();
         removeEventListeners();
         this.§;!X§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §'p§() : Boolean
      {
         if(§]!8§.camera.mCurrentCameraSliderLocation < § true§.§2Y§)
         {
            return false;
         }
         if(!§]!8§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §^&§(param1:int) : void
      {
         var _loc2_:§ true§ = §]!8§.camera;
         if(_loc2_.§`!<§ > 0)
         {
            _loc2_.§`!<§ -= param1;
            if(_loc2_.§`!<§ <= 0)
            {
               if(this.§'p§())
               {
                  _loc2_.§`!<§ = -1;
                  if(§]!8§.slingshot.birdsAvailable)
                  {
                     _loc2_.§6W§();
                  }
               }
               else
               {
                  _loc2_.§`!<§ = § true§.§'E§ / 2;
               }
            }
         }
      }
      
      public function §;!^§(param1:int, param2:Boolean = false) : void
      {
         if(this.§?!8§(false) && !param2)
         {
            return;
         }
         if(param1 == § !C§)
         {
            this.§,#§ = 2000;
         }
         else if(param1 == §&!M§)
         {
            §]!8§.camera.goToBirdView();
         }
         else if(param1 == §while§)
         {
            this.§-c§ = false;
            this.§,#§ = 5000;
            §]!8§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §>!Z§)
         {
            §]!8§.camera.goToCastleView();
         }
         else if(param1 == §#!2§)
         {
            this.§,#§ = 2000;
            this.§+!5§ = §>G§;
            §]!8§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§,#§ = 1200;
            if(!§]!8§.objects.mMightyEagleAdded)
            {
               §]!8§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§,#§ = 1200;
            if(!§]!8§.objects.mMightyEagleAdded)
            {
               §]!8§.camera.goToBirdView();
               §]!8§.slingshot.makeBirdsJumpForJoy();
            }
            §5!O§.§-q§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §0i§)
         {
            §5!O§.§ for§();
            §5!O§.§-q§("LevelFailedPigs1");
            this.§,#§ = 1200;
            §]!8§.camera.goToCastleView();
            §]!8§.objects.makePigsSmile(5);
         }
         this.§;!X§ = param1;
      }
      
      public function §7![§(param1:Number) : void
      {
         this.§'!6§ = Math.max(this.§'!6§,param1);
      }
      
      protected function §]!G§() : Boolean
      {
         return §]!8§.slingshot.mSlingShotState == §=!!§.§^!D§ && !§]!8§.objects.hasBirds();
      }
      
      public function §?!P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§?w§ = null;
         this.§=N§ -= param1;
         if(this.§=7§)
         {
            this.§'!6§ -= param1;
            if(this.§'!6§ < 0)
            {
               this.§=N§ = 0;
            }
         }
         if(this.§=N§ <= 0 && !this.§?!8§(false))
         {
            this.§=N§ = §'!P§;
            _loc2_ = §]!8§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§=7§ || this.§'!6§ > 0))
            {
               if((!this.§=7§ || this.§'!6§ > 6000) && !§]!8§.objects.isPigsAlive())
               {
                  this.§'!6§ = 6000;
                  this.§=7§ = true;
               }
               else if(!this.§=7§ && this.§]!G§())
               {
                  this.§'!6§ = 15000;
                  this.§=7§ = true;
               }
            }
            else if(!§]!8§.objects.isPigsAlive() && !§]!8§.objects.mSardineCanAdded && !§]!8§.objects.mMightyEagleAdded)
            {
               this.§&!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§]!G§())
            {
               if(§]!8§.objects.mMightyEagleAdded)
               {
                  if(§]!8§.objects.mMightyEagleHasTouchedGround && §]!8§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§&!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§]!8§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§=N§ = §'!P§;
                  }
               }
               else if(!§]!8§.objects.mSardineCanAdded)
               {
                  this.§&!%§(§0i§);
               }
            }
            if(this.§?!8§(false))
            {
               §]!8§.gameOver();
            }
         }
         this.§,#§ -= param1;
         if(this.§,#§ < 0)
         {
            this.§,#§ = 0;
         }
         if(this.§;!X§ == §>!Z§)
         {
            §]!8§.updatePigAnimations(param1);
            if(!§]!8§.camera.isOnCastleView() && §]!8§.camera.mCurrentAction != § true§.§6D§)
            {
               this.§;!^§(§&!M§);
            }
         }
         else if(this.§;!X§ == §#!2§)
         {
            if(this.§,#§ <= 0)
            {
               _loc3_ = §]!8§.objects.hasBirds();
               if(_loc3_ && this.§+!5§ > 0)
               {
                  this.§,#§ = 2000;
                  this.§=N§ = 0;
                  this.§+!5§ = this.§+!5§ - 1;
               }
               else if(!§3>§.§8!$§.objects.mMightyEagleAdded)
               {
                  this.§;!^§(§&!M§);
               }
            }
            else
            {
               §]!8§.updatePigAnimations(param1);
            }
            if(!§]!8§.camera.isOnCastleView() && §]!8§.camera.mCurrentAction != § true§.§6D§)
            {
               this.§;!^§(§&!M§);
            }
         }
         else if(this.§;!X§ == § !C§)
         {
            if(this.§,#§ <= 0)
            {
               this.§;!^§(§&!M§);
            }
         }
         else if(this.§;!X§ == §&!M§)
         {
            if(§]!8§.camera.isOnCastleView() && §]!8§.camera.mCurrentAction != § true§.§6D§)
            {
               this.§;!^§(§>!Z§);
            }
         }
         else if(this.§;!X§ == §while§)
         {
            if(!(_loc4_ = §]!8§.activeObject) || _loc4_.§;&§ < _loc4_.§-#§)
            {
               if(_loc4_ && _loc4_ is § !7§ && (!(_loc4_ as §'!+§).§[p§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§-c§ = true;
                  this.§;!^§(§#!2§);
               }
               §]!8§.activeObject = null;
               this.§;!^§(§#!2§);
            }
         }
         else if(this.§;!X§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§,#§ <= 0)
            {
               if(§]!8§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§,#§ = 1000;
               }
               else
               {
                  this.§;!^§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §&!%§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§=7§)
         {
            this.§=7§ = true;
         }
         if(new Date().time - §]!8§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§]!8§.slingshot.mDragging)
         {
            return;
         }
         if(§]!8§.objects.isWorldAtSleep())
         {
            this.§'!6§ = Math.min(this.§'!6§,3500);
         }
         if(this.§'!6§ <= 0)
         {
            this.§;!^§(param1,param2);
         }
      }
      
      public function §?!8§(param1:Boolean = false) : Boolean
      {
         return (this.§;!X§ == LEVEL_STATE_VICTORY2_END || this.§;!X§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§;!X§ == §0i§) && (!param1 || this.§,#§ <= 0 && this.§;!X§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §@h§() : Boolean
      {
         return this.§;!X§ == LEVEL_STATE_VICTORY2_END || this.§;!X§ == §0i§;
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
         if(!this.§3r§ || !§]!8§.mReadyToRun)
         {
            return;
         }
         if(!(§]!8§.slingshot.mDragging || §]!8§.camera.mDragging))
         {
            if(this.§;!X§ == §#!2§ || this.§;!X§ == §>!Z§ || this.§;!X§ == §&!M§)
            {
               if(!§]!8§.isPlayingReplay())
               {
                  §]!8§.camera.adjustManualScale(param1);
               }
               else
               {
                  §]!8§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §,!W§(param1:int) : void
      {
         this.§ V§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§3r§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §%!]§.§;<§();
         if(this.§?!8§(false))
         {
            return;
         }
         if(!§]!8§.isPlayingReplay())
         {
            if(§]!8§.activeObject && this.§;!X§ == §while§ || this.§-c§)
            {
               this.§-c§ = false;
               §]!8§.activatePowerup();
               return;
            }
            _loc4_ = §]!8§.screenToBox2D(param1,param2);
            if(§]!8§.slingshot.canStartDragging(_loc4_))
            {
               §]!8§.slingshot.startDragging();
               this.§;!^§(§&!M§);
            }
            else
            {
               §]!8§.camera.startDragging(param1,param2);
            }
            return;
         }
         §]!8§.camera.startDragging(param1,param2);
         §]!8§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§3r§)
         {
            return;
         }
         §%!]§.§@@§();
         if(this.§;!X§ == § !C§)
         {
            this.§;!^§(§&!M§);
         }
         if(§]!8§.slingshot.mDragging)
         {
            _loc3_ = §]!8§.screenToBox2D(param1,param2);
            §]!8§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§]!8§.slingshot.canShootTheBird())
            {
               §]!8§.slingshot.shoot();
               this.§;!^§(§while§);
            }
            else
            {
               §]!8§.slingshot.cancelDragging();
            }
         }
         if(§]!8§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §]!8§.camera.dragToNewPoint(param1,param2);
            }
            §]!8§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§3r§)
         {
            return;
         }
         if(§]!8§.slingshot.mDragging)
         {
            _loc3_ = §]!8§.screenToBox2D(param1,param2);
            §]!8§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§]!8§.camera.mDragging)
         {
            §]!8§.camera.dragToNewPoint(param1,param2);
         }
         this.§&!S§ = param1;
         this.§6§ = param2;
      }
      
      public function §4=§() : Point
      {
         return new Point(this.§&!S§,this.§6§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§5!1§.§0!S§(this.§5!1§.getValue() + param1);
         this.§7![§(§3v§);
         if(this.§;!X§ == §#!2§)
         {
            this.§,#§ = 2000;
            this.§+!5§ = §>G§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§5!1§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§3>§.§8!$§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §"!T§.getLevelForId(§"!T§.§-Q§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§3r§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§3r§ = param1;
      }
   }
}

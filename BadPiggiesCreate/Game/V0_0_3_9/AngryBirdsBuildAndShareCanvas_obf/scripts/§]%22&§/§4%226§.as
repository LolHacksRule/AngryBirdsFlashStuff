package §]"&§
{
   import §!!A§.§""5§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §=b§.§-!K§;
   import §=b§.§5?§;
   import §@!;§.§%"-§;
   import §@!N§.§2i§;
   import §]r§.§9!R§;
   import §]r§.§<!$§;
   import §]r§.§`!F§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §4"6§ extends §`!z§
   {
      
      public static const §-"&§:int = 0;
      
      public static const §#!T§:int = 1;
      
      public static const §3!j§:int = 2;
      
      public static const §]a§:int = 3;
      
      public static const §7!T§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §'b§:int = 7;
      
      protected static const §4@§:Number = §2i§.MANUAL_SCALE_STEP / 100;
      
      public static const §1!k§:Number = 2000;
      
      public static const §>!"§:Number = 2500;
      
      public static const §^o§:int = 5;
       
      
      public var §3!U§:int = 0;
      
      protected var §!!]§:int = 0;
      
      public var §[!0§:Number;
      
      protected var §!!e§:Number = 0;
      
      protected var §0!H§:Boolean = false;
      
      private var §4L§:Number = 0;
      
      public var §&!p§:Number = 0;
      
      protected var §>z§:Boolean;
      
      protected var §-!1§:Number = 0;
      
      protected var §?;§:Number = 0;
      
      protected var §9!`§:Boolean = true;
      
      protected var §@c§:§""5§;
      
      public function §4"6§(param1:§-!K§)
      {
         this.§@c§ = new §""5§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§@c§.§9!<§(0);
         this.§3!U§ = -1;
         this.§!!]§ = 0;
         this.§!!e§ = 0;
         this.§0!H§ = false;
         this.§5!^§(§-"&§);
         this.§[!0§ = §1!k§;
         §5!G§(true);
         §;!x§.objects.setDamageEnabled(true);
         §;!x§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §;!x§.update(param1,true);
         this.§!!R§(param1);
         this.§'"4§(param1);
      }
      
      private function §!!R§(param1:int) : void
      {
         if(this.§!!]§ != 0)
         {
            §;!x§.camera.adjustManualScale(this.§!!]§ > 0,param1 * §4@§);
         }
      }
      
      public function clearLevel() : void
      {
         §;!x§.clearLevel();
         removeEventListeners();
         this.§3!U§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §^h§() : Boolean
      {
         if(§;!x§.camera.mCurrentCameraSliderLocation < §2i§.§]&§)
         {
            return false;
         }
         if(!§;!x§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §=x§(param1:int) : void
      {
         var _loc2_:§2i§ = §;!x§.camera;
         if(_loc2_.§8!-§ > 0)
         {
            _loc2_.§8!-§ -= param1;
            if(_loc2_.§8!-§ <= 0)
            {
               if(this.§^h§())
               {
                  _loc2_.§8!-§ = -1;
                  if(§;!x§.slingshot.birdsAvailable)
                  {
                     _loc2_.§3!;§();
                  }
               }
               else
               {
                  _loc2_.§8!-§ = §2i§.§&o§ / 2;
               }
            }
         }
      }
      
      public function §5!^§(param1:int, param2:Boolean = false) : void
      {
         if(this.§ !e§(false) && !param2)
         {
            return;
         }
         if(param1 == §-"&§)
         {
            this.§&!p§ = 2000;
         }
         else if(param1 == §#!T§)
         {
            §;!x§.camera.goToBirdView();
         }
         else if(param1 == §3!j§)
         {
            this.§>z§ = false;
            this.§&!p§ = 5000;
            §;!x§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §]a§)
         {
            §;!x§.camera.goToCastleView();
         }
         else if(param1 == §7!T§)
         {
            this.§&!p§ = 2000;
            this.§4L§ = §^o§;
            §;!x§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§&!p§ = 1200;
            if(!§;!x§.objects.mMightyEagleAdded)
            {
               §;!x§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§&!p§ = 1200;
            if(!§;!x§.objects.mMightyEagleAdded)
            {
               §;!x§.camera.goToBirdView();
               §;!x§.slingshot.makeBirdsJumpForJoy();
            }
            §'!B§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §'b§)
         {
            §'!B§.§>T§();
            §'!B§.playSound("LevelFailedPigs1");
            this.§&!p§ = 1200;
            §;!x§.camera.goToCastleView();
            §;!x§.objects.makePigsSmile(5);
         }
         this.§3!U§ = param1;
      }
      
      public function §9+§(param1:Number) : void
      {
         this.§!!e§ = Math.max(this.§!!e§,param1);
      }
      
      protected function §1!`§() : Boolean
      {
         return §;!x§.slingshot.mSlingShotState == §5?§.§'h§ && !§;!x§.objects.hasBirds();
      }
      
      public function §'"4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§9!R§ = null;
         this.§[!0§ -= param1;
         if(this.§0!H§)
         {
            this.§!!e§ -= param1;
            if(this.§!!e§ < 0)
            {
               this.§[!0§ = 0;
            }
         }
         if(this.§[!0§ <= 0 && !this.§ !e§(false))
         {
            this.§[!0§ = §1!k§;
            _loc2_ = §;!x§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§0!H§ || this.§!!e§ > 0))
            {
               if((!this.§0!H§ || this.§!!e§ > 6000) && !§;!x§.objects.isPigsAlive())
               {
                  this.§!!e§ = 6000;
                  this.§0!H§ = true;
               }
               else if(!this.§0!H§ && this.§1!`§())
               {
                  this.§!!e§ = 15000;
                  this.§0!H§ = true;
               }
            }
            else if(!§;!x§.objects.isPigsAlive() && !§;!x§.objects.mSardineCanAdded && !§;!x§.objects.mMightyEagleAdded)
            {
               this.§[!r§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§1!`§())
            {
               if(§;!x§.objects.mMightyEagleAdded)
               {
                  if(§;!x§.objects.mMightyEagleHasTouchedGround && §;!x§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§[!r§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§;!x§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§[!0§ = §1!k§;
                  }
               }
               else if(!§;!x§.objects.mSardineCanAdded)
               {
                  this.§[!r§(§'b§);
               }
            }
            if(this.§ !e§(false))
            {
               §;!x§.gameOver();
            }
         }
         this.§&!p§ -= param1;
         if(this.§&!p§ < 0)
         {
            this.§&!p§ = 0;
         }
         if(this.§3!U§ == §]a§)
         {
            §;!x§.updatePigAnimations(param1);
            if(!§;!x§.camera.isOnCastleView() && §;!x§.camera.mCurrentAction != §2i§.§7e§)
            {
               this.§5!^§(§#!T§);
            }
         }
         else if(this.§3!U§ == §7!T§)
         {
            if(this.§&!p§ <= 0)
            {
               _loc3_ = §;!x§.objects.hasBirds();
               if(_loc3_ && this.§4L§ > 0)
               {
                  this.§&!p§ = 2000;
                  this.§[!0§ = 0;
                  this.§4L§ = this.§4L§ - 1;
               }
               else if(!§%s§.§`!f§.objects.mMightyEagleAdded)
               {
                  this.§5!^§(§#!T§);
               }
            }
            else
            {
               §;!x§.updatePigAnimations(param1);
            }
            if(!§;!x§.camera.isOnCastleView() && §;!x§.camera.mCurrentAction != §2i§.§7e§)
            {
               this.§5!^§(§#!T§);
            }
         }
         else if(this.§3!U§ == §-"&§)
         {
            if(this.§&!p§ <= 0)
            {
               this.§5!^§(§#!T§);
            }
         }
         else if(this.§3!U§ == §#!T§)
         {
            if(§;!x§.camera.isOnCastleView() && §;!x§.camera.mCurrentAction != §2i§.§7e§)
            {
               this.§5!^§(§]a§);
            }
         }
         else if(this.§3!U§ == §3!j§)
         {
            if(!(_loc4_ = §;!x§.activeObject) || _loc4_.§7!D§ < _loc4_.§@!#§)
            {
               if(_loc4_ && _loc4_ is §`!F§ && (!(_loc4_ as §<!$§).§!!K§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§>z§ = true;
                  this.§5!^§(§7!T§);
               }
               §;!x§.activeObject = null;
               this.§5!^§(§7!T§);
            }
         }
         else if(this.§3!U§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§&!p§ <= 0)
            {
               if(§;!x§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§&!p§ = 1000;
               }
               else
               {
                  this.§5!^§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §[!r§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§0!H§)
         {
            this.§0!H§ = true;
         }
         if(new Date().time - §;!x§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§;!x§.slingshot.mDragging)
         {
            return;
         }
         if(§;!x§.objects.isWorldAtSleep())
         {
            this.§!!e§ = Math.min(this.§!!e§,3500);
         }
         if(this.§!!e§ <= 0)
         {
            this.§5!^§(param1,param2);
         }
      }
      
      public function § !e§(param1:Boolean = false) : Boolean
      {
         return (this.§3!U§ == LEVEL_STATE_VICTORY2_END || this.§3!U§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§3!U§ == §'b§) && (!param1 || this.§&!p§ <= 0 && this.§3!U§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §@!r§() : Boolean
      {
         return this.§3!U§ == LEVEL_STATE_VICTORY2_END || this.§3!U§ == §'b§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§0!s§(param1.delta > 0);
         }
      }
      
      public function §0!s§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§9!`§ || !§;!x§.mReadyToRun)
         {
            return;
         }
         if(!(§;!x§.slingshot.mDragging || §;!x§.camera.mDragging))
         {
            if(this.§3!U§ == §7!T§ || this.§3!U§ == §]a§ || this.§3!U§ == §#!T§)
            {
               if(!§;!x§.isPlayingReplay())
               {
                  §;!x§.camera.adjustManualScale(param1,param2 == 0 ? Number(§2i§.MANUAL_SCALE_STEP) : Number(param2));
               }
               else
               {
                  §;!x§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §&!<§(param1:int) : void
      {
         this.§!!]§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§9!`§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §%"-§.§in §();
         if(this.§ !e§(false))
         {
            return;
         }
         if(!§;!x§.isPlayingReplay())
         {
            if(§;!x§.activeObject && this.§3!U§ == §3!j§ || this.§>z§)
            {
               this.§>z§ = false;
               §;!x§.activatePowerup();
               return;
            }
            _loc4_ = §;!x§.screenToBox2D(param1,param2);
            if(§;!x§.slingshot.canStartDragging(_loc4_))
            {
               §;!x§.slingshot.startDragging();
               this.§5!^§(§#!T§);
            }
            else
            {
               §;!x§.camera.startDragging(param1,param2);
            }
            return;
         }
         §;!x§.camera.startDragging(param1,param2);
         §;!x§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§9!`§)
         {
            return;
         }
         §%"-§.§5!Q§();
         if(this.§3!U§ == §-"&§)
         {
            this.§5!^§(§#!T§);
         }
         if(§;!x§.slingshot.mDragging)
         {
            _loc3_ = §;!x§.screenToBox2D(param1,param2);
            §;!x§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§;!x§.slingshot.canShootTheBird())
            {
               §;!x§.slingshot.shoot();
               this.§5!^§(§3!j§);
            }
            else
            {
               §;!x§.slingshot.cancelDragging();
            }
         }
         if(§;!x§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §;!x§.camera.dragToNewPoint(param1,param2);
            }
            §;!x§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§9!`§)
         {
            return;
         }
         if(§;!x§.slingshot.mDragging)
         {
            _loc3_ = §;!x§.screenToBox2D(param1,param2);
            §;!x§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§;!x§.camera.mDragging)
         {
            §;!x§.camera.dragToNewPoint(param1,param2);
         }
         this.§-!1§ = param1;
         this.§?;§ = param2;
      }
      
      public function §^! §() : Point
      {
         return new Point(this.§-!1§,this.§?;§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§@c§.§9!<§(this.§@c§.getValue() + param1);
         this.§9+§(§>!"§);
         if(this.§3!U§ == §7!T§)
         {
            this.§&!p§ = 2000;
            this.§4L§ = §^o§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§@c§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§%s§.§`!f§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §1!c§.§-!q§(§1!c§.§'Z§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§9!`§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§9!`§ = param1;
      }
   }
}

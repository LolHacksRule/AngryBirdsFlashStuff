package §5#§
{
   import § !r§.§%s§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §8!Q§.§2!7§;
   import §<!<§.§7E§;
   import §<!<§.§;§;
   import §>!'§.§&!6§;
   import §>!'§.§7!U§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import §`a§.§ !U§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@o§ extends §?o§
   {
      
      public static const §9!q§:int = 0;
      
      public static const §'!m§:int = 1;
      
      public static const §5j§:int = 2;
      
      public static const §%!#§:int = 3;
      
      public static const § !j§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%!s§:int = 7;
      
      private static const §!U§:Number = § !U§.MANUAL_SCALE_STEP / 100;
      
      public static const §[>§:Number = 2000;
      
      public static const §=!f§:Number = 2500;
       
      
      public var §<!]§:int = 0;
      
      private var §29§:int = 0;
      
      public var §0!X§:Number;
      
      protected var §]!K§:Number = 0;
      
      protected var §]!b§:Boolean = false;
      
      public var §3!-§:Number = 0;
      
      protected var §4!i§:Boolean;
      
      private var §=>§:Number = 0;
      
      private var §+!@§:Number = 0;
      
      protected var §,v§:Boolean = true;
      
      protected var §'!g§:§2!7§;
      
      public function §@o§(param1:§7E§)
      {
         this.§'!g§ = new §2!7§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§'!g§.assign(0);
         this.§<!]§ = -1;
         this.§29§ = 0;
         this.§]!K§ = 0;
         this.§]!b§ = false;
         this.§^!o§(§9!q§);
         this.§0!X§ = §[>§;
         §05§(true);
         §-n§.objects.setDamageEnabled(true);
         §-n§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §-n§.update(param1,true);
         this.§>y§(param1);
         this.§+!+§(param1);
      }
      
      private function §>y§(param1:int) : void
      {
         if(this.§29§ != 0)
         {
            §-n§.camera.adjustManualScale(this.§29§ > 0,param1 * §!U§);
         }
      }
      
      public function clearLevel() : void
      {
         §-n§.clearLevel();
         removeEventListeners();
         this.§<!]§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §1I§() : Boolean
      {
         if(§-n§.camera.mCurrentCameraSliderLocation < § !U§.§&n§)
         {
            return false;
         }
         if(!§-n§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §,!<§(param1:int) : void
      {
         var _loc2_:§ !U§ = §-n§.camera;
         if(_loc2_.§[!0§ > 0)
         {
            _loc2_.§[!0§ -= param1;
            if(_loc2_.§[!0§ <= 0)
            {
               if(this.§1I§())
               {
                  _loc2_.§[!0§ = -1;
                  if(§-n§.slingshot.birdsAvailable)
                  {
                     _loc2_.§3a§();
                  }
               }
               else
               {
                  _loc2_.§[!0§ = § !U§.§^,§ / 2;
               }
            }
         }
      }
      
      public function §^!o§(param1:int, param2:Boolean = false) : void
      {
         if(this.§#!=§(false) && !param2)
         {
            return;
         }
         if(param1 == §9!q§)
         {
            this.§3!-§ = 2000;
         }
         else if(param1 == §'!m§)
         {
            §-n§.camera.goToBirdView();
         }
         else if(param1 == §5j§)
         {
            this.§4!i§ = false;
            this.§3!-§ = 5000;
            §-n§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §%!#§)
         {
            §-n§.camera.goToCastleView();
         }
         else if(param1 == § !j§)
         {
            this.§3!-§ = 2000;
            §-n§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§3!-§ = 1200;
            if(!§-n§.objects.mMightyEagleAdded)
            {
               §-n§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§3!-§ = 1200;
            if(!§-n§.objects.mMightyEagleAdded)
            {
               §-n§.camera.goToBirdView();
               §-n§.slingshot.makeBirdsJumpForJoy();
            }
            §+!§.§4c§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §%!s§)
         {
            §+!§.§'!Q§();
            §+!§.§4c§("LevelFailedPigs1");
            this.§3!-§ = 1200;
            §-n§.camera.goToCastleView();
            §-n§.objects.makePigsSmile(5);
         }
         this.§<!]§ = param1;
      }
      
      public function §8!0§(param1:Number) : void
      {
         this.§]!K§ = Math.max(this.§]!K§,param1);
      }
      
      protected function §]!&§() : Boolean
      {
         return §-n§.slingshot.mSlingShotState == §;§.§>!]§ && !§-n§.objects.hasBirds();
      }
      
      public function §+!+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§<!3§ = null;
         this.§0!X§ -= param1;
         if(this.§]!b§)
         {
            this.§]!K§ -= param1;
            if(this.§]!K§ < 0)
            {
               this.§0!X§ = 0;
            }
         }
         if(this.§0!X§ <= 0 && !this.§#!=§(false))
         {
            this.§0!X§ = §[>§;
            _loc2_ = §-n§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§]!b§ || this.§]!K§ > 0))
            {
               if((!this.§]!b§ || this.§]!K§ > 6000) && !§-n§.objects.isPigsAlive())
               {
                  this.§]!K§ = 6000;
                  this.§]!b§ = true;
               }
               else if(!this.§]!b§ && this.§]!&§())
               {
                  this.§]!K§ = 15000;
                  this.§]!b§ = true;
               }
            }
            else if(!§-n§.objects.isPigsAlive() && !§-n§.objects.mSardineCanAdded && !§-n§.objects.mMightyEagleAdded)
            {
               this.§ 1§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§]!&§())
            {
               if(§-n§.objects.mMightyEagleAdded)
               {
                  if(§-n§.objects.mMightyEagleHasTouchedGround && §-n§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§ 1§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§-n§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§0!X§ = §[>§;
                  }
               }
               else if(!§-n§.objects.mSardineCanAdded)
               {
                  this.§ 1§(§%!s§);
               }
            }
            if(this.§#!=§(false))
            {
               §-n§.gameOver();
            }
         }
         this.§3!-§ -= param1;
         if(this.§3!-§ < 0)
         {
            this.§3!-§ = 0;
         }
         if(this.§<!]§ == §%!#§)
         {
            §-n§.updatePigAnimations(param1);
            if(!§-n§.camera.isOnCastleView() && §-n§.camera.mCurrentAction != § !U§.set)
            {
               this.§^!o§(§'!m§);
            }
         }
         else if(this.§<!]§ == § !j§)
         {
            if(this.§3!-§ <= 0)
            {
               if(§-n§.objects.isWorldAtSleep())
               {
                  if(!§'!V§.§1!2§.objects.mMightyEagleAdded)
                  {
                     this.§^!o§(§'!m§);
                  }
               }
               else
               {
                  this.§0!X§ = 0;
                  this.§3!-§ = 2000;
               }
            }
            else
            {
               §-n§.updatePigAnimations(param1);
            }
            if(!§-n§.camera.isOnCastleView() && §-n§.camera.mCurrentAction != § !U§.set)
            {
               this.§^!o§(§'!m§);
            }
         }
         else if(this.§<!]§ == §9!q§)
         {
            if(this.§3!-§ <= 0)
            {
               this.§^!o§(§'!m§);
            }
         }
         else if(this.§<!]§ == §'!m§)
         {
            if(§-n§.camera.isOnCastleView() && §-n§.camera.mCurrentAction != § !U§.set)
            {
               this.§^!o§(§%!#§);
            }
         }
         else if(this.§<!]§ == §5j§)
         {
            _loc3_ = §-n§.activeObject;
            if(!_loc3_ || _loc3_.§!!>§ < _loc3_.§1!s§)
            {
               if(_loc3_ && _loc3_ is §&!6§ && (!(_loc3_ as §7!U§).§6!i§ || _loc3_.getSpecialAnimationProgress() >= 0))
               {
                  this.§4!i§ = true;
                  this.§^!o§(§ !j§);
               }
               §-n§.activeObject = null;
               this.§^!o§(§ !j§);
            }
         }
         else if(this.§<!]§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§3!-§ <= 0)
            {
               if(§-n§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§3!-§ = 1000;
               }
               else
               {
                  this.§^!o§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function § 1§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§]!b§)
         {
            this.§]!b§ = true;
         }
         if(new Date().time - §-n§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§-n§.slingshot.mDragging)
         {
            return;
         }
         if(§-n§.objects.isWorldAtSleep())
         {
            this.§]!K§ = Math.min(this.§]!K§,3500);
         }
         if(this.§]!K§ <= 0)
         {
            this.§^!o§(param1,param2);
         }
      }
      
      public function §#!=§(param1:Boolean = false) : Boolean
      {
         return (this.§<!]§ == LEVEL_STATE_VICTORY2_END || this.§<!]§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§<!]§ == §%!s§) && (!param1 || this.§3!-§ <= 0 && this.§<!]§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §,!>§() : Boolean
      {
         return this.§<!]§ == LEVEL_STATE_VICTORY2_END || this.§<!]§ == §%!s§;
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
         if(!this.§,v§ || !§-n§.mReadyToRun)
         {
            return;
         }
         if(!(§-n§.slingshot.mDragging || §-n§.camera.mDragging))
         {
            if(this.§<!]§ == § !j§ || this.§<!]§ == §%!#§ || this.§<!]§ == §'!m§)
            {
               if(!§-n§.isPlayingReplay())
               {
                  §-n§.camera.adjustManualScale(param1);
               }
               else
               {
                  §-n§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §1E§(param1:int) : void
      {
         this.§29§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§,v§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §%s§.§[!@§();
         if(this.§#!=§(false))
         {
            return;
         }
         if(!§-n§.isPlayingReplay())
         {
            if(§-n§.activeObject && this.§<!]§ == §5j§ || this.§4!i§)
            {
               this.§4!i§ = false;
               §-n§.activatePowerup();
               return;
            }
            _loc4_ = §-n§.screenToBox2D(param1,param2);
            if(§-n§.slingshot.canStartDragging(_loc4_))
            {
               §-n§.slingshot.startDragging();
               this.§^!o§(§'!m§);
            }
            else
            {
               §-n§.camera.startDragging(param1,param2);
            }
            return;
         }
         §-n§.camera.startDragging(param1,param2);
         §-n§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§,v§)
         {
            return;
         }
         §%s§.§<1§();
         if(this.§<!]§ == §9!q§)
         {
            this.§^!o§(§'!m§);
         }
         if(§-n§.slingshot.mDragging)
         {
            _loc3_ = §-n§.screenToBox2D(param1,param2);
            §-n§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§-n§.slingshot.canShootTheBird())
            {
               §-n§.slingshot.shoot();
               this.§^!o§(§5j§);
            }
            else
            {
               §-n§.slingshot.cancelDragging();
            }
         }
         if(§-n§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §-n§.camera.dragToNewPoint(param1,param2);
            }
            §-n§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§,v§)
         {
            return;
         }
         if(§-n§.slingshot.mDragging)
         {
            _loc3_ = §-n§.screenToBox2D(param1,param2);
            §-n§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§-n§.camera.mDragging)
         {
            §-n§.camera.dragToNewPoint(param1,param2);
         }
         this.§=>§ = param1;
         this.§+!@§ = param2;
      }
      
      public function §[%§() : Point
      {
         return new Point(this.§=>§,this.§+!@§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§'!g§.assign(this.§'!g§.getValue() + param1);
         this.§8!0§(§=!f§);
      }
      
      override public function getScore() : int
      {
         return this.§'!g§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§'!V§.§1!2§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §1^§.§'!_§(§1^§.§ ]§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§,v§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§,v§ = param1;
      }
   }
}

package §6!P§
{
   import §#V§.§,!W§;
   import §#[§.§3#§;
   import §#b§.§5!#§;
   import §-A§.§ '§;
   import §-A§.§%9§;
   import §1o§.§'M§;
   import §;z§.§!+§;
   import §;z§.§<1§;
   import §;z§.§=P§;
   import §=g§.§3U§;
   import §@!W§.§8!W§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §5!+§ extends §>A§
   {
      
      public static const §3!5§:int = 0;
      
      public static const §@!0§:int = 1;
      
      public static const §+v§:int = 2;
      
      public static const §]!]§:int = 3;
      
      public static const §7!#§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §>X§:int = 7;
      
      protected static const §`j§:Number = §,!W§.§+7§ / 100;
      
      public static const §"]§:Number = 2000;
      
      public static const §=!K§:Number = 2500;
      
      public static const §>!-§:int = 5;
       
      
      public var §9!!§:int = 0;
      
      protected var §7!8§:int = 0;
      
      public var §&K§:Number;
      
      protected var §#v§:Number = 0;
      
      protected var §6v§:Boolean = false;
      
      private var §3!0§:Number = 0;
      
      public var §=!!§:Number = 0;
      
      protected var §^!Q§:Boolean;
      
      protected var §@C§:Number = 0;
      
      protected var §;a§:Number = 0;
      
      protected var §6R§:Boolean = true;
      
      protected var §8!]§:§3#§;
      
      public function §5!+§(param1:§%9§)
      {
         this.§8!]§ = new §3#§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§8!]§.§&!Y§(0);
         this.§9!!§ = -1;
         this.§7!8§ = 0;
         this.§#v§ = 0;
         this.§6v§ = false;
         this.changeGameState(§3!5§);
         this.§&K§ = §"]§;
         §1q§(true);
         §return§.objects.setDamageEnabled(true);
         §return§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §return§.update(param1,true);
         this.§<!0§(param1);
         this.§>!&§(param1);
      }
      
      private function §<!0§(param1:int) : void
      {
         if(this.§7!8§ != 0)
         {
            §return§.camera.adjustManualScale(this.§7!8§ > 0,param1 * §`j§);
         }
      }
      
      public function clearLevel() : void
      {
         §return§.clearLevel();
         removeEventListeners();
         this.§9!!§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §>!K§() : Boolean
      {
         if(§return§.camera.mCurrentCameraSliderLocation < §,!W§.§;!=§)
         {
            return false;
         }
         if(!§return§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §8!P§(param1:int) : void
      {
         var _loc2_:§,!W§ = §return§.camera;
         if(_loc2_.§0B§ > 0)
         {
            _loc2_.§0B§ -= param1;
            if(_loc2_.§0B§ <= 0)
            {
               if(this.§>!K§())
               {
                  _loc2_.§0B§ = -1;
                  if(§return§.slingshot.birdsAvailable)
                  {
                     _loc2_.§>;§();
                  }
               }
               else
               {
                  _loc2_.§0B§ = §,!W§.§'!W§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§!!O§(false) && !param2)
         {
            return;
         }
         if(param1 == §3!5§)
         {
            this.§=!!§ = 2000;
         }
         else if(param1 == §@!0§)
         {
            §return§.camera.goToBirdView();
         }
         else if(param1 == §+v§)
         {
            this.§^!Q§ = false;
            this.§=!!§ = 5000;
            §return§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §]!]§)
         {
            §return§.camera.goToCastleView();
         }
         else if(param1 == §7!#§)
         {
            this.§=!!§ = 2000;
            this.§3!0§ = §>!-§;
            §return§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§=!!§ = 1200;
            if(!§return§.objects.mMightyEagleAdded)
            {
               §return§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§=!!§ = 1200;
            if(!§return§.objects.mMightyEagleAdded)
            {
               §return§.camera.goToBirdView();
               §return§.slingshot.makeBirdsJumpForJoy();
            }
            §'M§.§1T§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §>X§)
         {
            §'M§.§"!?§();
            §'M§.§1T§("LevelFailedPigs1");
            this.§=!!§ = 1200;
            §return§.camera.goToCastleView();
            §return§.objects.makePigsSmile(5);
         }
         this.§9!!§ = param1;
      }
      
      public function §#P§(param1:Number) : void
      {
         this.§#v§ = Math.max(this.§#v§,param1);
      }
      
      protected function §try§() : Boolean
      {
         return §return§.slingshot.mSlingShotState == § '§.§4#§ && !§return§.objects.hasBirds();
      }
      
      public function §>!&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§!+§ = null;
         this.§&K§ -= param1;
         if(this.§6v§)
         {
            this.§#v§ -= param1;
            if(this.§#v§ < 0)
            {
               this.§&K§ = 0;
            }
         }
         if(this.§&K§ <= 0 && !this.§!!O§(false))
         {
            this.§&K§ = §"]§;
            _loc2_ = §return§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§6v§ || this.§#v§ > 0))
            {
               if((!this.§6v§ || this.§#v§ > 6000) && !§return§.objects.isPigsAlive())
               {
                  this.§#v§ = 6000;
                  this.§6v§ = true;
               }
               else if(!this.§6v§ && this.§try§())
               {
                  this.§#v§ = 15000;
                  this.§6v§ = true;
               }
            }
            else if(!§return§.objects.isPigsAlive() && !§return§.objects.mSardineCanAdded && !§return§.objects.mMightyEagleAdded)
            {
               this.§4F§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§try§())
            {
               if(§return§.objects.mMightyEagleAdded)
               {
                  if(§return§.objects.mMightyEagleHasTouchedGround && §return§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§4F§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§return§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§&K§ = §"]§;
                  }
               }
               else if(!§return§.objects.mSardineCanAdded)
               {
                  this.§4F§(§>X§);
               }
            }
            if(this.§!!O§(false))
            {
               §return§.gameOver();
            }
         }
         this.§=!!§ -= param1;
         if(this.§=!!§ < 0)
         {
            this.§=!!§ = 0;
         }
         if(this.§9!!§ == §]!]§)
         {
            §return§.updatePigAnimations(param1);
            if(!§return§.camera.isOnCastleView() && §return§.camera.mCurrentAction != §,!W§.§1G§)
            {
               this.changeGameState(§@!0§);
            }
         }
         else if(this.§9!!§ == §7!#§)
         {
            if(this.§=!!§ <= 0)
            {
               _loc3_ = §return§.objects.hasBirds();
               if(_loc3_ && this.§3!0§ > 0)
               {
                  this.§=!!§ = 2000;
                  this.§&K§ = 0;
                  this.§3!0§ = this.§3!0§ - 1;
               }
               else if(!§8!W§.§=X§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§@!0§);
               }
            }
            else
            {
               §return§.updatePigAnimations(param1);
            }
            if(!§return§.camera.isOnCastleView() && §return§.camera.mCurrentAction != §,!W§.§1G§)
            {
               this.changeGameState(§@!0§);
            }
         }
         else if(this.§9!!§ == §3!5§)
         {
            if(this.§=!!§ <= 0)
            {
               this.changeGameState(§@!0§);
            }
         }
         else if(this.§9!!§ == §@!0§)
         {
            if(§return§.camera.isOnCastleView() && §return§.camera.mCurrentAction != §,!W§.§1G§)
            {
               this.changeGameState(§]!]§);
            }
         }
         else if(this.§9!!§ == §+v§)
         {
            if(!(_loc4_ = §return§.activeObject) || _loc4_.§^,§ < _loc4_.§[!,§)
            {
               if(_loc4_ && _loc4_ is §<1§ && (!(_loc4_ as §=P§).§%Z§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§^!Q§ = true;
                  this.changeGameState(§7!#§);
               }
               §return§.activeObject = null;
               this.changeGameState(§7!#§);
            }
         }
         else if(this.§9!!§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§=!!§ <= 0)
            {
               if(§return§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§=!!§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §4F§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§6v§)
         {
            this.§6v§ = true;
         }
         if(new Date().time - §return§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§return§.slingshot.mDragging)
         {
            return;
         }
         if(§return§.objects.isWorldAtSleep())
         {
            this.§#v§ = Math.min(this.§#v§,3500);
         }
         if(this.§#v§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §!!O§(param1:Boolean = false) : Boolean
      {
         return (this.§9!!§ == LEVEL_STATE_VICTORY2_END || this.§9!!§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§9!!§ == §>X§) && (!param1 || this.§=!!§ <= 0 && this.§9!!§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §-?§() : Boolean
      {
         return this.§9!!§ == LEVEL_STATE_VICTORY2_END || this.§9!!§ == §>X§;
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
         if(!this.§6R§ || !§return§.mReadyToRun)
         {
            return;
         }
         if(!(§return§.slingshot.mDragging || §return§.camera.mDragging))
         {
            if(this.§9!!§ == §7!#§ || this.§9!!§ == §]!]§ || this.§9!!§ == §@!0§)
            {
               if(!§return§.isPlayingReplay())
               {
                  §return§.camera.adjustManualScale(param1);
               }
               else
               {
                  §return§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §'s§(param1:int) : void
      {
         this.§7!8§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§6R§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §3U§.§3!&§();
         if(this.§!!O§(false))
         {
            return;
         }
         if(!§return§.isPlayingReplay())
         {
            if(§return§.activeObject && this.§9!!§ == §+v§ || this.§^!Q§)
            {
               this.§^!Q§ = false;
               §return§.activatePowerup();
               return;
            }
            _loc4_ = §return§.screenToBox2D(param1,param2);
            if(§return§.slingshot.canStartDragging(_loc4_))
            {
               §return§.slingshot.startDragging();
               this.changeGameState(§@!0§);
            }
            else
            {
               §return§.camera.startDragging(param1,param2);
            }
            return;
         }
         §return§.camera.startDragging(param1,param2);
         §return§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§6R§)
         {
            return;
         }
         §3U§.§8!S§();
         if(this.§9!!§ == §3!5§)
         {
            this.changeGameState(§@!0§);
         }
         if(§return§.slingshot.mDragging)
         {
            _loc3_ = §return§.screenToBox2D(param1,param2);
            §return§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§return§.slingshot.canShootTheBird())
            {
               §return§.slingshot.shoot();
               this.changeGameState(§+v§);
            }
            else
            {
               §return§.slingshot.cancelDragging();
            }
         }
         if(§return§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §return§.camera.dragToNewPoint(param1,param2);
            }
            §return§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§6R§)
         {
            return;
         }
         if(§return§.slingshot.mDragging)
         {
            _loc3_ = §return§.screenToBox2D(param1,param2);
            §return§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§return§.camera.mDragging)
         {
            §return§.camera.dragToNewPoint(param1,param2);
         }
         this.§@C§ = param1;
         this.§;a§ = param2;
      }
      
      public function §]n§() : Point
      {
         return new Point(this.§@C§,this.§;a§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§8!]§.§&!Y§(this.§8!]§.getValue() + param1);
         this.§#P§(§=!K§);
         if(this.§9!!§ == §7!#§)
         {
            this.§=!!§ = 2000;
            this.§3!0§ = §>!-§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§8!]§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§8!W§.§=X§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §5!#§.getLevelForId(§5!#§.§'D§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§6R§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§6R§ = param1;
      }
   }
}

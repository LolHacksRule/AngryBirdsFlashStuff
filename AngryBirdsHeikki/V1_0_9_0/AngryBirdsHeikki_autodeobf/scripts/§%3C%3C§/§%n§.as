package §<<§
{
   import § d§.§'!"§;
   import § d§.§3§;
   import §"W§.§ !`§;
   import §"W§.§7!6§;
   import §"W§.§;N§;
   import §%i§.§#`§;
   import §0i§.§8!b§;
   import §3r§.§1S§;
   import §8! §.§#z§;
   import §>!F§.§9!Z§;
   import §@!H§.§-f§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §%n§ extends §<6§
   {
      
      public static const §-]§:int = 0;
      
      public static const §&=§:int = 1;
      
      public static const §'!-§:int = 2;
      
      public static const §7!`§:int = 3;
      
      public static const §9!S§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §9w§:int = 7;
      
      protected static const §"!!§:Number = §-f§.§"!$§ / 100;
      
      public static const §[!C§:Number = 2000;
      
      public static const §?!1§:Number = 2500;
      
      public static const §+!P§:int = 5;
       
      
      public var §;!U§:int = 0;
      
      protected var §7R§:int = 0;
      
      public var §'K§:Number;
      
      protected var §>!<§:Number = 0;
      
      protected var §"!P§:Boolean = false;
      
      private var §#q§:Number = 0;
      
      public var §9!1§:Number = 0;
      
      protected var §[!Y§:Boolean;
      
      protected var §,@§:Number = 0;
      
      protected var §^%§:Number = 0;
      
      protected var §09§:Boolean = true;
      
      protected var §@!c§:§1S§;
      
      public function §%n§(param1:§'!"§)
      {
         this.§@!c§ = new §1S§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§@!c§.§7W§(0);
         this.§;!U§ = -1;
         this.§7R§ = 0;
         this.§>!<§ = 0;
         this.§"!P§ = false;
         this.changeGameState(§-]§);
         this.§'K§ = §[!C§;
         §'!K§(true);
         §"2§.objects.setDamageEnabled(true);
         §"2§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §"2§.update(param1,true);
         this.§1t§(param1);
         this.§?!!§(param1);
      }
      
      private function §1t§(param1:int) : void
      {
         if(this.§7R§ != 0)
         {
            §"2§.camera.adjustManualScale(this.§7R§ > 0,param1 * §"!!§);
         }
      }
      
      public function clearLevel() : void
      {
         §"2§.clearLevel();
         removeEventListeners();
         this.§;!U§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §6o§() : Boolean
      {
         if(§"2§.camera.mCurrentCameraSliderLocation < §-f§.§6?§)
         {
            return false;
         }
         if(!§"2§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §2!a§(param1:int) : void
      {
         var _loc2_:§-f§ = §"2§.camera;
         if(_loc2_.§?$§ > 0)
         {
            _loc2_.§?$§ -= param1;
            if(_loc2_.§?$§ <= 0)
            {
               if(this.§6o§())
               {
                  _loc2_.§?$§ = -1;
                  if(§"2§.slingshot.birdsAvailable)
                  {
                     _loc2_.§`!!§();
                  }
               }
               else
               {
                  _loc2_.§?$§ = §-f§.§9!I§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§@a§(false) && !param2)
         {
            return;
         }
         if(param1 == §-]§)
         {
            this.§9!1§ = 2000;
         }
         else if(param1 == §&=§)
         {
            §"2§.camera.goToBirdView();
         }
         else if(param1 == §'!-§)
         {
            this.§[!Y§ = false;
            this.§9!1§ = 5000;
            §"2§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §7!`§)
         {
            §"2§.camera.goToCastleView();
         }
         else if(param1 == §9!S§)
         {
            this.§9!1§ = 2000;
            this.§#q§ = §+!P§;
            §"2§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§9!1§ = 1200;
            if(!§"2§.objects.mMightyEagleAdded)
            {
               §"2§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§9!1§ = 1200;
            if(!§"2§.objects.mMightyEagleAdded)
            {
               §"2§.camera.goToBirdView();
               §"2§.slingshot.makeBirdsJumpForJoy();
            }
            §#`§.§2o§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §9w§)
         {
            §#`§.§2!5§();
            §#`§.§2o§("LevelFailedPigs1");
            this.§9!1§ = 1200;
            §"2§.camera.goToCastleView();
            §"2§.objects.makePigsSmile(5);
         }
         this.§;!U§ = param1;
      }
      
      public function §5!T§(param1:Number) : void
      {
         this.§>!<§ = Math.max(this.§>!<§,param1);
      }
      
      protected function §0J§() : Boolean
      {
         return §"2§.slingshot.mSlingShotState == §3§.§5m§ && !§"2§.objects.hasBirds();
      }
      
      public function §?!!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§;N§ = null;
         this.§'K§ -= param1;
         if(this.§"!P§)
         {
            this.§>!<§ -= param1;
            if(this.§>!<§ < 0)
            {
               this.§'K§ = 0;
            }
         }
         if(this.§'K§ <= 0 && !this.§@a§(false))
         {
            this.§'K§ = §[!C§;
            _loc2_ = §"2§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§"!P§ || this.§>!<§ > 0))
            {
               if((!this.§"!P§ || this.§>!<§ > 6000) && !§"2§.objects.isPigsAlive())
               {
                  this.§>!<§ = 6000;
                  this.§"!P§ = true;
               }
               else if(!this.§"!P§ && this.§0J§())
               {
                  this.§>!<§ = 15000;
                  this.§"!P§ = true;
               }
            }
            else if(!§"2§.objects.isPigsAlive() && !§"2§.objects.mSardineCanAdded && !§"2§.objects.mMightyEagleAdded)
            {
               this.§-D§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§0J§())
            {
               if(§"2§.objects.mMightyEagleAdded)
               {
                  if(§"2§.objects.mMightyEagleHasTouchedGround && §"2§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§-D§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§"2§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§'K§ = §[!C§;
                  }
               }
               else if(!§"2§.objects.mSardineCanAdded)
               {
                  this.§-D§(§9w§);
               }
            }
            if(this.§@a§(false))
            {
               §"2§.gameOver();
            }
         }
         this.§9!1§ -= param1;
         if(this.§9!1§ < 0)
         {
            this.§9!1§ = 0;
         }
         if(this.§;!U§ == §7!`§)
         {
            §"2§.updatePigAnimations(param1);
            if(!§"2§.camera.isOnCastleView() && §"2§.camera.mCurrentAction != §-f§.§ z§)
            {
               this.changeGameState(§&=§);
            }
         }
         else if(this.§;!U§ == §9!S§)
         {
            if(this.§9!1§ <= 0)
            {
               _loc3_ = §"2§.objects.hasBirds();
               if(_loc3_ && this.§#q§ > 0)
               {
                  this.§9!1§ = 2000;
                  this.§'K§ = 0;
                  this.§#q§ = this.§#q§ - 1;
               }
               else if(!§9!Z§.§5!$§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§&=§);
               }
            }
            else
            {
               §"2§.updatePigAnimations(param1);
            }
            if(!§"2§.camera.isOnCastleView() && §"2§.camera.mCurrentAction != §-f§.§ z§)
            {
               this.changeGameState(§&=§);
            }
         }
         else if(this.§;!U§ == §-]§)
         {
            if(this.§9!1§ <= 0)
            {
               this.changeGameState(§&=§);
            }
         }
         else if(this.§;!U§ == §&=§)
         {
            if(§"2§.camera.isOnCastleView() && §"2§.camera.mCurrentAction != §-f§.§ z§)
            {
               this.changeGameState(§7!`§);
            }
         }
         else if(this.§;!U§ == §'!-§)
         {
            if(!(_loc4_ = §"2§.activeObject) || _loc4_.§>[§ < _loc4_.§&J§)
            {
               if(_loc4_ && _loc4_ is § !`§ && (!(_loc4_ as §7!6§).§]!V§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§[!Y§ = true;
                  this.changeGameState(§9!S§);
               }
               §"2§.activeObject = null;
               this.changeGameState(§9!S§);
            }
         }
         else if(this.§;!U§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§9!1§ <= 0)
            {
               if(§"2§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§9!1§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §-D§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§"!P§)
         {
            this.§"!P§ = true;
         }
         if(new Date().time - §"2§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§"2§.slingshot.mDragging)
         {
            return;
         }
         if(§"2§.objects.isWorldAtSleep())
         {
            this.§>!<§ = Math.min(this.§>!<§,3500);
         }
         if(this.§>!<§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §@a§(param1:Boolean = false) : Boolean
      {
         return (this.§;!U§ == LEVEL_STATE_VICTORY2_END || this.§;!U§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§;!U§ == §9w§) && (!param1 || this.§9!1§ <= 0 && this.§;!U§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §8!,§() : Boolean
      {
         return this.§;!U§ == LEVEL_STATE_VICTORY2_END || this.§;!U§ == §9w§;
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
         if(!this.§09§ || !§"2§.mReadyToRun)
         {
            return;
         }
         if(!(§"2§.slingshot.mDragging || §"2§.camera.mDragging))
         {
            if(this.§;!U§ == §9!S§ || this.§;!U§ == §7!`§ || this.§;!U§ == §&=§)
            {
               if(!§"2§.isPlayingReplay())
               {
                  §"2§.camera.adjustManualScale(param1,param2 == 0 ? Number(§-f§.§"!$§) : Number(param2));
               }
               else
               {
                  §"2§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §+v§(param1:int) : void
      {
         this.§7R§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§09§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §8!b§.§7q§();
         if(this.§@a§(false))
         {
            return;
         }
         if(!§"2§.isPlayingReplay())
         {
            if(§"2§.activeObject && this.§;!U§ == §'!-§ || this.§[!Y§)
            {
               this.§[!Y§ = false;
               §"2§.activatePowerup();
               return;
            }
            _loc4_ = §"2§.screenToBox2D(param1,param2);
            if(§"2§.slingshot.canStartDragging(_loc4_))
            {
               §"2§.slingshot.startDragging();
               this.changeGameState(§&=§);
            }
            else
            {
               §"2§.camera.startDragging(param1,param2);
            }
            return;
         }
         §"2§.camera.startDragging(param1,param2);
         §"2§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§09§)
         {
            return;
         }
         §8!b§.§<m§();
         if(this.§;!U§ == §-]§)
         {
            this.changeGameState(§&=§);
         }
         if(§"2§.slingshot.mDragging)
         {
            _loc3_ = §"2§.screenToBox2D(param1,param2);
            §"2§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§"2§.slingshot.canShootTheBird())
            {
               §"2§.slingshot.shoot();
               this.changeGameState(§'!-§);
            }
            else
            {
               §"2§.slingshot.cancelDragging();
            }
         }
         if(§"2§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §"2§.camera.dragToNewPoint(param1,param2);
            }
            §"2§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§09§)
         {
            return;
         }
         if(§"2§.slingshot.mDragging)
         {
            _loc3_ = §"2§.screenToBox2D(param1,param2);
            §"2§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§"2§.camera.mDragging)
         {
            §"2§.camera.dragToNewPoint(param1,param2);
         }
         this.§,@§ = param1;
         this.§^%§ = param2;
      }
      
      public function §+z§() : Point
      {
         return new Point(this.§,@§,this.§^%§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§@!c§.§7W§(this.§@!c§.getValue() + param1);
         this.§5!T§(§?!1§);
         if(this.§;!U§ == §9!S§)
         {
            this.§9!1§ = 2000;
            this.§#q§ = §+!P§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§@!c§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§9!Z§.§5!$§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §#z§.§2!>§(§#z§.§@k§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§09§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§09§ = param1;
      }
   }
}

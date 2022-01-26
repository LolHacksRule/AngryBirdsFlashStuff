package § A§
{
   import § N§.§;]§;
   import §!$§.§!!O§;
   import §,+§.§@!E§;
   import §0V§.§^K§;
   import §0V§.§`!O§;
   import §39§.§-W§;
   import §3d§.§20§;
   import §3d§.§6!7§;
   import §3d§.§>!V§;
   import §3d§.§>H§;
   import §8-§.§,!P§;
   import §^Q§.§,^§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §"Y§ extends §<!D§
   {
      
      public static const §?!7§:int = 0;
      
      public static const §<a§:int = 1;
      
      public static const §6M§:int = 2;
      
      public static const §=E§:int = 3;
      
      public static const §<!<§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §3,§:int = 7;
      
      protected static const §!!R§:Number = §,!P§.§5!H§ / 100;
      
      public static const §+!7§:Number = 2000;
      
      public static const §5_§:Number = 2500;
      
      public static const §90§:int = 5;
       
      
      public var §6y§:int = 0;
      
      protected var §+^§:int = 0;
      
      public var §`w§:Number;
      
      protected var §0"§:Number = 0;
      
      protected var §&!D§:Boolean = false;
      
      private var §=!Q§:Number = 0;
      
      public var §=!5§:Number = 0;
      
      protected var § var§:Boolean;
      
      protected var §`]§:Number = 0;
      
      protected var §'!b§:Number = 0;
      
      protected var §]S§:Boolean = true;
      
      protected var §[!M§:§@!E§;
      
      public function §"Y§(param1:§`!O§)
      {
         this.§[!M§ = new §@!E§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§[!M§.§`!V§(0);
         this.§6y§ = -1;
         this.§+^§ = 0;
         this.§0"§ = 0;
         this.§&!D§ = false;
         this.changeGameState(§?!7§);
         this.§`w§ = §+!7§;
         §`!"§(true);
         §!q§.objects.setDamageEnabled(true);
         §!q§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §!q§.update(param1,true);
         this.§@y§(param1);
         this.§&l§(param1);
      }
      
      private function §@y§(param1:int) : void
      {
         if(this.§+^§ != 0)
         {
            §!q§.camera.adjustManualScale(this.§+^§ > 0,param1 * §!!R§);
         }
      }
      
      public function clearLevel() : void
      {
         §!q§.clearLevel();
         removeEventListeners();
         this.§6y§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §4p§() : Boolean
      {
         if(§!q§.camera.mCurrentCameraSliderLocation < §,!P§.§<`§)
         {
            return false;
         }
         if(!§!q§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §'Q§(param1:int) : void
      {
         var _loc2_:§,!P§ = §!q§.camera;
         if(_loc2_.§>!N§ > 0)
         {
            _loc2_.§>!N§ -= param1;
            if(_loc2_.§>!N§ <= 0)
            {
               if(this.§4p§())
               {
                  _loc2_.§>!N§ = -1;
                  if(§!q§.slingshot.birdsAvailable)
                  {
                     _loc2_.§]!B§();
                  }
               }
               else
               {
                  _loc2_.§>!N§ = §,!P§.§7g§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§^!3§(false) && !param2)
         {
            return;
         }
         if(param1 == §?!7§)
         {
            this.§=!5§ = 2000;
         }
         else if(param1 == §<a§)
         {
            §!q§.camera.goToBirdView();
         }
         else if(param1 == §6M§)
         {
            this.§ var§ = false;
            this.§=!5§ = 5000;
            §!q§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §=E§)
         {
            §!q§.camera.goToCastleView();
         }
         else if(param1 == §<!<§)
         {
            this.§=!5§ = 2000;
            this.§=!Q§ = §90§;
            §!q§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§=!5§ = 1200;
            if(!§!q§.objects.mMightyEagleAdded)
            {
               §!q§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§=!5§ = 1200;
            if(!§!q§.objects.mMightyEagleAdded)
            {
               §!q§.camera.goToBirdView();
               §!q§.slingshot.makeBirdsJumpForJoy();
            }
            §!!O§.§<D§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §3,§)
         {
            §!!O§.§+"§();
            §!!O§.§<D§("LevelFailedPigs1");
            this.§=!5§ = 1200;
            §!q§.camera.goToCastleView();
            §!q§.objects.makePigsSmile(5);
         }
         this.§6y§ = param1;
      }
      
      public function §;!0§(param1:Number) : void
      {
         this.§0"§ = Math.max(this.§0"§,param1);
      }
      
      protected function §=!^§() : Boolean
      {
         return §!q§.slingshot.mSlingShotState == §^K§.§ y§ && !§!q§.objects.hasBirds();
      }
      
      public function §&l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§20§ = null;
         this.§`w§ -= param1;
         if(this.§&!D§)
         {
            this.§0"§ -= param1;
            if(this.§0"§ < 0)
            {
               this.§`w§ = 0;
            }
         }
         if(this.§`w§ <= 0 && !this.§^!3§(false))
         {
            this.§`w§ = §+!7§;
            _loc2_ = §!q§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§&!D§ || this.§0"§ > 0))
            {
               if((!this.§&!D§ || this.§0"§ > 6000) && !§!q§.objects.isPigsAlive())
               {
                  this.§0"§ = 6000;
                  this.§&!D§ = true;
               }
               else if(!this.§&!D§ && this.§=!^§())
               {
                  this.§0"§ = 15000;
                  this.§&!D§ = true;
               }
            }
            else if(!§!q§.objects.isPigsAlive() && !§!q§.objects.mSardineCanAdded && !§!q§.objects.mMightyEagleAdded)
            {
               this.§>z§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§=!^§())
            {
               if(§!q§.objects.mMightyEagleAdded)
               {
                  if(§!q§.objects.mMightyEagleHasTouchedGround && §!q§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§>z§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§!q§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§`w§ = §+!7§;
                  }
               }
               else if(!§!q§.objects.mSardineCanAdded)
               {
                  this.§>z§(§3,§);
               }
            }
            if(this.§^!3§(false))
            {
               §!q§.gameOver();
            }
         }
         this.§=!5§ -= param1;
         if(this.§=!5§ < 0)
         {
            this.§=!5§ = 0;
         }
         if(this.§6y§ == §=E§)
         {
            §!q§.updatePigAnimations(param1);
            if(!§!q§.camera.isOnCastleView() && §!q§.camera.mCurrentAction != §,!P§.§"!>§)
            {
               this.changeGameState(§<a§);
            }
         }
         else if(this.§6y§ == §<!<§)
         {
            if(this.§=!5§ <= 0)
            {
               _loc3_ = §!q§.objects.hasBirds();
               if(_loc3_ && this.§=!Q§ > 0)
               {
                  this.§=!5§ = 2000;
                  this.§`w§ = 0;
                  this.§=!Q§ = this.§=!Q§ - 1;
               }
               else if(!§,^§.§0K§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§<a§);
               }
            }
            else
            {
               §!q§.updatePigAnimations(param1);
            }
            if(!§!q§.camera.isOnCastleView() && §!q§.camera.mCurrentAction != §,!P§.§"!>§)
            {
               this.changeGameState(§<a§);
            }
         }
         else if(this.§6y§ == §?!7§)
         {
            if(this.§=!5§ <= 0)
            {
               this.changeGameState(§<a§);
            }
         }
         else if(this.§6y§ == §<a§)
         {
            if(§!q§.camera.isOnCastleView() && §!q§.camera.mCurrentAction != §,!P§.§"!>§)
            {
               this.changeGameState(§=E§);
            }
         }
         else if(this.§6y§ == §6M§)
         {
            if(!(_loc4_ = §!q§.activeObject) || _loc4_.§2>§ < _loc4_.§,!,§)
            {
               if(_loc4_ && (_loc4_ is §>H§ || _loc4_ is §>!V§ || _loc4_ is §>!V§) && (!(_loc4_ as §6!7§).§4r§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§ var§ = true;
                  this.changeGameState(§<!<§);
               }
               §!q§.activeObject = null;
               this.changeGameState(§<!<§);
            }
         }
         else if(this.§6y§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§=!5§ <= 0)
            {
               if(§!q§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§=!5§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §>z§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§&!D§)
         {
            this.§&!D§ = true;
         }
         if(new Date().time - §!q§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§!q§.slingshot.mDragging)
         {
            return;
         }
         if(§!q§.objects.isWorldAtSleep())
         {
            this.§0"§ = Math.min(this.§0"§,3500);
         }
         if(this.§0"§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §^!3§(param1:Boolean = false) : Boolean
      {
         return (this.§6y§ == LEVEL_STATE_VICTORY2_END || this.§6y§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§6y§ == §3,§) && (!param1 || this.§=!5§ <= 0 && this.§6y§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §1!&§() : Boolean
      {
         return this.§6y§ == LEVEL_STATE_VICTORY2_END || this.§6y§ == §3,§;
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
         if(!this.§]S§ || !§!q§.mReadyToRun)
         {
            return;
         }
         if(!(§!q§.slingshot.mDragging || §!q§.camera.mDragging))
         {
            if(this.§6y§ == §<!<§ || this.§6y§ == §=E§ || this.§6y§ == §<a§)
            {
               if(!§!q§.isPlayingReplay())
               {
                  §!q§.camera.adjustManualScale(param1,param2 == 0 ? Number(§,!P§.§5!H§) : Number(param2));
               }
               else
               {
                  §!q§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §,o§(param1:int) : void
      {
         this.§+^§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§]S§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §;]§.§>]§();
         if(this.§^!3§(false))
         {
            return;
         }
         if(!§!q§.isPlayingReplay())
         {
            if(§!q§.activeObject && this.§6y§ == §6M§ || this.§ var§)
            {
               this.§ var§ = false;
               §!q§.activatePowerup();
               return;
            }
            _loc4_ = §!q§.screenToBox2D(param1,param2);
            if(§!q§.slingshot.canStartDragging(_loc4_))
            {
               §!q§.slingshot.startDragging();
               this.changeGameState(§<a§);
            }
            else
            {
               §!q§.camera.startDragging(param1,param2);
            }
            return;
         }
         §!q§.camera.startDragging(param1,param2);
         §!q§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§]S§)
         {
            return;
         }
         §;]§.§8!S§();
         if(this.§6y§ == §?!7§)
         {
            this.changeGameState(§<a§);
         }
         if(§!q§.slingshot.mDragging)
         {
            _loc3_ = §!q§.screenToBox2D(param1,param2);
            §!q§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§!q§.slingshot.canShootTheBird())
            {
               §!q§.slingshot.shoot();
               this.changeGameState(§6M§);
            }
            else
            {
               §!q§.slingshot.cancelDragging();
            }
         }
         if(§!q§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §!q§.camera.dragToNewPoint(param1,param2);
            }
            §!q§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§]S§)
         {
            return;
         }
         if(§!q§.slingshot.mDragging)
         {
            _loc3_ = §!q§.screenToBox2D(param1,param2);
            §!q§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§!q§.camera.mDragging)
         {
            §!q§.camera.dragToNewPoint(param1,param2);
         }
         this.§`]§ = param1;
         this.§'!b§ = param2;
      }
      
      public function §;!C§() : Point
      {
         return new Point(this.§`]§,this.§'!b§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§[!M§.§`!V§(this.§[!M§.getValue() + param1);
         this.§;!0§(§5_§);
         if(this.§6y§ == §<!<§)
         {
            this.§=!5§ = 2000;
            this.§=!Q§ = §90§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§[!M§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§,^§.§0K§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §-W§.§2d§(§-W§.§,[§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§]S§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§]S§ = param1;
      }
   }
}

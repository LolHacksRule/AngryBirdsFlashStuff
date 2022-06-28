package §-%§
{
   import §"x§.§?8§;
   import §,!!§.§#!Y§;
   import §2_§.§'u§;
   import §2_§.§8![§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §=b§.§,!6§;
   import §=b§.§0d§;
   import §=b§.§`!_§;
   import §>! §.§^!c§;
   import §]+§.§=E§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §+V§ extends §+c§
   {
      
      public static const §]!]§:int = 0;
      
      public static const §>!=§:int = 1;
      
      public static const §7!Y§:int = 2;
      
      public static const §8!>§:int = 3;
      
      public static const §=!8§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §!`§:int = 7;
      
      protected static const §8!e§:Number = §#!Y§.§9!+§ / 100;
      
      public static const §^w§:Number = 2000;
      
      public static const §+D§:Number = 2500;
      
      public static const § !b§:int = 5;
       
      
      public var §][§:int = 0;
      
      protected var §'!"§:int = 0;
      
      public var §9!q§:Number;
      
      protected var §'!j§:Number = 0;
      
      protected var §4]§:Boolean = false;
      
      private var §>!m§:Number = 0;
      
      public var §7! §:Number = 0;
      
      protected var §!!z§:Boolean;
      
      protected var §`&§:Number = 0;
      
      protected var §0![§:Number = 0;
      
      protected var §4Z§:Boolean = true;
      
      protected var §2r§:§=E§;
      
      public function §+V§(param1:§'u§)
      {
         this.§2r§ = new §=E§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§2r§.assign(0);
         this.§][§ = -1;
         this.§'!"§ = 0;
         this.§'!j§ = 0;
         this.§4]§ = false;
         this.§6K§(§]!]§);
         this.§9!q§ = §^w§;
         §76§(true);
         §#!3§.objects.setDamageEnabled(true);
         §#!3§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §#!3§.update(param1,true);
         this.§[!X§(param1);
         this.§&H§(param1);
      }
      
      private function §[!X§(param1:int) : void
      {
         if(this.§'!"§ != 0)
         {
            §#!3§.camera.adjustManualScale(this.§'!"§ > 0,param1 * §8!e§);
         }
      }
      
      public function clearLevel() : void
      {
         §#!3§.clearLevel();
         removeEventListeners();
         this.§][§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §7W§() : Boolean
      {
         if(§#!3§.camera.mCurrentCameraSliderLocation < §#!Y§.§0!#§)
         {
            return false;
         }
         if(!§#!3§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §]!C§(param1:int) : void
      {
         var _loc2_:§#!Y§ = §#!3§.camera;
         if(_loc2_.§5!q§ > 0)
         {
            _loc2_.§5!q§ -= param1;
            if(_loc2_.§5!q§ <= 0)
            {
               if(this.§7W§())
               {
                  _loc2_.§5!q§ = -1;
                  if(§#!3§.slingshot.birdsAvailable)
                  {
                     _loc2_.§ B§();
                  }
               }
               else
               {
                  _loc2_.§5!q§ = §#!Y§.§^!n§ / 2;
               }
            }
         }
      }
      
      public function §6K§(param1:int, param2:Boolean = false) : void
      {
         if(this.§5!F§(false) && !param2)
         {
            return;
         }
         if(param1 == §]!]§)
         {
            this.§7! § = 2000;
         }
         else if(param1 == §>!=§)
         {
            §#!3§.camera.goToBirdView();
         }
         else if(param1 == §7!Y§)
         {
            this.§!!z§ = false;
            this.§7! § = 5000;
            §#!3§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §8!>§)
         {
            §#!3§.camera.goToCastleView();
         }
         else if(param1 == §=!8§)
         {
            this.§7! § = 2000;
            this.§>!m§ = § !b§;
            §#!3§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§7! § = 1200;
            if(!§#!3§.objects.mMightyEagleAdded)
            {
               §#!3§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§7! § = 1200;
            if(!§#!3§.objects.mMightyEagleAdded)
            {
               §#!3§.camera.goToBirdView();
               §#!3§.slingshot.makeBirdsJumpForJoy();
            }
            §9'§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §!`§)
         {
            §9'§.§0D§();
            §9'§.playSound("LevelFailedPigs1");
            this.§7! § = 1200;
            §#!3§.camera.goToCastleView();
            §#!3§.objects.makePigsSmile(5);
         }
         this.§][§ = param1;
      }
      
      public function §1S§(param1:Number) : void
      {
         this.§'!j§ = Math.max(this.§'!j§,param1);
      }
      
      protected function §0!O§() : Boolean
      {
         return §#!3§.slingshot.mSlingShotState == §8![§.§5!w§ && !§#!3§.objects.hasBirds();
      }
      
      public function §&H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§`!_§ = null;
         this.§9!q§ -= param1;
         if(this.§4]§)
         {
            this.§'!j§ -= param1;
            if(this.§'!j§ < 0)
            {
               this.§9!q§ = 0;
            }
         }
         if(this.§9!q§ <= 0 && !this.§5!F§(false))
         {
            this.§9!q§ = §^w§;
            _loc2_ = §#!3§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§4]§ || this.§'!j§ > 0))
            {
               if((!this.§4]§ || this.§'!j§ > 6000) && !§#!3§.objects.isPigsAlive())
               {
                  this.§'!j§ = 6000;
                  this.§4]§ = true;
               }
               else if(!this.§4]§ && this.§0!O§())
               {
                  this.§'!j§ = 15000;
                  this.§4]§ = true;
               }
            }
            else if(!§#!3§.objects.isPigsAlive() && !§#!3§.objects.mSardineCanAdded && !§#!3§.objects.mMightyEagleAdded)
            {
               this.§]!h§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§0!O§())
            {
               if(§#!3§.objects.mMightyEagleAdded)
               {
                  if(§#!3§.objects.mMightyEagleHasTouchedGround && §#!3§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§]!h§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§#!3§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§9!q§ = §^w§;
                  }
               }
               else if(!§#!3§.objects.mSardineCanAdded)
               {
                  this.§]!h§(§!`§);
               }
            }
            if(this.§5!F§(false))
            {
               §#!3§.gameOver();
            }
         }
         this.§7! § -= param1;
         if(this.§7! § < 0)
         {
            this.§7! § = 0;
         }
         if(this.§][§ == §8!>§)
         {
            §#!3§.updatePigAnimations(param1);
            if(!§#!3§.camera.isOnCastleView() && §#!3§.camera.mCurrentAction != §#!Y§.§!!@§)
            {
               this.§6K§(§>!=§);
            }
         }
         else if(this.§][§ == §=!8§)
         {
            if(this.§7! § <= 0)
            {
               _loc3_ = §#!3§.objects.hasBirds();
               if(_loc3_ && this.§>!m§ > 0)
               {
                  this.§7! § = 2000;
                  this.§9!q§ = 0;
                  this.§>!m§ = this.§>!m§ - 1;
               }
               else if(!§^!c§.§5!Y§.objects.mMightyEagleAdded)
               {
                  this.§6K§(§>!=§);
               }
            }
            else
            {
               §#!3§.updatePigAnimations(param1);
            }
            if(!§#!3§.camera.isOnCastleView() && §#!3§.camera.mCurrentAction != §#!Y§.§!!@§)
            {
               this.§6K§(§>!=§);
            }
         }
         else if(this.§][§ == §]!]§)
         {
            if(this.§7! § <= 0)
            {
               this.§6K§(§>!=§);
            }
         }
         else if(this.§][§ == §>!=§)
         {
            if(§#!3§.camera.isOnCastleView() && §#!3§.camera.mCurrentAction != §#!Y§.§!!@§)
            {
               this.§6K§(§8!>§);
            }
         }
         else if(this.§][§ == §7!Y§)
         {
            if(!(_loc4_ = §#!3§.activeObject) || _loc4_.§&!>§ < _loc4_.§]l§)
            {
               if(_loc4_ && _loc4_ is §,!6§ && (!(_loc4_ as §0d§).§9!J§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§!!z§ = true;
                  this.§6K§(§=!8§);
               }
               §#!3§.activeObject = null;
               this.§6K§(§=!8§);
            }
         }
         else if(this.§][§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§7! § <= 0)
            {
               if(§#!3§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§7! § = 1000;
               }
               else
               {
                  this.§6K§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §]!h§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§4]§)
         {
            this.§4]§ = true;
         }
         if(new Date().time - §#!3§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§#!3§.slingshot.mDragging)
         {
            return;
         }
         if(§#!3§.objects.isWorldAtSleep())
         {
            this.§'!j§ = Math.min(this.§'!j§,3500);
         }
         if(this.§'!j§ <= 0)
         {
            this.§6K§(param1,param2);
         }
      }
      
      public function §5!F§(param1:Boolean = false) : Boolean
      {
         return (this.§][§ == LEVEL_STATE_VICTORY2_END || this.§][§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§][§ == §!`§) && (!param1 || this.§7! § <= 0 && this.§][§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §?J§() : Boolean
      {
         return this.§][§ == LEVEL_STATE_VICTORY2_END || this.§][§ == §!`§;
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
         if(!this.§4Z§ || !§#!3§.mReadyToRun)
         {
            return;
         }
         if(!(§#!3§.slingshot.mDragging || §#!3§.camera.mDragging))
         {
            if(this.§][§ == §=!8§ || this.§][§ == §8!>§ || this.§][§ == §>!=§)
            {
               if(!§#!3§.isPlayingReplay())
               {
                  §#!3§.camera.adjustManualScale(param1);
               }
               else
               {
                  §#!3§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §%!7§(param1:int) : void
      {
         this.§'!"§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§4Z§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §?8§.§&#§();
         if(this.§5!F§(false))
         {
            return;
         }
         if(!§#!3§.isPlayingReplay())
         {
            if(§#!3§.activeObject && this.§][§ == §7!Y§ || this.§!!z§)
            {
               this.§!!z§ = false;
               §#!3§.activatePowerup();
               return;
            }
            _loc4_ = §#!3§.screenToBox2D(param1,param2);
            if(§#!3§.slingshot.canStartDragging(_loc4_))
            {
               §#!3§.slingshot.startDragging();
               this.§6K§(§>!=§);
            }
            else
            {
               §#!3§.camera.startDragging(param1,param2);
            }
            return;
         }
         §#!3§.camera.startDragging(param1,param2);
         §#!3§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§4Z§)
         {
            return;
         }
         §?8§.§]!%§();
         if(this.§][§ == §]!]§)
         {
            this.§6K§(§>!=§);
         }
         if(§#!3§.slingshot.mDragging)
         {
            _loc3_ = §#!3§.screenToBox2D(param1,param2);
            §#!3§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§#!3§.slingshot.canShootTheBird())
            {
               §#!3§.slingshot.shoot();
               this.§6K§(§7!Y§);
            }
            else
            {
               §#!3§.slingshot.cancelDragging();
            }
         }
         if(§#!3§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §#!3§.camera.dragToNewPoint(param1,param2);
            }
            §#!3§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§4Z§)
         {
            return;
         }
         if(§#!3§.slingshot.mDragging)
         {
            _loc3_ = §#!3§.screenToBox2D(param1,param2);
            §#!3§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§#!3§.camera.mDragging)
         {
            §#!3§.camera.dragToNewPoint(param1,param2);
         }
         this.§`&§ = param1;
         this.§0![§ = param2;
      }
      
      public function §%!I§() : Point
      {
         return new Point(this.§`&§,this.§0![§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§2r§.assign(this.§2r§.getValue() + param1);
         this.§1S§(§+D§);
         if(this.§][§ == §=!8§)
         {
            this.§7! § = 2000;
            this.§>!m§ = § !b§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§2r§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§^!c§.§5!Y§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§7z§(LevelManager.§%n§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§4Z§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§4Z§ = param1;
      }
   }
}

package §+=§
{
   import §!6§.§[!<§;
   import §"^§.§9=§;
   import §,!F§.§#§;
   import §,!F§.§,!7§;
   import §3!%§.§-k§;
   import §4!6§.§use§;
   import §8x§.§ %§;
   import §8x§.§64§;
   import §8x§.§8C§;
   import §<!4§.§25§;
   import §[!A§.§+!!§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §%!H§ extends §!!N§
   {
      
      public static const §'!;§:int = 0;
      
      public static const §>!4§:int = 1;
      
      public static const §0e§:int = 2;
      
      public static const §<R§:int = 3;
      
      public static const § "§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §&!A§:int = 7;
      
      protected static const §]t§:Number = §+!!§.§"!P§ / 100;
      
      public static const §0h§:Number = 2000;
      
      public static const §-v§:Number = 2500;
      
      public static const § 9§:int = 5;
       
      
      public var §7l§:int = 0;
      
      protected var §case§:int = 0;
      
      public var §`!O§:Number;
      
      protected var §[!G§:Number = 0;
      
      protected var §,,§:Boolean = false;
      
      private var §6! §:Number = 0;
      
      public var §+!B§:Number = 0;
      
      protected var §9u§:Boolean;
      
      protected var §8!&§:Number = 0;
      
      protected var §#!;§:Number = 0;
      
      protected var §"E§:Boolean = true;
      
      protected var §>>§:§use§;
      
      public function §%!H§(param1:§#§)
      {
         this.§>>§ = new §use§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§>>§.assign(0);
         this.§7l§ = -1;
         this.§case§ = 0;
         this.§[!G§ = 0;
         this.§,,§ = false;
         this.§?!&§(§'!;§);
         this.§`!O§ = §0h§;
         §-!1§(true);
         §&§.objects.setDamageEnabled(true);
         §&§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §&§.update(param1,true);
         this.§+G§(param1);
         this.§4k§(param1);
      }
      
      private function §+G§(param1:int) : void
      {
         if(this.§case§ != 0)
         {
            §&§.camera.adjustManualScale(this.§case§ > 0,param1 * §]t§);
         }
      }
      
      public function clearLevel() : void
      {
         §&§.clearLevel();
         removeEventListeners();
         this.§7l§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §53§() : Boolean
      {
         if(§&§.camera.mCurrentCameraSliderLocation < §+!!§.§5+§)
         {
            return false;
         }
         if(!§&§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §6!I§(param1:int) : void
      {
         var _loc2_:§+!!§ = §&§.camera;
         if(_loc2_.§;! § > 0)
         {
            _loc2_.§;! § -= param1;
            if(_loc2_.§;! § <= 0)
            {
               if(this.§53§())
               {
                  _loc2_.§;! § = -1;
                  if(§&§.slingshot.birdsAvailable)
                  {
                     _loc2_.§1M§();
                  }
               }
               else
               {
                  _loc2_.§;! § = §+!!§.§`N§ / 2;
               }
            }
         }
      }
      
      public function §?!&§(param1:int, param2:Boolean = false) : void
      {
         if(this.§'z§(false) && !param2)
         {
            return;
         }
         if(param1 == §'!;§)
         {
            this.§+!B§ = 2000;
         }
         else if(param1 == §>!4§)
         {
            §&§.camera.goToBirdView();
         }
         else if(param1 == §0e§)
         {
            this.§9u§ = false;
            this.§+!B§ = 5000;
            §&§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §<R§)
         {
            §&§.camera.goToCastleView();
         }
         else if(param1 == § "§)
         {
            this.§+!B§ = 2000;
            this.§6! § = § 9§;
            §&§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§+!B§ = 1200;
            if(!§&§.objects.mMightyEagleAdded)
            {
               §&§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§+!B§ = 1200;
            if(!§&§.objects.mMightyEagleAdded)
            {
               §&§.camera.goToBirdView();
               §&§.slingshot.makeBirdsJumpForJoy();
            }
            §25§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §&!A§)
         {
            §25§.§=!7§();
            §25§.playSound("LevelFailedPigs1");
            this.§+!B§ = 1200;
            §&§.camera.goToCastleView();
            §&§.objects.makePigsSmile(5);
         }
         this.§7l§ = param1;
      }
      
      public function §;!E§(param1:Number) : void
      {
         this.§[!G§ = Math.max(this.§[!G§,param1);
      }
      
      protected function §7B§() : Boolean
      {
         return §&§.slingshot.mSlingShotState == §,!7§.§^!G§ && !§&§.objects.hasBirds();
      }
      
      public function §4k§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§8C§ = null;
         this.§`!O§ -= param1;
         if(this.§,,§)
         {
            this.§[!G§ -= param1;
            if(this.§[!G§ < 0)
            {
               this.§`!O§ = 0;
            }
         }
         if(this.§`!O§ <= 0 && !this.§'z§(false))
         {
            this.§`!O§ = §0h§;
            _loc2_ = §&§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§,,§ || this.§[!G§ > 0))
            {
               if((!this.§,,§ || this.§[!G§ > 6000) && !§&§.objects.isPigsAlive())
               {
                  this.§[!G§ = 6000;
                  this.§,,§ = true;
               }
               else if(!this.§,,§ && this.§7B§())
               {
                  this.§[!G§ = 15000;
                  this.§,,§ = true;
               }
            }
            else if(!§&§.objects.isPigsAlive() && !§&§.objects.mSardineCanAdded && !§&§.objects.mMightyEagleAdded)
            {
               this.§5!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§7B§())
            {
               if(§&§.objects.mMightyEagleAdded)
               {
                  if(§&§.objects.mMightyEagleHasTouchedGround && §&§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§5!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§&§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§`!O§ = §0h§;
                  }
               }
               else if(!§&§.objects.mSardineCanAdded)
               {
                  this.§5!%§(§&!A§);
               }
            }
            if(this.§'z§(false))
            {
               §&§.gameOver();
            }
         }
         this.§+!B§ -= param1;
         if(this.§+!B§ < 0)
         {
            this.§+!B§ = 0;
         }
         if(this.§7l§ == §<R§)
         {
            §&§.updatePigAnimations(param1);
            if(!§&§.camera.isOnCastleView() && §&§.camera.mCurrentAction != §+!!§.§3z§)
            {
               this.§?!&§(§>!4§);
            }
         }
         else if(this.§7l§ == § "§)
         {
            if(this.§+!B§ <= 0)
            {
               _loc3_ = §&§.objects.hasBirds();
               if(_loc3_ && this.§6! § > 0)
               {
                  this.§+!B§ = 2000;
                  this.§`!O§ = 0;
                  this.§6! § = this.§6! § - 1;
               }
               else if(!§9=§.§<!@§.objects.mMightyEagleAdded)
               {
                  this.§?!&§(§>!4§);
               }
            }
            else
            {
               §&§.updatePigAnimations(param1);
            }
            if(!§&§.camera.isOnCastleView() && §&§.camera.mCurrentAction != §+!!§.§3z§)
            {
               this.§?!&§(§>!4§);
            }
         }
         else if(this.§7l§ == §'!;§)
         {
            if(this.§+!B§ <= 0)
            {
               this.§?!&§(§>!4§);
            }
         }
         else if(this.§7l§ == §>!4§)
         {
            if(§&§.camera.isOnCastleView() && §&§.camera.mCurrentAction != §+!!§.§3z§)
            {
               this.§?!&§(§<R§);
            }
         }
         else if(this.§7l§ == §0e§)
         {
            if(!(_loc4_ = §&§.activeObject) || _loc4_.§<5§ < _loc4_.§`t§)
            {
               if(_loc4_ && _loc4_ is §64§ && (!(_loc4_ as § %§).§%!3§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§9u§ = true;
                  this.§?!&§(§ "§);
               }
               §&§.activeObject = null;
               this.§?!&§(§ "§);
            }
         }
         else if(this.§7l§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§+!B§ <= 0)
            {
               if(§&§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§+!B§ = 1000;
               }
               else
               {
                  this.§?!&§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §5!%§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§,,§)
         {
            this.§,,§ = true;
         }
         if(new Date().time - §&§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§&§.slingshot.mDragging)
         {
            return;
         }
         if(§&§.objects.isWorldAtSleep())
         {
            this.§[!G§ = Math.min(this.§[!G§,3500);
         }
         if(this.§[!G§ <= 0)
         {
            this.§?!&§(param1,param2);
         }
      }
      
      public function §'z§(param1:Boolean = false) : Boolean
      {
         return (this.§7l§ == LEVEL_STATE_VICTORY2_END || this.§7l§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§7l§ == §&!A§) && (!param1 || this.§+!B§ <= 0 && this.§7l§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §6Z§() : Boolean
      {
         return this.§7l§ == LEVEL_STATE_VICTORY2_END || this.§7l§ == §&!A§;
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
         if(!this.§"E§ || !§&§.mReadyToRun)
         {
            return;
         }
         if(!(§&§.slingshot.mDragging || §&§.camera.mDragging))
         {
            if(this.§7l§ == § "§ || this.§7l§ == §<R§ || this.§7l§ == §>!4§)
            {
               if(!§&§.isPlayingReplay())
               {
                  §&§.camera.adjustManualScale(param1);
               }
               else
               {
                  §&§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §`E§(param1:int) : void
      {
         this.§case§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§"E§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §[!<§.§@!>§();
         if(this.§'z§(false))
         {
            return;
         }
         if(!§&§.isPlayingReplay())
         {
            if(§&§.activeObject && this.§7l§ == §0e§ || this.§9u§)
            {
               this.§9u§ = false;
               §&§.activatePowerup();
               return;
            }
            _loc4_ = §&§.screenToBox2D(param1,param2);
            if(§&§.slingshot.canStartDragging(_loc4_))
            {
               §&§.slingshot.startDragging();
               this.§?!&§(§>!4§);
            }
            else
            {
               §&§.camera.startDragging(param1,param2);
            }
            return;
         }
         §&§.camera.startDragging(param1,param2);
         §&§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§"E§)
         {
            return;
         }
         §[!<§.§%V§();
         if(this.§7l§ == §'!;§)
         {
            this.§?!&§(§>!4§);
         }
         if(§&§.slingshot.mDragging)
         {
            _loc3_ = §&§.screenToBox2D(param1,param2);
            §&§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§&§.slingshot.canShootTheBird())
            {
               §&§.slingshot.shoot();
               this.§?!&§(§0e§);
            }
            else
            {
               §&§.slingshot.cancelDragging();
            }
         }
         if(§&§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §&§.camera.dragToNewPoint(param1,param2);
            }
            §&§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§"E§)
         {
            return;
         }
         if(§&§.slingshot.mDragging)
         {
            _loc3_ = §&§.screenToBox2D(param1,param2);
            §&§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§&§.camera.mDragging)
         {
            §&§.camera.dragToNewPoint(param1,param2);
         }
         this.§8!&§ = param1;
         this.§#!;§ = param2;
      }
      
      public function §0!A§() : Point
      {
         return new Point(this.§8!&§,this.§#!;§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§>>§.assign(this.§>>§.getValue() + param1);
         this.§;!E§(§-v§);
         if(this.§7l§ == § "§)
         {
            this.§+!B§ = 2000;
            this.§6! § = § 9§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§>>§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§9=§.§<!@§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §-k§.§>!5§(§-k§.§%D§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§"E§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§"E§ = param1;
      }
   }
}

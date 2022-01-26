package §-!@§
{
   import § !G§.§`e§;
   import §!X§.§#K§;
   import §!X§.§86§;
   import §#!F§.§78§;
   import §,h§.§+0§;
   import §,h§.§4!9§;
   import §,h§.§6!2§;
   import §?h§.§<I§;
   import §?m§.§7?§;
   import §]!F§.§7e§;
   import §`!K§.§!!>§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@!Q§ extends §=0§
   {
      
      public static const §2!,§:int = 0;
      
      public static const §79§:int = 1;
      
      public static const §`d§:int = 2;
      
      public static const §^e§:int = 3;
      
      public static const §>!=§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §5;§:int = 7;
      
      protected static const §+!6§:Number = §<I§.§?q§ / 100;
      
      public static const §+M§:Number = 2000;
      
      public static const §2!9§:Number = 2500;
      
      public static const §@l§:int = 5;
       
      
      public var §8!Y§:int = 0;
      
      protected var §'!Z§:int = 0;
      
      public var §&4§:Number;
      
      protected var §6!G§:Number = 0;
      
      protected var §9O§:Boolean = false;
      
      private var §-![§:Number = 0;
      
      public var §@R§:Number = 0;
      
      protected var §&H§:Boolean;
      
      protected var §!!$§:Number = 0;
      
      protected var §`B§:Number = 0;
      
      protected var § "§:Boolean = true;
      
      protected var §4!2§:§78§;
      
      public function §@!Q§(param1:§86§)
      {
         this.§4!2§ = new §78§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§4!2§.§7!X§(0);
         this.§8!Y§ = -1;
         this.§'!Z§ = 0;
         this.§6!G§ = 0;
         this.§9O§ = false;
         this.§function§(§2!,§);
         this.§&4§ = §+M§;
         §&!#§(true);
         §>`§.objects.setDamageEnabled(true);
         §>`§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §>`§.update(param1,true);
         this.§]]§(param1);
         this.§8!]§(param1);
      }
      
      private function §]]§(param1:int) : void
      {
         if(this.§'!Z§ != 0)
         {
            §>`§.camera.adjustManualScale(this.§'!Z§ > 0,param1 * §+!6§);
         }
      }
      
      public function clearLevel() : void
      {
         §>`§.clearLevel();
         removeEventListeners();
         this.§8!Y§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §1!V§() : Boolean
      {
         if(§>`§.camera.mCurrentCameraSliderLocation < §<I§.§+m§)
         {
            return false;
         }
         if(!§>`§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §0!A§(param1:int) : void
      {
         var _loc2_:§<I§ = §>`§.camera;
         if(_loc2_.§"E§ > 0)
         {
            _loc2_.§"E§ -= param1;
            if(_loc2_.§"E§ <= 0)
            {
               if(this.§1!V§())
               {
                  _loc2_.§"E§ = -1;
                  if(§>`§.slingshot.birdsAvailable)
                  {
                     _loc2_.§>h§();
                  }
               }
               else
               {
                  _loc2_.§"E§ = §<I§.§3!@§ / 2;
               }
            }
         }
      }
      
      public function §function§(param1:int, param2:Boolean = false) : void
      {
         if(this.§!!D§(false) && !param2)
         {
            return;
         }
         if(param1 == §2!,§)
         {
            this.§@R§ = 2000;
         }
         else if(param1 == §79§)
         {
            §>`§.camera.goToBirdView();
         }
         else if(param1 == §`d§)
         {
            this.§&H§ = false;
            this.§@R§ = 5000;
            §>`§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §^e§)
         {
            §>`§.camera.goToCastleView();
         }
         else if(param1 == §>!=§)
         {
            this.§@R§ = 2000;
            this.§-![§ = §@l§;
            §>`§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§@R§ = 1200;
            if(!§>`§.objects.mMightyEagleAdded)
            {
               §>`§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§@R§ = 1200;
            if(!§>`§.objects.mMightyEagleAdded)
            {
               §>`§.camera.goToBirdView();
               §>`§.slingshot.makeBirdsJumpForJoy();
            }
            §!!>§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §5;§)
         {
            §!!>§.§ &§();
            §!!>§.playSound("LevelFailedPigs1");
            this.§@R§ = 1200;
            §>`§.camera.goToCastleView();
            §>`§.objects.makePigsSmile(5);
         }
         this.§8!Y§ = param1;
      }
      
      public function §2![§(param1:Number) : void
      {
         this.§6!G§ = Math.max(this.§6!G§,param1);
      }
      
      protected function §5#§() : Boolean
      {
         return §>`§.slingshot.mSlingShotState == §#K§.§ !^§ && !§>`§.objects.hasBirds();
      }
      
      public function §8!]§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§+0§ = null;
         this.§&4§ -= param1;
         if(this.§9O§)
         {
            this.§6!G§ -= param1;
            if(this.§6!G§ < 0)
            {
               this.§&4§ = 0;
            }
         }
         if(this.§&4§ <= 0 && !this.§!!D§(false))
         {
            this.§&4§ = §+M§;
            _loc2_ = §>`§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§9O§ || this.§6!G§ > 0))
            {
               if((!this.§9O§ || this.§6!G§ > 6000) && !§>`§.objects.isPigsAlive())
               {
                  this.§6!G§ = 6000;
                  this.§9O§ = true;
               }
               else if(!this.§9O§ && this.§5#§())
               {
                  this.§6!G§ = 15000;
                  this.§9O§ = true;
               }
            }
            else if(!§>`§.objects.isPigsAlive() && !§>`§.objects.mSardineCanAdded && !§>`§.objects.mMightyEagleAdded)
            {
               this.§5!X§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5#§())
            {
               if(§>`§.objects.mMightyEagleAdded)
               {
                  if(§>`§.objects.mMightyEagleHasTouchedGround && §>`§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§5!X§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§>`§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§&4§ = §+M§;
                  }
               }
               else if(!§>`§.objects.mSardineCanAdded)
               {
                  this.§5!X§(§5;§);
               }
            }
            if(this.§!!D§(false))
            {
               §>`§.gameOver();
            }
         }
         this.§@R§ -= param1;
         if(this.§@R§ < 0)
         {
            this.§@R§ = 0;
         }
         if(this.§8!Y§ == §^e§)
         {
            §>`§.updatePigAnimations(param1);
            if(!§>`§.camera.isOnCastleView() && §>`§.camera.mCurrentAction != §<I§.§&!F§)
            {
               this.§function§(§79§);
            }
         }
         else if(this.§8!Y§ == §>!=§)
         {
            if(this.§@R§ <= 0)
            {
               _loc3_ = §>`§.objects.hasBirds();
               if(_loc3_ && this.§-![§ > 0)
               {
                  this.§@R§ = 2000;
                  this.§&4§ = 0;
                  this.§-![§ = this.§-![§ - 1;
               }
               else if(!§7?§.§4!H§.objects.mMightyEagleAdded)
               {
                  this.§function§(§79§);
               }
            }
            else
            {
               §>`§.updatePigAnimations(param1);
            }
            if(!§>`§.camera.isOnCastleView() && §>`§.camera.mCurrentAction != §<I§.§&!F§)
            {
               this.§function§(§79§);
            }
         }
         else if(this.§8!Y§ == §2!,§)
         {
            if(this.§@R§ <= 0)
            {
               this.§function§(§79§);
            }
         }
         else if(this.§8!Y§ == §79§)
         {
            if(§>`§.camera.isOnCastleView() && §>`§.camera.mCurrentAction != §<I§.§&!F§)
            {
               this.§function§(§^e§);
            }
         }
         else if(this.§8!Y§ == §`d§)
         {
            if(!(_loc4_ = §>`§.activeObject) || _loc4_.§,!&§ < _loc4_.§+?§)
            {
               if(_loc4_ && _loc4_ is §6!2§ && (!(_loc4_ as §4!9§).§;J§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§&H§ = true;
                  this.§function§(§>!=§);
               }
               §>`§.activeObject = null;
               this.§function§(§>!=§);
            }
         }
         else if(this.§8!Y§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§@R§ <= 0)
            {
               if(§>`§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§@R§ = 1000;
               }
               else
               {
                  this.§function§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §5!X§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§9O§)
         {
            this.§9O§ = true;
         }
         if(new Date().time - §>`§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§>`§.slingshot.mDragging)
         {
            return;
         }
         if(§>`§.objects.isWorldAtSleep())
         {
            this.§6!G§ = Math.min(this.§6!G§,3500);
         }
         if(this.§6!G§ <= 0)
         {
            this.§function§(param1,param2);
         }
      }
      
      public function §!!D§(param1:Boolean = false) : Boolean
      {
         return (this.§8!Y§ == LEVEL_STATE_VICTORY2_END || this.§8!Y§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§8!Y§ == §5;§) && (!param1 || this.§@R§ <= 0 && this.§8!Y§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §-2§() : Boolean
      {
         return this.§8!Y§ == LEVEL_STATE_VICTORY2_END || this.§8!Y§ == §5;§;
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
         if(!this.§ "§ || !§>`§.mReadyToRun)
         {
            return;
         }
         if(!(§>`§.slingshot.mDragging || §>`§.camera.mDragging))
         {
            if(this.§8!Y§ == §>!=§ || this.§8!Y§ == §^e§ || this.§8!Y§ == §79§)
            {
               if(!§>`§.isPlayingReplay())
               {
                  §>`§.camera.adjustManualScale(param1);
               }
               else
               {
                  §>`§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §@!3§(param1:int) : void
      {
         this.§'!Z§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§ "§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §`e§.§`i§();
         if(this.§!!D§(false))
         {
            return;
         }
         if(!§>`§.isPlayingReplay())
         {
            if(§>`§.activeObject && this.§8!Y§ == §`d§ || this.§&H§)
            {
               this.§&H§ = false;
               §>`§.activatePowerup();
               return;
            }
            _loc4_ = §>`§.screenToBox2D(param1,param2);
            if(§>`§.slingshot.canStartDragging(_loc4_))
            {
               §>`§.slingshot.startDragging();
               this.§function§(§79§);
            }
            else
            {
               §>`§.camera.startDragging(param1,param2);
            }
            return;
         }
         §>`§.camera.startDragging(param1,param2);
         §>`§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§ "§)
         {
            return;
         }
         §`e§.§+z§();
         if(this.§8!Y§ == §2!,§)
         {
            this.§function§(§79§);
         }
         if(§>`§.slingshot.mDragging)
         {
            _loc3_ = §>`§.screenToBox2D(param1,param2);
            §>`§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§>`§.slingshot.canShootTheBird())
            {
               §>`§.slingshot.shoot();
               this.§function§(§`d§);
            }
            else
            {
               §>`§.slingshot.cancelDragging();
            }
         }
         if(§>`§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §>`§.camera.dragToNewPoint(param1,param2);
            }
            §>`§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§ "§)
         {
            return;
         }
         if(§>`§.slingshot.mDragging)
         {
            _loc3_ = §>`§.screenToBox2D(param1,param2);
            §>`§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§>`§.camera.mDragging)
         {
            §>`§.camera.dragToNewPoint(param1,param2);
         }
         this.§!!$§ = param1;
         this.§`B§ = param2;
      }
      
      public function §#!9§() : Point
      {
         return new Point(this.§!!$§,this.§`B§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§4!2§.§7!X§(this.§4!2§.getValue() + param1);
         this.§2![§(§2!9§);
         if(this.§8!Y§ == §>!=§)
         {
            this.§@R§ = 2000;
            this.§-![§ = §@l§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§4!2§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§7?§.§4!H§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §7e§.§`!7§(§7e§.§^"§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§ "§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§ "§ = param1;
      }
   }
}

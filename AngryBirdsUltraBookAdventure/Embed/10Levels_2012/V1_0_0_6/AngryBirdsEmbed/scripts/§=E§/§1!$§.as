package §=E§
{
   import §#h§.§ !H§;
   import §%!6§.§'[§;
   import §+!?§.§"h§;
   import §3G§.§!E§;
   import §3G§.§3X§;
   import §3c§.§^z§;
   import §8u§.§0r§;
   import §8u§.§8j§;
   import §8u§.§[P§;
   import §=!B§.§59§;
   import §>K§.§7R§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §1!$§ extends §0?§
   {
      
      public static const §4p§:int = 0;
      
      public static const §]Q§:int = 1;
      
      public static const §<!9§:int = 2;
      
      public static const §^r§:int = 3;
      
      public static const §[!'§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §]J§:int = 7;
      
      protected static const §7!+§:Number = §^z§.§,!2§ / 100;
      
      public static const §<S§:Number = 2000;
      
      public static const §5!F§:Number = 2500;
      
      public static const §,U§:int = 5;
       
      
      public var §>!!§:int = 0;
      
      protected var §8z§:int = 0;
      
      public var §>!9§:Number;
      
      protected var § `§:Number = 0;
      
      protected var §+!+§:Boolean = false;
      
      private var §5e§:Number = 0;
      
      public var §8!H§:Number = 0;
      
      protected var §;!,§:Boolean;
      
      protected var §4!F§:Number = 0;
      
      protected var §22§:Number = 0;
      
      protected var §]!B§:Boolean = true;
      
      protected var §!!$§:§'[§;
      
      public function §1!$§(param1:§!E§)
      {
         this.§!!$§ = new §'[§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!!$§.assign(0);
         this.§>!!§ = -1;
         this.§8z§ = 0;
         this.§ `§ = 0;
         this.§+!+§ = false;
         this.§6j§(§4p§);
         this.§>!9§ = §<S§;
         §7#§(true);
         §33§.objects.setDamageEnabled(true);
         §33§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §33§.update(param1,true);
         this.§ z§(param1);
         this.§>[§(param1);
      }
      
      private function § z§(param1:int) : void
      {
         if(this.§8z§ != 0)
         {
            §33§.camera.adjustManualScale(this.§8z§ > 0,param1 * §7!+§);
         }
      }
      
      public function clearLevel() : void
      {
         §33§.clearLevel();
         removeEventListeners();
         this.§>!!§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §6o§() : Boolean
      {
         if(§33§.camera.mCurrentCameraSliderLocation < §^z§.§>!I§)
         {
            return false;
         }
         if(!§33§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §7I§(param1:int) : void
      {
         var _loc2_:§^z§ = §33§.camera;
         if(_loc2_.§'v§ > 0)
         {
            _loc2_.§'v§ -= param1;
            if(_loc2_.§'v§ <= 0)
            {
               if(this.§6o§())
               {
                  _loc2_.§'v§ = -1;
                  if(§33§.slingshot.birdsAvailable)
                  {
                     _loc2_.§42§();
                  }
               }
               else
               {
                  _loc2_.§'v§ = §^z§.§switch§ / 2;
               }
            }
         }
      }
      
      public function §6j§(param1:int, param2:Boolean = false) : void
      {
         if(this.§%!$§(false) && !param2)
         {
            return;
         }
         if(param1 == §4p§)
         {
            this.§8!H§ = 2000;
         }
         else if(param1 == §]Q§)
         {
            §33§.camera.goToBirdView();
         }
         else if(param1 == §<!9§)
         {
            this.§;!,§ = false;
            this.§8!H§ = 5000;
            §33§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §^r§)
         {
            §33§.camera.goToCastleView();
         }
         else if(param1 == §[!'§)
         {
            this.§8!H§ = 2000;
            this.§5e§ = §,U§;
            §33§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§8!H§ = 1200;
            if(!§33§.objects.mMightyEagleAdded)
            {
               §33§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§8!H§ = 1200;
            if(!§33§.objects.mMightyEagleAdded)
            {
               §33§.camera.goToBirdView();
               §33§.slingshot.makeBirdsJumpForJoy();
            }
            § !H§.§ !%§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §]J§)
         {
            § !H§.§[!<§();
            § !H§.§ !%§("LevelFailedPigs1");
            this.§8!H§ = 1200;
            §33§.camera.goToCastleView();
            §33§.objects.makePigsSmile(5);
         }
         this.§>!!§ = param1;
      }
      
      public function §3P§(param1:Number) : void
      {
         this.§ `§ = Math.max(this.§ `§,param1);
      }
      
      protected function §'!A§() : Boolean
      {
         return §33§.slingshot.mSlingShotState == §3X§.§=2§ && !§33§.objects.hasBirds();
      }
      
      public function §>[§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§0r§ = null;
         this.§>!9§ -= param1;
         if(this.§+!+§)
         {
            this.§ `§ -= param1;
            if(this.§ `§ < 0)
            {
               this.§>!9§ = 0;
            }
         }
         if(this.§>!9§ <= 0 && !this.§%!$§(false))
         {
            this.§>!9§ = §<S§;
            _loc2_ = §33§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§+!+§ || this.§ `§ > 0))
            {
               if((!this.§+!+§ || this.§ `§ > 6000) && !§33§.objects.isPigsAlive())
               {
                  this.§ `§ = 6000;
                  this.§+!+§ = true;
               }
               else if(!this.§+!+§ && this.§'!A§())
               {
                  this.§ `§ = 15000;
                  this.§+!+§ = true;
               }
            }
            else if(!§33§.objects.isPigsAlive() && !§33§.objects.mSardineCanAdded && !§33§.objects.mMightyEagleAdded)
            {
               this.§-!$§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§'!A§())
            {
               if(§33§.objects.mMightyEagleAdded)
               {
                  if(§33§.objects.mMightyEagleHasTouchedGround && §33§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§-!$§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§33§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§>!9§ = §<S§;
                  }
               }
               else if(!§33§.objects.mSardineCanAdded)
               {
                  this.§-!$§(§]J§);
               }
            }
            if(this.§%!$§(false))
            {
               §33§.gameOver();
            }
         }
         this.§8!H§ -= param1;
         if(this.§8!H§ < 0)
         {
            this.§8!H§ = 0;
         }
         if(this.§>!!§ == §^r§)
         {
            §33§.updatePigAnimations(param1);
            if(!§33§.camera.isOnCastleView() && §33§.camera.mCurrentAction != §^z§.§7!F§)
            {
               this.§6j§(§]Q§);
            }
         }
         else if(this.§>!!§ == §[!'§)
         {
            if(this.§8!H§ <= 0)
            {
               _loc3_ = §33§.objects.hasBirds();
               if(_loc3_ && this.§5e§ > 0)
               {
                  this.§8!H§ = 2000;
                  this.§>!9§ = 0;
                  this.§5e§ = this.§5e§ - 1;
               }
               else if(!§"h§.§1C§.objects.mMightyEagleAdded)
               {
                  this.§6j§(§]Q§);
               }
            }
            else
            {
               §33§.updatePigAnimations(param1);
            }
            if(!§33§.camera.isOnCastleView() && §33§.camera.mCurrentAction != §^z§.§7!F§)
            {
               this.§6j§(§]Q§);
            }
         }
         else if(this.§>!!§ == §4p§)
         {
            if(this.§8!H§ <= 0)
            {
               this.§6j§(§]Q§);
            }
         }
         else if(this.§>!!§ == §]Q§)
         {
            if(§33§.camera.isOnCastleView() && §33§.camera.mCurrentAction != §^z§.§7!F§)
            {
               this.§6j§(§^r§);
            }
         }
         else if(this.§>!!§ == §<!9§)
         {
            if(!(_loc4_ = §33§.activeObject) || _loc4_.§@^§ < _loc4_.§%!J§)
            {
               if(_loc4_ && _loc4_ is §[P§ && (!(_loc4_ as §8j§).§=t§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§;!,§ = true;
                  this.§6j§(§[!'§);
               }
               §33§.activeObject = null;
               this.§6j§(§[!'§);
            }
         }
         else if(this.§>!!§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§8!H§ <= 0)
            {
               if(§33§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§8!H§ = 1000;
               }
               else
               {
                  this.§6j§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §-!$§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§+!+§)
         {
            this.§+!+§ = true;
         }
         if(new Date().time - §33§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§33§.slingshot.mDragging)
         {
            return;
         }
         if(§33§.objects.isWorldAtSleep())
         {
            this.§ `§ = Math.min(this.§ `§,3500);
         }
         if(this.§ `§ <= 0)
         {
            this.§6j§(param1,param2);
         }
      }
      
      public function §%!$§(param1:Boolean = false) : Boolean
      {
         return (this.§>!!§ == LEVEL_STATE_VICTORY2_END || this.§>!!§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§>!!§ == §]J§) && (!param1 || this.§8!H§ <= 0 && this.§>!!§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §,Y§() : Boolean
      {
         return this.§>!!§ == LEVEL_STATE_VICTORY2_END || this.§>!!§ == §]J§;
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
         if(!this.§]!B§ || !§33§.mReadyToRun)
         {
            return;
         }
         if(!(§33§.slingshot.mDragging || §33§.camera.mDragging))
         {
            if(this.§>!!§ == §[!'§ || this.§>!!§ == §^r§ || this.§>!!§ == §]Q§)
            {
               if(!§33§.isPlayingReplay())
               {
                  §33§.camera.adjustManualScale(param1);
               }
               else
               {
                  §33§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §&!5§(param1:int) : void
      {
         this.§8z§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§]!B§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §7R§.§05§();
         if(this.§%!$§(false))
         {
            return;
         }
         if(!§33§.isPlayingReplay())
         {
            if(§33§.activeObject && this.§>!!§ == §<!9§ || this.§;!,§)
            {
               this.§;!,§ = false;
               §33§.activatePowerup();
               return;
            }
            _loc4_ = §33§.screenToBox2D(param1,param2);
            if(§33§.slingshot.canStartDragging(_loc4_))
            {
               §33§.slingshot.startDragging();
               this.§6j§(§]Q§);
            }
            else
            {
               §33§.camera.startDragging(param1,param2);
            }
            return;
         }
         §33§.camera.startDragging(param1,param2);
         §33§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§]!B§)
         {
            return;
         }
         §7R§.§8h§();
         if(this.§>!!§ == §4p§)
         {
            this.§6j§(§]Q§);
         }
         if(§33§.slingshot.mDragging)
         {
            _loc3_ = §33§.screenToBox2D(param1,param2);
            §33§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§33§.slingshot.canShootTheBird())
            {
               §33§.slingshot.shoot();
               this.§6j§(§<!9§);
            }
            else
            {
               §33§.slingshot.cancelDragging();
            }
         }
         if(§33§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §33§.camera.dragToNewPoint(param1,param2);
            }
            §33§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§]!B§)
         {
            return;
         }
         if(§33§.slingshot.mDragging)
         {
            _loc3_ = §33§.screenToBox2D(param1,param2);
            §33§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§33§.camera.mDragging)
         {
            §33§.camera.dragToNewPoint(param1,param2);
         }
         this.§4!F§ = param1;
         this.§22§ = param2;
      }
      
      public function §^-§() : Point
      {
         return new Point(this.§4!F§,this.§22§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!!$§.assign(this.§!!$§.getValue() + param1);
         this.§3P§(§5!F§);
         if(this.§>!!§ == §[!'§)
         {
            this.§8!H§ = 2000;
            this.§5e§ = §,U§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§!!$§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§"h§.§1C§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §59§.§'Y§(§59§.§%j§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§]!B§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§]!B§ = param1;
      }
   }
}

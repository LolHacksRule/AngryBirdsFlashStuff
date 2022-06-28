package §91§
{
   import §!!0§.SoundEngine;
   import §5=§.Integer;
   import §5u§.§[!,§;
   import §6!!§.§6!f§;
   import §6!!§.§8!@§;
   import §6!!§.LevelObject;
   import §<u§.§%c§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §[!d§ extends BasicController
   {
      
      public static const §7D§:int = 0;
      
      public static const §!!^§:int = 1;
      
      public static const §#o§:int = 2;
      
      public static const §0!O§:int = 3;
      
      public static const §]+§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §@W§:int = 7;
      
      protected static const §[J§:Number = §[!,§.§1!8§ / 100;
      
      public static const §3!$§:Number = 2000;
      
      public static const §3!i§:Number = 2500;
      
      public static const §%!L§:int = 5;
       
      
      public var §#2§:int = 0;
      
      protected var §[P§:int = 0;
      
      public var §3!O§:Number;
      
      protected var §1C§:Number = 0;
      
      protected var §?!H§:Boolean = false;
      
      private var §for §:Number = 0;
      
      public var §7!5§:Number = 0;
      
      protected var §54§:Boolean;
      
      protected var §+1§:Number = 0;
      
      protected var § !H§:Number = 0;
      
      protected var §;F§:Boolean = true;
      
      protected var §1!E§:Integer;
      
      public function §[!d§(param1:LevelMain)
      {
         this.§1!E§ = new Integer();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§1!E§.assign(0);
         this.§#2§ = -1;
         this.§[P§ = 0;
         this.§1C§ = 0;
         this.§?!H§ = false;
         this.§06§(§7D§);
         this.§3!O§ = §3!$§;
         §@!?§(true);
         §`s§.objects.setDamageEnabled(true);
         §`s§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §`s§.update(param1,true);
         this.§`!B§(param1);
         this.§[v§(param1);
      }
      
      private function §`!B§(param1:int) : void
      {
         if(this.§[P§ != 0)
         {
            §`s§.camera.adjustManualScale(this.§[P§ > 0,param1 * §[J§);
         }
      }
      
      public function clearLevel() : void
      {
         §`s§.clearLevel();
         removeEventListeners();
         this.§#2§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §"!8§() : Boolean
      {
         if(§`s§.camera.mCurrentCameraSliderLocation < §[!,§.§ !>§)
         {
            return false;
         }
         if(!§`s§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function § !+§(param1:int) : void
      {
         var _loc2_:§[!,§ = §`s§.camera;
         if(_loc2_.§3+§ > 0)
         {
            _loc2_.§3+§ -= param1;
            if(_loc2_.§3+§ <= 0)
            {
               if(this.§"!8§())
               {
                  _loc2_.§3+§ = -1;
                  if(§`s§.slingshot.birdsAvailable)
                  {
                     _loc2_.§%'§();
                  }
               }
               else
               {
                  _loc2_.§3+§ = §[!,§.§7!g§ / 2;
               }
            }
         }
      }
      
      public function §06§(param1:int, param2:Boolean = false) : void
      {
         if(this.§%S§(false) && !param2)
         {
            return;
         }
         if(param1 == §7D§)
         {
            this.§7!5§ = 2000;
         }
         else if(param1 == §!!^§)
         {
            §`s§.camera.goToBirdView();
         }
         else if(param1 == §#o§)
         {
            this.§54§ = false;
            this.§7!5§ = 5000;
            §`s§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §0!O§)
         {
            §`s§.camera.goToCastleView();
         }
         else if(param1 == §]+§)
         {
            this.§7!5§ = 2000;
            this.§for § = §%!L§;
            §`s§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§7!5§ = 1200;
            if(!§`s§.objects.mMightyEagleAdded)
            {
               §`s§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§7!5§ = 1200;
            if(!§`s§.objects.mMightyEagleAdded)
            {
               §`s§.camera.goToBirdView();
               §`s§.slingshot.makeBirdsJumpForJoy();
            }
            SoundEngine.§-!h§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §@W§)
         {
            SoundEngine.§%!V§();
            SoundEngine.§-!h§("LevelFailedPigs1");
            this.§7!5§ = 1200;
            §`s§.camera.goToCastleView();
            §`s§.objects.makePigsSmile(5);
         }
         this.§#2§ = param1;
      }
      
      public function §6!_§(param1:Number) : void
      {
         this.§1C§ = Math.max(this.§1C§,param1);
      }
      
      protected function §?f§() : Boolean
      {
         return §`s§.slingshot.mSlingShotState == LevelSlingshot.§=s§ && !§`s§.objects.hasBirds();
      }
      
      public function §[v§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:LevelObject = null;
         this.§3!O§ -= param1;
         if(this.§?!H§)
         {
            this.§1C§ -= param1;
            if(this.§1C§ < 0)
            {
               this.§3!O§ = 0;
            }
         }
         if(this.§3!O§ <= 0 && !this.§%S§(false))
         {
            this.§3!O§ = §3!$§;
            _loc2_ = §`s§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§?!H§ || this.§1C§ > 0))
            {
               if((!this.§?!H§ || this.§1C§ > 6000) && !§`s§.objects.isPigsAlive())
               {
                  this.§1C§ = 6000;
                  this.§?!H§ = true;
               }
               else if(!this.§?!H§ && this.§?f§())
               {
                  this.§1C§ = 15000;
                  this.§?!H§ = true;
               }
            }
            else if(!§`s§.objects.isPigsAlive() && !§`s§.objects.mSardineCanAdded && !§`s§.objects.mMightyEagleAdded)
            {
               this.§=!C§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§?f§())
            {
               if(§`s§.objects.mMightyEagleAdded)
               {
                  if(§`s§.objects.mMightyEagleHasTouchedGround && §`s§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§=!C§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§`s§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§3!O§ = §3!$§;
                  }
               }
               else if(!§`s§.objects.mSardineCanAdded)
               {
                  this.§=!C§(§@W§);
               }
            }
            if(this.§%S§(false))
            {
               §`s§.gameOver();
            }
         }
         this.§7!5§ -= param1;
         if(this.§7!5§ < 0)
         {
            this.§7!5§ = 0;
         }
         if(this.§#2§ == §0!O§)
         {
            §`s§.updatePigAnimations(param1);
            if(!§`s§.camera.isOnCastleView() && §`s§.camera.mCurrentAction != §[!,§.§>!9§)
            {
               this.§06§(§!!^§);
            }
         }
         else if(this.§#2§ == §]+§)
         {
            if(this.§7!5§ <= 0)
            {
               _loc3_ = §`s§.objects.hasBirds();
               if(_loc3_ && this.§for § > 0)
               {
                  this.§7!5§ = 2000;
                  this.§3!O§ = 0;
                  this.§for § -= 1;
               }
               else if(!§`S§.§[o§.objects.mMightyEagleAdded)
               {
                  this.§06§(§!!^§);
               }
            }
            else
            {
               §`s§.updatePigAnimations(param1);
            }
            if(!§`s§.camera.isOnCastleView() && §`s§.camera.mCurrentAction != §[!,§.§>!9§)
            {
               this.§06§(§!!^§);
            }
         }
         else if(this.§#2§ == §7D§)
         {
            if(this.§7!5§ <= 0)
            {
               this.§06§(§!!^§);
            }
         }
         else if(this.§#2§ == §!!^§)
         {
            if(§`s§.camera.isOnCastleView() && §`s§.camera.mCurrentAction != §[!,§.§>!9§)
            {
               this.§06§(§0!O§);
            }
         }
         else if(this.§#2§ == §#o§)
         {
            _loc4_ = §`s§.activeObject;
            if(!_loc4_ || _loc4_.§3W§ < _loc4_.§>!"§)
            {
               if(_loc4_ && _loc4_ is §8!@§ && (!(_loc4_ as §6!f§).§+!O§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§54§ = true;
                  this.§06§(§]+§);
               }
               §`s§.activeObject = null;
               this.§06§(§]+§);
            }
         }
         else if(this.§#2§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§7!5§ <= 0)
            {
               if(§`s§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§7!5§ = 1000;
               }
               else
               {
                  this.§06§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §=!C§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§?!H§)
         {
            this.§?!H§ = true;
         }
         if(new Date().time - §`s§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§`s§.slingshot.mDragging)
         {
            return;
         }
         if(§`s§.objects.isWorldAtSleep())
         {
            this.§1C§ = Math.min(this.§1C§,3500);
         }
         if(this.§1C§ <= 0)
         {
            this.§06§(param1,param2);
         }
      }
      
      public function §%S§(param1:Boolean = false) : Boolean
      {
         return (this.§#2§ == LEVEL_STATE_VICTORY2_END || this.§#2§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§#2§ == §@W§) && (!param1 || this.§7!5§ <= 0 && this.§#2§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §9x§() : Boolean
      {
         return this.§#2§ == LEVEL_STATE_VICTORY2_END || this.§#2§ == §@W§;
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
         if(!this.§;F§ || !§`s§.mReadyToRun)
         {
            return;
         }
         if(!(§`s§.slingshot.mDragging || §`s§.camera.mDragging))
         {
            if(this.§#2§ == §]+§ || this.§#2§ == §0!O§ || this.§#2§ == §!!^§)
            {
               if(!§`s§.isPlayingReplay())
               {
                  §`s§.camera.adjustManualScale(param1);
               }
               else
               {
                  §`s§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §!!=§(param1:int) : void
      {
         this.§[P§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§;F§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §%c§.§<p§();
         if(this.§%S§(false))
         {
            return;
         }
         if(!§`s§.isPlayingReplay())
         {
            if(§`s§.activeObject && this.§#2§ == §#o§ || this.§54§)
            {
               this.§54§ = false;
               §`s§.activatePowerup();
               return;
            }
            _loc4_ = §`s§.screenToBox2D(param1,param2);
            if(§`s§.slingshot.canStartDragging(_loc4_))
            {
               §`s§.slingshot.startDragging();
               this.§06§(§!!^§);
            }
            else
            {
               §`s§.camera.startDragging(param1,param2);
            }
            return;
         }
         §`s§.camera.startDragging(param1,param2);
         §`s§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§;F§)
         {
            return;
         }
         §%c§.§'n§();
         if(this.§#2§ == §7D§)
         {
            this.§06§(§!!^§);
         }
         if(§`s§.slingshot.mDragging)
         {
            _loc3_ = §`s§.screenToBox2D(param1,param2);
            §`s§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§`s§.slingshot.canShootTheBird())
            {
               §`s§.slingshot.shoot();
               this.§06§(§#o§);
            }
            else
            {
               §`s§.slingshot.cancelDragging();
            }
         }
         if(§`s§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §`s§.camera.dragToNewPoint(param1,param2);
            }
            §`s§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§;F§)
         {
            return;
         }
         if(§`s§.slingshot.mDragging)
         {
            _loc3_ = §`s§.screenToBox2D(param1,param2);
            §`s§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§`s§.camera.mDragging)
         {
            §`s§.camera.dragToNewPoint(param1,param2);
         }
         this.§+1§ = param1;
         this.§ !H§ = param2;
      }
      
      public function §"F§() : Point
      {
         return new Point(this.§+1§,this.§ !H§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§1!E§.assign(this.§1!E§.getValue() + param1);
         this.§6!_§(§3!i§);
         if(this.§#2§ == §]+§)
         {
            this.§7!5§ = 2000;
            this.§for § = §%!L§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§1!E§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§`S§.§[o§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§1n§(LevelManager.§1m§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§;F§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§;F§ = param1;
      }
   }
}

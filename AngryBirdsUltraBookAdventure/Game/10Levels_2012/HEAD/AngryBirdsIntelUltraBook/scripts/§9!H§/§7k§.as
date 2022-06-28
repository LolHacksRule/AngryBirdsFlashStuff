package §9!H§
{
   import §#!X§.LevelManager;
   import §#y§.§0!D§;
   import §'N§.§'!6§;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §3Y§.LevelObject;
   import §3Y§.§[r§;
   import §3Y§.§each §;
   import §9!!§.Integer;
   import §?A§.LevelMain;
   import §?A§.LevelSlingshot;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §7k§ extends BasicController
   {
      
      public static const §?!R§:int = 0;
      
      public static const §,![§:int = 1;
      
      public static const §2a§:int = 2;
      
      public static const §[!J§:int = 3;
      
      public static const §!$§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §@!`§:int = 7;
      
      protected static const §#9§:Number = §0!D§.§"!3§ / 100;
      
      public static const §!!?§:Number = 2000;
      
      public static const §-!_§:Number = 2500;
      
      public static const §7e§:int = 5;
       
      
      public var §6$§:int = 0;
      
      protected var §"!0§:int = 0;
      
      public var §3!^§:Number;
      
      protected var §8!"§:Number = 0;
      
      protected var §9!6§:Boolean = false;
      
      private var §2!f§:Number = 0;
      
      public var §'!O§:Number = 0;
      
      protected var §=f§:Boolean;
      
      protected var §&!]§:Number = 0;
      
      protected var §=!A§:Number = 0;
      
      protected var §>'§:Boolean = true;
      
      protected var §%a§:Integer;
      
      public function §7k§(param1:LevelMain)
      {
         this.§%a§ = new Integer();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§%a§.assign(0);
         this.§6$§ = -1;
         this.§"!0§ = 0;
         this.§8!"§ = 0;
         this.§9!6§ = false;
         this.§[1§(§?!R§);
         this.§3!^§ = §!!?§;
         §6!D§(true);
         §6f§.objects.setDamageEnabled(true);
         §6f§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §6f§.update(param1,true);
         this.§9K§(param1);
         this.§9!2§(param1);
      }
      
      private function §9K§(param1:int) : void
      {
         if(this.§"!0§ != 0)
         {
            §6f§.camera.adjustManualScale(this.§"!0§ > 0,param1 * §#9§);
         }
      }
      
      public function clearLevel() : void
      {
         §6f§.clearLevel();
         removeEventListeners();
         this.§6$§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §"N§() : Boolean
      {
         if(§6f§.camera.mCurrentCameraSliderLocation < §0!D§.§7!?§)
         {
            return false;
         }
         if(!§6f§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §&!K§(param1:int) : void
      {
         var _loc2_:§0!D§ = §6f§.camera;
         if(_loc2_.§0!%§ > 0)
         {
            _loc2_.§0!%§ -= param1;
            if(_loc2_.§0!%§ <= 0)
            {
               if(this.§"N§())
               {
                  _loc2_.§0!%§ = -1;
                  if(§6f§.slingshot.birdsAvailable)
                  {
                     _loc2_.§'S§();
                  }
               }
               else
               {
                  _loc2_.§0!%§ = §0!D§.§@!!§ / 2;
               }
            }
         }
      }
      
      public function §[1§(param1:int, param2:Boolean = false) : void
      {
         if(this.§3!P§(false) && !param2)
         {
            return;
         }
         if(param1 == §?!R§)
         {
            this.§'!O§ = 2000;
         }
         else if(param1 == §,![§)
         {
            §6f§.camera.goToBirdView();
         }
         else if(param1 == §2a§)
         {
            this.§=f§ = false;
            this.§'!O§ = 5000;
            §6f§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §[!J§)
         {
            §6f§.camera.goToCastleView();
         }
         else if(param1 == §!$§)
         {
            this.§'!O§ = 2000;
            this.§2!f§ = §7e§;
            §6f§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§'!O§ = 1200;
            if(!§6f§.objects.mMightyEagleAdded)
            {
               §6f§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§'!O§ = 1200;
            if(!§6f§.objects.mMightyEagleAdded)
            {
               §6f§.camera.goToBirdView();
               §6f§.slingshot.makeBirdsJumpForJoy();
            }
            SoundEngine.§`B§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §@!`§)
         {
            SoundEngine.§=O§();
            SoundEngine.§`B§("LevelFailedPigs1");
            this.§'!O§ = 1200;
            §6f§.camera.goToCastleView();
            §6f§.objects.makePigsSmile(5);
         }
         this.§6$§ = param1;
      }
      
      public function § !H§(param1:Number) : void
      {
         this.§8!"§ = Math.max(this.§8!"§,param1);
      }
      
      protected function §9[§() : Boolean
      {
         return §6f§.slingshot.mSlingShotState == LevelSlingshot.§<L§ && !§6f§.objects.hasBirds();
      }
      
      public function §9!2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:LevelObject = null;
         this.§3!^§ -= param1;
         if(this.§9!6§)
         {
            this.§8!"§ -= param1;
            if(this.§8!"§ < 0)
            {
               this.§3!^§ = 0;
            }
         }
         if(this.§3!^§ <= 0 && !this.§3!P§(false))
         {
            this.§3!^§ = §!!?§;
            _loc2_ = §6f§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§9!6§ || this.§8!"§ > 0))
            {
               if((!this.§9!6§ || this.§8!"§ > 6000) && !§6f§.objects.isPigsAlive())
               {
                  this.§8!"§ = 6000;
                  this.§9!6§ = true;
               }
               else if(!this.§9!6§ && this.§9[§())
               {
                  this.§8!"§ = 15000;
                  this.§9!6§ = true;
               }
            }
            else if(!§6f§.objects.isPigsAlive() && !§6f§.objects.mSardineCanAdded && !§6f§.objects.mMightyEagleAdded)
            {
               this.§=!h§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§9[§())
            {
               if(§6f§.objects.mMightyEagleAdded)
               {
                  if(§6f§.objects.mMightyEagleHasTouchedGround && §6f§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§=!h§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§6f§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§3!^§ = §!!?§;
                  }
               }
               else if(!§6f§.objects.mSardineCanAdded)
               {
                  this.§=!h§(§@!`§);
               }
            }
            if(this.§3!P§(false))
            {
               §6f§.gameOver();
            }
         }
         this.§'!O§ -= param1;
         if(this.§'!O§ < 0)
         {
            this.§'!O§ = 0;
         }
         if(this.§6$§ == §[!J§)
         {
            §6f§.updatePigAnimations(param1);
            if(!§6f§.camera.isOnCastleView() && §6f§.camera.mCurrentAction != §0!D§.§&j§)
            {
               this.§[1§(§,![§);
            }
         }
         else if(this.§6$§ == §!$§)
         {
            if(this.§'!O§ <= 0)
            {
               _loc3_ = §6f§.objects.hasBirds();
               if(_loc3_ && this.§2!f§ > 0)
               {
                  this.§'!O§ = 2000;
                  this.§3!^§ = 0;
                  this.§2!f§ -= 1;
               }
               else if(!§4!T§.§1t§.objects.mMightyEagleAdded)
               {
                  this.§[1§(§,![§);
               }
            }
            else
            {
               §6f§.updatePigAnimations(param1);
            }
            if(!§6f§.camera.isOnCastleView() && §6f§.camera.mCurrentAction != §0!D§.§&j§)
            {
               this.§[1§(§,![§);
            }
         }
         else if(this.§6$§ == §?!R§)
         {
            if(this.§'!O§ <= 0)
            {
               this.§[1§(§,![§);
            }
         }
         else if(this.§6$§ == §,![§)
         {
            if(§6f§.camera.isOnCastleView() && §6f§.camera.mCurrentAction != §0!D§.§&j§)
            {
               this.§[1§(§[!J§);
            }
         }
         else if(this.§6$§ == §2a§)
         {
            _loc4_ = §6f§.activeObject;
            if(!_loc4_ || _loc4_.§19§ < _loc4_.§^V§)
            {
               if(_loc4_ && _loc4_ is §each § && (!(_loc4_ as §[r§).§6!9§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§=f§ = true;
                  this.§[1§(§!$§);
               }
               §6f§.activeObject = null;
               this.§[1§(§!$§);
            }
         }
         else if(this.§6$§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§'!O§ <= 0)
            {
               if(§6f§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§'!O§ = 1000;
               }
               else
               {
                  this.§[1§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §=!h§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§9!6§)
         {
            this.§9!6§ = true;
         }
         if(new Date().time - §6f§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§6f§.slingshot.mDragging)
         {
            return;
         }
         if(§6f§.objects.isWorldAtSleep())
         {
            this.§8!"§ = Math.min(this.§8!"§,3500);
         }
         if(this.§8!"§ <= 0)
         {
            this.§[1§(param1,param2);
         }
      }
      
      public function §3!P§(param1:Boolean = false) : Boolean
      {
         return (this.§6$§ == LEVEL_STATE_VICTORY2_END || this.§6$§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§6$§ == §@!`§) && (!param1 || this.§'!O§ <= 0 && this.§6$§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §#x§() : Boolean
      {
         return this.§6$§ == LEVEL_STATE_VICTORY2_END || this.§6$§ == §@!`§;
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
         if(!this.§>'§ || !§6f§.mReadyToRun)
         {
            return;
         }
         if(!(§6f§.slingshot.mDragging || §6f§.camera.mDragging))
         {
            if(this.§6$§ == §!$§ || this.§6$§ == §[!J§ || this.§6$§ == §,![§)
            {
               if(!§6f§.isPlayingReplay())
               {
                  §6f§.camera.adjustManualScale(param1);
               }
               else
               {
                  §6f§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §<!X§(param1:int) : void
      {
         this.§"!0§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§>'§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §'!6§.§=!J§();
         if(this.§3!P§(false))
         {
            return;
         }
         if(!§6f§.isPlayingReplay())
         {
            if(§6f§.activeObject && this.§6$§ == §2a§ || this.§=f§)
            {
               this.§=f§ = false;
               §6f§.activatePowerup();
               return;
            }
            _loc4_ = §6f§.screenToBox2D(param1,param2);
            if(§6f§.slingshot.canStartDragging(_loc4_))
            {
               §6f§.slingshot.startDragging();
               this.§[1§(§,![§);
            }
            else
            {
               §6f§.camera.startDragging(param1,param2);
            }
            return;
         }
         §6f§.camera.startDragging(param1,param2);
         §6f§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§>'§)
         {
            return;
         }
         §'!6§.§^!]§();
         if(this.§6$§ == §?!R§)
         {
            this.§[1§(§,![§);
         }
         if(§6f§.slingshot.mDragging)
         {
            _loc3_ = §6f§.screenToBox2D(param1,param2);
            §6f§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§6f§.slingshot.canShootTheBird())
            {
               §6f§.slingshot.shoot();
               this.§[1§(§2a§);
            }
            else
            {
               §6f§.slingshot.cancelDragging();
            }
         }
         if(§6f§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §6f§.camera.dragToNewPoint(param1,param2);
            }
            §6f§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§>'§)
         {
            return;
         }
         if(§6f§.slingshot.mDragging)
         {
            _loc3_ = §6f§.screenToBox2D(param1,param2);
            §6f§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§6f§.camera.mDragging)
         {
            §6f§.camera.dragToNewPoint(param1,param2);
         }
         this.§&!]§ = param1;
         this.§=!A§ = param2;
      }
      
      public function §'!K§() : Point
      {
         return new Point(this.§&!]§,this.§=!A§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§%a§.assign(this.§%a§.getValue() + param1);
         this.§ !H§(§-!_§);
         if(this.§6$§ == §!$§)
         {
            this.§'!O§ = 2000;
            this.§2!f§ = §7e§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§%a§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§4!T§.§1t§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§<l§(LevelManager.§!=§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§>'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§>'§ = param1;
      }
   }
}

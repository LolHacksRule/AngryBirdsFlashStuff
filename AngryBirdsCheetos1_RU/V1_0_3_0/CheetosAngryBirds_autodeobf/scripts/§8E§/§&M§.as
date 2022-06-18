package §8E§
{
   import §+!^§.§'Y§;
   import §+d§.§!F§;
   import §7!7§.§return§;
   import §7!P§.§[!1§;
   import §9T§.§#!4§;
   import §9T§.§=!^§;
   import §=!,§.§9![§;
   import §[>§.§8]§;
   import §[>§.§;J§;
   import §[>§.§`,§;
   import §^9§.§[!L§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §&M§ extends §#!8§
   {
      
      public static const §8B§:int = 0;
      
      public static const §3!C§:int = 1;
      
      public static const §,!U§:int = 2;
      
      public static const §!l§:int = 3;
      
      public static const §-!7§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §^!Y§:int = 7;
      
      protected static const §"w§:Number = §9![§.§<!0§ / 100;
      
      public static const §#!Q§:Number = 2000;
      
      public static const §%!M§:Number = 2500;
      
      public static const §+!`§:int = 5;
       
      
      public var §`!O§:int = 0;
      
      protected var §8!H§:int = 0;
      
      public var § @§:Number;
      
      protected var §<!;§:Number = 0;
      
      protected var §`!L§:Boolean = false;
      
      private var §;!"§:Number = 0;
      
      public var §36§:Number = 0;
      
      protected var §42§:Boolean;
      
      protected var §var§:Number = 0;
      
      protected var §8!F§:Number = 0;
      
      protected var §'!1§:Boolean = true;
      
      protected var §9!§:§!F§;
      
      public function §&M§(param1:§=!^§)
      {
         this.§9!§ = new §!F§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§9!§.§@Y§(0);
         this.§`!O§ = -1;
         this.§8!H§ = 0;
         this.§<!;§ = 0;
         this.§`!L§ = false;
         this.changeGameState(§8B§);
         this.§ @§ = §#!Q§;
         §"M§(true);
         §&?§.objects.setDamageEnabled(true);
         §&?§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §&?§.update(param1,true);
         this.§1k§(param1);
         this.§ !#§(param1);
      }
      
      private function §1k§(param1:int) : void
      {
         if(this.§8!H§ != 0)
         {
            §&?§.camera.adjustManualScale(this.§8!H§ > 0,param1 * §"w§);
         }
      }
      
      public function clearLevel() : void
      {
         §&?§.clearLevel();
         removeEventListeners();
         this.§`!O§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §?!U§() : Boolean
      {
         if(§&?§.camera.mCurrentCameraSliderLocation < §9![§.§ k§)
         {
            return false;
         }
         if(!§&?§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §%!K§(param1:int) : void
      {
         var _loc2_:§9![§ = §&?§.camera;
         if(_loc2_.§ <§ > 0)
         {
            _loc2_.§ <§ -= param1;
            if(_loc2_.§ <§ <= 0)
            {
               if(this.§?!U§())
               {
                  _loc2_.§ <§ = -1;
                  if(§&?§.slingshot.birdsAvailable)
                  {
                     _loc2_.§0!$§();
                  }
               }
               else
               {
                  _loc2_.§ <§ = §9![§.§<j§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§ !b§(false) && !param2)
         {
            return;
         }
         if(param1 == §8B§)
         {
            this.§36§ = 2000;
         }
         else if(param1 == §3!C§)
         {
            §&?§.camera.goToBirdView();
         }
         else if(param1 == §,!U§)
         {
            this.§42§ = false;
            this.§36§ = 5000;
            §&?§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §!l§)
         {
            §&?§.camera.goToCastleView();
         }
         else if(param1 == §-!7§)
         {
            this.§36§ = 2000;
            this.§;!"§ = §+!`§;
            §&?§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§36§ = 1200;
            if(!§&?§.objects.mMightyEagleAdded)
            {
               §&?§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§36§ = 1200;
            if(!§&?§.objects.mMightyEagleAdded)
            {
               §&?§.camera.goToBirdView();
               §&?§.slingshot.makeBirdsJumpForJoy();
            }
            §return§.§2!S§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §^!Y§)
         {
            §return§.§+r§();
            §return§.§2!S§("LevelFailedPigs1");
            this.§36§ = 1200;
            §&?§.camera.goToCastleView();
            §&?§.objects.makePigsSmile(5);
         }
         this.§`!O§ = param1;
      }
      
      public function §=o§(param1:Number) : void
      {
         this.§<!;§ = Math.max(this.§<!;§,param1);
      }
      
      protected function §2k§() : Boolean
      {
         return §&?§.slingshot.mSlingShotState == §#!4§.§=G§ && !§&?§.objects.hasBirds();
      }
      
      public function § !#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§`,§ = null;
         this.§ @§ -= param1;
         if(this.§`!L§)
         {
            this.§<!;§ -= param1;
            if(this.§<!;§ < 0)
            {
               this.§ @§ = 0;
            }
         }
         if(this.§ @§ <= 0 && !this.§ !b§(false))
         {
            this.§ @§ = §#!Q§;
            _loc2_ = §&?§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§`!L§ || this.§<!;§ > 0))
            {
               if((!this.§`!L§ || this.§<!;§ > 6000) && !§&?§.objects.isPigsAlive())
               {
                  this.§<!;§ = 6000;
                  this.§`!L§ = true;
               }
               else if(!this.§`!L§ && this.§2k§())
               {
                  this.§<!;§ = 15000;
                  this.§`!L§ = true;
               }
            }
            else if(!§&?§.objects.isPigsAlive() && !§&?§.objects.mSardineCanAdded && !§&?§.objects.mMightyEagleAdded)
            {
               this.§71§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§2k§())
            {
               if(§&?§.objects.mMightyEagleAdded)
               {
                  if(§&?§.objects.mMightyEagleHasTouchedGround && §&?§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§71§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§&?§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§ @§ = §#!Q§;
                  }
               }
               else if(!§&?§.objects.mSardineCanAdded)
               {
                  this.§71§(§^!Y§);
               }
            }
            if(this.§ !b§(false))
            {
               §&?§.gameOver();
            }
         }
         this.§36§ -= param1;
         if(this.§36§ < 0)
         {
            this.§36§ = 0;
         }
         if(this.§`!O§ == §!l§)
         {
            §&?§.updatePigAnimations(param1);
            if(!§&?§.camera.isOnCastleView() && §&?§.camera.mCurrentAction != §9![§.§<c§)
            {
               this.changeGameState(§3!C§);
            }
         }
         else if(this.§`!O§ == §-!7§)
         {
            if(this.§36§ <= 0)
            {
               _loc3_ = §&?§.objects.hasBirds();
               if(_loc3_ && this.§;!"§ > 0)
               {
                  this.§36§ = 2000;
                  this.§ @§ = 0;
                  this.§;!"§ = this.§;!"§ - 1;
               }
               else if(!§'Y§.§@j§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§3!C§);
               }
            }
            else
            {
               §&?§.updatePigAnimations(param1);
            }
            if(!§&?§.camera.isOnCastleView() && §&?§.camera.mCurrentAction != §9![§.§<c§)
            {
               this.changeGameState(§3!C§);
            }
         }
         else if(this.§`!O§ == §8B§)
         {
            if(this.§36§ <= 0)
            {
               this.changeGameState(§3!C§);
            }
         }
         else if(this.§`!O§ == §3!C§)
         {
            if(§&?§.camera.isOnCastleView() && §&?§.camera.mCurrentAction != §9![§.§<c§)
            {
               this.changeGameState(§!l§);
            }
         }
         else if(this.§`!O§ == §,!U§)
         {
            if(!(_loc4_ = §&?§.activeObject) || _loc4_.§8!?§ < _loc4_.§6!_§)
            {
               if(_loc4_ && _loc4_ is §8]§ && (!(_loc4_ as §;J§).§`!K§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§42§ = true;
                  this.changeGameState(§-!7§);
               }
               §&?§.activeObject = null;
               this.changeGameState(§-!7§);
            }
         }
         else if(this.§`!O§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§36§ <= 0)
            {
               if(§&?§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§36§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §71§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§`!L§)
         {
            this.§`!L§ = true;
         }
         if(new Date().time - §&?§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§&?§.slingshot.mDragging)
         {
            return;
         }
         if(§&?§.objects.isWorldAtSleep())
         {
            this.§<!;§ = Math.min(this.§<!;§,3500);
         }
         if(this.§<!;§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function § !b§(param1:Boolean = false) : Boolean
      {
         return (this.§`!O§ == LEVEL_STATE_VICTORY2_END || this.§`!O§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§`!O§ == §^!Y§) && (!param1 || this.§36§ <= 0 && this.§`!O§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §6q§() : Boolean
      {
         return this.§`!O§ == LEVEL_STATE_VICTORY2_END || this.§`!O§ == §^!Y§;
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
         if(!this.§'!1§ || !§&?§.mReadyToRun)
         {
            return;
         }
         if(!(§&?§.slingshot.mDragging || §&?§.camera.mDragging))
         {
            if(this.§`!O§ == §-!7§ || this.§`!O§ == §!l§ || this.§`!O§ == §3!C§)
            {
               if(!§&?§.isPlayingReplay())
               {
                  §&?§.camera.adjustManualScale(param1,param2 == 0 ? Number(§9![§.§<!0§) : Number(param2));
               }
               else
               {
                  §&?§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §&!L§(param1:int) : void
      {
         this.§8!H§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§'!1§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §[!1§.§5!@§();
         if(this.§ !b§(false))
         {
            return;
         }
         if(!§&?§.isPlayingReplay())
         {
            if(§&?§.activeObject && this.§`!O§ == §,!U§ || this.§42§)
            {
               this.§42§ = false;
               §&?§.activatePowerup();
               return;
            }
            _loc4_ = §&?§.screenToBox2D(param1,param2);
            if(§&?§.slingshot.canStartDragging(_loc4_))
            {
               §&?§.slingshot.startDragging();
               this.changeGameState(§3!C§);
            }
            else
            {
               §&?§.camera.startDragging(param1,param2);
            }
            return;
         }
         §&?§.camera.startDragging(param1,param2);
         §&?§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§'!1§)
         {
            return;
         }
         §[!1§.§"k§();
         if(this.§`!O§ == §8B§)
         {
            this.changeGameState(§3!C§);
         }
         if(§&?§.slingshot.mDragging)
         {
            _loc3_ = §&?§.screenToBox2D(param1,param2);
            §&?§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§&?§.slingshot.canShootTheBird())
            {
               §&?§.slingshot.shoot();
               this.changeGameState(§,!U§);
            }
            else
            {
               §&?§.slingshot.cancelDragging();
            }
         }
         if(§&?§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §&?§.camera.dragToNewPoint(param1,param2);
            }
            §&?§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§'!1§)
         {
            return;
         }
         if(§&?§.slingshot.mDragging)
         {
            _loc3_ = §&?§.screenToBox2D(param1,param2);
            §&?§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§&?§.camera.mDragging)
         {
            §&?§.camera.dragToNewPoint(param1,param2);
         }
         this.§var§ = param1;
         this.§8!F§ = param2;
      }
      
      public function §#!S§() : Point
      {
         return new Point(this.§var§,this.§8!F§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§9!§.§@Y§(this.§9!§.getValue() + param1);
         this.§=o§(§%!M§);
         if(this.§`!O§ == §-!7§)
         {
            this.§36§ = 2000;
            this.§;!"§ = §+!`§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§9!§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§'Y§.§@j§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §[!L§.getLevelForId(§[!L§.§^!X§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§'!1§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§'!1§ = param1;
      }
   }
}

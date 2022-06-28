package §2!?§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §3p§.§3l§;
   import §3p§.§4!G§;
   import §3p§.LevelObject;
   import §6b§.§3r§;
   import §7p§.Integer;
   import §<!j§.§%!-§;
   import §=?§.SoundEngine;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §case§ extends BasicController
   {
      
      public static const §!>§:int = 0;
      
      public static const §-^§:int = 1;
      
      public static const §'!4§:int = 2;
      
      public static const §8!K§:int = 3;
      
      public static const §;X§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §'z§:int = 7;
      
      protected static const §#!K§:Number = §%!-§.§`s§ / 100;
      
      public static const §'[§:Number = 2000;
      
      public static const §!r§:Number = 2500;
      
      public static const §-]§:int = 5;
       
      
      public var §`!#§:int = 0;
      
      protected var §+L§:int = 0;
      
      public var § A§:Number;
      
      protected var §8!W§:Number = 0;
      
      protected var §3!^§:Boolean = false;
      
      private var §-o§:Number = 0;
      
      public var §#!3§:Number = 0;
      
      protected var §^!-§:Boolean;
      
      protected var §!-§:Number = 0;
      
      protected var § `§:Number = 0;
      
      protected var §6'§:Boolean = true;
      
      protected var §4!!§:Integer;
      
      public function §case§(param1:LevelMain)
      {
         this.§4!!§ = new Integer();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§4!!§.assign(0);
         this.§`!#§ = -1;
         this.§+L§ = 0;
         this.§8!W§ = 0;
         this.§3!^§ = false;
         this.§6A§(§!>§);
         this.§ A§ = §'[§;
         §0!H§(true);
         §"!>§.objects.setDamageEnabled(true);
         §"!>§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §"!>§.update(param1,true);
         this.§-e§(param1);
         this.§<!C§(param1);
      }
      
      private function §-e§(param1:int) : void
      {
         if(this.§+L§ != 0)
         {
            §"!>§.camera.adjustManualScale(this.§+L§ > 0,param1 * §#!K§);
         }
      }
      
      public function clearLevel() : void
      {
         §"!>§.clearLevel();
         removeEventListeners();
         this.§`!#§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §>e§() : Boolean
      {
         if(§"!>§.camera.mCurrentCameraSliderLocation < §%!-§.§[!a§)
         {
            return false;
         }
         if(!§"!>§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §6g§(param1:int) : void
      {
         var _loc2_:§%!-§ = §"!>§.camera;
         if(_loc2_.§8o§ > 0)
         {
            _loc2_.§8o§ -= param1;
            if(_loc2_.§8o§ <= 0)
            {
               if(this.§>e§())
               {
                  _loc2_.§8o§ = -1;
                  if(§"!>§.slingshot.birdsAvailable)
                  {
                     _loc2_.§6!W§();
                  }
               }
               else
               {
                  _loc2_.§8o§ = §%!-§.§,G§ / 2;
               }
            }
         }
      }
      
      public function §6A§(param1:int, param2:Boolean = false) : void
      {
         if(this.§;!5§(false) && !param2)
         {
            return;
         }
         if(param1 == §!>§)
         {
            this.§#!3§ = 2000;
         }
         else if(param1 == §-^§)
         {
            §"!>§.camera.goToBirdView();
         }
         else if(param1 == §'!4§)
         {
            this.§^!-§ = false;
            this.§#!3§ = 5000;
            §"!>§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §8!K§)
         {
            §"!>§.camera.goToCastleView();
         }
         else if(param1 == §;X§)
         {
            this.§#!3§ = 2000;
            this.§-o§ = §-]§;
            §"!>§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§#!3§ = 1200;
            if(!§"!>§.objects.mMightyEagleAdded)
            {
               §"!>§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§#!3§ = 1200;
            if(!§"!>§.objects.mMightyEagleAdded)
            {
               §"!>§.camera.goToBirdView();
               §"!>§.slingshot.makeBirdsJumpForJoy();
            }
            SoundEngine.§9!X§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §'z§)
         {
            SoundEngine.§;!8§();
            SoundEngine.§9!X§("LevelFailedPigs1");
            this.§#!3§ = 1200;
            §"!>§.camera.goToCastleView();
            §"!>§.objects.makePigsSmile(5);
         }
         this.§`!#§ = param1;
      }
      
      public function §=!_§(param1:Number) : void
      {
         this.§8!W§ = Math.max(this.§8!W§,param1);
      }
      
      protected function §^G§() : Boolean
      {
         return §"!>§.slingshot.mSlingShotState == LevelSlingshot.§71§ && !§"!>§.objects.hasBirds();
      }
      
      public function §<!C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:LevelObject = null;
         this.§ A§ -= param1;
         if(this.§3!^§)
         {
            this.§8!W§ -= param1;
            if(this.§8!W§ < 0)
            {
               this.§ A§ = 0;
            }
         }
         if(this.§ A§ <= 0 && !this.§;!5§(false))
         {
            this.§ A§ = §'[§;
            _loc2_ = §"!>§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§3!^§ || this.§8!W§ > 0))
            {
               if((!this.§3!^§ || this.§8!W§ > 6000) && !§"!>§.objects.isPigsAlive())
               {
                  this.§8!W§ = 6000;
                  this.§3!^§ = true;
               }
               else if(!this.§3!^§ && this.§^G§())
               {
                  this.§8!W§ = 15000;
                  this.§3!^§ = true;
               }
            }
            else if(!§"!>§.objects.isPigsAlive() && !§"!>§.objects.mSardineCanAdded && !§"!>§.objects.mMightyEagleAdded)
            {
               this.§>u§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§^G§())
            {
               if(§"!>§.objects.mMightyEagleAdded)
               {
                  if(§"!>§.objects.mMightyEagleHasTouchedGround && §"!>§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§>u§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§"!>§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§ A§ = §'[§;
                  }
               }
               else if(!§"!>§.objects.mSardineCanAdded)
               {
                  this.§>u§(§'z§);
               }
            }
            if(this.§;!5§(false))
            {
               §"!>§.gameOver();
            }
         }
         this.§#!3§ -= param1;
         if(this.§#!3§ < 0)
         {
            this.§#!3§ = 0;
         }
         if(this.§`!#§ == §8!K§)
         {
            §"!>§.updatePigAnimations(param1);
            if(!§"!>§.camera.isOnCastleView() && §"!>§.camera.mCurrentAction != §%!-§.§ d§)
            {
               this.§6A§(§-^§);
            }
         }
         else if(this.§`!#§ == §;X§)
         {
            if(this.§#!3§ <= 0)
            {
               _loc3_ = §"!>§.objects.hasBirds();
               if(_loc3_ && this.§-o§ > 0)
               {
                  this.§#!3§ = 2000;
                  this.§ A§ = 0;
                  this.§-o§ -= 1;
               }
               else if(!§]!B§.§>F§.objects.mMightyEagleAdded)
               {
                  this.§6A§(§-^§);
               }
            }
            else
            {
               §"!>§.updatePigAnimations(param1);
            }
            if(!§"!>§.camera.isOnCastleView() && §"!>§.camera.mCurrentAction != §%!-§.§ d§)
            {
               this.§6A§(§-^§);
            }
         }
         else if(this.§`!#§ == §!>§)
         {
            if(this.§#!3§ <= 0)
            {
               this.§6A§(§-^§);
            }
         }
         else if(this.§`!#§ == §-^§)
         {
            if(§"!>§.camera.isOnCastleView() && §"!>§.camera.mCurrentAction != §%!-§.§ d§)
            {
               this.§6A§(§8!K§);
            }
         }
         else if(this.§`!#§ == §'!4§)
         {
            _loc4_ = §"!>§.activeObject;
            if(!_loc4_ || _loc4_.§0o§ < _loc4_.§]!3§)
            {
               if(_loc4_ && _loc4_ is §3l§ && (!(_loc4_ as §4!G§).§2s§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§^!-§ = true;
                  this.§6A§(§;X§);
               }
               §"!>§.activeObject = null;
               this.§6A§(§;X§);
            }
         }
         else if(this.§`!#§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§#!3§ <= 0)
            {
               if(§"!>§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§#!3§ = 1000;
               }
               else
               {
                  this.§6A§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §>u§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§3!^§)
         {
            this.§3!^§ = true;
         }
         if(new Date().time - §"!>§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§"!>§.slingshot.mDragging)
         {
            return;
         }
         if(§"!>§.objects.isWorldAtSleep())
         {
            this.§8!W§ = Math.min(this.§8!W§,3500);
         }
         if(this.§8!W§ <= 0)
         {
            this.§6A§(param1,param2);
         }
      }
      
      public function §;!5§(param1:Boolean = false) : Boolean
      {
         return (this.§`!#§ == LEVEL_STATE_VICTORY2_END || this.§`!#§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§`!#§ == §'z§) && (!param1 || this.§#!3§ <= 0 && this.§`!#§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §?Z§() : Boolean
      {
         return this.§`!#§ == LEVEL_STATE_VICTORY2_END || this.§`!#§ == §'z§;
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
         if(!this.§6'§ || !§"!>§.mReadyToRun)
         {
            return;
         }
         if(!(§"!>§.slingshot.mDragging || §"!>§.camera.mDragging))
         {
            if(this.§`!#§ == §;X§ || this.§`!#§ == §8!K§ || this.§`!#§ == §-^§)
            {
               if(!§"!>§.isPlayingReplay())
               {
                  §"!>§.camera.adjustManualScale(param1);
               }
               else
               {
                  §"!>§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §]!,§(param1:int) : void
      {
         this.§+L§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§6'§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §3r§.§#!9§();
         if(this.§;!5§(false))
         {
            return;
         }
         if(!§"!>§.isPlayingReplay())
         {
            if(§"!>§.activeObject && this.§`!#§ == §'!4§ || this.§^!-§)
            {
               this.§^!-§ = false;
               §"!>§.activatePowerup();
               return;
            }
            _loc4_ = §"!>§.screenToBox2D(param1,param2);
            if(§"!>§.slingshot.canStartDragging(_loc4_))
            {
               §"!>§.slingshot.startDragging();
               this.§6A§(§-^§);
            }
            else
            {
               §"!>§.camera.startDragging(param1,param2);
            }
            return;
         }
         §"!>§.camera.startDragging(param1,param2);
         §"!>§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§6'§)
         {
            return;
         }
         §3r§.§7!i§();
         if(this.§`!#§ == §!>§)
         {
            this.§6A§(§-^§);
         }
         if(§"!>§.slingshot.mDragging)
         {
            _loc3_ = §"!>§.screenToBox2D(param1,param2);
            §"!>§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§"!>§.slingshot.canShootTheBird())
            {
               §"!>§.slingshot.shoot();
               this.§6A§(§'!4§);
            }
            else
            {
               §"!>§.slingshot.cancelDragging();
            }
         }
         if(§"!>§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §"!>§.camera.dragToNewPoint(param1,param2);
            }
            §"!>§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§6'§)
         {
            return;
         }
         if(§"!>§.slingshot.mDragging)
         {
            _loc3_ = §"!>§.screenToBox2D(param1,param2);
            §"!>§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§"!>§.camera.mDragging)
         {
            §"!>§.camera.dragToNewPoint(param1,param2);
         }
         this.§!-§ = param1;
         this.§ `§ = param2;
      }
      
      public function §%!Y§() : Point
      {
         return new Point(this.§!-§,this.§ `§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§4!!§.assign(this.§4!!§.getValue() + param1);
         this.§=!_§(§!r§);
         if(this.§`!#§ == §;X§)
         {
            this.§#!3§ = 2000;
            this.§-o§ = §-]§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§4!!§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§]!B§.§>F§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§;!a§(LevelManager.§var§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§6'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§6'§ = param1;
      }
   }
}

package §3![§
{
   import §#!e§.LevelManager;
   import §6!B§.§>!E§;
   import §6o§.§="7§;
   import §9"!§.§2a§;
   import §9"!§.§9"3§;
   import §9"%§.§ H§;
   import §9"%§.§&!r§;
   import §9"%§.§,!8§;
   import §9"%§.§`!'§;
   import §<a§.§9U§;
   import §[!"§.§&0§;
   import §]!A§.;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §^"1§ extends §#y§
   {
      
      public static const §<!"§:int = 0;
      
      public static const §+!_§:int = 1;
      
      public static const §60§:int = 2;
      
      public static const §![§:int = 3;
      
      public static const §7!c§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const LEVEL_STATE_FAIL:int = 7;
      
      protected static const each:Number = §&0§.§`l§ / 100;
      
      public static const §]!8§:Number = 2000;
      
      public static const §7!O§:Number = 2500;
      
      public static const §=!>§:int = 5;
      
      private static var §]Z§:Boolean;
       
      
      public var §@h§:int = 0;
      
      protected var §="=§:int = 0;
      
      public var §3"$§:Number;
      
      protected var §^&§:Number = 0;
      
      protected var §4d§:Boolean = false;
      
      private var §0J§:Number = 0;
      
      public var §!"1§:Number = 0;
      
      protected var § use§:Number = 0;
      
      protected var §4!+§:Number = 0;
      
      protected var §3!c§:Boolean = true;
      
      protected var §3!Z§:§9U§;
      
      public function §^"1§(param1:§9"3§)
      {
         this.§3!Z§ = new §9U§();
         super(param1);
      }
      
      public static function §1!g§(param1:Boolean) : void
      {
         §]Z§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§3!Z§.assign(0);
         this.§@h§ = -1;
         this.§="=§ = 0;
         this.§^&§ = 0;
         this.§4d§ = false;
         this.changeGameState(§<!"§);
         this.§3"$§ = §]!8§;
         §#!F§(true);
         §@O§.objects.setDamageEnabled(true);
         §@O§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §@O§.update(param1,true);
         this.§+!5§(param1);
         this.§@7§(param1);
      }
      
      private function §+!5§(param1:int) : void
      {
         if(this.§="=§ != 0)
         {
            §@O§.camera.adjustManualScale(this.§="=§ > 0,param1 * each);
         }
      }
      
      public function clearLevel() : void
      {
         §@O§.clearLevel();
         removeEventListeners();
         this.§@h§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §4b§() : Boolean
      {
         if(§@O§.camera.mCurrentCameraSliderLocation < §&0§.§#P§)
         {
            return false;
         }
         if(!§@O§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §""?§(param1:int) : void
      {
         var _loc2_:§&0§ = §@O§.camera;
         if(_loc2_.§#T§ > 0)
         {
            _loc2_.§#T§ -= param1;
            if(_loc2_.§#T§ <= 0)
            {
               if(this.§4b§())
               {
                  _loc2_.§#T§ = -1;
                  if(§@O§.slingshot.birdsAvailable)
                  {
                     _loc2_.§5]§();
                  }
               }
               else
               {
                  _loc2_.§#T§ = §&0§.§3z§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§]!u§(false) && !param2)
         {
            return;
         }
         if(param1 == §<!"§)
         {
            this.§!"1§ = 2000;
         }
         else if(param1 == §+!_§)
         {
            §@O§.camera.goToBirdView();
         }
         else if(param1 == §60§)
         {
            §1!g§(false);
            this.§!"1§ = 5000;
            §@O§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §![§)
         {
            §@O§.camera.goToCastleView();
         }
         else if(param1 == §7!c§)
         {
            this.§!"1§ = 2000;
            this.§0J§ = §=!>§;
            §@O§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§!"1§ = 1200;
            if(!§@O§.objects.mMightyEagleAdded)
            {
               §@O§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§!"1§ = 1200;
            if(!§@O§.objects.mMightyEagleAdded)
            {
               §@O§.camera.goToBirdView();
               §@O§.slingshot.makeBirdsJumpForJoy();
            }
            §>!E§.§7N§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == LEVEL_STATE_FAIL)
         {
            §>!E§.§&!^§();
            §>!E§.§7N§("LevelFailedPigs1");
            this.§!"1§ = 1200;
            §@O§.camera.goToCastleView();
            §@O§.objects.makePigsSmile(5);
         }
         this.§@h§ = param1;
      }
      
      public function §-6§() : void
      {
         this.§!"1§ = 2000;
         this.§4d§ = false;
         this.§^&§ = 2000;
         this.changeGameState(§^"1§.§+!_§,true);
      }
      
      public function §'"8§(param1:Number) : void
      {
         this.§^&§ = Math.max(this.§^&§,param1);
      }
      
      protected function §+!=§() : Boolean
      {
         return §@O§.slingshot.mSlingShotState == §2a§.§=U§ && !§@O§.objects.hasBirds();
      }
      
      public function §@7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§&!r§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§3"$§ -= param1;
         if(this.§4d§)
         {
            this.§^&§ -= param1;
            if(this.§^&§ < 0)
            {
               this.§3"$§ = 0;
            }
         }
         if(this.§3"$§ <= 0 && !this.§]!u§(false))
         {
            this.§3"$§ = §]!8§;
            _loc2_ = §@O§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§4d§ || this.§^&§ > 0))
            {
               if((!this.§4d§ || this.§^&§ > 6000) && !§@O§.objects.isPigsAlive())
               {
                  this.§^&§ = 6000;
                  this.§4d§ = true;
               }
               else if(!this.§4d§ && this.§+!=§())
               {
                  this.§^&§ = 15000;
                  this.§4d§ = true;
               }
            }
            else if(!§@O§.objects.isPigsAlive() && !§@O§.objects.mSardineCanAdded && !§@O§.objects.mMightyEagleAdded)
            {
               this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§+!=§())
            {
               if(§@O§.objects.mMightyEagleAdded)
               {
                  if(§@O§.objects.mMightyEagleHasTouchedGround && §@O§.objects.mMightyEagleTimer > 5500)
                  {
                     this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§@O§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§3"$§ = §]!8§;
                  }
               }
               else if(!§@O§.objects.mSardineCanAdded)
               {
                  this.setGameOverState(LEVEL_STATE_FAIL);
               }
            }
            if(this.§]!u§(false))
            {
               §@O§.gameOver();
            }
         }
         this.§!"1§ -= param1;
         if(this.§!"1§ < 0)
         {
            this.§!"1§ = 0;
         }
         if(this.§@h§ == §![§)
         {
            §@O§.updatePigAnimations(param1);
            if(!§@O§.camera.isOnCastleView() && §@O§.camera.mCurrentAction != §&0§.§'j§)
            {
               this.changeGameState(§+!_§);
            }
         }
         else if(this.§@h§ == §7!c§)
         {
            if(this.§!"1§ <= 0)
            {
               _loc3_ = §@O§.objects.hasBirds();
               if(_loc3_ && this.§0J§ > 0)
               {
                  this.§!"1§ = 2000;
                  this.§3"$§ = 0;
                  this.§0J§ = this.§0J§ - 1;
               }
               else if(!§#6§.§6!z§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§+!_§);
               }
            }
            else
            {
               §@O§.updatePigAnimations(param1);
            }
            if(!§@O§.camera.isOnCastleView() && §@O§.camera.mCurrentAction != §&0§.§'j§)
            {
               this.changeGameState(§+!_§);
            }
         }
         else if(this.§@h§ == §<!"§)
         {
            if(this.§!"1§ <= 0)
            {
               this.changeGameState(§+!_§);
            }
         }
         else if(this.§@h§ == §+!_§)
         {
            if(§@O§.camera.isOnCastleView() && §@O§.camera.mCurrentAction != §&0§.§'j§)
            {
               this.changeGameState(§![§);
            }
         }
         else if(this.§@h§ == §60§)
         {
            if(!(_loc4_ = §@O§.activeObject) || _loc4_.§[" § < _loc4_.§@!h§)
            {
               if(_loc4_)
               {
                  _loc5_ = _loc4_ is §`!'§;
                  _loc6_ = _loc4_ is §,!8§;
                  _loc7_ = (_loc4_ as § H§).§-!a§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §1!g§(true);
                        this.changeGameState(§7!c§);
                     }
                  }
               }
               §@O§.activeObject = null;
               this.changeGameState(§7!c§);
            }
         }
         else if(this.§@h§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§!"1§ <= 0)
            {
               if(§@O§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§!"1§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         if(!this.§4d§)
         {
            this.§4d§ = true;
         }
         if(new Date().time - §@O§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§@O§.slingshot.mDragging)
         {
            return;
         }
         if(§@O§.objects.isWorldAtSleep())
         {
            this.§^&§ = Math.min(this.§^&§,3500);
         }
         if(this.§^&§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §]!u§(param1:Boolean = false) : Boolean
      {
         return (this.§@h§ == LEVEL_STATE_VICTORY2_END || this.§@h§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§@h§ == LEVEL_STATE_FAIL) && (!param1 || this.§!"1§ <= 0 && this.§@h§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §=! §() : Boolean
      {
         return this.§@h§ == LEVEL_STATE_VICTORY2_END || this.§@h§ == LEVEL_STATE_FAIL;
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
         if(!this.§3!c§ || !§@O§.mReadyToRun)
         {
            return;
         }
         if(!(§@O§.slingshot.mDragging || §@O§.camera.mDragging))
         {
            if(this.§@h§ == §7!c§ || this.§@h§ == §![§ || this.§@h§ == §+!_§)
            {
               if(!§@O§.isPlayingReplay())
               {
                  §@O§.camera.adjustManualScale(param1,param2 == 0 ? Number(§&0§.§`l§) : Number(param2));
               }
               else
               {
                  §@O§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §#s§(param1:int) : void
      {
         this.§="=§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§3!c§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §="7§.§<5§();
         if(this.§]!u§(false))
         {
            return;
         }
         if(!§@O§.isPlayingReplay())
         {
            if(§@O§.activeObject && this.§@h§ == §60§ || §]Z§)
            {
               §1!g§(false);
               §@O§.activatePowerup();
               return;
            }
            _loc4_ = §@O§.screenToBox2D(param1,param2);
            if(§@O§.slingshot.canStartDragging(_loc4_))
            {
               §@O§.slingshot.startDragging();
               this.changeGameState(§+!_§);
            }
            else
            {
               §@O§.camera.startDragging(param1,param2);
            }
            return;
         }
         §@O§.camera.startDragging(param1,param2);
         §@O§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§3!c§)
         {
            return;
         }
         §="7§.§[b§();
         if(this.§@h§ == §<!"§)
         {
            this.changeGameState(§+!_§);
         }
         if(§@O§.slingshot.mDragging)
         {
            _loc3_ = §@O§.screenToBox2D(param1,param2);
            §@O§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§@O§.slingshot.canShootTheBird())
            {
               §@O§.slingshot.shoot();
               this.changeGameState(§60§);
            }
            else
            {
               §@O§.slingshot.cancelDragging();
            }
         }
         if(§@O§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §@O§.camera.dragToNewPoint(param1,param2);
            }
            §@O§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§3!c§)
         {
            return;
         }
         if(§@O§.slingshot.mDragging)
         {
            _loc3_ = §@O§.screenToBox2D(param1,param2);
            §@O§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§@O§.camera.mDragging)
         {
            §@O§.camera.dragToNewPoint(param1,param2);
         }
         this.§ use§ = param1;
         this.§4!+§ = param2;
      }
      
      public function §"!J§() : Point
      {
         return new Point(this.§ use§,this.§4!+§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§3!Z§.assign(this.§3!Z§.getValue() + param1);
         this.§'"8§(§7!O§);
         if(this.§@h§ == §7!c§)
         {
            this.§!"1§ = 2000;
            this.§0J§ = §=!>§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§3!Z§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§#6§.§6!z§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§1A§(LevelManager.§'!O§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§3!c§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§3!c§ = param1;
      }
   }
}

package §>z§
{
   import §#;§.§!l§;
   import §#;§.§4!8§;
   import §&c§.§1!$§;
   import §&c§.§7h§;
   import §&c§.§9h§;
   import §-p§.§5<§;
   import §3!A§.§9!0§;
   import §8!G§.§-Z§;
   import §;!5§.§=y§;
   import §>K§.§%H§;
   import §`t§.§^?§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §<W§ extends §5&§
   {
      
      public static const §>c§:int = 0;
      
      public static const §9L§:int = 1;
      
      public static const §#5§:int = 2;
      
      public static const §9!<§:int = 3;
      
      public static const §#!?§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §^A§:int = 7;
      
      protected static const §<!$§:Number = §=y§.§!`§ / 100;
      
      public static const §2!<§:Number = 2000;
      
      public static const §7]§:Number = 2500;
      
      public static const §0!+§:int = 5;
       
      
      public var §&3§:int = 0;
      
      protected var §[L§:int = 0;
      
      public var §<U§:Number;
      
      protected var §8!&§:Number = 0;
      
      protected var §]P§:Boolean = false;
      
      private var §8n§:Number = 0;
      
      public var § q§:Number = 0;
      
      protected var §^h§:Boolean;
      
      protected var §[d§:Number = 0;
      
      protected var §@q§:Number = 0;
      
      protected var §,Q§:Boolean = true;
      
      protected var §!4§:§%H§;
      
      public function §<W§(param1:§4!8§)
      {
         this.§!4§ = new §%H§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!4§.assign(0);
         this.§&3§ = -1;
         this.§[L§ = 0;
         this.§8!&§ = 0;
         this.§]P§ = false;
         this.§-Q§(§>c§);
         this.§<U§ = §2!<§;
         §8-§(true);
         §3!3§.objects.setDamageEnabled(true);
         §3!3§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §3!3§.update(param1,true);
         this.§>q§(param1);
         this.§7e§(param1);
      }
      
      private function §>q§(param1:int) : void
      {
         if(this.§[L§ != 0)
         {
            §3!3§.camera.adjustManualScale(this.§[L§ > 0,param1 * §<!$§);
         }
      }
      
      public function clearLevel() : void
      {
         §3!3§.clearLevel();
         removeEventListeners();
         this.§&3§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §@!D§() : Boolean
      {
         if(§3!3§.camera.mCurrentCameraSliderLocation < §=y§.§!d§)
         {
            return false;
         }
         if(!§3!3§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9§(param1:int) : void
      {
         var _loc2_:§=y§ = §3!3§.camera;
         if(_loc2_.§8!E§ > 0)
         {
            _loc2_.§8!E§ -= param1;
            if(_loc2_.§8!E§ <= 0)
            {
               if(this.§@!D§())
               {
                  _loc2_.§8!E§ = -1;
                  if(§3!3§.slingshot.birdsAvailable)
                  {
                     _loc2_.§!a§();
                  }
               }
               else
               {
                  _loc2_.§8!E§ = §=y§.§9;§ / 2;
               }
            }
         }
      }
      
      public function §-Q§(param1:int, param2:Boolean = false) : void
      {
         if(this.§`8§(false) && !param2)
         {
            return;
         }
         if(param1 == §>c§)
         {
            this.§ q§ = 2000;
         }
         else if(param1 == §9L§)
         {
            §3!3§.camera.goToBirdView();
         }
         else if(param1 == §#5§)
         {
            this.§^h§ = false;
            this.§ q§ = 5000;
            §3!3§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §9!<§)
         {
            §3!3§.camera.goToCastleView();
         }
         else if(param1 == §#!?§)
         {
            this.§ q§ = 2000;
            this.§8n§ = §0!+§;
            §3!3§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§ q§ = 1200;
            if(!§3!3§.objects.mMightyEagleAdded)
            {
               §3!3§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§ q§ = 1200;
            if(!§3!3§.objects.mMightyEagleAdded)
            {
               §3!3§.camera.goToBirdView();
               §3!3§.slingshot.makeBirdsJumpForJoy();
            }
            §9!0§.§-! §("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §^A§)
         {
            §9!0§.§"P§();
            §9!0§.§-! §("LevelFailedPigs1");
            this.§ q§ = 1200;
            §3!3§.camera.goToCastleView();
            §3!3§.objects.makePigsSmile(5);
         }
         this.§&3§ = param1;
      }
      
      public function §&!3§(param1:Number) : void
      {
         this.§8!&§ = Math.max(this.§8!&§,param1);
      }
      
      protected function §2!1§() : Boolean
      {
         return §3!3§.slingshot.mSlingShotState == §!l§.§0!0§ && !§3!3§.objects.hasBirds();
      }
      
      public function §7e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§9h§ = null;
         this.§<U§ -= param1;
         if(this.§]P§)
         {
            this.§8!&§ -= param1;
            if(this.§8!&§ < 0)
            {
               this.§<U§ = 0;
            }
         }
         if(this.§<U§ <= 0 && !this.§`8§(false))
         {
            this.§<U§ = §2!<§;
            _loc2_ = §3!3§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§]P§ || this.§8!&§ > 0))
            {
               if((!this.§]P§ || this.§8!&§ > 6000) && !§3!3§.objects.isPigsAlive())
               {
                  this.§8!&§ = 6000;
                  this.§]P§ = true;
               }
               else if(!this.§]P§ && this.§2!1§())
               {
                  this.§8!&§ = 15000;
                  this.§]P§ = true;
               }
            }
            else if(!§3!3§.objects.isPigsAlive() && !§3!3§.objects.mSardineCanAdded && !§3!3§.objects.mMightyEagleAdded)
            {
               this.§>4§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§2!1§())
            {
               if(§3!3§.objects.mMightyEagleAdded)
               {
                  if(§3!3§.objects.mMightyEagleHasTouchedGround && §3!3§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§>4§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§3!3§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§<U§ = §2!<§;
                  }
               }
               else if(!§3!3§.objects.mSardineCanAdded)
               {
                  this.§>4§(§^A§);
               }
            }
            if(this.§`8§(false))
            {
               §3!3§.gameOver();
            }
         }
         this.§ q§ -= param1;
         if(this.§ q§ < 0)
         {
            this.§ q§ = 0;
         }
         if(this.§&3§ == §9!<§)
         {
            §3!3§.updatePigAnimations(param1);
            if(!§3!3§.camera.isOnCastleView() && §3!3§.camera.mCurrentAction != §=y§.§[f§)
            {
               this.§-Q§(§9L§);
            }
         }
         else if(this.§&3§ == §#!?§)
         {
            if(this.§ q§ <= 0)
            {
               _loc3_ = §3!3§.objects.hasBirds();
               if(_loc3_ && this.§8n§ > 0)
               {
                  this.§ q§ = 2000;
                  this.§<U§ = 0;
                  this.§8n§ = this.§8n§ - 1;
               }
               else if(!§^?§.§]!%§.objects.mMightyEagleAdded)
               {
                  this.§-Q§(§9L§);
               }
            }
            else
            {
               §3!3§.updatePigAnimations(param1);
            }
            if(!§3!3§.camera.isOnCastleView() && §3!3§.camera.mCurrentAction != §=y§.§[f§)
            {
               this.§-Q§(§9L§);
            }
         }
         else if(this.§&3§ == §>c§)
         {
            if(this.§ q§ <= 0)
            {
               this.§-Q§(§9L§);
            }
         }
         else if(this.§&3§ == §9L§)
         {
            if(§3!3§.camera.isOnCastleView() && §3!3§.camera.mCurrentAction != §=y§.§[f§)
            {
               this.§-Q§(§9!<§);
            }
         }
         else if(this.§&3§ == §#5§)
         {
            if(!(_loc4_ = §3!3§.activeObject) || _loc4_.§<Y§ < _loc4_.§;u§)
            {
               if(_loc4_ && _loc4_ is §7h§ && (!(_loc4_ as §1!$§).§1V§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§^h§ = true;
                  this.§-Q§(§#!?§);
               }
               §3!3§.activeObject = null;
               this.§-Q§(§#!?§);
            }
         }
         else if(this.§&3§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§ q§ <= 0)
            {
               if(§3!3§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§ q§ = 1000;
               }
               else
               {
                  this.§-Q§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §>4§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§]P§)
         {
            this.§]P§ = true;
         }
         if(new Date().time - §3!3§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§3!3§.slingshot.mDragging)
         {
            return;
         }
         if(§3!3§.objects.isWorldAtSleep())
         {
            this.§8!&§ = Math.min(this.§8!&§,3500);
         }
         if(this.§8!&§ <= 0)
         {
            this.§-Q§(param1,param2);
         }
      }
      
      public function §`8§(param1:Boolean = false) : Boolean
      {
         return (this.§&3§ == LEVEL_STATE_VICTORY2_END || this.§&3§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§&3§ == §^A§) && (!param1 || this.§ q§ <= 0 && this.§&3§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §'!=§() : Boolean
      {
         return this.§&3§ == LEVEL_STATE_VICTORY2_END || this.§&3§ == §^A§;
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
         if(!this.§,Q§ || !§3!3§.mReadyToRun)
         {
            return;
         }
         if(!(§3!3§.slingshot.mDragging || §3!3§.camera.mDragging))
         {
            if(this.§&3§ == §#!?§ || this.§&3§ == §9!<§ || this.§&3§ == §9L§)
            {
               if(!§3!3§.isPlayingReplay())
               {
                  §3!3§.camera.adjustManualScale(param1);
               }
               else
               {
                  §3!3§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §=!!§(param1:int) : void
      {
         this.§[L§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§,Q§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §5<§.§!q§();
         if(this.§`8§(false))
         {
            return;
         }
         if(!§3!3§.isPlayingReplay())
         {
            if(§3!3§.activeObject && this.§&3§ == §#5§ || this.§^h§)
            {
               this.§^h§ = false;
               §3!3§.activatePowerup();
               return;
            }
            _loc4_ = §3!3§.screenToBox2D(param1,param2);
            if(§3!3§.slingshot.canStartDragging(_loc4_))
            {
               §3!3§.slingshot.startDragging();
               this.§-Q§(§9L§);
            }
            else
            {
               §3!3§.camera.startDragging(param1,param2);
            }
            return;
         }
         §3!3§.camera.startDragging(param1,param2);
         §3!3§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§,Q§)
         {
            return;
         }
         §5<§.§"§();
         if(this.§&3§ == §>c§)
         {
            this.§-Q§(§9L§);
         }
         if(§3!3§.slingshot.mDragging)
         {
            _loc3_ = §3!3§.screenToBox2D(param1,param2);
            §3!3§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§3!3§.slingshot.canShootTheBird())
            {
               §3!3§.slingshot.shoot();
               this.§-Q§(§#5§);
            }
            else
            {
               §3!3§.slingshot.cancelDragging();
            }
         }
         if(§3!3§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §3!3§.camera.dragToNewPoint(param1,param2);
            }
            §3!3§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§,Q§)
         {
            return;
         }
         if(§3!3§.slingshot.mDragging)
         {
            _loc3_ = §3!3§.screenToBox2D(param1,param2);
            §3!3§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§3!3§.camera.mDragging)
         {
            §3!3§.camera.dragToNewPoint(param1,param2);
         }
         this.§[d§ = param1;
         this.§@q§ = param2;
      }
      
      public function §<>§() : Point
      {
         return new Point(this.§[d§,this.§@q§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!4§.assign(this.§!4§.getValue() + param1);
         this.§&!3§(§7]§);
         if(this.§&3§ == §#!?§)
         {
            this.§ q§ = 2000;
            this.§8n§ = §0!+§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§!4§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§^?§.§]!%§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §-Z§.§4! §(§-Z§.§%s§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§,Q§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§,Q§ = param1;
      }
   }
}

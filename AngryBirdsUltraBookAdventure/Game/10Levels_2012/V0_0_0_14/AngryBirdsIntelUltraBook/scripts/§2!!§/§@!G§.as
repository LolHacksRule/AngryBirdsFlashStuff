package §2!!§
{
   import §!!§.LevelManager;
   import §!!X§.§&!E§;
   import §&!h§.§?!K§;
   import §+&§.§ R§;
   import §+&§.§-!7§;
   import §1!T§.§6!H§;
   import §5i§.§4!]§;
   import §6z§.§+!D§;
   import §]![§.§,u§;
   import §]![§.§4!H§;
   import §]![§.§4J§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@!G§ extends § !X§
   {
      
      public static const §9_§:int = 0;
      
      public static const §"!@§:int = 1;
      
      public static const §'!u§:int = 2;
      
      public static const §=!"§:int = 3;
      
      public static const §,!_§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §`§:int = 7;
      
      protected static const §6g§:Number = §&!E§.§case § / 100;
      
      public static const §[L§:Number = 2000;
      
      public static const §^!N§:Number = 2500;
      
      public static const §break§:int = 5;
       
      
      public var §'9§:int = 0;
      
      protected var §0m§:int = 0;
      
      public var §0Q§:Number;
      
      protected var §7!8§:Number = 0;
      
      protected var §&]§:Boolean = false;
      
      private var §4!v§:Number = 0;
      
      public var §8!D§:Number = 0;
      
      protected var §0!#§:Boolean;
      
      protected var §5! §:Number = 0;
      
      protected var §@!I§:Number = 0;
      
      protected var §8!V§:Boolean = true;
      
      protected var §+V§:§?!K§;
      
      public function §@!G§(param1:§-!7§)
      {
         this.§+V§ = new §?!K§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§+V§.assign(0);
         this.§'9§ = -1;
         this.§0m§ = 0;
         this.§7!8§ = 0;
         this.§&]§ = false;
         this.§4B§(§9_§);
         this.§0Q§ = §[L§;
         §3s§(true);
         §+!X§.objects.setDamageEnabled(true);
         §+!X§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §+!X§.update(param1,true);
         this.§"!t§(param1);
         this.§7!$§(param1);
      }
      
      private function §"!t§(param1:int) : void
      {
         if(this.§0m§ != 0)
         {
            §+!X§.camera.adjustManualScale(this.§0m§ > 0,param1 * §6g§);
         }
      }
      
      public function clearLevel() : void
      {
         §+!X§.clearLevel();
         removeEventListeners();
         this.§'9§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §,!g§() : Boolean
      {
         if(§+!X§.camera.mCurrentCameraSliderLocation < §&!E§.§!%§)
         {
            return false;
         }
         if(!§+!X§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §#!m§(param1:int) : void
      {
         var _loc2_:§&!E§ = §+!X§.camera;
         if(_loc2_.§4k§ > 0)
         {
            _loc2_.§4k§ -= param1;
            if(_loc2_.§4k§ <= 0)
            {
               if(this.§,!g§())
               {
                  _loc2_.§4k§ = -1;
                  if(§+!X§.slingshot.birdsAvailable)
                  {
                     _loc2_.§;l§();
                  }
               }
               else
               {
                  _loc2_.§4k§ = §&!E§.§ !?§ / 2;
               }
            }
         }
      }
      
      public function §4B§(param1:int, param2:Boolean = false) : void
      {
         if(this.§ o§(false) && !param2)
         {
            return;
         }
         if(param1 == §9_§)
         {
            this.§8!D§ = 2000;
         }
         else if(param1 == §"!@§)
         {
            §+!X§.camera.goToBirdView();
         }
         else if(param1 == §'!u§)
         {
            this.§0!#§ = false;
            this.§8!D§ = 5000;
            §+!X§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §=!"§)
         {
            §+!X§.camera.goToCastleView();
         }
         else if(param1 == §,!_§)
         {
            this.§8!D§ = 2000;
            this.§4!v§ = §break§;
            §+!X§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§8!D§ = 1200;
            if(!§+!X§.objects.mMightyEagleAdded)
            {
               §+!X§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§8!D§ = 1200;
            if(!§+!X§.objects.mMightyEagleAdded)
            {
               §+!X§.camera.goToBirdView();
               §+!X§.slingshot.makeBirdsJumpForJoy();
            }
            §6!H§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §`§)
         {
            §6!H§.§[!W§();
            §6!H§.playSound("LevelFailedPigs1");
            this.§8!D§ = 1200;
            §+!X§.camera.goToCastleView();
            §+!X§.objects.makePigsSmile(5);
         }
         this.§'9§ = param1;
      }
      
      public function §?>§(param1:Number) : void
      {
         this.§7!8§ = Math.max(this.§7!8§,param1);
      }
      
      protected function §-o§() : Boolean
      {
         return §+!X§.slingshot.mSlingShotState == § R§.§6!D§ && !§+!X§.objects.hasBirds();
      }
      
      public function §7!$§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§4!H§ = null;
         this.§0Q§ -= param1;
         if(this.§&]§)
         {
            this.§7!8§ -= param1;
            if(this.§7!8§ < 0)
            {
               this.§0Q§ = 0;
            }
         }
         if(this.§0Q§ <= 0 && !this.§ o§(false))
         {
            this.§0Q§ = §[L§;
            _loc2_ = §+!X§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§&]§ || this.§7!8§ > 0))
            {
               if((!this.§&]§ || this.§7!8§ > 6000) && !§+!X§.objects.isPigsAlive())
               {
                  this.§7!8§ = 6000;
                  this.§&]§ = true;
               }
               else if(!this.§&]§ && this.§-o§())
               {
                  this.§7!8§ = 15000;
                  this.§&]§ = true;
               }
            }
            else if(!§+!X§.objects.isPigsAlive() && !§+!X§.objects.mSardineCanAdded && !§+!X§.objects.mMightyEagleAdded)
            {
               this.§#!,§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§-o§())
            {
               if(§+!X§.objects.mMightyEagleAdded)
               {
                  if(§+!X§.objects.mMightyEagleHasTouchedGround && §+!X§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§#!,§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§+!X§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§0Q§ = §[L§;
                  }
               }
               else if(!§+!X§.objects.mSardineCanAdded)
               {
                  this.§#!,§(§`§);
               }
            }
            if(this.§ o§(false))
            {
               §+!X§.gameOver();
            }
         }
         this.§8!D§ -= param1;
         if(this.§8!D§ < 0)
         {
            this.§8!D§ = 0;
         }
         if(this.§'9§ == §=!"§)
         {
            §+!X§.updatePigAnimations(param1);
            if(!§+!X§.camera.isOnCastleView() && §+!X§.camera.mCurrentAction != §&!E§.§ f§)
            {
               this.§4B§(§"!@§);
            }
         }
         else if(this.§'9§ == §,!_§)
         {
            if(this.§8!D§ <= 0)
            {
               _loc3_ = §+!X§.objects.hasBirds();
               if(_loc3_ && this.§4!v§ > 0)
               {
                  this.§8!D§ = 2000;
                  this.§0Q§ = 0;
                  this.§4!v§ = this.§4!v§ - 1;
               }
               else if(!§4!]§.§8C§.objects.mMightyEagleAdded)
               {
                  this.§4B§(§"!@§);
               }
            }
            else
            {
               §+!X§.updatePigAnimations(param1);
            }
            if(!§+!X§.camera.isOnCastleView() && §+!X§.camera.mCurrentAction != §&!E§.§ f§)
            {
               this.§4B§(§"!@§);
            }
         }
         else if(this.§'9§ == §9_§)
         {
            if(this.§8!D§ <= 0)
            {
               this.§4B§(§"!@§);
            }
         }
         else if(this.§'9§ == §"!@§)
         {
            if(§+!X§.camera.isOnCastleView() && §+!X§.camera.mCurrentAction != §&!E§.§ f§)
            {
               this.§4B§(§=!"§);
            }
         }
         else if(this.§'9§ == §'!u§)
         {
            if(!(_loc4_ = §+!X§.activeObject) || _loc4_.§%,§ < _loc4_.§0K§)
            {
               if(_loc4_ && _loc4_ is §,u§ && (!(_loc4_ as §4J§).§6V§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§0!#§ = true;
                  this.§4B§(§,!_§);
               }
               §+!X§.activeObject = null;
               this.§4B§(§,!_§);
            }
         }
         else if(this.§'9§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§8!D§ <= 0)
            {
               if(§+!X§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§8!D§ = 1000;
               }
               else
               {
                  this.§4B§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §#!,§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§&]§)
         {
            this.§&]§ = true;
         }
         if(new Date().time - §+!X§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§+!X§.slingshot.mDragging)
         {
            return;
         }
         if(§+!X§.objects.isWorldAtSleep())
         {
            this.§7!8§ = Math.min(this.§7!8§,3500);
         }
         if(this.§7!8§ <= 0)
         {
            this.§4B§(param1,param2);
         }
      }
      
      public function § o§(param1:Boolean = false) : Boolean
      {
         return (this.§'9§ == LEVEL_STATE_VICTORY2_END || this.§'9§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§'9§ == §`§) && (!param1 || this.§8!D§ <= 0 && this.§'9§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §=!=§() : Boolean
      {
         return this.§'9§ == LEVEL_STATE_VICTORY2_END || this.§'9§ == §`§;
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
         if(!this.§8!V§ || !§+!X§.mReadyToRun)
         {
            return;
         }
         if(!(§+!X§.slingshot.mDragging || §+!X§.camera.mDragging))
         {
            if(this.§'9§ == §,!_§ || this.§'9§ == §=!"§ || this.§'9§ == §"!@§)
            {
               if(!§+!X§.isPlayingReplay())
               {
                  §+!X§.camera.adjustManualScale(param1);
               }
               else
               {
                  §+!X§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §2![§(param1:int) : void
      {
         this.§0m§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§8!V§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §+!D§.§,3§();
         if(this.§ o§(false))
         {
            return;
         }
         if(!§+!X§.isPlayingReplay())
         {
            if(§+!X§.activeObject && this.§'9§ == §'!u§ || this.§0!#§)
            {
               this.§0!#§ = false;
               §+!X§.activatePowerup();
               return;
            }
            _loc4_ = §+!X§.screenToBox2D(param1,param2);
            if(§+!X§.slingshot.canStartDragging(_loc4_))
            {
               §+!X§.slingshot.startDragging();
               this.§4B§(§"!@§);
            }
            else
            {
               §+!X§.camera.startDragging(param1,param2);
            }
            return;
         }
         §+!X§.camera.startDragging(param1,param2);
         §+!X§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§8!V§)
         {
            return;
         }
         §+!D§.§&!X§();
         if(this.§'9§ == §9_§)
         {
            this.§4B§(§"!@§);
         }
         if(§+!X§.slingshot.mDragging)
         {
            _loc3_ = §+!X§.screenToBox2D(param1,param2);
            §+!X§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§+!X§.slingshot.canShootTheBird())
            {
               §+!X§.slingshot.shoot();
               this.§4B§(§'!u§);
            }
            else
            {
               §+!X§.slingshot.cancelDragging();
            }
         }
         if(§+!X§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §+!X§.camera.dragToNewPoint(param1,param2);
            }
            §+!X§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§8!V§)
         {
            return;
         }
         if(§+!X§.slingshot.mDragging)
         {
            _loc3_ = §+!X§.screenToBox2D(param1,param2);
            §+!X§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§+!X§.camera.mDragging)
         {
            §+!X§.camera.dragToNewPoint(param1,param2);
         }
         this.§5! § = param1;
         this.§@!I§ = param2;
      }
      
      public function §?!P§() : Point
      {
         return new Point(this.§5! §,this.§@!I§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§+V§.assign(this.§+V§.getValue() + param1);
         this.§?>§(§^!N§);
         if(this.§'9§ == §,!_§)
         {
            this.§8!D§ = 2000;
            this.§4!v§ = §break§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§+V§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§4!]§.§8C§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§5!c§(LevelManager.§^!F§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§8!V§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§8!V§ = param1;
      }
   }
}

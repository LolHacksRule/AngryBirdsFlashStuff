package §]§
{
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §%!0§.§3"!§;
   import §&!P§.§&!^§;
   import §&!P§.§0!Z§;
   import §&!P§.§9`§;
   import §&!P§.§``§;
   import §,!g§.§"!P§;
   import §,P§.§'_§;
   import §6]§.§8!W§;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §?h§ extends §`!7§
   {
      
      public static const §@j§:int = 0;
      
      public static const §%a§:int = 1;
      
      public static const §6!>§:int = 2;
      
      public static const §4_§:int = 3;
      
      public static const §8!K§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §^!>§:int = 7;
      
      protected static const §[u§:Number = §"!P§.MANUAL_SCALE_STEP / 100;
      
      public static const §+!D§:Number = 2000;
      
      public static const §"!e§:Number = 2500;
      
      public static const §,!U§:int = 5;
      
      private static var §^!y§:Boolean;
       
      
      public var §3!9§:int = 0;
      
      protected var §[e§:int = 0;
      
      public var §`"+§:Number;
      
      protected var §^O§:Number = 0;
      
      protected var §#!2§:Boolean = false;
      
      private var §!!4§:Number = 0;
      
      public var §>v§:Number = 0;
      
      protected var §>c§:Number = 0;
      
      protected var §-<§:Number = 0;
      
      protected var §case §:Boolean = true;
      
      protected var §,!R§:§9!=§;
      
      public function §?h§(param1:§,4§)
      {
         this.§,!R§ = new §9!=§();
         super(param1);
      }
      
      public static function §^I§(param1:Boolean) : void
      {
         §^!y§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§,!R§.§2">§(0);
         this.§3!9§ = -1;
         this.§[e§ = 0;
         this.§^O§ = 0;
         this.§#!2§ = false;
         this.§'!V§(§@j§);
         this.§`"+§ = §+!D§;
         §;!;§(true);
         §`!G§.objects.setDamageEnabled(true);
         §`!G§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §`!G§.update(param1,true);
         this.§9X§(param1);
         this.§@^§(param1);
      }
      
      private function §9X§(param1:int) : void
      {
         if(this.§[e§ != 0)
         {
            §`!G§.camera.adjustManualScale(this.§[e§ > 0,param1 * §[u§);
         }
      }
      
      public function clearLevel() : void
      {
         §`!G§.clearLevel();
         removeEventListeners();
         this.§3!9§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §<G§() : Boolean
      {
         if(§`!G§.camera.mCurrentCameraSliderLocation < §"!P§.§]"?§)
         {
            return false;
         }
         if(!§`!G§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §^l§(param1:int) : void
      {
         var _loc2_:§"!P§ = §`!G§.camera;
         if(_loc2_.§;">§ > 0)
         {
            _loc2_.§;">§ -= param1;
            if(_loc2_.§;">§ <= 0)
            {
               if(this.§<G§())
               {
                  _loc2_.§;">§ = -1;
                  if(§`!G§.slingshot.birdsAvailable)
                  {
                     _loc2_.§>#§();
                  }
               }
               else
               {
                  _loc2_.§;">§ = §"!P§.§'U§ / 2;
               }
            }
         }
      }
      
      public function §'!V§(param1:int, param2:Boolean = false) : void
      {
         if(this.§,!F§(false) && !param2)
         {
            return;
         }
         if(param1 == §@j§)
         {
            this.§>v§ = 2000;
         }
         else if(param1 == §%a§)
         {
            §`!G§.camera.goToBirdView();
         }
         else if(param1 == §6!>§)
         {
            §^I§(false);
            this.§>v§ = 5000;
            §`!G§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §4_§)
         {
            §`!G§.camera.goToCastleView();
         }
         else if(param1 == §8!K§)
         {
            this.§>v§ = 2000;
            this.§!!4§ = §,!U§;
            §`!G§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§>v§ = 1200;
            if(!§`!G§.objects.mMightyEagleAdded)
            {
               §`!G§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§>v§ = 1200;
            if(!§`!G§.objects.mMightyEagleAdded)
            {
               §`!G§.camera.goToBirdView();
               §`!G§.slingshot.makeBirdsJumpForJoy();
            }
            §0"#§.§9"2§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §^!>§)
         {
            §0"#§.§4"#§();
            §0"#§.§9"2§("LevelFailedPigs1");
            this.§>v§ = 1200;
            §`!G§.camera.goToCastleView();
            §`!G§.objects.makePigsSmile(5);
         }
         this.§3!9§ = param1;
      }
      
      public function §#!'§() : void
      {
         this.§>v§ = 2000;
         this.§#!2§ = false;
         this.§^O§ = 2000;
         this.§'!V§(§?h§.§%a§,true);
      }
      
      public function §"!T§(param1:Number) : void
      {
         this.§^O§ = Math.max(this.§^O§,param1);
      }
      
      protected function §,@§() : Boolean
      {
         return §`!G§.slingshot.mSlingShotState == §3"!§.§3"4§ && !§`!G§.objects.hasBirds();
      }
      
      public function §@^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§``§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§`"+§ -= param1;
         if(this.§#!2§)
         {
            this.§^O§ -= param1;
            if(this.§^O§ < 0)
            {
               this.§`"+§ = 0;
            }
         }
         if(this.§`"+§ <= 0 && !this.§,!F§(false))
         {
            this.§`"+§ = §+!D§;
            _loc2_ = §`!G§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§#!2§ || this.§^O§ > 0))
            {
               if((!this.§#!2§ || this.§^O§ > 6000) && !§`!G§.objects.isPigsAlive())
               {
                  this.§^O§ = 6000;
                  this.§#!2§ = true;
               }
               else if(!this.§#!2§ && this.§,@§())
               {
                  this.§^O§ = 15000;
                  this.§#!2§ = true;
               }
            }
            else if(!§`!G§.objects.isPigsAlive() && !§`!G§.objects.mSardineCanAdded && !§`!G§.objects.mMightyEagleAdded)
            {
               this.§1Z§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§,@§())
            {
               if(§`!G§.objects.mMightyEagleAdded)
               {
                  if(§`!G§.objects.mMightyEagleHasTouchedGround && §`!G§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§1Z§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§`!G§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§`"+§ = §+!D§;
                  }
               }
               else if(!§`!G§.objects.mSardineCanAdded)
               {
                  this.§1Z§(§^!>§);
               }
            }
            if(this.§,!F§(false))
            {
               §`!G§.gameOver();
            }
         }
         this.§>v§ -= param1;
         if(this.§>v§ < 0)
         {
            this.§>v§ = 0;
         }
         if(this.§3!9§ == §4_§)
         {
            §`!G§.updatePigAnimations(param1);
            if(!§`!G§.camera.isOnCastleView() && §`!G§.camera.mCurrentAction != §"!P§.§9!g§)
            {
               this.§'!V§(§%a§);
            }
         }
         else if(this.§3!9§ == §8!K§)
         {
            if(this.§>v§ <= 0)
            {
               _loc3_ = §`!G§.objects.hasBirds();
               if(_loc3_ && this.§!!4§ > 0)
               {
                  this.§>v§ = 2000;
                  this.§`"+§ = 0;
                  this.§!!4§ = this.§!!4§ - 1;
               }
               else if(!§'_§.§=M§.objects.mMightyEagleAdded)
               {
                  this.§'!V§(§%a§);
               }
            }
            else
            {
               §`!G§.updatePigAnimations(param1);
            }
            if(!§`!G§.camera.isOnCastleView() && §`!G§.camera.mCurrentAction != §"!P§.§9!g§)
            {
               this.§'!V§(§%a§);
            }
         }
         else if(this.§3!9§ == §@j§)
         {
            if(this.§>v§ <= 0)
            {
               this.§'!V§(§%a§);
            }
         }
         else if(this.§3!9§ == §%a§)
         {
            if(§`!G§.camera.isOnCastleView() && §`!G§.camera.mCurrentAction != §"!P§.§9!g§)
            {
               this.§'!V§(§4_§);
            }
         }
         else if(this.§3!9§ == §6!>§)
         {
            if(!(_loc4_ = §`!G§.activeObject) || _loc4_.§8W§ < _loc4_.§%5§)
            {
               if(_loc4_)
               {
                  _loc5_ = _loc4_ is §&!^§;
                  _loc6_ = _loc4_ is §0!Z§;
                  _loc7_ = (_loc4_ as §9`§).§+^§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §^I§(true);
                        this.§'!V§(§8!K§);
                     }
                  }
               }
               §`!G§.activeObject = null;
               this.§'!V§(§8!K§);
            }
         }
         else if(this.§3!9§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§>v§ <= 0)
            {
               if(§`!G§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§>v§ = 1000;
               }
               else
               {
                  this.§'!V§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §1Z§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§#!2§)
         {
            this.§#!2§ = true;
         }
         if(new Date().time - §`!G§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§`!G§.slingshot.mDragging)
         {
            return;
         }
         if(§`!G§.objects.isWorldAtSleep())
         {
            this.§^O§ = Math.min(this.§^O§,3500);
         }
         if(this.§^O§ <= 0)
         {
            this.§'!V§(param1,param2);
         }
      }
      
      public function §,!F§(param1:Boolean = false) : Boolean
      {
         return (this.§3!9§ == LEVEL_STATE_VICTORY2_END || this.§3!9§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§3!9§ == §^!>§) && (!param1 || this.§>v§ <= 0 && this.§3!9§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §>"3§() : Boolean
      {
         return this.§3!9§ == LEVEL_STATE_VICTORY2_END || this.§3!9§ == §^!>§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§]!x§(param1.delta > 0);
         }
      }
      
      public function §]!x§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§case § || !§`!G§.mReadyToRun)
         {
            return;
         }
         if(!(§`!G§.slingshot.mDragging || §`!G§.camera.mDragging))
         {
            if(this.§3!9§ == §8!K§ || this.§3!9§ == §4_§ || this.§3!9§ == §%a§)
            {
               if(!§`!G§.isPlayingReplay())
               {
                  §`!G§.camera.adjustManualScale(param1,param2 == 0 ? Number(§"!P§.MANUAL_SCALE_STEP) : Number(param2));
               }
               else
               {
                  §`!G§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §,!1§(param1:int) : void
      {
         this.§[e§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§case §)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §8!W§.§for§();
         if(this.§,!F§(false))
         {
            return;
         }
         if(!§`!G§.isPlayingReplay())
         {
            if(§`!G§.activeObject && this.§3!9§ == §6!>§ || §^!y§)
            {
               §^I§(false);
               §`!G§.activatePowerup();
               return;
            }
            _loc4_ = §`!G§.screenToBox2D(param1,param2);
            if(§`!G§.slingshot.canStartDragging(_loc4_))
            {
               §`!G§.slingshot.startDragging();
               this.§'!V§(§%a§);
            }
            else
            {
               §`!G§.camera.startDragging(param1,param2);
            }
            return;
         }
         §`!G§.camera.startDragging(param1,param2);
         §`!G§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§case §)
         {
            return;
         }
         §8!W§.§^!R§();
         if(this.§3!9§ == §@j§)
         {
            this.§'!V§(§%a§);
         }
         if(§`!G§.slingshot.mDragging)
         {
            _loc3_ = §`!G§.screenToBox2D(param1,param2);
            §`!G§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§`!G§.slingshot.canShootTheBird())
            {
               §`!G§.slingshot.shoot();
               this.§'!V§(§6!>§);
            }
            else
            {
               §`!G§.slingshot.cancelDragging();
            }
         }
         if(§`!G§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §`!G§.camera.dragToNewPoint(param1,param2);
            }
            §`!G§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§case §)
         {
            return;
         }
         if(§`!G§.slingshot.mDragging)
         {
            _loc3_ = §`!G§.screenToBox2D(param1,param2);
            §`!G§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§`!G§.camera.mDragging)
         {
            §`!G§.camera.dragToNewPoint(param1,param2);
         }
         this.§>c§ = param1;
         this.§-<§ = param2;
      }
      
      public function §+!y§() : Point
      {
         return new Point(this.§>c§,this.§-<§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§,!R§.§2">§(this.§,!R§.getValue() + param1);
         this.§"!T§(§"!e§);
         if(this.§3!9§ == §8!K§)
         {
            this.§>v§ = 2000;
            this.§!!4§ = §,!U§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§,!R§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§'_§.§=M§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §`!r§.getLevelForId(§`!r§.§0B§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§case §;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§case § = param1;
      }
   }
}

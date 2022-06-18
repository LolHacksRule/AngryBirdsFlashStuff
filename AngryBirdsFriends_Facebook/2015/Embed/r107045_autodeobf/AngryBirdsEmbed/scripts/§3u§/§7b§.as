package §3u§
{
   import §!!,§.§!!J§;
   import §!!,§.§0!E§;
   import §!!,§.§6!&§;
   import §!!,§.§`Q§;
   import §'0§.§]!2§;
   import §3V§.§9p§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §9s§.§[!?§;
   import §9s§.§^9§;
   import §@!+§.§+_§;
   import §@!;§.§`P§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §7b§ extends §>'§
   {
      
      public static const §'7§:int = 0;
      
      public static const §7>§:int = 1;
      
      public static const §=2§:int = 2;
      
      public static const §"Q§:int = 3;
      
      public static const § !"§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §0%§:int = 7;
      
      protected static const §1E§:Number = §+_§.§+'§ / 100;
      
      public static const §?j§:Number = 2000;
      
      public static const §@t§:Number = 2500;
      
      public static const §>W§:int = 5;
      
      private static var §3s§:Boolean;
       
      
      public var §]!1§:int = 0;
      
      protected var § x§:int = 0;
      
      public var §9! §:Number;
      
      protected var §<&§:Number = 0;
      
      protected var §extends§:Boolean = false;
      
      private var §!f§:Number = 0;
      
      public var §`!#§:Number = 0;
      
      protected var §2!"§:Number = 0;
      
      protected var §9!L§:Number = 0;
      
      protected var §set §:Boolean = true;
      
      protected var §>@§:§9p§;
      
      public function §7b§(param1:§^9§)
      {
         this.§>@§ = new §9p§();
         super(param1);
      }
      
      public static function §]J§(param1:Boolean) : void
      {
         §3s§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§>@§.assign(0);
         this.§]!1§ = -1;
         this.§ x§ = 0;
         this.§<&§ = 0;
         this.§extends§ = false;
         this.§"!K§(§'7§);
         this.§9! § = §?j§;
         §1q§(true);
         §4!I§.objects.setDamageEnabled(true);
         §4!I§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §4!I§.update(param1,true);
         this.§,Q§(param1);
         this.§]!8§(param1);
      }
      
      private function §,Q§(param1:int) : void
      {
         if(this.§ x§ != 0)
         {
            §4!I§.camera.adjustManualScale(this.§ x§ > 0,param1 * §1E§);
         }
      }
      
      public function clearLevel() : void
      {
         §4!I§.clearLevel();
         removeEventListeners();
         this.§]!1§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §5k§() : Boolean
      {
         if(§4!I§.camera.mCurrentCameraSliderLocation < §+_§.§]P§)
         {
            return false;
         }
         if(!§4!I§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §#T§(param1:int) : void
      {
         var _loc2_:§+_§ = §4!I§.camera;
         if(_loc2_.§=P§ > 0)
         {
            _loc2_.§=P§ -= param1;
            if(_loc2_.§=P§ <= 0)
            {
               if(this.§5k§())
               {
                  _loc2_.§=P§ = -1;
                  if(§4!I§.slingshot.birdsAvailable)
                  {
                     _loc2_.§'!5§();
                  }
               }
               else
               {
                  _loc2_.§=P§ = §+_§.§&4§ / 2;
               }
            }
         }
      }
      
      public function §"!K§(param1:int, param2:Boolean = false) : void
      {
         if(this.§get §(false) && !param2)
         {
            return;
         }
         if(param1 == §'7§)
         {
            this.§`!#§ = 2000;
         }
         else if(param1 == §7>§)
         {
            §4!I§.camera.goToBirdView();
         }
         else if(param1 == §=2§)
         {
            §]J§(false);
            this.§`!#§ = 5000;
            §4!I§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §"Q§)
         {
            §4!I§.camera.goToCastleView();
         }
         else if(param1 == § !"§)
         {
            this.§`!#§ = 2000;
            this.§!f§ = §>W§;
            §4!I§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§`!#§ = 1200;
            if(!§4!I§.objects.mMightyEagleAdded)
            {
               §4!I§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§`!#§ = 1200;
            if(!§4!I§.objects.mMightyEagleAdded)
            {
               §4!I§.camera.goToBirdView();
               §4!I§.slingshot.makeBirdsJumpForJoy();
            }
            §]!2§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §0%§)
         {
            §]!2§.§^F§();
            §]!2§.playSound("LevelFailedPigs1");
            this.§`!#§ = 1200;
            §4!I§.camera.goToCastleView();
            §4!I§.objects.makePigsSmile(5);
         }
         this.§]!1§ = param1;
      }
      
      public function §4!L§() : void
      {
         this.§`!#§ = 2000;
         this.§extends§ = false;
         this.§<&§ = 2000;
      }
      
      public function §+!J§(param1:Number) : void
      {
         this.§extends§ = false;
         this.§<&§ = Math.max(this.§<&§,param1);
      }
      
      protected function §@!=§() : Boolean
      {
         return §4!I§.slingshot.mSlingShotState == §[!?§.§91§ && !§4!I§.objects.hasBirds();
      }
      
      public function §]!8§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§`Q§ = null;
         var _loc5_:§0!E§ = null;
         var _loc6_:* = false;
         var _loc7_:* = false;
         this.§9! § -= param1;
         if(this.§extends§)
         {
            this.§<&§ -= param1;
            if(this.§<&§ < 0)
            {
               this.§9! § = 0;
            }
         }
         if(this.§9! § <= 0 && !this.§get §(false))
         {
            this.§9! § = §?j§;
            _loc2_ = §4!I§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§extends§ || this.§<&§ > 0))
            {
               if((!this.§extends§ || this.§<&§ > 6000) && !§4!I§.objects.isPigsAlive())
               {
                  this.§<&§ = 6000;
                  this.§extends§ = true;
               }
               else if(!this.§extends§ && this.§@!=§())
               {
                  this.§<&§ = 15000;
                  this.§extends§ = true;
               }
            }
            else if(!§4!I§.objects.isPigsAlive() && !§4!I§.objects.mSardineCanAdded && !§4!I§.objects.mMightyEagleAdded && (§[!4§.§continue§.slingshot.§@s§.length == 0 || §[!4§.§continue§.slingshot.§@s§[0].name != "BIRD_CHRISTMAS"))
            {
               this.§0?§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§@!=§())
            {
               if(§4!I§.objects.mMightyEagleAdded)
               {
                  if(§4!I§.objects.mMightyEagleHasTouchedGround && §4!I§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§0?§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§4!I§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§9! § = §?j§;
                  }
               }
               else if(!§4!I§.objects.mSardineCanAdded)
               {
                  this.§0?§(§0%§);
               }
            }
            if(this.§get §(false))
            {
               §4!I§.gameOver();
            }
         }
         this.§`!#§ -= param1;
         if(this.§`!#§ < 0)
         {
            this.§`!#§ = 0;
         }
         if(this.§]!1§ == §"Q§)
         {
            §4!I§.updatePigAnimations(param1);
            if(!§4!I§.camera.isOnCastleView() && §4!I§.camera.mCurrentAction != §+_§.§2P§)
            {
               this.§"!K§(§7>§);
            }
         }
         else if(this.§]!1§ == § !"§)
         {
            if(this.§`!#§ <= 0)
            {
               _loc3_ = §4!I§.objects.hasBirds();
               if(_loc3_ && this.§!f§ > 0)
               {
                  this.§`!#§ = 2000;
                  this.§9! § = 0;
                  this.§!f§ = this.§!f§ - 1;
               }
               else if(!§[!4§.§continue§.objects.mMightyEagleAdded)
               {
                  this.§"!K§(§7>§);
               }
            }
            else
            {
               §4!I§.updatePigAnimations(param1);
            }
            if(!§4!I§.camera.isOnCastleView() && §4!I§.camera.mCurrentAction != §+_§.§2P§)
            {
               this.§"!K§(§7>§);
            }
         }
         else if(this.§]!1§ == §'7§)
         {
            if(this.§`!#§ <= 0)
            {
               this.§"!K§(§7>§);
            }
         }
         else if(this.§]!1§ == §7>§)
         {
            if(§4!I§.camera.isOnCastleView() && §4!I§.camera.mCurrentAction != §+_§.§2P§)
            {
               this.§"!K§(§"Q§);
            }
         }
         else if(this.§]!1§ == §=2§)
         {
            _loc5_ = (_loc4_ = §4!I§.activeObject) as §0!E§;
            if(!_loc4_ || _loc4_.§;U§ < _loc4_.§!d§ || _loc5_ && _loc5_.§-!A§)
            {
               if(_loc5_)
               {
                  _loc6_ = _loc5_ is §!!J§;
                  _loc7_ = _loc5_ is §6!&§;
                  if(_loc6_ || _loc7_)
                  {
                     if(!_loc5_.§-!A§ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc6_)
                     {
                        §]J§(true);
                     }
                  }
               }
               §4!I§.activeObject = null;
               this.§"!K§(§ !"§);
            }
         }
         else if(this.§]!1§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§`!#§ <= 0)
            {
               if(§4!I§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§`!#§ = 1000;
               }
               else
               {
                  this.§"!K§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §0?§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§extends§)
         {
            this.§extends§ = true;
         }
         if(new Date().time - §4!I§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§4!I§.slingshot.mDragging)
         {
            return;
         }
         if(§4!I§.objects.isWorldAtSleep())
         {
            this.§<&§ = Math.min(this.§<&§,3500);
         }
         if(this.§<&§ <= 0)
         {
            this.§"!K§(param1,param2);
         }
      }
      
      public function §get §(param1:Boolean = false) : Boolean
      {
         return (this.§]!1§ == LEVEL_STATE_VICTORY2_END || this.§]!1§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§]!1§ == §0%§) && (!param1 || this.§`!#§ <= 0 && this.§]!1§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §%!D§() : Boolean
      {
         return this.§]!1§ == LEVEL_STATE_VICTORY2_END || this.§]!1§ == §0%§;
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
         if(!this.§set § || !§4!I§.mReadyToRun)
         {
            return;
         }
         if(!(§4!I§.slingshot.mDragging || §4!I§.camera.mDragging))
         {
            if(this.§]!1§ == § !"§ || this.§]!1§ == §"Q§ || this.§]!1§ == §7>§ || this.§]!1§ == §=2§)
            {
               if(!§4!I§.isPlayingReplay())
               {
                  §4!I§.camera.adjustManualScale(param1,param2 == 0 ? Number(§+_§.§+'§) : Number(param2));
               }
               else
               {
                  §4!I§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §#0§(param1:int) : void
      {
         this.§ x§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§set §)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §`P§.§[!0§();
         if(this.§get §(false))
         {
            return;
         }
         if(!§4!I§.isPlayingReplay())
         {
            if(§4!I§.activeObject && this.§]!1§ == §=2§ || §3s§)
            {
               §]J§(false);
               §4!I§.activatePowerup();
               return;
            }
            _loc4_ = §4!I§.screenToBox2D(param1,param2);
            if(§4!I§.slingshot.canStartDragging(_loc4_))
            {
               §4!I§.slingshot.startDragging();
               _loc4_ = §4!I§.screenToBox2D(param1,param2);
               §4!I§.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
               this.§"!K§(§7>§);
            }
            else
            {
               §4!I§.camera.startDragging(param1,param2);
            }
            return;
         }
         §4!I§.camera.startDragging(param1,param2);
         §4!I§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§set §)
         {
            return;
         }
         §`P§.§;#§();
         if(this.§]!1§ == §'7§)
         {
            this.§"!K§(§7>§);
         }
         if(§4!I§.slingshot.mDragging)
         {
            _loc3_ = §4!I§.screenToBox2D(param1,param2);
            §4!I§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§4!I§.slingshot.canShootTheBird())
            {
               §4!I§.slingshot.shoot();
               this.§"!K§(§=2§);
            }
            else
            {
               §4!I§.slingshot.cancelDragging();
            }
         }
         if(§4!I§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §4!I§.camera.dragToNewPoint(param1,param2);
            }
            §4!I§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§set §)
         {
            return;
         }
         if(§4!I§.slingshot.mDragging)
         {
            _loc3_ = §4!I§.screenToBox2D(param1,param2);
            §4!I§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§4!I§.camera.mDragging)
         {
            §4!I§.camera.dragToNewPoint(param1,param2);
         }
         this.§2!"§ = param1;
         this.§9!L§ = param2;
      }
      
      public function §=u§() : Point
      {
         return new Point(this.§2!"§,this.§9!L§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§>@§.assign(this.§>@§.getValue() + param1);
         this.§+!J§(§@t§);
         if(this.§]!1§ == § !"§)
         {
            this.§`!#§ = 2000;
            this.§!f§ = §>W§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§>@§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§[!4§.§continue§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §'?§.§>5§(§'?§.§"t§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§set §;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§set § = param1;
      }
   }
}

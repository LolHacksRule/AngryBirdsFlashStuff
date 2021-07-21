package §+_§
{
   import §%!E§.§-§;
   import §'6§.§^t§;
   import §+[§.§%G§;
   import §3y§.§"!G§;
   import §>!O§.§[+§;
   import §?!8§.§-!1§;
   import §?!8§.§3<§;
   import §?!8§.§>U§;
   import §?!8§.§]f§;
   import §?j§.§`R§;
   import §`!4§.§6l§;
   import §`!4§.§^H§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §7[§ extends §+3§
   {
      
      public static const §,s§:int = 0;
      
      public static const § T§:int = 1;
      
      public static const §for§:int = 2;
      
      public static const §!!=§:int = 3;
      
      public static const §#$§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §-%§:int = 7;
      
      protected static const §<k§:Number = §-§.§`!"§ / 100;
      
      public static const §<n§:Number = 2000;
      
      public static const §6Y§:Number = 2500;
      
      public static const §3!C§:int = 5;
      
      private static var §+!@§:Boolean;
       
      
      public var §&@§:int = 0;
      
      protected var §+!I§:int = 0;
      
      public var §&!M§:Number;
      
      protected var §5+§:Number = 0;
      
      protected var §<!N§:Boolean = false;
      
      private var §4i§:Number = 0;
      
      public var §&U§:Number = 0;
      
      protected var §@n§:Number = 0;
      
      protected var §<!K§:Number = 0;
      
      protected var §;&§:Boolean = true;
      
      protected var §!R§:§"!G§;
      
      public function §7[§(param1:§6l§)
      {
         this.§!R§ = new §"!G§();
         super(param1);
      }
      
      public static function §#!@§(param1:Boolean) : void
      {
         §+!@§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§!R§.assign(0);
         this.§&@§ = -1;
         this.§+!I§ = 0;
         this.§5+§ = 0;
         this.§<!N§ = false;
         this.§,!!§(§,s§);
         this.§&!M§ = §<n§;
         §;E§(true);
         §#J§.objects.setDamageEnabled(true);
         §#J§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §#J§.update(param1,true);
         this.§7'§(param1);
         this.§44§(param1);
      }
      
      private function §7'§(param1:int) : void
      {
         if(this.§+!I§ != 0)
         {
            §#J§.camera.adjustManualScale(this.§+!I§ > 0,param1 * §<k§);
         }
      }
      
      public function clearLevel() : void
      {
         §#J§.clearLevel();
         removeEventListeners();
         this.§&@§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §"!#§() : Boolean
      {
         if(§#J§.camera.mCurrentCameraSliderLocation < §-§.§+r§)
         {
            return false;
         }
         if(!§#J§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §0#§(param1:int) : void
      {
         var _loc2_:§-§ = §#J§.camera;
         if(_loc2_.§"f§ > 0)
         {
            _loc2_.§"f§ -= param1;
            if(_loc2_.§"f§ <= 0)
            {
               if(this.§"!#§())
               {
                  _loc2_.§"f§ = -1;
                  if(§#J§.slingshot.birdsAvailable)
                  {
                     _loc2_.§,m§();
                  }
               }
               else
               {
                  _loc2_.§"f§ = §-§.§;>§ / 2;
               }
            }
         }
      }
      
      public function §,!!§(param1:int, param2:Boolean = false) : void
      {
         if(this.§ W§(false) && !param2)
         {
            return;
         }
         if(param1 == §,s§)
         {
            this.§&U§ = 2000;
         }
         else if(param1 == § T§)
         {
            §#J§.camera.goToBirdView();
         }
         else if(param1 == §for§)
         {
            §#!@§(false);
            this.§&U§ = 5000;
            §#J§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §!!=§)
         {
            §#J§.camera.goToCastleView();
         }
         else if(param1 == §#$§)
         {
            this.§&U§ = 2000;
            this.§4i§ = §3!C§;
            §#J§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§&U§ = 1200;
            if(!§#J§.objects.mMightyEagleAdded)
            {
               §#J§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§&U§ = 1200;
            if(!§#J§.objects.mMightyEagleAdded)
            {
               §#J§.camera.goToBirdView();
               §#J§.slingshot.makeBirdsJumpForJoy();
            }
            §%G§.§48§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §-%§)
         {
            §%G§.§^R§();
            §%G§.§48§("LevelFailedPigs1");
            this.§&U§ = 1200;
            §#J§.camera.goToCastleView();
            §#J§.objects.makePigsSmile(5);
         }
         this.§&@§ = param1;
      }
      
      public function § =§() : void
      {
         this.§&U§ = 2000;
         this.§<!N§ = false;
         this.§5+§ = 2000;
      }
      
      public function §"j§(param1:Number) : void
      {
         this.§<!N§ = false;
         this.§5+§ = Math.max(this.§5+§,param1);
      }
      
      protected function §4N§() : Boolean
      {
         return §#J§.slingshot.mSlingShotState == §^H§.§4M§ && !§#J§.objects.hasBirds();
      }
      
      public function §44§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§]f§ = null;
         var _loc5_:§-!1§ = null;
         var _loc6_:* = false;
         var _loc7_:* = false;
         this.§&!M§ -= param1;
         if(this.§<!N§)
         {
            this.§5+§ -= param1;
            if(this.§5+§ < 0)
            {
               this.§&!M§ = 0;
            }
         }
         if(this.§&!M§ <= 0 && !this.§ W§(false))
         {
            this.§&!M§ = §<n§;
            _loc2_ = §#J§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§<!N§ || this.§5+§ > 0))
            {
               if((!this.§<!N§ || this.§5+§ > 6000) && !§#J§.objects.isPigsAlive())
               {
                  this.§5+§ = 6000;
                  this.§<!N§ = true;
               }
               else if(!this.§<!N§ && this.§4N§())
               {
                  this.§5+§ = 15000;
                  this.§<!N§ = true;
               }
            }
            else if(!§#J§.objects.isPigsAlive() && !§#J§.objects.mSardineCanAdded && !§#J§.objects.mMightyEagleAdded && (§[+§.§,!&§.slingshot.§,D§.length == 0 || §[+§.§,!&§.slingshot.§,D§[0].name != "BIRD_CHRISTMAS"))
            {
               this.§8%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§4N§())
            {
               if(§#J§.objects.mMightyEagleAdded)
               {
                  if(§#J§.objects.mMightyEagleHasTouchedGround && §#J§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§8%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§#J§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§&!M§ = §<n§;
                  }
               }
               else if(!§#J§.objects.mSardineCanAdded)
               {
                  this.§8%§(§-%§);
               }
            }
            if(this.§ W§(false))
            {
               §#J§.gameOver();
            }
         }
         this.§&U§ -= param1;
         if(this.§&U§ < 0)
         {
            this.§&U§ = 0;
         }
         if(this.§&@§ == §!!=§)
         {
            §#J§.updatePigAnimations(param1);
            if(!§#J§.camera.isOnCastleView() && §#J§.camera.mCurrentAction != §-§.§=f§)
            {
               this.§,!!§(§ T§);
            }
         }
         else if(this.§&@§ == §#$§)
         {
            if(this.§&U§ <= 0)
            {
               _loc3_ = §#J§.objects.hasBirds();
               if(_loc3_ && this.§4i§ > 0)
               {
                  this.§&U§ = 2000;
                  this.§&!M§ = 0;
                  this.§4i§ = this.§4i§ - 1;
               }
               else if(!§[+§.§,!&§.objects.mMightyEagleAdded)
               {
                  this.§,!!§(§ T§);
               }
            }
            else
            {
               §#J§.updatePigAnimations(param1);
            }
            if(!§#J§.camera.isOnCastleView() && §#J§.camera.mCurrentAction != §-§.§=f§)
            {
               this.§,!!§(§ T§);
            }
         }
         else if(this.§&@§ == §,s§)
         {
            if(this.§&U§ <= 0)
            {
               this.§,!!§(§ T§);
            }
         }
         else if(this.§&@§ == § T§)
         {
            if(§#J§.camera.isOnCastleView() && §#J§.camera.mCurrentAction != §-§.§=f§)
            {
               this.§,!!§(§!!=§);
            }
         }
         else if(this.§&@§ == §for§)
         {
            _loc5_ = (_loc4_ = §#J§.activeObject) as §-!1§;
            if(!_loc4_ || _loc4_.§`]§ < _loc4_.§+D§ || _loc5_ && _loc5_.§8!2§)
            {
               if(_loc5_)
               {
                  _loc6_ = _loc5_ is §3<§;
                  _loc7_ = _loc5_ is §>U§;
                  if(_loc6_ || _loc7_)
                  {
                     if(!_loc5_.§8!2§ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc6_)
                     {
                        §#!@§(true);
                     }
                  }
               }
               §#J§.activeObject = null;
               this.§,!!§(§#$§);
            }
         }
         else if(this.§&@§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§&U§ <= 0)
            {
               if(§#J§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§&U§ = 1000;
               }
               else
               {
                  this.§,!!§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §8%§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§<!N§)
         {
            this.§<!N§ = true;
         }
         if(new Date().time - §#J§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§#J§.slingshot.mDragging)
         {
            return;
         }
         if(§#J§.objects.isWorldAtSleep())
         {
            this.§5+§ = Math.min(this.§5+§,3500);
         }
         if(this.§5+§ <= 0)
         {
            this.§,!!§(param1,param2);
         }
      }
      
      public function § W§(param1:Boolean = false) : Boolean
      {
         return (this.§&@§ == LEVEL_STATE_VICTORY2_END || this.§&@§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§&@§ == §-%§) && (!param1 || this.§&U§ <= 0 && this.§&@§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §#!=§() : Boolean
      {
         return this.§&@§ == LEVEL_STATE_VICTORY2_END || this.§&@§ == §-%§;
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
         if(!this.§;&§ || !§#J§.mReadyToRun)
         {
            return;
         }
         if(!(§#J§.slingshot.mDragging || §#J§.camera.mDragging))
         {
            if(this.§&@§ == §#$§ || this.§&@§ == §!!=§ || this.§&@§ == § T§ || this.§&@§ == §for§)
            {
               if(!§#J§.isPlayingReplay())
               {
                  §#J§.camera.adjustManualScale(param1,param2 == 0 ? Number(§-§.§`!"§) : Number(param2));
               }
               else
               {
                  §#J§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §=!9§(param1:int) : void
      {
         this.§+!I§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§;&§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §^t§.§'x§();
         if(this.§ W§(false))
         {
            return;
         }
         if(!§#J§.isPlayingReplay())
         {
            if(§#J§.activeObject && this.§&@§ == §for§ || §+!@§)
            {
               §#!@§(false);
               §#J§.activatePowerup();
               return;
            }
            _loc4_ = §#J§.screenToBox2D(param1,param2);
            if(§#J§.slingshot.canStartDragging(_loc4_))
            {
               §#J§.slingshot.startDragging();
               _loc4_ = §#J§.screenToBox2D(param1,param2);
               §#J§.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
               this.§,!!§(§ T§);
            }
            else
            {
               §#J§.camera.startDragging(param1,param2);
            }
            return;
         }
         §#J§.camera.startDragging(param1,param2);
         §#J§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§;&§)
         {
            return;
         }
         §^t§.§@=§();
         if(this.§&@§ == §,s§)
         {
            this.§,!!§(§ T§);
         }
         if(§#J§.slingshot.mDragging)
         {
            _loc3_ = §#J§.screenToBox2D(param1,param2);
            §#J§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§#J§.slingshot.canShootTheBird())
            {
               §#J§.slingshot.shoot();
               this.§,!!§(§for§);
            }
            else
            {
               §#J§.slingshot.cancelDragging();
            }
         }
         if(§#J§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §#J§.camera.dragToNewPoint(param1,param2);
            }
            §#J§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§;&§)
         {
            return;
         }
         if(§#J§.slingshot.mDragging)
         {
            _loc3_ = §#J§.screenToBox2D(param1,param2);
            §#J§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§#J§.camera.mDragging)
         {
            §#J§.camera.dragToNewPoint(param1,param2);
         }
         this.§@n§ = param1;
         this.§<!K§ = param2;
      }
      
      public function §6"§() : Point
      {
         return new Point(this.§@n§,this.§<!K§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!R§.assign(this.§!R§.getValue() + param1);
         this.§"j§(§6Y§);
         if(this.§&@§ == §#$§)
         {
            this.§&U§ = 2000;
            this.§4i§ = §3!C§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§!R§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§[+§.§,!&§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §`R§.§7!E§(§`R§.§7S§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§;&§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§;&§ = param1;
      }
   }
}

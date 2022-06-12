package §70§
{
   import §%!'§.§-§;
   import §0!2§.§,!W§;
   import §0!2§.§5"L§;
   import §3!#§.§!!k§;
   import §3!#§.§1x§;
   import §3!#§.§5"A§;
   import §3!#§.§;!§;
   import §5!G§.§&2§;
   import §>s§.§+m§;
   import §[x§.§]"!§;
   import §`!n§.LevelManager;
   import §`u§.§5!-§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §^!>§ extends §[3§
   {
      
      public static const §[I§:int = 0;
      
      public static const §'%§:int = 1;
      
      public static const §<F§:int = 2;
      
      public static const §+c§:int = 3;
      
      public static const §75§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const LEVEL_STATE_FAIL:int = 7;
      
      protected static const §<"D§:Number = §5!-§.§=!!§ / 100;
      
      public static const §%?§:Number = 2000;
      
      public static const §6!4§:Number = 2500;
      
      public static const § i§:int = 5;
      
      private static var §4"I§:Boolean;
       
      
      public var §<!i§:int = 0;
      
      protected var § u§:int = 0;
      
      public var §#!J§:Number;
      
      protected var §<"%§:Number = 0;
      
      protected var §7z§:Boolean = false;
      
      private var §@"=§:Number = 0;
      
      public var §8!z§:Number = 0;
      
      protected var § !-§:Number = 0;
      
      protected var §<!e§:Number = 0;
      
      protected var §1!P§:Boolean = true;
      
      protected var §-!W§:§-§;
      
      public function §^!>§(param1:§5"L§)
      {
         this.§-!W§ = new §-§();
         super(param1);
      }
      
      public static function §;"K§(param1:Boolean) : void
      {
         §4"I§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§-!W§.assign(0);
         this.§<!i§ = -1;
         this.§ u§ = 0;
         this.§<"%§ = 0;
         this.§7z§ = false;
         this.changeGameState(§[I§);
         this.§#!J§ = §%?§;
         §&l§(true);
         §^!"§.objects.setDamageEnabled(true);
         §^!"§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §^!"§.update(param1,true);
         this.§#7§(param1);
         this.§ "9§(param1);
      }
      
      private function §#7§(param1:int) : void
      {
         if(this.§ u§ != 0)
         {
            §^!"§.camera.adjustManualScale(this.§ u§ > 0,param1 * §<"D§);
         }
      }
      
      public function clearLevel() : void
      {
         §^!"§.clearLevel();
         removeEventListeners();
         this.§<!i§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §;!I§() : Boolean
      {
         if(§^!"§.camera.mCurrentCameraSliderLocation < §5!-§.§,""§)
         {
            return false;
         }
         if(!§^!"§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §-!X§(param1:int) : void
      {
         var _loc2_:§5!-§ = §^!"§.camera;
         if(_loc2_.§]d§ > 0)
         {
            _loc2_.§]d§ -= param1;
            if(_loc2_.§]d§ <= 0)
            {
               if(this.§;!I§())
               {
                  _loc2_.§]d§ = -1;
                  if(§^!"§.slingshot.birdsAvailable)
                  {
                     _loc2_.§;"F§();
                  }
               }
               else
               {
                  _loc2_.§]d§ = §5!-§.§@!_§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§<[§(false) && !param2)
         {
            return;
         }
         if(param1 == §[I§)
         {
            this.§8!z§ = 2000;
         }
         else if(param1 == §'%§)
         {
            §^!"§.camera.goToBirdView();
         }
         else if(param1 == §<F§)
         {
            §;"K§(false);
            this.§8!z§ = 5000;
            §^!"§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §+c§)
         {
            §^!"§.camera.goToCastleView();
         }
         else if(param1 == §75§)
         {
            this.§8!z§ = 2000;
            this.§@"=§ = § i§;
            §^!"§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§8!z§ = 1200;
            if(!§^!"§.objects.mMightyEagleAdded)
            {
               §^!"§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§8!z§ = 1200;
            if(!§^!"§.objects.mMightyEagleAdded)
            {
               §^!"§.camera.goToBirdView();
               §^!"§.slingshot.makeBirdsJumpForJoy();
            }
            §+m§.§]!N§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == LEVEL_STATE_FAIL)
         {
            §+m§.§2!2§();
            §+m§.§]!N§("LevelFailedPigs1");
            this.§8!z§ = 1200;
            §^!"§.camera.goToCastleView();
            §^!"§.objects.makePigsSmile(5);
         }
         this.§<!i§ = param1;
      }
      
      public function §0!#§() : void
      {
         this.§8!z§ = 2000;
         this.§7z§ = false;
         this.§<"%§ = 2000;
      }
      
      public function §#,§(param1:Number) : void
      {
         this.§<"%§ = Math.max(this.§<"%§,param1);
      }
      
      protected function §`!g§() : Boolean
      {
         return §^!"§.slingshot.mSlingShotState == §,!W§.§9!§ && !§^!"§.objects.hasBirds();
      }
      
      public function § "9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§5"A§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§#!J§ -= param1;
         if(this.§7z§)
         {
            this.§<"%§ -= param1;
            if(this.§<"%§ < 0)
            {
               this.§#!J§ = 0;
            }
         }
         if(this.§#!J§ <= 0 && !this.§<[§(false))
         {
            this.§#!J§ = §%?§;
            _loc2_ = §^!"§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§7z§ || this.§<"%§ > 0))
            {
               if((!this.§7z§ || this.§<"%§ > 6000) && !§^!"§.objects.isPigsAlive())
               {
                  this.§<"%§ = 6000;
                  this.§7z§ = true;
               }
               else if(!this.§7z§ && this.§`!g§())
               {
                  this.§<"%§ = 15000;
                  this.§7z§ = true;
               }
            }
            else if(!§^!"§.objects.isPigsAlive() && !§^!"§.objects.mSardineCanAdded && !§^!"§.objects.mMightyEagleAdded && (§&2§.§],§.slingshot.§1"&§.length == 0 || §&2§.§],§.slingshot.§1"&§[0].name != "BIRD_CHRISTMAS"))
            {
               this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§`!g§())
            {
               if(§^!"§.objects.mMightyEagleAdded)
               {
                  if(§^!"§.objects.mMightyEagleHasTouchedGround && §^!"§.objects.mMightyEagleTimer > 5500)
                  {
                     this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§^!"§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§#!J§ = §%?§;
                  }
               }
               else if(!§^!"§.objects.mSardineCanAdded)
               {
                  this.setGameOverState(LEVEL_STATE_FAIL);
               }
            }
            if(this.§<[§(false))
            {
               §^!"§.gameOver();
            }
         }
         this.§8!z§ -= param1;
         if(this.§8!z§ < 0)
         {
            this.§8!z§ = 0;
         }
         if(this.§<!i§ == §+c§)
         {
            §^!"§.updatePigAnimations(param1);
            if(!§^!"§.camera.isOnCastleView() && §^!"§.camera.mCurrentAction != §5!-§.§`"5§)
            {
               this.changeGameState(§'%§);
            }
         }
         else if(this.§<!i§ == §75§)
         {
            if(this.§8!z§ <= 0)
            {
               _loc3_ = §^!"§.objects.hasBirds();
               if(_loc3_ && this.§@"=§ > 0)
               {
                  this.§8!z§ = 2000;
                  this.§#!J§ = 0;
                  this.§@"=§ = this.§@"=§ - 1;
               }
               else if(!§&2§.§],§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§'%§);
               }
            }
            else
            {
               §^!"§.updatePigAnimations(param1);
            }
            if(!§^!"§.camera.isOnCastleView() && §^!"§.camera.mCurrentAction != §5!-§.§`"5§)
            {
               this.changeGameState(§'%§);
            }
         }
         else if(this.§<!i§ == §[I§)
         {
            if(this.§8!z§ <= 0)
            {
               this.changeGameState(§'%§);
            }
         }
         else if(this.§<!i§ == §'%§)
         {
            if(§^!"§.camera.isOnCastleView() && §^!"§.camera.mCurrentAction != §5!-§.§`"5§)
            {
               this.changeGameState(§+c§);
            }
         }
         else if(this.§<!i§ == §<F§)
         {
            if(!(_loc4_ = §^!"§.activeObject) || _loc4_.§!!U§ < _loc4_.§3!A§)
            {
               if(_loc4_ && _loc4_ is §!!k§)
               {
                  _loc5_ = _loc4_ is §1x§;
                  _loc6_ = _loc4_ is §;!§;
                  _loc7_ = (_loc4_ as §!!k§).§'!G§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §;"K§(true);
                        this.changeGameState(§75§);
                     }
                  }
               }
               §^!"§.activeObject = null;
               this.changeGameState(§75§);
            }
         }
         else if(this.§<!i§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§8!z§ <= 0)
            {
               if(§^!"§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§8!z§ = 1000;
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
         if(!this.§7z§)
         {
            this.§7z§ = true;
         }
         if(new Date().time - §^!"§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§^!"§.slingshot.mDragging)
         {
            return;
         }
         if(§^!"§.objects.isWorldAtSleep())
         {
            this.§<"%§ = Math.min(this.§<"%§,3500);
         }
         if(this.§<"%§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §<[§(param1:Boolean = false) : Boolean
      {
         return (this.§<!i§ == LEVEL_STATE_VICTORY2_END || this.§<!i§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§<!i§ == LEVEL_STATE_FAIL) && (!param1 || this.§8!z§ <= 0 && this.§<!i§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §["F§() : Boolean
      {
         return this.§<!i§ == LEVEL_STATE_VICTORY2_END || this.§<!i§ == LEVEL_STATE_FAIL;
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
         if(!this.§1!P§ || !§^!"§.mReadyToRun)
         {
            return;
         }
         if(!(§^!"§.slingshot.mDragging || §^!"§.camera.mDragging))
         {
            if(this.§<!i§ == §75§ || this.§<!i§ == §+c§ || this.§<!i§ == §'%§ || this.§<!i§ == §<F§)
            {
               if(!§^!"§.isPlayingReplay())
               {
                  §^!"§.camera.adjustManualScale(param1,param2 == 0 ? Number(§5!-§.§=!!§) : Number(param2));
               }
               else
               {
                  §^!"§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function § "K§(param1:int) : void
      {
         this.§ u§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§1!P§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §]"!§.§#B§();
         if(this.§<[§(false))
         {
            return;
         }
         if(!§^!"§.isPlayingReplay())
         {
            if(§^!"§.activeObject && this.§<!i§ == §<F§ || §4"I§)
            {
               §;"K§(false);
               §^!"§.activatePowerup();
               return;
            }
            _loc4_ = §^!"§.screenToBox2D(param1,param2);
            if(§^!"§.slingshot.canStartDragging(_loc4_))
            {
               §^!"§.slingshot.startDragging();
               this.changeGameState(§'%§);
            }
            else
            {
               §^!"§.camera.startDragging(param1,param2);
            }
            return;
         }
         §^!"§.camera.startDragging(param1,param2);
         §^!"§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§1!P§)
         {
            return;
         }
         §]"!§.§2!S§();
         if(this.§<!i§ == §[I§)
         {
            this.changeGameState(§'%§);
         }
         if(§^!"§.slingshot.mDragging)
         {
            _loc3_ = §^!"§.screenToBox2D(param1,param2);
            §^!"§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§^!"§.slingshot.canShootTheBird())
            {
               §^!"§.slingshot.shoot();
               this.changeGameState(§<F§);
            }
            else
            {
               §^!"§.slingshot.cancelDragging();
            }
         }
         if(§^!"§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §^!"§.camera.dragToNewPoint(param1,param2);
            }
            §^!"§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§1!P§)
         {
            return;
         }
         if(§^!"§.slingshot.mDragging)
         {
            _loc3_ = §^!"§.screenToBox2D(param1,param2);
            §^!"§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§^!"§.camera.mDragging)
         {
            §^!"§.camera.dragToNewPoint(param1,param2);
         }
         this.§ !-§ = param1;
         this.§<!e§ = param2;
      }
      
      public function §6!@§() : Point
      {
         return new Point(this.§ !-§,this.§<!e§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§-!W§.assign(this.§-!W§.getValue() + param1);
         this.§#,§(§6!4§);
         if(this.§<!i§ == §75§)
         {
            this.§8!z§ = 2000;
            this.§@"=§ = § i§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§-!W§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§&2§.§],§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = LevelManager.§>! §(LevelManager.§`-§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§1!P§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§1!P§ = param1;
      }
   }
}

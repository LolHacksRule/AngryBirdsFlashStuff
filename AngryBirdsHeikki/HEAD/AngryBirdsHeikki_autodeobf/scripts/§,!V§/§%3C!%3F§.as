package §,!V§
{
   import § !$§.§!!E§;
   import § !$§.§2!J§;
   import § !$§.§8!Y§;
   import § !$§.§>C§;
   import § ![§.§#!B§;
   import §&!b§.§7!G§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §9!'§.§0!%§;
   import §9!'§.§@!U§;
   import §9!Q§.§5!!§;
   import §^f§.§<q§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §<!?§ extends §,k§
   {
      
      public static const §0_§:int = 0;
      
      public static const §@`§:int = 1;
      
      public static const §&a§:int = 2;
      
      public static const §]>§:int = 3;
      
      public static const §&!"§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §0!"§:int = 7;
      
      protected static const §^i§:Number = §#!B§.§]K§ / 100;
      
      public static const §@!Z§:Number = 2000;
      
      public static const §'![§:Number = 2500;
      
      public static const §3C§:int = 5;
      
      private static var §;X§:Boolean;
       
      
      public var §,8§:int = 0;
      
      protected var § S§:int = 0;
      
      public var §!§:Number;
      
      protected var §@F§:Number = 0;
      
      protected var §^!#§:Boolean = false;
      
      private var §8!"§:Number = 0;
      
      public var § in§:Number = 0;
      
      protected var §0c§:Number = 0;
      
      protected var §;@§:Number = 0;
      
      protected var §31§:Boolean = true;
      
      protected var §9d§:§5!!§;
      
      public function §<!?§(param1:§0!%§)
      {
         this.§9d§ = new §5!!§();
         super(param1);
      }
      
      public static function §"!N§(param1:Boolean) : void
      {
         §;X§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§9d§.§04§(0);
         this.§,8§ = -1;
         this.§ S§ = 0;
         this.§@F§ = 0;
         this.§^!#§ = false;
         this.changeGameState(§0_§);
         this.§!§ = §@!Z§;
         §3"§(true);
         §]B§.objects.setDamageEnabled(true);
         §]B§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §]B§.update(param1,true);
         this.§=!5§(param1);
         this.§+!b§(param1);
      }
      
      private function §=!5§(param1:int) : void
      {
         if(this.§ S§ != 0)
         {
            §]B§.camera.adjustManualScale(this.§ S§ > 0,param1 * §^i§);
         }
      }
      
      public function clearLevel() : void
      {
         §]B§.clearLevel();
         removeEventListeners();
         this.§,8§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §<!F§() : Boolean
      {
         if(§]B§.camera.mCurrentCameraSliderLocation < §#!B§.§1!f§)
         {
            return false;
         }
         if(!§]B§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §9&§(param1:int) : void
      {
         var _loc2_:§#!B§ = §]B§.camera;
         if(_loc2_.§;t§ > 0)
         {
            _loc2_.§;t§ -= param1;
            if(_loc2_.§;t§ <= 0)
            {
               if(this.§<!F§())
               {
                  _loc2_.§;t§ = -1;
                  if(§]B§.slingshot.birdsAvailable)
                  {
                     _loc2_.§]n§();
                  }
               }
               else
               {
                  _loc2_.§;t§ = §#!B§.§+!c§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§!u§(false) && !param2)
         {
            return;
         }
         if(param1 == §0_§)
         {
            this.§ in§ = 2000;
         }
         else if(param1 == §@`§)
         {
            §]B§.camera.goToBirdView();
         }
         else if(param1 == §&a§)
         {
            §"!N§(false);
            this.§ in§ = 5000;
            §]B§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §]>§)
         {
            §]B§.camera.goToCastleView();
         }
         else if(param1 == §&!"§)
         {
            this.§ in§ = 2000;
            this.§8!"§ = §3C§;
            §]B§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§ in§ = 1200;
            if(!§]B§.objects.mMightyEagleAdded)
            {
               §]B§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§ in§ = 1200;
            if(!§]B§.objects.mMightyEagleAdded)
            {
               §]B§.camera.goToBirdView();
               §]B§.slingshot.makeBirdsJumpForJoy();
            }
            §<q§.§5!S§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §0!"§)
         {
            §<q§.§2M§();
            §<q§.§5!S§("LevelFailedPigs1");
            this.§ in§ = 1200;
            §]B§.camera.goToCastleView();
            §]B§.objects.makePigsSmile(5);
         }
         this.§,8§ = param1;
      }
      
      public function §6!I§() : void
      {
         this.§ in§ = 2000;
         this.§^!#§ = false;
         this.§@F§ = 2000;
         this.changeGameState(§<!?§.§@`§,true);
      }
      
      public function §'!+§(param1:Number) : void
      {
         this.§@F§ = Math.max(this.§@F§,param1);
      }
      
      protected function §3!C§() : Boolean
      {
         return §]B§.slingshot.mSlingShotState == §@!U§.§!!A§ && !§]B§.objects.hasBirds();
      }
      
      public function §+!b§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§>C§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§!§ -= param1;
         if(this.§^!#§)
         {
            this.§@F§ -= param1;
            if(this.§@F§ < 0)
            {
               this.§!§ = 0;
            }
         }
         if(this.§!§ <= 0 && !this.§!u§(false))
         {
            this.§!§ = §@!Z§;
            _loc2_ = §]B§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§^!#§ || this.§@F§ > 0))
            {
               if((!this.§^!#§ || this.§@F§ > 6000) && !§]B§.objects.isPigsAlive())
               {
                  this.§@F§ = 6000;
                  this.§^!#§ = true;
               }
               else if(!this.§^!#§ && this.§3!C§())
               {
                  this.§@F§ = 15000;
                  this.§^!#§ = true;
               }
            }
            else if(!§]B§.objects.isPigsAlive() && !§]B§.objects.mSardineCanAdded && !§]B§.objects.mMightyEagleAdded)
            {
               this.§&!<§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§3!C§())
            {
               if(§]B§.objects.mMightyEagleAdded)
               {
                  if(§]B§.objects.mMightyEagleHasTouchedGround && §]B§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§&!<§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§]B§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§!§ = §@!Z§;
                  }
               }
               else if(!§]B§.objects.mSardineCanAdded)
               {
                  this.§&!<§(§0!"§);
               }
            }
            if(this.§!u§(false))
            {
               §]B§.gameOver();
            }
         }
         this.§ in§ -= param1;
         if(this.§ in§ < 0)
         {
            this.§ in§ = 0;
         }
         if(this.§,8§ == §]>§)
         {
            §]B§.updatePigAnimations(param1);
            if(!§]B§.camera.isOnCastleView() && §]B§.camera.mCurrentAction != §#!B§.§<e§)
            {
               this.changeGameState(§@`§);
            }
         }
         else if(this.§,8§ == §&!"§)
         {
            if(this.§ in§ <= 0)
            {
               _loc3_ = §]B§.objects.hasBirds();
               if(_loc3_ && this.§8!"§ > 0)
               {
                  this.§ in§ = 2000;
                  this.§!§ = 0;
                  this.§8!"§ = this.§8!"§ - 1;
               }
               else if(!§&#§.§3!D§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§@`§);
               }
            }
            else
            {
               §]B§.updatePigAnimations(param1);
            }
            if(!§]B§.camera.isOnCastleView() && §]B§.camera.mCurrentAction != §#!B§.§<e§)
            {
               this.changeGameState(§@`§);
            }
         }
         else if(this.§,8§ == §0_§)
         {
            if(this.§ in§ <= 0)
            {
               this.changeGameState(§@`§);
            }
         }
         else if(this.§,8§ == §@`§)
         {
            if(§]B§.camera.isOnCastleView() && §]B§.camera.mCurrentAction != §#!B§.§<e§)
            {
               this.changeGameState(§]>§);
            }
         }
         else if(this.§,8§ == §&a§)
         {
            if(!(_loc4_ = §]B§.activeObject) || _loc4_.§6!^§ < _loc4_.§1D§)
            {
               if(_loc4_ && _loc4_ is §2!J§)
               {
                  _loc5_ = _loc4_ is §!!E§;
                  _loc6_ = _loc4_ is §8!Y§;
                  _loc7_ = (_loc4_ as §2!J§).§?!>§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §"!N§(true);
                        this.changeGameState(§&!"§);
                     }
                  }
               }
               §]B§.activeObject = null;
               this.changeGameState(§&!"§);
            }
         }
         else if(this.§,8§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§ in§ <= 0)
            {
               if(§]B§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§ in§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §&!<§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§^!#§)
         {
            this.§^!#§ = true;
         }
         if(new Date().time - §]B§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§]B§.slingshot.mDragging)
         {
            return;
         }
         if(§]B§.objects.isWorldAtSleep())
         {
            this.§@F§ = Math.min(this.§@F§,3500);
         }
         if(this.§@F§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §!u§(param1:Boolean = false) : Boolean
      {
         return (this.§,8§ == LEVEL_STATE_VICTORY2_END || this.§,8§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§,8§ == §0!"§) && (!param1 || this.§ in§ <= 0 && this.§,8§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §1!X§() : Boolean
      {
         return this.§,8§ == LEVEL_STATE_VICTORY2_END || this.§,8§ == §0!"§;
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
         if(!this.§31§ || !§]B§.mReadyToRun)
         {
            return;
         }
         if(!(§]B§.slingshot.mDragging || §]B§.camera.mDragging))
         {
            if(this.§,8§ == §&!"§ || this.§,8§ == §]>§ || this.§,8§ == §@`§)
            {
               if(!§]B§.isPlayingReplay())
               {
                  §]B§.camera.adjustManualScale(param1,param2 == 0 ? Number(§#!B§.§]K§) : Number(param2));
               }
               else
               {
                  §]B§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §[J§(param1:int) : void
      {
         this.§ S§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§31§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §7!G§.§^o§();
         if(this.§!u§(false))
         {
            return;
         }
         if(!§]B§.isPlayingReplay())
         {
            if(§]B§.activeObject && this.§,8§ == §&a§ || §;X§)
            {
               §"!N§(false);
               §]B§.activatePowerup();
               return;
            }
            _loc4_ = §]B§.screenToBox2D(param1,param2);
            if(§]B§.slingshot.canStartDragging(_loc4_))
            {
               §]B§.slingshot.startDragging();
               this.changeGameState(§@`§);
            }
            else
            {
               §]B§.camera.startDragging(param1,param2);
            }
            return;
         }
         §]B§.camera.startDragging(param1,param2);
         §]B§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§31§)
         {
            return;
         }
         §7!G§.§`!b§();
         if(this.§,8§ == §0_§)
         {
            this.changeGameState(§@`§);
         }
         if(§]B§.slingshot.mDragging)
         {
            _loc3_ = §]B§.screenToBox2D(param1,param2);
            §]B§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§]B§.slingshot.canShootTheBird())
            {
               §]B§.slingshot.shoot();
               this.changeGameState(§&a§);
            }
            else
            {
               §]B§.slingshot.cancelDragging();
            }
         }
         if(§]B§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §]B§.camera.dragToNewPoint(param1,param2);
            }
            §]B§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§31§)
         {
            return;
         }
         if(§]B§.slingshot.mDragging)
         {
            _loc3_ = §]B§.screenToBox2D(param1,param2);
            §]B§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§]B§.camera.mDragging)
         {
            §]B§.camera.dragToNewPoint(param1,param2);
         }
         this.§0c§ = param1;
         this.§;@§ = param2;
      }
      
      public function §"d§() : Point
      {
         return new Point(this.§0c§,this.§;@§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§9d§.§04§(this.§9d§.getValue() + param1);
         this.§'!+§(§'![§);
         if(this.§,8§ == §&!"§)
         {
            this.§ in§ = 2000;
            this.§8!"§ = §3C§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§9d§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§&#§.§3!D§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §#w§.§;!E§(§#w§.§ !'§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§31§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§31§ = param1;
      }
   }
}

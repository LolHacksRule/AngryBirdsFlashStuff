package § M§
{
   import § !Y§.§]!,§;
   import §'4§.§3!n§;
   import §'4§.§^g§;
   import §0N§.§5!^§;
   import §3"#§.§<!O§;
   import §9!w§.§9!,§;
   import §]">§.§ 6§;
   import §]">§.§5"$§;
   import §]">§.§<Y§;
   import §`!j§.§9"!§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §]o§ extends §;!!§
   {
      
      public static const §?;§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §&7§:int = 2;
      
      public static const §?!Z§:int = 3;
      
      public static const §5!N§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §0!+§:int = 7;
      
      public static const §22§:Number = 2000;
      
      public static const §1!"§:Number = 2500;
      
      public static const §#3§:int = 5;
      
      private static const §%!6§:Number = §9!,§.§&N§ / 100;
       
      
      protected var §0S§:int = 0;
      
      protected var §2!J§:Number;
      
      protected var § set§:Number = 0;
      
      protected var §%w§:Boolean = false;
      
      protected var §,!!§:Number = 0;
      
      private var §,h§:Number = 0;
      
      private var §3!H§:int = 0;
      
      private var §]!l§:Number = 0;
      
      private var §`U§:Number = 0;
      
      protected var §9! §:Boolean = true;
      
      protected var §]!O§:§]!,§;
      
      protected var §#"5§:Point;
      
      public function §]o§(param1:§^g§, param2:§9"!§)
      {
         this.§]!O§ = new §]!,§();
         this.§#"5§ = new Point();
         super(param1,param2);
      }
      
      public function get §]e§() : int
      {
         return this.§0S§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§]!O§.§-"F§(0);
         this.§0S§ = -1;
         this.§3!H§ = 0;
         this.§ set§ = 0;
         this.§%w§ = false;
         this.changeGameState(§?;§);
         this.§2!J§ = §22§;
         §]W§(true);
         §?>§.objects.setCollisionsEnabled(true);
         §?>§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §?>§.update(param1,true);
         this.§^!J§(param1);
         this.§]l§(param1);
      }
      
      private function §^!J§(param1:int) : void
      {
         if(this.§3!H§ != 0)
         {
            §?>§.camera.adjustManualScale(this.§3!H§ > 0,param1 * §%!6§);
         }
      }
      
      public function clearLevel() : void
      {
         §?>§.clearLevel();
         removeEventListeners();
         this.§0S§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §?`§() : Boolean
      {
         if(§?>§.camera.mCurrentCameraSliderLocation < §9!,§.§<!z§)
         {
            return false;
         }
         if(!§?>§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §+!i§(param1:int) : void
      {
         var _loc2_:§9!,§ = §?>§.camera;
         if(_loc2_.§#!g§ > 0)
         {
            _loc2_.§#!g§ -= param1;
            if(_loc2_.§#!g§ <= 0)
            {
               if(this.§?`§())
               {
                  _loc2_.§#!g§ = -1;
                  if(§?>§.slingshot.birdsAvailable)
                  {
                     _loc2_.§08§();
                  }
               }
               else
               {
                  _loc2_.§#!g§ = §9!,§.§6Y§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§>"F§(false) && !param2)
         {
            return;
         }
         if(param1 == §?;§)
         {
            this.§,!!§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §?>§.camera.goToBirdView();
         }
         else if(param1 == §&7§)
         {
            this.§,!!§ = 5000;
            §?>§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §?!Z§)
         {
            §?>§.camera.goToCastleView();
         }
         else if(param1 == §5!N§)
         {
            this.§,!!§ = 2000;
            this.§,h§ = §#3§;
            §?>§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§,!!§ = 1200;
            if(!this.§3m§)
            {
               §?>§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§,!!§ = 1200;
            if(!this.§3m§)
            {
               §?>§.camera.goToBirdView();
               §?>§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §0!+§)
         {
            this.playFailSound();
            this.§,!!§ = 1200;
            §?>§.camera.goToCastleView();
            §?>§.objects.makePigsSmile(5);
         }
         this.§0S§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §<!O§.§'N§();
         §<!O§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         §<!O§.§'N§();
         §<!O§.playSound("LevelFailedPigs1");
      }
      
      public function §01§() : void
      {
         this.§,!!§ = 2000;
         this.§%w§ = false;
         this.§ set§ = 2000;
         this.changeGameState(§]o§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §"O§(param1:Number) : void
      {
         this.§ set§ = Math.max(this.§ set§,param1);
      }
      
      protected function §;!"§() : Boolean
      {
         return §?>§.slingshot.mSlingShotState == §3!n§.§ !l§ && !§?>§.objects.hasBirds();
      }
      
      public function §]l§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§5"$§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§ 6§ = null;
         this.§2!J§ -= param1;
         if(this.§%w§)
         {
            this.§ set§ -= param1;
            if(this.§ set§ < 0)
            {
               this.§2!J§ = 0;
            }
         }
         if(this.§2!J§ <= 0 && !this.§>"F§(false))
         {
            _loc2_ = -1;
            this.§2!J§ = §22§;
            _loc3_ = §?>§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§%w§ || this.§ set§ > 0))
            {
               if((!this.§%w§ || this.§ set§ > 6000) && !§?>§.objects.isPigsAlive())
               {
                  this.§ set§ = 6000;
                  this.§%w§ = true;
               }
               else if(!this.§%w§ && this.§;!"§())
               {
                  this.§ set§ = 15000;
                  this.§%w§ = true;
               }
            }
            else if(!§?>§.objects.isPigsAlive() && !this.§3m§ && this.§2!W§)
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§<"7§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§;!"§())
            {
               if(_loc4_ = this.§%!U§())
               {
                  if(_loc4_.§>6§ && _loc4_.§=!c§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§<"7§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§>6§)
                  {
                     this.§2!J§ = §22§;
                  }
               }
               else if(!this.§""<§())
               {
                  _loc2_ = §0!+§;
                  this.§<"7§(§0!+§);
               }
            }
            if(this.§>"F§(false))
            {
               §?>§.gameOver(_loc2_);
            }
         }
         this.§,!!§ -= param1;
         if(this.§,!!§ < 0)
         {
            this.§,!!§ = 0;
         }
         if(this.§0S§ == §?!Z§)
         {
            §?>§.updatePigAnimations(param1);
            if(!§?>§.camera.isOnCastleView() && §?>§.camera.mCurrentAction != §9!,§.§[A§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§0S§ == §5!N§)
         {
            if(this.§,!!§ <= 0)
            {
               if((_loc5_ = §?>§.objects.hasBirds()) && this.§,h§ > 0)
               {
                  this.§,!!§ = 2000;
                  this.§2!J§ = 0;
                  this.§,h§ = this.§,h§ - 1;
               }
               else if(!this.§3m§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §?>§.updatePigAnimations(param1);
            }
            if(!§?>§.camera.isOnCastleView() && §?>§.camera.mCurrentAction != §9!,§.§[A§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§0S§ == §?;§)
         {
            if(this.§,!!§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§0S§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§?>§.camera.isOnCastleView() && §?>§.camera.mCurrentAction != §9!,§.§[A§)
            {
               this.changeGameState(§?!Z§);
            }
         }
         else if(this.§0S§ == §&7§)
         {
            if(_loc6_ = §?>§.levelObjects.activeObject as § 6§)
            {
            }
         }
         else if(this.§0S§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§,!!§ <= 0)
            {
               if(§?>§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§,!!§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §3m§() : Boolean
      {
         if(this.§%!U§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §2!W§() : Boolean
      {
         return true;
      }
      
      public function §%!U§() : §5"$§
      {
         var _loc2_:§5"$§ = null;
         var _loc1_:int = §?>§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §?>§.objects.getObject(_loc1_) as §5"$§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §""<§() : Boolean
      {
         var _loc2_:§<Y§ = null;
         var _loc1_:int = §?>§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §?>§.objects.getObject(_loc1_) as §<Y§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §<"7§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§%w§)
         {
            this.§%w§ = true;
         }
         if(new Date().time - §?>§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§?>§.slingshot.mDragging)
         {
            return;
         }
         if(§?>§.objects.isWorldAtSleep())
         {
            this.§ set§ = Math.min(this.§ set§,3500);
         }
         if(this.§ set§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §>"F§(param1:Boolean = false) : Boolean
      {
         return (this.§0S§ == LEVEL_STATE_VICTORY2_END || this.§0S§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§0S§ == §0!+§) && (!param1 || this.§,!!§ <= 0 && this.§0S§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §5r§() : Boolean
      {
         return this.§0S§ == LEVEL_STATE_VICTORY2_END || this.§0S§ == §0!+§;
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
         if(!this.§9! § || !§?>§.mReadyToRun)
         {
            return;
         }
         if(!(§?>§.slingshot.mDragging || §?>§.camera.mDragging))
         {
            if(this.§0S§ == §5!N§ || this.§0S§ == §?!Z§ || this.§0S§ == LEVEL_STATE_SLINGSHOT || this.§0S§ == §&7§)
            {
               if(!§?>§.isPlayingReplay())
               {
                  §?>§.camera.adjustManualScale(param1,param2 == 0 ? Number(§9!,§.§&N§) : Number(param2));
               }
               else
               {
                  §?>§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §3@§(param1:int) : void
      {
         this.§3!H§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§9! §)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §5!^§.§-!,§();
         if(this.§>"F§(false))
         {
            return;
         }
         if(!§?>§.isPlayingReplay())
         {
            this.§#"5§ = §?>§.screenToBox2D(param1,param2,this.§#"5§);
            if(§?>§.levelObjects.activeObject is § 6§)
            {
               _loc4_ = § 6§(§?>§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§ 6§(§?>§.levelObjects.activeObject).specialPowerUsed)
               {
                  §?>§.activateSpecialPower(this.§#"5§.x,this.§#"5§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§?>§.slingshot.canStartDragging(this.§#"5§))
            {
               §?>§.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §?>§.camera.startDragging(param1,param2);
            }
            return;
         }
         §?>§.camera.startDragging(param1,param2);
         §?>§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§9! §)
         {
            return;
         }
         §5!^§.§!!x§();
         if(this.§0S§ == §?;§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§?>§.slingshot.mDragging)
         {
            this.§#"5§ = §?>§.screenToBox2D(param1,param2,this.§#"5§);
            §?>§.slingshot.setNewCoordinatesForRubber(this.§#"5§.x,this.§#"5§.y,false);
            if(§?>§.slingshot.canShootTheBird)
            {
               §?>§.slingshot.shoot();
               this.changeGameState(§&7§);
            }
            else
            {
               §?>§.slingshot.cancelDragging();
            }
         }
         if(§?>§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §?>§.camera.dragToNewPoint(param1,param2);
            }
            §?>§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§9! §)
         {
            return;
         }
         if(§?>§.slingshot.mDragging)
         {
            this.§#"5§ = §?>§.screenToBox2D(param1,param2,this.§#"5§);
            §?>§.slingshot.setNewCoordinatesForRubber(this.§#"5§.x,this.§#"5§.y,false);
         }
         else if(§?>§.camera.mDragging)
         {
            §?>§.camera.dragToNewPoint(param1,param2);
         }
         this.§]!l§ = param1;
         this.§`U§ = param2;
      }
      
      public function §+!W§() : Point
      {
         return new Point(this.§]!l§,this.§`U§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§]!O§.§-"F§(this.§]!O§.getValue() + param1);
         this.§"O§(§1!"§);
         if(this.§0S§ == §5!N§)
         {
            this.§,!!§ = 2000;
            this.§,h§ = §#3§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§]!O§.getValue() / param1) * param1;
         }
         return this.§]!O§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§3m§)
         {
            return 0;
         }
         var _loc1_:Number = §6u§.getLevelForId(§6u§.currentLevel).getEagleScore(§?>§.levelItemManager,§?>§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§9! §;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§9! § = param1;
      }
   }
}

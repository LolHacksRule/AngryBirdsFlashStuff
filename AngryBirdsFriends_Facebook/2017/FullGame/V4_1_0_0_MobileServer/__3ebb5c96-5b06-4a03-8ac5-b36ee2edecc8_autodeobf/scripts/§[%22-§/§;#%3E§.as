package §["-§
{
   import §+!C§.§!!S§;
   import §+!C§.§1!$§;
   import §+!C§.§]#b§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6V§.§#j§;
   import §9$<§.§-t§;
   import §<"p§.§9#D§;
   import §>!5§.§!"6§;
   import §>!5§.§"7§;
   import §>!5§.§?c§;
   import §>!5§.§^"9§;
   import §@#§.§^#Q§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §;#>§ extends §3!t§
   {
      
      private static const §8"W§:int = 1;
      
      public static const §7#9§:int = 0;
      
      public static const §@#9§:int = 1;
      
      public static const §<#]§:int = 2;
      
      public static const §8#Z§:int = 3;
      
      public static const §'"d§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §class§:int = 7;
      
      public static const §3"V§:int = 5;
      
      private static const §#_§:Number = §-t§.§!g§ / 100;
       
      
      protected var §4w§:int = 0;
      
      protected var §9^§:Number = 0;
      
      private var §-^§:Number = 0;
      
      private var §1$8§:int = 0;
      
      private var §2!^§:Number = 0;
      
      private var §in §:Number = 0;
      
      protected var §9!x§:Boolean = true;
      
      protected var §##;§:§#j§;
      
      protected var §`L§:Point;
      
      protected var §%9§:Boolean;
      
      protected var §7Y§:int;
      
      protected var §'!o§:Boolean;
      
      public function §;#>§(param1:§!!S§, param2:§^#Q§)
      {
         this.§##;§ = new §#j§();
         this.§`L§ = new Point();
         super(param1,param2);
      }
      
      public function get §^h§() : int
      {
         return this.§4w§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§##;§.§`"x§(0);
         this.§4w§ = -1;
         this.§1$8§ = 0;
         this.changeGameState(§7#9§);
         §'a§(true);
         §`=§.objects.setCollisionsEnabled(true);
         §`=§.objects.setGroundTextureEnabled(true);
         §`=§.slingshot.addEventListener(§]#b§.§2!Q§,this.§5o§);
      }
      
      private function §5o§(param1:Event) : void
      {
         this.changeGameState(§<#]§);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §`=§.update(param1,true);
         this.§#!Z§(param1);
         this.§-z§(param1);
      }
      
      private function §#!Z§(param1:int) : void
      {
         if(this.§1$8§ != 0)
         {
            §`=§.camera.adjustManualScale(this.§1$8§ > 0,param1 * §#_§);
         }
      }
      
      public function clearLevel() : void
      {
         §`=§.clearLevel();
         removeEventListeners();
         this.§4w§ = -1;
         this.§="j§();
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §!§() : Boolean
      {
         if(§`=§.camera.mCurrentCameraSliderLocation < §-t§.§3";§)
         {
            return false;
         }
         if(!§`=§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §]"H§(param1:int) : void
      {
         var _loc2_:§-t§ = §`=§.camera;
         if(_loc2_.§;#p§ > 0)
         {
            _loc2_.§;#p§ -= param1;
            if(_loc2_.§;#p§ <= 0)
            {
               if(this.§!§())
               {
                  _loc2_.§;#p§ = -1;
                  if(§`=§.slingshot.birdsAvailable)
                  {
                     _loc2_.§=!^§();
                  }
               }
               else
               {
                  _loc2_.§;#p§ = §-t§.§>!z§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§8!H§() && !param2)
         {
            return;
         }
         if(param1 == §7#9§)
         {
            this.§9^§ = 2000;
            this.§="j§();
         }
         else if(param1 == §@#9§)
         {
            §`=§.camera.goToBirdView();
         }
         else if(param1 == §<#]§)
         {
            this.§9^§ = 5000;
            §`=§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §8#Z§)
         {
            §`=§.camera.goToCastleView();
         }
         else if(param1 == §'"d§)
         {
            this.§9^§ = 2000;
            this.§-^§ = §3"V§;
            §`=§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§9^§ = 1200;
            if(!this.§!$>§)
            {
               §`=§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§9^§ = 1200;
            if(!this.§!$>§)
            {
               §`=§.camera.goToBirdView();
               §`=§.slingshot.makeBirdsJumpForJoy();
            }
            else
            {
               §`=§.slingshot.setSlingShotState(§]#b§.§-"1§);
            }
            this.§3! §();
         }
         else if(param1 == §class§)
         {
            this.§9^§ = 1200;
            §`=§.camera.goToCastleView();
            §`=§.objects.makePigsSmile(5);
         }
         this.§4w§ = param1;
      }
      
      protected function §3! §() : void
      {
         §!#&§.§^!2§();
         §!#&§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)));
      }
      
      public function §@+§() : void
      {
         this.§9^§ = 2000;
         this.changeGameState(§;#>§.§@#9§,true);
      }
      
      public function §-z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§"7§ = null;
         if(this.§7Y§ > 0)
         {
            this.§7Y§ -= param1;
            if(this.§7Y§ <= 0)
            {
               this.§'!o§ = true;
            }
         }
         this.§9^§ -= param1;
         if(this.§9^§ < 0)
         {
            this.§9^§ = 0;
         }
         if(this.§4w§ == §8#Z§)
         {
            if(!§`=§.camera.isOnCastleView() && §`=§.camera.mCurrentAction != §-t§.§!"O§)
            {
               this.changeGameState(§@#9§);
            }
         }
         else if(this.§4w§ == §'"d§)
         {
            if(this.§9^§ <= 0)
            {
               _loc2_ = §`=§.objects.hasBirds();
               if(_loc2_ && this.§-^§ > 0)
               {
                  this.§9^§ = 2000;
                  this.§-^§ = this.§-^§ - 1;
               }
               else if(!this.§!$>§)
               {
                  this.changeGameState(§@#9§);
               }
            }
            if(!§`=§.camera.isOnCastleView() && §`=§.camera.mCurrentAction != §-t§.§!"O§)
            {
               this.changeGameState(§@#9§);
            }
         }
         else if(this.§4w§ == §7#9§)
         {
            if(this.§9^§ <= 0)
            {
               this.changeGameState(§@#9§);
            }
         }
         else if(this.§4w§ == §@#9§)
         {
            if(§`=§.camera.isOnCastleView() && §`=§.camera.mCurrentAction != §-t§.§!"O§)
            {
               this.changeGameState(§8#Z§);
            }
         }
         else if(this.§4w§ == §<#]§)
         {
            _loc3_ = §`=§.levelObjects.activeObject as §"7§;
            if(!_loc3_ || _loc3_ && !_loc3_.§ ^§)
            {
               this.changeGameState(§'"d§);
            }
         }
         else if(this.§4w§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§9^§ <= 0)
            {
               if(§`=§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§9^§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function get §!$>§() : Boolean
      {
         if(this.§>"h§() || this.§8F§())
         {
            return true;
         }
         return false;
      }
      
      private function §8F§() : Boolean
      {
         var _loc2_:§!"6§ = null;
         var _loc1_:int = §`=§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §`=§.objects.getObject(_loc1_) as §!"6§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         if(§!#A§.§#F§.slingshot.mBirds.length > 0)
         {
            if(§!#A§.§#F§.slingshot.mBirds[0].name == "BIRD_SARDINE")
            {
               return true;
            }
         }
         return false;
      }
      
      public function §>"h§() : §?c§
      {
         var _loc2_:§?c§ = null;
         var _loc1_:int = §`=§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §`=§.objects.getObject(_loc1_) as §?c§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §8!H§() : Boolean
      {
         return (this.§4w§ == LEVEL_STATE_VICTORY2_END || this.§4w§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§4w§ == §class§) && (this.§9^§ <= 0 && this.§4w§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public final function §3"T§() : Boolean
      {
         return !§`=§.objects.isLevelGoalObjectsAlive();
      }
      
      public function §###§() : Boolean
      {
         return this.§4w§ == LEVEL_STATE_VICTORY2_END || this.§4w§ == §class§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§3!H§(param1.delta > 0);
         }
      }
      
      public function §3!H§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§9!x§ || !§`=§.mReadyToRun)
         {
            return;
         }
         if(this.§4w§ == §'"d§ || this.§4w§ == §8#Z§ || this.§4w§ == §@#9§ || this.§4w§ == §<#]§)
         {
            if(!§`=§.isPlayingReplay())
            {
               §`=§.camera.adjustManualScale(param1,param2 == 0 ? Number(§-t§.§!g§) : Number(param2));
            }
            else
            {
               §`=§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §5"r§(param1:int) : void
      {
         this.§1$8§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§9!x§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §9#D§.§9#q§();
         if(this.§8!H§())
         {
            return;
         }
         if(!§`=§.isPlayingReplay())
         {
            this.§`L§ = §`=§.screenToBox2D(param1,param2,this.§`L§);
            if(§`=§.levelObjects.activeObject is §"7§)
            {
               _loc4_ = §"7§(§`=§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§"7§(§`=§.levelObjects.activeObject).specialPowerUsed)
               {
                  §`=§.activateSpecialPower(this.§`L§.x,this.§`L§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§`=§.slingshot.canStartDragging(this.§`L§))
            {
               §`=§.slingshot.startDragging();
               this.changeGameState(§@#9§);
            }
            else
            {
               §`=§.camera.startDragging(param1,param2);
            }
            return;
         }
         §`=§.camera.startDragging(param1,param2);
         §`=§.resetReplaySpeed();
      }
      
      protected function § "-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §`=§.screenToBox2D(param1,param2,null);
         var _loc4_:§^"9§;
         if(_loc4_ = §`=§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §`=§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§9!x§)
         {
            return;
         }
         §9#D§.§4!E§();
         if(this.§4w§ == §7#9§)
         {
            this.changeGameState(§@#9§);
         }
         if(§`=§.slingshot.mDragging)
         {
            this.§`L§ = §`=§.screenToBox2D(param1,param2,this.§`L§);
            §`=§.slingshot.setNewCoordinatesForRubber(this.§`L§.x,this.§`L§.y,false);
            if(§`=§.slingshot.canShootTheBird)
            {
               §`=§.slingshot.shoot();
            }
            else
            {
               §`=§.slingshot.cancelDragging();
            }
         }
         if(§`=§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §`=§.camera.dragToNewPoint(param1,param2);
            }
            §`=§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§9!x§)
         {
            return;
         }
         if(§`=§.slingshot.mDragging)
         {
            this.§`L§ = §`=§.screenToBox2D(param1,param2,this.§`L§);
            §`=§.slingshot.setNewCoordinatesForRubber(this.§`L§.x,this.§`L§.y,false);
         }
         else if(§`=§.camera.mDragging)
         {
            §`=§.camera.dragToNewPoint(param1,param2);
         }
         this.§2!^§ = param1;
         this.§in § = param2;
      }
      
      public function §=0§() : Point
      {
         return new Point(this.§2!^§,this.§in §);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§##;§.§`"x§(this.§##;§.getValue() + param1);
         if(this.§4w§ == §'"d§)
         {
            this.§9^§ = 2000;
            this.§-^§ = §3"V§;
         }
      }
      
      override public function getScore() : int
      {
         if(§8"W§ > 1)
         {
            return Math.floor(this.§##;§.getValue() / §8"W§) * §8"W§;
         }
         return this.§##;§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§!$>§)
         {
            return 0;
         }
         var _loc1_:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).scoreEagle;
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§9!x§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§9!x§ = param1;
      }
      
      public function §%^§() : void
      {
         this.changeGameState(§class§,true);
      }
      
      public function §!#X§() : void
      {
         this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT,true);
         §`=§.gameOver(LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      override public function checkForLevelEnd() : void
      {
         if(!this.§%9§)
         {
            if(§`=§.slingshot.mSlingShotState == §]#b§.§,$9§ || !§`=§.objects.isLevelGoalObjectsAlive())
            {
               this.§7Y§ = §1!$§.§?!§;
               this.§%9§ = true;
            }
         }
      }
      
      public function §@Z§(param1:Number) : void
      {
         if(this.§7Y§ > 0)
         {
            this.§7Y§ += param1;
         }
      }
      
      public function §&"i§() : Boolean
      {
         return this.§'!o§;
      }
      
      public function §="j§() : void
      {
         this.§%9§ = false;
         this.§7Y§ = 0;
         this.§'!o§ = false;
      }
      
      public function §5!4§() : void
      {
         if(this.§%9§)
         {
            if(§`=§.slingshot.mSlingShotState == §]#b§.§,$9§ && §`=§.objects.isLevelGoalObjectsAlive() && !this.§'!o§)
            {
               this.§="j§();
            }
         }
      }
   }
}

package §^!3§
{
   import §"n§.§<!e§;
   import §+!!§.§5"+§;
   import §,z§.§!t§;
   import §,z§.§"_§;
   import §,z§.§+f§;
   import §,z§.§?!z§;
   import §1T§.§'!c§;
   import §8!K§.§5!Y§;
   import §@L§.§;!3§;
   import §@L§.§?!'§;
   import each.§5<§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §,"'§ extends §%z§
   {
      
      public static const §!!`§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §4]§:int = 2;
      
      public static const §!!W§:int = 3;
      
      public static const §1",§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §["$§:int = 7;
      
      public static const §%!!§:Number = 2000;
      
      public static const §+!§:Number = 2500;
      
      public static const §5P§:int = 5;
      
      private static const §@4§:Number = §5"+§.§8!c§ / 100;
       
      
      protected var §"!P§:int = 0;
      
      protected var §^!w§:Number;
      
      protected var §,%§:Number = 0;
      
      protected var §&W§:Boolean = false;
      
      protected var §@!0§:Number = 0;
      
      private var §#!o§:Number = 0;
      
      private var §"&§:int = 0;
      
      private var §@"-§:Number = 0;
      
      private var § ?§:Number = 0;
      
      protected var §%$§:Boolean = true;
      
      protected var §+!$§:§<!e§;
      
      protected var §3!F§:Point;
      
      public function §,"'§(param1:§?!'§, param2:§5!Y§)
      {
         this.§+!$§ = new §<!e§();
         this.§3!F§ = new Point();
         super(param1,param2);
      }
      
      public function get §0%§() : int
      {
         return this.§"!P§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§+!$§.§[@§(0);
         this.§"!P§ = -1;
         this.§"&§ = 0;
         this.§,%§ = 0;
         this.§&W§ = false;
         this.changeGameState(§!!`§);
         this.§^!w§ = §%!!§;
         §&!E§(true);
         §<Y§.objects.setCollisionsEnabled(true);
         §<Y§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §<Y§.update(param1,true);
         this.§[V§(param1);
         this.§@7§(param1);
      }
      
      private function §[V§(param1:int) : void
      {
         if(this.§"&§ != 0)
         {
            §<Y§.camera.adjustManualScale(this.§"&§ > 0,param1 * §@4§);
         }
      }
      
      public function clearLevel() : void
      {
         §<Y§.clearLevel();
         removeEventListeners();
         this.§"!P§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §]!B§() : Boolean
      {
         if(§<Y§.camera.mCurrentCameraSliderLocation < §5"+§.§<!6§)
         {
            return false;
         }
         if(!§<Y§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §%!8§(param1:int) : void
      {
         var _loc2_:§5"+§ = §<Y§.camera;
         if(_loc2_.§++§ > 0)
         {
            _loc2_.§++§ -= param1;
            if(_loc2_.§++§ <= 0)
            {
               if(this.§]!B§())
               {
                  _loc2_.§++§ = -1;
                  if(§<Y§.slingshot.birdsAvailable)
                  {
                     _loc2_.§=e§();
                  }
               }
               else
               {
                  _loc2_.§++§ = §5"+§.§-L§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§-5§(false) && !param2)
         {
            return;
         }
         if(param1 == §!!`§)
         {
            this.§@!0§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §<Y§.camera.goToBirdView();
         }
         else if(param1 == §4]§)
         {
            this.§@!0§ = 5000;
            §<Y§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §!!W§)
         {
            §<Y§.camera.goToCastleView();
         }
         else if(param1 == §1",§)
         {
            this.§@!0§ = 2000;
            this.§#!o§ = §5P§;
            §<Y§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§@!0§ = 1200;
            if(!this.§&?§)
            {
               §<Y§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§@!0§ = 1200;
            if(!this.§&?§)
            {
               §<Y§.camera.goToBirdView();
               §<Y§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §["$§)
         {
            this.§-!n§();
            this.§@!0§ = 1200;
            §<Y§.camera.goToCastleView();
            §<Y§.objects.makePigsSmile(5);
         }
         this.§"!P§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §'!c§.§&j§();
         §'!c§.§3!f§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §-!n§() : void
      {
         §'!c§.§&j§();
         §'!c§.§3!f§("LevelFailedPigs1");
      }
      
      public function §&!Y§() : void
      {
         this.§@!0§ = 2000;
         this.§&W§ = false;
         this.§,%§ = 2000;
         this.changeGameState(§,"'§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §'"%§(param1:Number) : void
      {
         this.§,%§ = Math.max(this.§,%§,param1);
      }
      
      public function §&P§() : Boolean
      {
         return §<Y§.slingshot.mSlingShotState == §;!3§.§0!7§ && !§<Y§.objects.hasBirds();
      }
      
      public function §@7§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§+f§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§?!z§ = null;
         this.§^!w§ -= param1;
         if(this.§&W§)
         {
            this.§,%§ -= param1;
            if(this.§,%§ < 0)
            {
               this.§^!w§ = 0;
            }
         }
         if(this.§^!w§ <= 0 && !this.§-5§(false))
         {
            _loc2_ = -1;
            this.§^!w§ = §%!!§;
            _loc3_ = §<Y§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§&W§ || this.§,%§ > 0))
            {
               if((!this.§&W§ || this.§,%§ > 6000) && !§<Y§.objects.isPigsAlive())
               {
                  this.§,%§ = 6000;
                  this.§&W§ = true;
               }
               else if(!this.§&W§ && this.§&P§())
               {
                  this.§,%§ = 15000;
                  this.§&W§ = true;
               }
            }
            else if(!§<Y§.objects.isPigsAlive() && this.§8!]§ && !this.§>!"§())
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§0!x§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§&P§())
            {
               if(_loc4_ = this.§2A§())
               {
                  if(_loc4_.§ ![§ && _loc4_.§<E§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§0!x§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§ ![§)
                  {
                     this.§^!w§ = §%!!§;
                  }
               }
               else if(!this.§2"$§())
               {
                  _loc2_ = §["$§;
                  this.§0!x§(§["$§);
               }
            }
            if(this.§-5§(false))
            {
               §<Y§.gameOver(_loc2_);
            }
         }
         this.§@!0§ -= param1;
         if(this.§@!0§ < 0)
         {
            this.§@!0§ = 0;
         }
         if(this.§"!P§ == §!!W§)
         {
            §<Y§.updatePigAnimations(param1);
            if(!§<Y§.camera.isOnCastleView() && §<Y§.camera.mCurrentAction != §5"+§.§8%§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§"!P§ == §1",§)
         {
            if(this.§@!0§ <= 0)
            {
               if((_loc5_ = §<Y§.objects.hasBirds()) && this.§#!o§ > 0)
               {
                  this.§@!0§ = 2000;
                  this.§^!w§ = 0;
                  this.§#!o§ = this.§#!o§ - 1;
               }
               else if(!this.§&?§)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §<Y§.updatePigAnimations(param1);
            }
            if(!§<Y§.camera.isOnCastleView() && §<Y§.camera.mCurrentAction != §5"+§.§8%§)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§"!P§ == §!!`§)
         {
            if(this.§@!0§ <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§"!P§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§<Y§.camera.isOnCastleView() && §<Y§.camera.mCurrentAction != §5"+§.§8%§)
            {
               this.changeGameState(§!!W§);
            }
         }
         else if(this.§"!P§ == §4]§)
         {
            if(_loc6_ = §<Y§.levelObjects.activeObject as §?!z§)
            {
            }
         }
         else if(this.§"!P§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§@!0§ <= 0)
            {
               if(§<Y§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§@!0§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §>!"§() : Boolean
      {
         return this.§&?§;
      }
      
      protected function get §&?§() : Boolean
      {
         if(this.§2A§())
         {
            return true;
         }
         return false;
      }
      
      protected function get §8!]§() : Boolean
      {
         return true;
      }
      
      public function §2A§() : §+f§
      {
         var _loc2_:§+f§ = null;
         var _loc1_:int = §<Y§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §<Y§.objects.getObject(_loc1_) as §+f§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function §2"$§() : Boolean
      {
         var _loc2_:§!t§ = null;
         var _loc1_:int = §<Y§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §<Y§.objects.getObject(_loc1_) as §!t§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §0!x§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§&W§)
         {
            this.§&W§ = true;
         }
         if(new Date().time - §<Y§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§<Y§.slingshot.mDragging)
         {
            return;
         }
         if(§<Y§.objects.isWorldAtSleep())
         {
            this.§,%§ = Math.min(this.§,%§,3500);
         }
         if(this.§,%§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §-5§(param1:Boolean = false) : Boolean
      {
         return (this.§"!P§ == LEVEL_STATE_VICTORY2_END || this.§"!P§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§"!P§ == §["$§) && (!param1 || this.§@!0§ <= 0 && this.§"!P§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §@l§() : Boolean
      {
         return this.§"!P§ == LEVEL_STATE_VICTORY2_END || this.§"!P§ == §["$§;
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
         if(!this.§%$§ || !§<Y§.mReadyToRun)
         {
            return;
         }
         if(this.§"!P§ == §1",§ || this.§"!P§ == §!!W§ || this.§"!P§ == LEVEL_STATE_SLINGSHOT || this.§"!P§ == §4]§)
         {
            if(!§<Y§.isPlayingReplay())
            {
               §<Y§.camera.adjustManualScale(param1,param2 == 0 ? Number(§5"+§.§8!c§) : Number(param2));
            }
            else
            {
               §<Y§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §0A§(param1:int) : void
      {
         this.§"&§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§%$§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §5<§.mouseDown();
         if(this.§-5§(false))
         {
            return;
         }
         if(!§<Y§.isPlayingReplay())
         {
            this.§3!F§ = §<Y§.screenToBox2D(param1,param2,this.§3!F§);
            if(§<Y§.levelObjects.activeObject is §?!z§)
            {
               _loc4_ = §?!z§(§<Y§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§?!z§(§<Y§.levelObjects.activeObject).specialPowerUsed)
               {
                  §<Y§.activateSpecialPower(this.§3!F§.x,this.§3!F§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§<Y§.slingshot.canStartDragging(this.§3!F§))
            {
               §<Y§.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §<Y§.camera.startDragging(param1,param2);
            }
            return;
         }
         §<Y§.camera.startDragging(param1,param2);
         §<Y§.resetReplaySpeed();
      }
      
      protected function §'!o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §<Y§.screenToBox2D(param1,param2,null);
         var _loc4_:§"_§;
         if(_loc4_ = §<Y§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §<Y§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§%$§)
         {
            return;
         }
         §5<§.mouseUp();
         if(this.§"!P§ == §!!`§)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(§<Y§.slingshot.mDragging)
         {
            this.§3!F§ = §<Y§.screenToBox2D(param1,param2,this.§3!F§);
            §<Y§.slingshot.setNewCoordinatesForRubber(this.§3!F§.x,this.§3!F§.y,false);
            if(§<Y§.slingshot.canShootTheBird)
            {
               §<Y§.slingshot.shoot();
               this.changeGameState(§4]§);
               if(this.§,%§ < 6000)
               {
                  this.§,%§ = 6000;
               }
            }
            else
            {
               §<Y§.slingshot.cancelDragging();
            }
         }
         if(§<Y§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §<Y§.camera.dragToNewPoint(param1,param2);
            }
            §<Y§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§%$§)
         {
            return;
         }
         if(§<Y§.slingshot.mDragging)
         {
            this.§3!F§ = §<Y§.screenToBox2D(param1,param2,this.§3!F§);
            §<Y§.slingshot.setNewCoordinatesForRubber(this.§3!F§.x,this.§3!F§.y,false);
         }
         else if(§<Y§.camera.mDragging)
         {
            §<Y§.camera.dragToNewPoint(param1,param2);
         }
         this.§@"-§ = param1;
         this.§ ?§ = param2;
      }
      
      public function §4'§() : Point
      {
         return new Point(this.§@"-§,this.§ ?§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§+!$§.§[@§(this.§+!$§.getValue() + param1);
         this.§'"%§(§+!§);
         if(this.§"!P§ == §1",§)
         {
            this.§@!0§ = 2000;
            this.§#!o§ = §5P§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§+!$§.getValue() / param1) * param1;
         }
         return this.§+!$§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§&?§)
         {
            return 0;
         }
         var _loc1_:Number = §&" §.getLevelForId(§&" §.currentLevel).getEagleScore(§<Y§.levelItemManager,§<Y§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%$§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§%$§ = param1;
      }
      
      public function §=!h§() : void
      {
         this.changeGameState(§["$§,true);
      }
      
      public function §1"§() : void
      {
         while(§<Y§.slingshot.updateScoreForRemainingBirds())
         {
         }
         this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
      }
   }
}

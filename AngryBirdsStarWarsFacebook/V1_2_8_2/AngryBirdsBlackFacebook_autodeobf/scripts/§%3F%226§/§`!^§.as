package §?"6§
{
   import §!r§.§0"t§;
   import §!r§.§0N§;
   import §!r§.§4?§;
   import §!r§.§;!T§;
   import §"§.§%§;
   import §"§.§;!E§;
   import §+d§.§0#&§;
   import §7§.§8[§;
   import §9"`§.§]s§;
   import §`"1§.§=Q§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §null §.§5#§;
   
   public class §`!^§ extends § !^§
   {
      
      public static const §7#+§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §2"=§:int = 2;
      
      public static const §?!I§:int = 3;
      
      public static const § !O§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §+"j§:int = 7;
      
      public static const §!,§:Number = 2000;
      
      public static const §^"§:Number = 2500;
      
      public static const §-"i§:int = 5;
      
      private static const §&j§:Number = §8[§.§4Y§ / 100;
       
      
      protected var §'!6§:int = 0;
      
      protected var §6# §:Number;
      
      protected var §'N§:Number = 0;
      
      protected var §+"2§:Boolean = false;
      
      protected var §`!X§:Number = 0;
      
      private var §5"^§:Number = 0;
      
      private var §"#2§:int = 0;
      
      private var §8!4§:Number = 0;
      
      private var §5"_§:Number = 0;
      
      protected var §';§:Boolean = true;
      
      protected var §>u§:§0#&§;
      
      protected var §+"$§:Point;
      
      public function §`!^§(param1:§;!E§, param2:§5#§)
      {
         this.§>u§ = new §0#&§();
         this.§+"$§ = new Point();
         super(param1,param2);
      }
      
      public function get §7"D§() : int
      {
         return this.§'!6§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§>u§.§-[§(0);
         this.§'!6§ = -1;
         this.§"#2§ = 0;
         this.§'N§ = 0;
         this.§+"2§ = false;
         this.§^D§(§7#+§);
         this.§6# § = §!,§;
         §@-§(true);
         §+!E§.objects.setCollisionsEnabled(true);
         §+!E§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §+!E§.update(param1,true);
         this.§,!S§(param1);
         this.§-!-§(param1);
      }
      
      private function §,!S§(param1:int) : void
      {
         if(this.§"#2§ != 0)
         {
            §+!E§.camera.adjustManualScale(this.§"#2§ > 0,param1 * §&j§);
         }
      }
      
      public function clearLevel() : void
      {
         §+!E§.clearLevel();
         removeEventListeners();
         this.§'!6§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §9!R§() : Boolean
      {
         if(§+!E§.camera.mCurrentCameraSliderLocation < §8[§.§1i§)
         {
            return false;
         }
         if(!§+!E§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §+"U§(param1:int) : void
      {
         var _loc2_:§8[§ = §+!E§.camera;
         if(_loc2_.§!G§ > 0)
         {
            _loc2_.§!G§ -= param1;
            if(_loc2_.§!G§ <= 0)
            {
               if(this.§9!R§())
               {
                  _loc2_.§!G§ = -1;
                  if(§+!E§.slingshot.birdsAvailable)
                  {
                     _loc2_.§0R§();
                  }
               }
               else
               {
                  _loc2_.§!G§ = §8[§.§^!i§ / 2;
               }
            }
         }
      }
      
      public function §^D§(param1:int, param2:Boolean = false) : void
      {
         if(this.§]"§(false) && !param2)
         {
            return;
         }
         if(param1 == §7#+§)
         {
            this.§`!X§ = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            §+!E§.camera.goToBirdView();
         }
         else if(param1 == §2"=§)
         {
            this.§`!X§ = 5000;
            §+!E§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §?!I§)
         {
            §+!E§.camera.goToCastleView();
         }
         else if(param1 == § !O§)
         {
            this.§`!X§ = 2000;
            this.§5"^§ = §-"i§;
            §+!E§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.§`!X§ = 1200;
            if(!this.§5!p§)
            {
               §+!E§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§`!X§ = 1200;
            if(!this.§5!p§)
            {
               §+!E§.camera.goToBirdView();
               §+!E§.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == §+"j§)
         {
            this.playFailSound();
            this.§`!X§ = 1200;
            §+!E§.camera.goToCastleView();
            §+!E§.objects.makePigsSmile(5);
         }
         this.§'!6§ = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         §=Q§.§!#,§();
         §=Q§.§`!A§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         §=Q§.§!#,§();
         §=Q§.§`!A§("LevelFailedPigs1");
      }
      
      public function §`!;§() : void
      {
         this.§`!X§ = 2000;
         this.§+"2§ = false;
         this.§'N§ = 2000;
         this.§^D§(§`!^§.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function §0!S§(param1:Number) : void
      {
         this.§'N§ = Math.max(this.§'N§,param1);
      }
      
      public function §5"6§() : Boolean
      {
         return §+!E§.slingshot.mSlingShotState == §%#7§.§%!E§ && !§+!E§.objects.hasBirds();
      }
      
      public function §-!-§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:§0"t§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§;!T§ = null;
         this.§6# § -= param1;
         if(this.§+"2§)
         {
            this.§'N§ -= param1;
            if(this.§'N§ < 0)
            {
               this.§6# § = 0;
            }
         }
         if(this.§6# § <= 0 && !this.§]"§(false))
         {
            _loc2_ = -1;
            this.§6# § = §!,§;
            _loc3_ = §+!E§.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.§+"2§ || this.§'N§ > 0))
            {
               if((!this.§+"2§ || this.§'N§ > 6000) && !§+!E§.objects.isPigsAlive())
               {
                  this.§'N§ = 6000;
                  this.§+"2§ = true;
               }
               else if(!this.§+"2§ && this.§5"6§())
               {
                  this.§'N§ = 15000;
                  this.§+"2§ = true;
               }
            }
            else if(!§+!E§.objects.isPigsAlive() && this.isAllowedToWin && !this.isSpecialUsed())
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.§^"c§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§5"6§())
            {
               if(_loc4_ = this.§&!O§())
               {
                  if(_loc4_.§^!d§ && _loc4_.§<!"§ > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.§^"c§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.§^!d§)
                  {
                     this.§6# § = §!,§;
                  }
               }
               else if(!this.isGameOverBlocked())
               {
                  _loc2_ = §+"j§;
                  this.§^"c§(§+"j§);
               }
            }
            if(this.§]"§(false))
            {
               §+!E§.gameOver(_loc2_);
            }
         }
         this.§`!X§ -= param1;
         if(this.§`!X§ < 0)
         {
            this.§`!X§ = 0;
         }
         if(this.§'!6§ == §?!I§)
         {
            §+!E§.updatePigAnimations(param1);
            if(!§+!E§.camera.isOnCastleView() && §+!E§.camera.mCurrentAction != §8[§.§'"&§)
            {
               this.§^D§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§'!6§ == § !O§)
         {
            if(this.§`!X§ <= 0)
            {
               if((_loc5_ = §+!E§.objects.hasBirds()) && this.§5"^§ > 0)
               {
                  this.§`!X§ = 2000;
                  this.§6# § = 0;
                  this.§5"^§ = this.§5"^§ - 1;
               }
               else if(!this.§5!p§)
               {
                  this.§^D§(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               §+!E§.updatePigAnimations(param1);
            }
            if(!§+!E§.camera.isOnCastleView() && §+!E§.camera.mCurrentAction != §8[§.§'"&§)
            {
               this.§^D§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§'!6§ == §7#+§)
         {
            if(this.§`!X§ <= 0)
            {
               this.§^D§(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.§'!6§ == LEVEL_STATE_SLINGSHOT)
         {
            if(§+!E§.camera.isOnCastleView() && §+!E§.camera.mCurrentAction != §8[§.§'"&§)
            {
               this.§^D§(§?!I§);
            }
         }
         else if(this.§'!6§ == §2"=§)
         {
            if(_loc6_ = §+!E§.levelObjects.activeObject as §;!T§)
            {
            }
         }
         else if(this.§'!6§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§`!X§ <= 0)
            {
               if(§+!E§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§`!X§ = 1000;
               }
               else
               {
                  this.§^D§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function isSpecialUsed() : Boolean
      {
         return this.§5!p§;
      }
      
      protected function get §5!p§() : Boolean
      {
         if(this.§&!O§())
         {
            return true;
         }
         return false;
      }
      
      protected function get isAllowedToWin() : Boolean
      {
         return true;
      }
      
      public function §&!O§() : §0"t§
      {
         var _loc2_:§0"t§ = null;
         var _loc1_:int = §+!E§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+!E§.objects.getObject(_loc1_) as §0"t§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function isGameOverBlocked() : Boolean
      {
         var _loc2_:§4?§ = null;
         var _loc1_:int = §+!E§.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+!E§.objects.getObject(_loc1_) as §4?§;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function §^"c§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§+"2§)
         {
            this.§+"2§ = true;
         }
         if(new Date().time - §+!E§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§+!E§.slingshot.mDragging)
         {
            return;
         }
         if(§+!E§.objects.isWorldAtSleep())
         {
            this.§'N§ = Math.min(this.§'N§,3500);
         }
         if(this.§'N§ <= 0)
         {
            this.§^D§(param1,param2);
         }
      }
      
      public function §]"§(param1:Boolean = false) : Boolean
      {
         return (this.§'!6§ == LEVEL_STATE_VICTORY2_END || this.§'!6§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§'!6§ == §+"j§) && (!param1 || this.§`!X§ <= 0 && this.§'!6§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §[g§() : Boolean
      {
         return this.§'!6§ == LEVEL_STATE_VICTORY2_END || this.§'!6§ == §+"j§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§>"u§(param1.delta > 0);
         }
      }
      
      public function §>"u§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§';§ || !§+!E§.mReadyToRun)
         {
            return;
         }
         if(this.§'!6§ == § !O§ || this.§'!6§ == §?!I§ || this.§'!6§ == LEVEL_STATE_SLINGSHOT || this.§'!6§ == §2"=§)
         {
            if(!§+!E§.isPlayingReplay())
            {
               §+!E§.camera.adjustManualScale(param1,param2 == 0 ? Number(§8[§.§4Y§) : Number(param2));
            }
            else
            {
               §+!E§.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §49§(param1:int) : void
      {
         this.§"#2§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.§';§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §]s§.§9!j§();
         if(this.§]"§(false))
         {
            return;
         }
         if(!§+!E§.isPlayingReplay())
         {
            this.§+"$§ = §+!E§.screenToBox2D(param1,param2,this.§+"$§);
            if(§+!E§.levelObjects.activeObject is §;!T§)
            {
               _loc4_ = §;!T§(§+!E§.levelObjects.activeObject).canActivateSpecialPower;
               if(!§;!T§(§+!E§.levelObjects.activeObject).specialPowerUsed)
               {
                  §+!E§.activateSpecialPower(this.§+"$§.x,this.§+"$§.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(§+!E§.slingshot.canStartDragging(this.§+"$§))
            {
               §+!E§.slingshot.startDragging();
               this.§^D§(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               §+!E§.camera.startDragging(param1,param2);
            }
            return;
         }
         §+!E§.camera.startDragging(param1,param2);
         §+!E§.resetReplaySpeed();
      }
      
      protected function §?#-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = §+!E§.screenToBox2D(param1,param2,null);
         var _loc4_:§0N§;
         if(_loc4_ = §+!E§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            §+!E§.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.§';§)
         {
            return;
         }
         §]s§.§ ! §();
         if(this.§'!6§ == §7#+§)
         {
            this.§^D§(LEVEL_STATE_SLINGSHOT);
         }
         if(§+!E§.slingshot.mDragging)
         {
            this.§+"$§ = §+!E§.screenToBox2D(param1,param2,this.§+"$§);
            §+!E§.slingshot.setNewCoordinatesForRubber(this.§+"$§.x,this.§+"$§.y,false);
            if(§+!E§.slingshot.canShootTheBird)
            {
               §+!E§.slingshot.shoot();
               this.§^D§(§2"=§);
               if(this.§'N§ < 6000)
               {
                  this.§'N§ = 6000;
               }
            }
            else
            {
               §+!E§.slingshot.cancelDragging();
            }
         }
         if(§+!E§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §+!E§.camera.dragToNewPoint(param1,param2);
            }
            §+!E§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.§';§)
         {
            return;
         }
         if(§+!E§.slingshot.mDragging)
         {
            this.§+"$§ = §+!E§.screenToBox2D(param1,param2,this.§+"$§);
            §+!E§.slingshot.setNewCoordinatesForRubber(this.§+"$§.x,this.§+"$§.y,false);
         }
         else if(§+!E§.camera.mDragging)
         {
            §+!E§.camera.dragToNewPoint(param1,param2);
         }
         this.§8!4§ = param1;
         this.§5"_§ = param2;
      }
      
      public function §4"T§() : Point
      {
         return new Point(this.§8!4§,this.§5"_§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§>u§.§-[§(this.§>u§.getValue() + param1);
         this.§0!S§(§^"§);
         if(this.§'!6§ == § !O§)
         {
            this.§`!X§ = 2000;
            this.§5"^§ = §-"i§;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.§>u§.getValue() / param1) * param1;
         }
         return this.§>u§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.§5!p§)
         {
            return 0;
         }
         var _loc1_:Number = §'""§.getLevelForId(§'""§.currentLevel).getEagleScore(§+!E§.levelItemManager,§+!E§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§';§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§';§ = param1;
      }
      
      public function §4>§() : void
      {
         this.§^D§(§+"j§,true);
      }
      
      public function §#!h§() : void
      {
         while(§+!E§.slingshot.updateScoreForRemainingBirds())
         {
         }
         this.§^D§(LEVEL_STATE_VICTORY2_END,true);
      }
   }
}

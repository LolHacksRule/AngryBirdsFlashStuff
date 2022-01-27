package §>!7§
{
   import §#X§.§,!F§;
   import §+!B§.§<!M§;
   import §1!-§.§[4§;
   import §2k§.§`n§;
   import §3a§.§'q§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§4!C§;
   import §^!A§.§;!%§;
   import §^!A§.§=!$§;
   import §^!A§.§?B§;
   import §^!A§.§^`§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §@!+§ extends §!q§
   {
      
      public static const §50§:int = 0;
      
      public static const §]c§:int = 1;
      
      public static const §=!+§:int = 2;
      
      public static const §-#§:int = 3;
      
      public static const §?k§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%<§:int = 7;
      
      protected static const §2=§:Number = §`n§.§,!J§ / 100;
      
      public static const §&L§:Number = 2000;
      
      public static const §2r§:Number = 2500;
      
      public static const §0V§:int = 5;
      
      private static var §<]§:Boolean;
       
      
      public var §?!8§:int = 0;
      
      protected var §"w§:int = 0;
      
      public var §"!+§:Number;
      
      protected var §0!C§:Number = 0;
      
      protected var §^T§:Boolean = false;
      
      private var §"!7§:Number = 0;
      
      public var §6§:Number = 0;
      
      protected var §>>§:Number = 0;
      
      protected var §;!§:Number = 0;
      
      protected var §+P§:Boolean = true;
      
      protected var §5L§:§<!M§;
      
      public function §@!+§(param1:§ !§)
      {
         this.§5L§ = new §<!M§();
         super(param1);
      }
      
      public static function §`Z§(param1:Boolean) : void
      {
         §<]§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§5L§.assign(0);
         this.§?!8§ = -1;
         this.§"w§ = 0;
         this.§0!C§ = 0;
         this.§^T§ = false;
         this.§'3§(§50§);
         this.§"!+§ = §&L§;
         §4u§(true);
         §?V§.objects.setDamageEnabled(true);
         §?V§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §?V§.update(param1,true);
         this.§#!J§(param1);
         this.§2!&§(param1);
      }
      
      private function §#!J§(param1:int) : void
      {
         if(this.§"w§ != 0)
         {
            §?V§.camera.adjustManualScale(this.§"w§ > 0,param1 * §2=§);
         }
      }
      
      public function clearLevel() : void
      {
         §?V§.clearLevel();
         removeEventListeners();
         this.§?!8§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §!!%§() : Boolean
      {
         if(§?V§.camera.mCurrentCameraSliderLocation < §`n§.§1%§)
         {
            return false;
         }
         if(!§?V§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §-G§(param1:int) : void
      {
         var _loc2_:§`n§ = §?V§.camera;
         if(_loc2_.§[#§ > 0)
         {
            _loc2_.§[#§ -= param1;
            if(_loc2_.§[#§ <= 0)
            {
               if(this.§!!%§())
               {
                  _loc2_.§[#§ = -1;
                  if(§?V§.slingshot.birdsAvailable)
                  {
                     _loc2_.§1!,§();
                  }
               }
               else
               {
                  _loc2_.§[#§ = §`n§.§%b§ / 2;
               }
            }
         }
      }
      
      public function §'3§(param1:int, param2:Boolean = false) : void
      {
         if(this.§&!&§(false) && !param2)
         {
            return;
         }
         if(param1 == §50§)
         {
            this.§6§ = 2000;
         }
         else if(param1 == §]c§)
         {
            §?V§.camera.goToBirdView();
         }
         else if(param1 == §=!+§)
         {
            §`Z§(false);
            this.§6§ = 5000;
            §?V§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §-#§)
         {
            §?V§.camera.goToCastleView();
         }
         else if(param1 == §?k§)
         {
            this.§6§ = 2000;
            this.§"!7§ = §0V§;
            §?V§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§6§ = 1200;
            if(!§?V§.objects.mMightyEagleAdded)
            {
               §?V§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§6§ = 1200;
            if(!§?V§.objects.mMightyEagleAdded)
            {
               §?V§.camera.goToBirdView();
               §?V§.slingshot.makeBirdsJumpForJoy();
            }
            §,!F§.§;v§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §%<§)
         {
            §,!F§.§?X§();
            §,!F§.§;v§("LevelFailedPigs1");
            this.§6§ = 1200;
            §?V§.camera.goToCastleView();
            §?V§.objects.makePigsSmile(5);
         }
         this.§?!8§ = param1;
      }
      
      public function §[!-§() : void
      {
         this.§6§ = 2000;
         this.§^T§ = false;
         this.§0!C§ = 2000;
      }
      
      public function §,!,§(param1:Number) : void
      {
         this.§0!C§ = Math.max(this.§0!C§,param1);
      }
      
      protected function §;§() : Boolean
      {
         return §?V§.slingshot.mSlingShotState == §4!C§.§45§ && !§?V§.objects.hasBirds();
      }
      
      public function §2!&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§;!%§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§"!+§ -= param1;
         if(this.§^T§)
         {
            this.§0!C§ -= param1;
            if(this.§0!C§ < 0)
            {
               this.§"!+§ = 0;
            }
         }
         if(this.§"!+§ <= 0 && !this.§&!&§(false))
         {
            this.§"!+§ = §&L§;
            _loc2_ = §?V§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§^T§ || this.§0!C§ > 0))
            {
               if((!this.§^T§ || this.§0!C§ > 6000) && !§?V§.objects.isPigsAlive())
               {
                  this.§0!C§ = 6000;
                  this.§^T§ = true;
               }
               else if(!this.§^T§ && this.§;§())
               {
                  this.§0!C§ = 15000;
                  this.§^T§ = true;
               }
            }
            else if(!§?V§.objects.isPigsAlive() && !§?V§.objects.mSardineCanAdded && !§?V§.objects.mMightyEagleAdded && (§=w§.§ o§.slingshot.§,B§.length == 0 || §=w§.§ o§.slingshot.§,B§[0].name != "BIRD_CHRISTMAS"))
            {
               this.§#!@§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§;§())
            {
               if(§?V§.objects.mMightyEagleAdded)
               {
                  if(§?V§.objects.mMightyEagleHasTouchedGround && §?V§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§#!@§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§?V§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§"!+§ = §&L§;
                  }
               }
               else if(!§?V§.objects.mSardineCanAdded)
               {
                  this.§#!@§(§%<§);
               }
            }
            if(this.§&!&§(false))
            {
               §?V§.gameOver();
            }
         }
         this.§6§ -= param1;
         if(this.§6§ < 0)
         {
            this.§6§ = 0;
         }
         if(this.§?!8§ == §-#§)
         {
            §?V§.updatePigAnimations(param1);
            if(!§?V§.camera.isOnCastleView() && §?V§.camera.mCurrentAction != §`n§.§4q§)
            {
               this.§'3§(§]c§);
            }
         }
         else if(this.§?!8§ == §?k§)
         {
            if(this.§6§ <= 0)
            {
               _loc3_ = §?V§.objects.hasBirds();
               if(_loc3_ && this.§"!7§ > 0)
               {
                  this.§6§ = 2000;
                  this.§"!+§ = 0;
                  this.§"!7§ = this.§"!7§ - 1;
               }
               else if(!§=w§.§ o§.objects.mMightyEagleAdded)
               {
                  this.§'3§(§]c§);
               }
            }
            else
            {
               §?V§.updatePigAnimations(param1);
            }
            if(!§?V§.camera.isOnCastleView() && §?V§.camera.mCurrentAction != §`n§.§4q§)
            {
               this.§'3§(§]c§);
            }
         }
         else if(this.§?!8§ == §50§)
         {
            if(this.§6§ <= 0)
            {
               this.§'3§(§]c§);
            }
         }
         else if(this.§?!8§ == §]c§)
         {
            if(§?V§.camera.isOnCastleView() && §?V§.camera.mCurrentAction != §`n§.§4q§)
            {
               this.§'3§(§-#§);
            }
         }
         else if(this.§?!8§ == §=!+§)
         {
            if(!(_loc4_ = §?V§.activeObject) || _loc4_.§`Y§ < _loc4_.§@!§)
            {
               if(_loc4_ && _loc4_ is §^`§)
               {
                  _loc5_ = _loc4_ is §?B§;
                  _loc6_ = _loc4_ is §=!$§;
                  _loc7_ = (_loc4_ as §^`§).§[!E§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §`Z§(true);
                        this.§'3§(§?k§);
                     }
                  }
               }
               §?V§.activeObject = null;
               this.§'3§(§?k§);
            }
         }
         else if(this.§?!8§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§6§ <= 0)
            {
               if(§?V§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§6§ = 1000;
               }
               else
               {
                  this.§'3§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §#!@§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§^T§)
         {
            this.§^T§ = true;
         }
         if(new Date().time - §?V§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§?V§.slingshot.mDragging)
         {
            return;
         }
         if(§?V§.objects.isWorldAtSleep())
         {
            this.§0!C§ = Math.min(this.§0!C§,3500);
         }
         if(this.§0!C§ <= 0)
         {
            this.§'3§(param1,param2);
         }
      }
      
      public function §&!&§(param1:Boolean = false) : Boolean
      {
         return (this.§?!8§ == LEVEL_STATE_VICTORY2_END || this.§?!8§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§?!8§ == §%<§) && (!param1 || this.§6§ <= 0 && this.§?!8§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §9$§() : Boolean
      {
         return this.§?!8§ == LEVEL_STATE_VICTORY2_END || this.§?!8§ == §%<§;
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
         if(!this.§+P§ || !§?V§.mReadyToRun)
         {
            return;
         }
         if(!(§?V§.slingshot.mDragging || §?V§.camera.mDragging))
         {
            if(this.§?!8§ == §?k§ || this.§?!8§ == §-#§ || this.§?!8§ == §]c§ || this.§?!8§ == §=!+§)
            {
               if(!§?V§.isPlayingReplay())
               {
                  §?V§.camera.adjustManualScale(param1,param2 == 0 ? Number(§`n§.§,!J§) : Number(param2));
               }
               else
               {
                  §?V§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §>!'§(param1:int) : void
      {
         this.§"w§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§+P§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §'q§.§3!4§();
         if(this.§&!&§(false))
         {
            return;
         }
         if(!§?V§.isPlayingReplay())
         {
            if(§?V§.activeObject && this.§?!8§ == §=!+§ || §<]§)
            {
               §`Z§(false);
               §?V§.activatePowerup();
               return;
            }
            _loc4_ = §?V§.screenToBox2D(param1,param2);
            if(§?V§.slingshot.canStartDragging(_loc4_))
            {
               §?V§.slingshot.startDragging();
               _loc4_ = §?V§.screenToBox2D(param1,param2);
               §?V§.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
               this.§'3§(§]c§);
            }
            else
            {
               §?V§.camera.startDragging(param1,param2);
            }
            return;
         }
         §?V§.camera.startDragging(param1,param2);
         §?V§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§+P§)
         {
            return;
         }
         §'q§.§5e§();
         if(this.§?!8§ == §50§)
         {
            this.§'3§(§]c§);
         }
         if(§?V§.slingshot.mDragging)
         {
            _loc3_ = §?V§.screenToBox2D(param1,param2);
            §?V§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§?V§.slingshot.canShootTheBird())
            {
               §?V§.slingshot.shoot();
               this.§'3§(§=!+§);
            }
            else
            {
               §?V§.slingshot.cancelDragging();
            }
         }
         if(§?V§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §?V§.camera.dragToNewPoint(param1,param2);
            }
            §?V§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§+P§)
         {
            return;
         }
         if(§?V§.slingshot.mDragging)
         {
            _loc3_ = §?V§.screenToBox2D(param1,param2);
            §?V§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§?V§.camera.mDragging)
         {
            §?V§.camera.dragToNewPoint(param1,param2);
         }
         this.§>>§ = param1;
         this.§;!§ = param2;
      }
      
      public function §=A§() : Point
      {
         return new Point(this.§>>§,this.§;!§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§5L§.assign(this.§5L§.getValue() + param1);
         this.§,!,§(§2r§);
         if(this.§?!8§ == §?k§)
         {
            this.§6§ = 2000;
            this.§"!7§ = §0V§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§5L§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§=w§.§ o§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §[4§.§!_§(§[4§.§"!>§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§+P§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§+P§ = param1;
      }
   }
}

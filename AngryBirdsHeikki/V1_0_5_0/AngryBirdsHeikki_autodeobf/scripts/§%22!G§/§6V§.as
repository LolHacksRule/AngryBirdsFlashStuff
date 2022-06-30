package §"!G§
{
   import §+D§.§5!P§;
   import §+D§.§5@§;
   import §1!K§.§4§;
   import §2!Q§.§'[§;
   import §3-§.§1L§;
   import §9!T§.§5g§;
   import §9!T§.§;!"§;
   import §9!T§.§^y§;
   import §=!S§.§#!K§;
   import §=X§.§7!4§;
   import §[$§.§=K§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §6V§ extends §&_§
   {
      
      public static const §5!J§:int = 0;
      
      public static const §2§:int = 1;
      
      public static const §8!U§:int = 2;
      
      public static const §"@§:int = 3;
      
      public static const §@$§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §5!#§:int = 7;
      
      protected static const §>!?§:Number = §=K§.§#z§ / 100;
      
      public static const §!"§:Number = 2000;
      
      public static const §2L§:Number = 2500;
      
      public static const §`!K§:int = 5;
       
      
      public var §;!6§:int = 0;
      
      protected var §7!=§:int = 0;
      
      public var §;,§:Number;
      
      protected var §^h§:Number = 0;
      
      protected var §-1§:Boolean = false;
      
      private var §5L§:Number = 0;
      
      public var §,!Q§:Number = 0;
      
      protected var §"w§:Boolean;
      
      protected var §+w§:Number = 0;
      
      protected var §;t§:Number = 0;
      
      protected var §"X§:Boolean = true;
      
      protected var §4j§:§#!K§;
      
      public function §6V§(param1:§5!P§)
      {
         this.§4j§ = new §#!K§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§4j§.§->§(0);
         this.§;!6§ = -1;
         this.§7!=§ = 0;
         this.§^h§ = 0;
         this.§-1§ = false;
         this.§[!L§(§5!J§);
         this.§;,§ = §!"§;
         §?e§(true);
         §^!4§.objects.setDamageEnabled(true);
         §^!4§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §^!4§.update(param1,true);
         this.§&z§(param1);
         this.§'h§(param1);
      }
      
      private function §&z§(param1:int) : void
      {
         if(this.§7!=§ != 0)
         {
            §^!4§.camera.adjustManualScale(this.§7!=§ > 0,param1 * §>!?§);
         }
      }
      
      public function clearLevel() : void
      {
         §^!4§.clearLevel();
         removeEventListeners();
         this.§;!6§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §<!N§() : Boolean
      {
         if(§^!4§.camera.mCurrentCameraSliderLocation < §=K§.§+8§)
         {
            return false;
         }
         if(!§^!4§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §%!b§(param1:int) : void
      {
         var _loc2_:§=K§ = §^!4§.camera;
         if(_loc2_.§`!4§ > 0)
         {
            _loc2_.§`!4§ -= param1;
            if(_loc2_.§`!4§ <= 0)
            {
               if(this.§<!N§())
               {
                  _loc2_.§`!4§ = -1;
                  if(§^!4§.slingshot.birdsAvailable)
                  {
                     _loc2_.§?!@§();
                  }
               }
               else
               {
                  _loc2_.§`!4§ = §=K§.§>J§ / 2;
               }
            }
         }
      }
      
      public function §[!L§(param1:int, param2:Boolean = false) : void
      {
         if(this.§'!,§(false) && !param2)
         {
            return;
         }
         if(param1 == §5!J§)
         {
            this.§,!Q§ = 2000;
         }
         else if(param1 == §2§)
         {
            §^!4§.camera.goToBirdView();
         }
         else if(param1 == §8!U§)
         {
            this.§"w§ = false;
            this.§,!Q§ = 5000;
            §^!4§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §"@§)
         {
            §^!4§.camera.goToCastleView();
         }
         else if(param1 == §@$§)
         {
            this.§,!Q§ = 2000;
            this.§5L§ = §`!K§;
            §^!4§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§,!Q§ = 1200;
            if(!§^!4§.objects.mMightyEagleAdded)
            {
               §^!4§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§,!Q§ = 1200;
            if(!§^!4§.objects.mMightyEagleAdded)
            {
               §^!4§.camera.goToBirdView();
               §^!4§.slingshot.makeBirdsJumpForJoy();
            }
            §'[§.§"]§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §5!#§)
         {
            §'[§.§9!;§();
            §'[§.§"]§("LevelFailedPigs1");
            this.§,!Q§ = 1200;
            §^!4§.camera.goToCastleView();
            §^!4§.objects.makePigsSmile(5);
         }
         this.§;!6§ = param1;
      }
      
      public function §&!D§(param1:Number) : void
      {
         this.§^h§ = Math.max(this.§^h§,param1);
      }
      
      protected function §1g§() : Boolean
      {
         return §^!4§.slingshot.mSlingShotState == §5@§.§5c§ && !§^!4§.objects.hasBirds();
      }
      
      public function §'h§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§;!"§ = null;
         this.§;,§ -= param1;
         if(this.§-1§)
         {
            this.§^h§ -= param1;
            if(this.§^h§ < 0)
            {
               this.§;,§ = 0;
            }
         }
         if(this.§;,§ <= 0 && !this.§'!,§(false))
         {
            this.§;,§ = §!"§;
            _loc2_ = §^!4§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§-1§ || this.§^h§ > 0))
            {
               if((!this.§-1§ || this.§^h§ > 6000) && !§^!4§.objects.isPigsAlive())
               {
                  this.§^h§ = 6000;
                  this.§-1§ = true;
               }
               else if(!this.§-1§ && this.§1g§())
               {
                  this.§^h§ = 15000;
                  this.§-1§ = true;
               }
            }
            else if(!§^!4§.objects.isPigsAlive() && !§^!4§.objects.mSardineCanAdded && !§^!4§.objects.mMightyEagleAdded)
            {
               this.§"!Y§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§1g§())
            {
               if(§^!4§.objects.mMightyEagleAdded)
               {
                  if(§^!4§.objects.mMightyEagleHasTouchedGround && §^!4§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§"!Y§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§^!4§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§;,§ = §!"§;
                  }
               }
               else if(!§^!4§.objects.mSardineCanAdded)
               {
                  this.§"!Y§(§5!#§);
               }
            }
            if(this.§'!,§(false))
            {
               §^!4§.gameOver();
            }
         }
         this.§,!Q§ -= param1;
         if(this.§,!Q§ < 0)
         {
            this.§,!Q§ = 0;
         }
         if(this.§;!6§ == §"@§)
         {
            §^!4§.updatePigAnimations(param1);
            if(!§^!4§.camera.isOnCastleView() && §^!4§.camera.mCurrentAction != §=K§.§7E§)
            {
               this.§[!L§(§2§);
            }
         }
         else if(this.§;!6§ == §@$§)
         {
            if(this.§,!Q§ <= 0)
            {
               _loc3_ = §^!4§.objects.hasBirds();
               if(_loc3_ && this.§5L§ > 0)
               {
                  this.§,!Q§ = 2000;
                  this.§;,§ = 0;
                  this.§5L§ = this.§5L§ - 1;
               }
               else if(!§1L§.§"f§.objects.mMightyEagleAdded)
               {
                  this.§[!L§(§2§);
               }
            }
            else
            {
               §^!4§.updatePigAnimations(param1);
            }
            if(!§^!4§.camera.isOnCastleView() && §^!4§.camera.mCurrentAction != §=K§.§7E§)
            {
               this.§[!L§(§2§);
            }
         }
         else if(this.§;!6§ == §5!J§)
         {
            if(this.§,!Q§ <= 0)
            {
               this.§[!L§(§2§);
            }
         }
         else if(this.§;!6§ == §2§)
         {
            if(§^!4§.camera.isOnCastleView() && §^!4§.camera.mCurrentAction != §=K§.§7E§)
            {
               this.§[!L§(§"@§);
            }
         }
         else if(this.§;!6§ == §8!U§)
         {
            if(!(_loc4_ = §^!4§.activeObject) || _loc4_.§1K§ < _loc4_.§0!a§)
            {
               if(_loc4_ && _loc4_ is §^y§ && (!(_loc4_ as §5g§).§,u§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§"w§ = true;
                  this.§[!L§(§@$§);
               }
               §^!4§.activeObject = null;
               this.§[!L§(§@$§);
            }
         }
         else if(this.§;!6§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§,!Q§ <= 0)
            {
               if(§^!4§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§,!Q§ = 1000;
               }
               else
               {
                  this.§[!L§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §"!Y§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§-1§)
         {
            this.§-1§ = true;
         }
         if(new Date().time - §^!4§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§^!4§.slingshot.mDragging)
         {
            return;
         }
         if(§^!4§.objects.isWorldAtSleep())
         {
            this.§^h§ = Math.min(this.§^h§,3500);
         }
         if(this.§^h§ <= 0)
         {
            this.§[!L§(param1,param2);
         }
      }
      
      public function §'!,§(param1:Boolean = false) : Boolean
      {
         return (this.§;!6§ == LEVEL_STATE_VICTORY2_END || this.§;!6§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§;!6§ == §5!#§) && (!param1 || this.§,!Q§ <= 0 && this.§;!6§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §=!W§() : Boolean
      {
         return this.§;!6§ == LEVEL_STATE_VICTORY2_END || this.§;!6§ == §5!#§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.doUserZoom(param1.delta > 0);
         }
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         if(!this.§"X§ || !§^!4§.mReadyToRun)
         {
            return;
         }
         if(!(§^!4§.slingshot.mDragging || §^!4§.camera.mDragging))
         {
            if(this.§;!6§ == §@$§ || this.§;!6§ == §"@§ || this.§;!6§ == §2§)
            {
               if(!§^!4§.isPlayingReplay())
               {
                  §^!4§.camera.adjustManualScale(param1);
               }
               else
               {
                  §^!4§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §"!S§(param1:int) : void
      {
         this.§7!=§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§"X§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §4§.§!!6§();
         if(this.§'!,§(false))
         {
            return;
         }
         if(!§^!4§.isPlayingReplay())
         {
            if(§^!4§.activeObject && this.§;!6§ == §8!U§ || this.§"w§)
            {
               this.§"w§ = false;
               §^!4§.activatePowerup();
               return;
            }
            _loc4_ = §^!4§.screenToBox2D(param1,param2);
            if(§^!4§.slingshot.canStartDragging(_loc4_))
            {
               §^!4§.slingshot.startDragging();
               this.§[!L§(§2§);
            }
            else
            {
               §^!4§.camera.startDragging(param1,param2);
            }
            return;
         }
         §^!4§.camera.startDragging(param1,param2);
         §^!4§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§"X§)
         {
            return;
         }
         §4§.§=e§();
         if(this.§;!6§ == §5!J§)
         {
            this.§[!L§(§2§);
         }
         if(§^!4§.slingshot.mDragging)
         {
            _loc3_ = §^!4§.screenToBox2D(param1,param2);
            §^!4§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§^!4§.slingshot.canShootTheBird())
            {
               §^!4§.slingshot.shoot();
               this.§[!L§(§8!U§);
            }
            else
            {
               §^!4§.slingshot.cancelDragging();
            }
         }
         if(§^!4§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §^!4§.camera.dragToNewPoint(param1,param2);
            }
            §^!4§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§"X§)
         {
            return;
         }
         if(§^!4§.slingshot.mDragging)
         {
            _loc3_ = §^!4§.screenToBox2D(param1,param2);
            §^!4§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§^!4§.camera.mDragging)
         {
            §^!4§.camera.dragToNewPoint(param1,param2);
         }
         this.§+w§ = param1;
         this.§;t§ = param2;
      }
      
      public function §"2§() : Point
      {
         return new Point(this.§+w§,this.§;t§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§4j§.§->§(this.§4j§.getValue() + param1);
         this.§&!D§(§2L§);
         if(this.§;!6§ == §@$§)
         {
            this.§,!Q§ = 2000;
            this.§5L§ = §`!K§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§4j§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§1L§.§"f§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §7!4§.§,&§(§7!4§.§"P§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§"X§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§"X§ = param1;
      }
   }
}

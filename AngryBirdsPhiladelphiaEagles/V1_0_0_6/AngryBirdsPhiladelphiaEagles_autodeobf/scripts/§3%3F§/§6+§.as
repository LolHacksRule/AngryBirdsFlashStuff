package §3?§
{
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §3!O§.§ !2§;
   import §4!-§.§%o§;
   import §4!-§.§2s§;
   import §6h§.§?!I§;
   import §;!B§.§;f§;
   import §>Y§.§#o§;
   import §>Y§.§5t§;
   import §>Y§.§9!"§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §6+§ extends §,f§
   {
      
      public static const §'!-§:int = 0;
      
      public static const §%T§:int = 1;
      
      public static const § <§:int = 2;
      
      public static const §,n§:int = 3;
      
      public static const §>!=§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §!!6§:int = 7;
      
      protected static const §<s§:Number = §?!I§.§;3§ / 100;
      
      public static const §?d§:Number = 2000;
      
      public static const §5m§:Number = 2500;
      
      public static const §9y§:int = 5;
       
      
      public var §6z§:int = 0;
      
      protected var §>!D§:int = 0;
      
      public var §`8§:Number;
      
      protected var §<!&§:Number = 0;
      
      protected var §0X§:Boolean = false;
      
      private var §?G§:Number = 0;
      
      public var §8[§:Number = 0;
      
      protected var §-X§:Boolean;
      
      protected var §#!=§:Number = 0;
      
      protected var §";§:Number = 0;
      
      protected var §'4§:Boolean = true;
      
      protected var §^!#§:§;f§;
      
      public function §6+§(param1:§%o§)
      {
         this.§^!#§ = new §;f§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§^!#§.assign(0);
         this.§6z§ = -1;
         this.§>!D§ = 0;
         this.§<!&§ = 0;
         this.§0X§ = false;
         this.§#!-§(§'!-§);
         this.§`8§ = §?d§;
         §`!1§(true);
         §'!8§.objects.setDamageEnabled(true);
         §'!8§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §'!8§.update(param1,true);
         this.§,4§(param1);
         this.§'z§(param1);
      }
      
      private function §,4§(param1:int) : void
      {
         if(this.§>!D§ != 0)
         {
            §'!8§.camera.adjustManualScale(this.§>!D§ > 0,param1 * §<s§);
         }
      }
      
      public function clearLevel() : void
      {
         §'!8§.clearLevel();
         removeEventListeners();
         this.§6z§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §?!=§() : Boolean
      {
         if(§'!8§.camera.mCurrentCameraSliderLocation < §?!I§.§5d§)
         {
            return false;
         }
         if(!§'!8§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §,y§(param1:int) : void
      {
         var _loc2_:§?!I§ = §'!8§.camera;
         if(_loc2_.§+f§ > 0)
         {
            _loc2_.§+f§ -= param1;
            if(_loc2_.§+f§ <= 0)
            {
               if(this.§?!=§())
               {
                  _loc2_.§+f§ = -1;
                  if(§'!8§.slingshot.birdsAvailable)
                  {
                     _loc2_.§"t§();
                  }
               }
               else
               {
                  _loc2_.§+f§ = §?!I§.§3[§ / 2;
               }
            }
         }
      }
      
      public function §#!-§(param1:int, param2:Boolean = false) : void
      {
         if(this.§#!O§(false) && !param2)
         {
            return;
         }
         if(param1 == §'!-§)
         {
            this.§8[§ = 2000;
         }
         else if(param1 == §%T§)
         {
            §'!8§.camera.goToBirdView();
         }
         else if(param1 == § <§)
         {
            this.§-X§ = false;
            this.§8[§ = 5000;
            §'!8§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §,n§)
         {
            §'!8§.camera.goToCastleView();
         }
         else if(param1 == §>!=§)
         {
            this.§8[§ = 2000;
            this.§?G§ = §9y§;
            §'!8§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§8[§ = 1200;
            if(!§'!8§.objects.mMightyEagleAdded)
            {
               §'!8§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§8[§ = 1200;
            if(!§'!8§.objects.mMightyEagleAdded)
            {
               §'!8§.camera.goToBirdView();
               §'!8§.slingshot.makeBirdsJumpForJoy();
            }
            §#-§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §!!6§)
         {
            §#-§.§[!>§();
            §#-§.playSound("LevelFailedPigs1");
            this.§8[§ = 1200;
            §'!8§.camera.goToCastleView();
            §'!8§.objects.makePigsSmile(5);
         }
         this.§6z§ = param1;
      }
      
      public function §<!=§(param1:Number) : void
      {
         this.§<!&§ = Math.max(this.§<!&§,param1);
      }
      
      protected function §9!I§() : Boolean
      {
         return §'!8§.slingshot.mSlingShotState == §2s§.§7u§ && !§'!8§.objects.hasBirds();
      }
      
      public function §'z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§#o§ = null;
         this.§`8§ -= param1;
         if(this.§0X§)
         {
            this.§<!&§ -= param1;
            if(this.§<!&§ < 0)
            {
               this.§`8§ = 0;
            }
         }
         if(this.§`8§ <= 0 && !this.§#!O§(false))
         {
            this.§`8§ = §?d§;
            _loc2_ = §'!8§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§0X§ || this.§<!&§ > 0))
            {
               if((!this.§0X§ || this.§<!&§ > 6000) && !§'!8§.objects.isPigsAlive())
               {
                  this.§<!&§ = 6000;
                  this.§0X§ = true;
               }
               else if(!this.§0X§ && this.§9!I§())
               {
                  this.§<!&§ = 15000;
                  this.§0X§ = true;
               }
            }
            else if(!§'!8§.objects.isPigsAlive() && !§'!8§.objects.mSardineCanAdded && !§'!8§.objects.mMightyEagleAdded)
            {
               this.§2J§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§9!I§())
            {
               if(§'!8§.objects.mMightyEagleAdded)
               {
                  if(§'!8§.objects.mMightyEagleHasTouchedGround && §'!8§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§2J§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§'!8§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§`8§ = §?d§;
                  }
               }
               else if(!§'!8§.objects.mSardineCanAdded)
               {
                  this.§2J§(§!!6§);
               }
            }
            if(this.§#!O§(false))
            {
               §'!8§.gameOver();
            }
         }
         this.§8[§ -= param1;
         if(this.§8[§ < 0)
         {
            this.§8[§ = 0;
         }
         if(this.§6z§ == §,n§)
         {
            §'!8§.updatePigAnimations(param1);
            if(!§'!8§.camera.isOnCastleView() && §'!8§.camera.mCurrentAction != §?!I§.§,X§)
            {
               this.§#!-§(§%T§);
            }
         }
         else if(this.§6z§ == §>!=§)
         {
            if(this.§8[§ <= 0)
            {
               _loc3_ = §'!8§.objects.hasBirds();
               if(_loc3_ && this.§?G§ > 0)
               {
                  this.§8[§ = 2000;
                  this.§`8§ = 0;
                  this.§?G§ = this.§?G§ - 1;
               }
               else if(!§[F§.§9u§.objects.mMightyEagleAdded)
               {
                  this.§#!-§(§%T§);
               }
            }
            else
            {
               §'!8§.updatePigAnimations(param1);
            }
            if(!§'!8§.camera.isOnCastleView() && §'!8§.camera.mCurrentAction != §?!I§.§,X§)
            {
               this.§#!-§(§%T§);
            }
         }
         else if(this.§6z§ == §'!-§)
         {
            if(this.§8[§ <= 0)
            {
               this.§#!-§(§%T§);
            }
         }
         else if(this.§6z§ == §%T§)
         {
            if(§'!8§.camera.isOnCastleView() && §'!8§.camera.mCurrentAction != §?!I§.§,X§)
            {
               this.§#!-§(§,n§);
            }
         }
         else if(this.§6z§ == § <§)
         {
            if(!(_loc4_ = §'!8§.activeObject) || _loc4_.§=4§ < _loc4_.§72§)
            {
               if(_loc4_ && _loc4_ is §9!"§ && (!(_loc4_ as §5t§).§4!K§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§-X§ = true;
                  this.§#!-§(§>!=§);
               }
               §'!8§.activeObject = null;
               this.§#!-§(§>!=§);
            }
         }
         else if(this.§6z§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§8[§ <= 0)
            {
               if(§'!8§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§8[§ = 1000;
               }
               else
               {
                  this.§#!-§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §2J§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§0X§)
         {
            this.§0X§ = true;
         }
         if(new Date().time - §'!8§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§'!8§.slingshot.mDragging)
         {
            return;
         }
         if(§'!8§.objects.isWorldAtSleep())
         {
            this.§<!&§ = Math.min(this.§<!&§,3500);
         }
         if(this.§<!&§ <= 0)
         {
            this.§#!-§(param1,param2);
         }
      }
      
      public function §#!O§(param1:Boolean = false) : Boolean
      {
         return (this.§6z§ == LEVEL_STATE_VICTORY2_END || this.§6z§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§6z§ == §!!6§) && (!param1 || this.§8[§ <= 0 && this.§6z§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §6!P§() : Boolean
      {
         return this.§6z§ == LEVEL_STATE_VICTORY2_END || this.§6z§ == §!!6§;
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
         if(!this.§'4§ || !§'!8§.mReadyToRun)
         {
            return;
         }
         if(!(§'!8§.slingshot.mDragging || §'!8§.camera.mDragging))
         {
            if(this.§6z§ == §>!=§ || this.§6z§ == §,n§ || this.§6z§ == §%T§)
            {
               if(!§'!8§.isPlayingReplay())
               {
                  §'!8§.camera.adjustManualScale(param1);
               }
               else
               {
                  §'!8§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §1!<§(param1:int) : void
      {
         this.§>!D§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§'4§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         § !2§.§8S§();
         if(this.§#!O§(false))
         {
            return;
         }
         if(!§'!8§.isPlayingReplay())
         {
            if(§'!8§.activeObject && this.§6z§ == § <§ || this.§-X§)
            {
               this.§-X§ = false;
               §'!8§.activatePowerup();
               return;
            }
            _loc4_ = §'!8§.screenToBox2D(param1,param2);
            if(§'!8§.slingshot.canStartDragging(_loc4_))
            {
               §'!8§.slingshot.startDragging();
               this.§#!-§(§%T§);
            }
            else
            {
               §'!8§.camera.startDragging(param1,param2);
            }
            return;
         }
         §'!8§.camera.startDragging(param1,param2);
         §'!8§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§'4§)
         {
            return;
         }
         § !2§.§@+§();
         if(this.§6z§ == §'!-§)
         {
            this.§#!-§(§%T§);
         }
         if(§'!8§.slingshot.mDragging)
         {
            _loc3_ = §'!8§.screenToBox2D(param1,param2);
            §'!8§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§'!8§.slingshot.canShootTheBird())
            {
               §'!8§.slingshot.shoot();
               this.§#!-§(§ <§);
            }
            else
            {
               §'!8§.slingshot.cancelDragging();
            }
         }
         if(§'!8§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §'!8§.camera.dragToNewPoint(param1,param2);
            }
            §'!8§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§'4§)
         {
            return;
         }
         if(§'!8§.slingshot.mDragging)
         {
            _loc3_ = §'!8§.screenToBox2D(param1,param2);
            §'!8§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§'!8§.camera.mDragging)
         {
            §'!8§.camera.dragToNewPoint(param1,param2);
         }
         this.§#!=§ = param1;
         this.§";§ = param2;
      }
      
      public function §>!B§() : Point
      {
         return new Point(this.§#!=§,this.§";§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§^!#§.assign(this.§^!#§.getValue() + param1);
         this.§<!=§(§5m§);
         if(this.§6z§ == §>!=§)
         {
            this.§8[§ = 2000;
            this.§?G§ = §9y§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§^!#§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§[F§.§9u§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §2h§.§?J§(§2h§.§,!P§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§'4§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§'4§ = param1;
      }
   }
}

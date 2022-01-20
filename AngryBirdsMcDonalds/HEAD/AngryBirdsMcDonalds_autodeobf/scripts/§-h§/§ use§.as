package §-h§
{
   import § !J§.§%M§;
   import § !J§.§`+§;
   import §#!1§.§=?§;
   import §'+§.§,K§;
   import §,4§.§;_§;
   import §4j§.§!!C§;
   import §4j§.§#!o§;
   import §4j§.§9M§;
   import §4j§.§@!K§;
   import §7F§.§2M§;
   import §?!d§.§-E§;
   import §[!4§.§-#§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class § use§ extends §?!W§
   {
      
      public static const §,c§:int = 0;
      
      public static const §!v§:int = 1;
      
      public static const §>W§:int = 2;
      
      public static const §;!<§:int = 3;
      
      public static const §2k§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §'k§:int = 7;
      
      protected static const §&#§:Number = §-E§.§ try§ / 100;
      
      public static const §]!U§:Number = 2000;
      
      public static const §]^§:Number = 2500;
      
      public static const §4d§:int = 5;
      
      private static var §^!n§:Boolean;
       
      
      public var §"§:int = 0;
      
      protected var §,!b§:int = 0;
      
      public var §3!W§:Number;
      
      protected var §"!h§:Number = 0;
      
      protected var §;v§:Boolean = false;
      
      private var §0!N§:Number = 0;
      
      public var §9!&§:Number = 0;
      
      protected var §+c§:Number = 0;
      
      protected var §&!$§:Number = 0;
      
      protected var §%P§:Boolean = true;
      
      protected var §20§:§=?§;
      
      public function § use§(param1:§%M§)
      {
         this.§20§ = new §=?§();
         super(param1);
      }
      
      public static function §]![§(param1:Boolean) : void
      {
         §^!n§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§20§.§ !b§(0);
         this.§"§ = -1;
         this.§,!b§ = 0;
         this.§"!h§ = 0;
         this.§;v§ = false;
         this.changeGameState(§,c§);
         this.§3!W§ = §]!U§;
         §6v§(true);
         mLevelMain.objects.setDamageEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.§5!D§(param1);
         this.§"!i§(param1);
      }
      
      private function §5!D§(param1:int) : void
      {
         if(this.§,!b§ != 0)
         {
            mLevelMain.camera.adjustManualScale(this.§,!b§ > 0,param1 * §&#§);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.§"§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §!!D§() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < §-E§.§3!3§)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §#A§(param1:int) : void
      {
         var _loc2_:§-E§ = mLevelMain.camera;
         if(_loc2_.§7k§ > 0)
         {
            _loc2_.§7k§ -= param1;
            if(_loc2_.§7k§ <= 0)
            {
               if(this.§!!D§())
               {
                  _loc2_.§7k§ = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.§+!r§();
                  }
               }
               else
               {
                  _loc2_.§7k§ = §-E§.§2B§ / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.§@V§(false) && !param2)
         {
            return;
         }
         if(param1 == §,c§)
         {
            this.§9!&§ = 2000;
         }
         else if(param1 == §!v§)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == §>W§)
         {
            §]![§(false);
            this.§9!&§ = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == §;!<§)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == §2k§)
         {
            this.§9!&§ = 2000;
            this.§0!N§ = §4d§;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§9!&§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§9!&§ = 1200;
            if(!mLevelMain.objects.mMightyEagleAdded)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            §-#§.§4h§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §'k§)
         {
            §-#§.§4A§();
            §-#§.§4h§("LevelFailedPigs1");
            this.§9!&§ = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.§"§ = param1;
      }
      
      public function §&!Z§() : void
      {
         this.§9!&§ = 2000;
         this.§;v§ = false;
         this.§"!h§ = 2000;
         this.changeGameState(§ use§.§!v§,true);
      }
      
      public function §2;§(param1:Number) : void
      {
         this.§"!h§ = Math.max(this.§"!h§,param1);
      }
      
      protected function §<k§() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == §`+§.§3S§ && !mLevelMain.objects.hasBirds();
      }
      
      public function §"!i§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§9M§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         this.§3!W§ -= param1;
         if(this.§;v§)
         {
            this.§"!h§ -= param1;
            if(this.§"!h§ < 0)
            {
               this.§3!W§ = 0;
            }
         }
         if(this.§3!W§ <= 0 && !this.§@V§(false))
         {
            this.§3!W§ = §]!U§;
            _loc2_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§;v§ || this.§"!h§ > 0))
            {
               if((!this.§;v§ || this.§"!h§ > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.§"!h§ = 6000;
                  this.§;v§ = true;
               }
               else if(!this.§;v§ && this.§<k§())
               {
                  this.§"!h§ = 15000;
                  this.§;v§ = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && !mLevelMain.objects.mSardineCanAdded && !mLevelMain.objects.mMightyEagleAdded)
            {
               this.§2t§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§<k§())
            {
               if(mLevelMain.objects.mMightyEagleAdded)
               {
                  if(mLevelMain.objects.mMightyEagleHasTouchedGround && mLevelMain.objects.mMightyEagleTimer > 5500)
                  {
                     this.§2t§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(mLevelMain.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§3!W§ = §]!U§;
                  }
               }
               else if(!mLevelMain.objects.mSardineCanAdded)
               {
                  this.§2t§(§'k§);
               }
            }
            if(this.§@V§(false))
            {
               mLevelMain.gameOver();
            }
         }
         this.§9!&§ -= param1;
         if(this.§9!&§ < 0)
         {
            this.§9!&§ = 0;
         }
         if(this.§"§ == §;!<§)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §-E§.§;!S§)
            {
               this.changeGameState(§!v§);
            }
         }
         else if(this.§"§ == §2k§)
         {
            if(this.§9!&§ <= 0)
            {
               _loc3_ = mLevelMain.objects.hasBirds();
               if(_loc3_ && this.§0!N§ > 0)
               {
                  this.§9!&§ = 2000;
                  this.§3!W§ = 0;
                  this.§0!N§ = this.§0!N§ - 1;
               }
               else if(!§2M§.§1?§.objects.mMightyEagleAdded)
               {
                  this.changeGameState(§!v§);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §-E§.§;!S§)
            {
               this.changeGameState(§!v§);
            }
         }
         else if(this.§"§ == §,c§)
         {
            if(this.§9!&§ <= 0)
            {
               this.changeGameState(§!v§);
            }
         }
         else if(this.§"§ == §!v§)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != §-E§.§;!S§)
            {
               this.changeGameState(§;!<§);
            }
         }
         else if(this.§"§ == §>W§)
         {
            if(!(_loc4_ = mLevelMain.activeObject) || _loc4_.§4!6§ < _loc4_.§%!^§)
            {
               if(_loc4_)
               {
                  _loc5_ = _loc4_ is §#!o§;
                  _loc6_ = _loc4_ is §!!C§;
                  _loc7_ = (_loc4_ as §@!K§).§8![§;
                  if(_loc5_ || _loc6_)
                  {
                     if(!_loc7_ || _loc4_.getSpecialAnimationProgress() >= 0 && _loc5_)
                     {
                        §]![§(true);
                        this.changeGameState(§2k§);
                     }
                  }
               }
               mLevelMain.activeObject = null;
               this.changeGameState(§2k§);
            }
         }
         else if(this.§"§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§9!&§ <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.§9!&§ = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §2t§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§;v§)
         {
            this.§;v§ = true;
         }
         if(new Date().time - mLevelMain.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(mLevelMain.slingshot.mDragging)
         {
            return;
         }
         if(mLevelMain.objects.isWorldAtSleep())
         {
            this.§"!h§ = Math.min(this.§"!h§,3500);
         }
         if(this.§"!h§ <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function §@V§(param1:Boolean = false) : Boolean
      {
         return (this.§"§ == LEVEL_STATE_VICTORY2_END || this.§"§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§"§ == §'k§) && (!param1 || this.§9!&§ <= 0 && this.§"§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §-p§() : Boolean
      {
         return this.§"§ == LEVEL_STATE_VICTORY2_END || this.§"§ == §'k§;
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
         if(!this.§%P§ || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(!(mLevelMain.slingshot.mDragging || mLevelMain.camera.mDragging))
         {
            if(this.§"§ == §2k§ || this.§"§ == §;!<§ || this.§"§ == §!v§)
            {
               if(!mLevelMain.isPlayingReplay())
               {
                  mLevelMain.camera.adjustManualScale(param1,param2 == 0 ? Number(§-E§.§ try§) : Number(param2));
               }
               else
               {
                  mLevelMain.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §^-§(param1:int) : void
      {
         this.§,!b§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§%P§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §,K§.§0>§();
         if(this.§@V§(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            if(mLevelMain.activeObject && this.§"§ == §>W§ || §^!n§)
            {
               §]![§(false);
               mLevelMain.activatePowerup();
               return;
            }
            _loc4_ = mLevelMain.screenToBox2D(param1,param2);
            if(mLevelMain.slingshot.canStartDragging(_loc4_))
            {
               mLevelMain.slingshot.startDragging();
               this.changeGameState(§!v§);
            }
            else
            {
               mLevelMain.camera.startDragging(param1,param2);
            }
            return;
         }
         mLevelMain.camera.startDragging(param1,param2);
         mLevelMain.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§%P§)
         {
            return;
         }
         §,K§.§`&§();
         if(this.§"§ == §,c§)
         {
            this.changeGameState(§!v§);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(mLevelMain.slingshot.canShootTheBird())
            {
               mLevelMain.slingshot.shoot();
               this.changeGameState(§>W§);
            }
            else
            {
               mLevelMain.slingshot.cancelDragging();
            }
         }
         if(mLevelMain.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               mLevelMain.camera.dragToNewPoint(param1,param2);
            }
            mLevelMain.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§%P§)
         {
            return;
         }
         if(mLevelMain.slingshot.mDragging)
         {
            _loc3_ = mLevelMain.screenToBox2D(param1,param2);
            mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(mLevelMain.camera.mDragging)
         {
            mLevelMain.camera.dragToNewPoint(param1,param2);
         }
         this.§+c§ = param1;
         this.§&!$§ = param2;
      }
      
      public function §5!C§() : Point
      {
         return new Point(this.§+c§,this.§&!$§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§20§.§ !b§(this.§20§.getValue() + param1);
         this.§2;§(§]^§);
         if(this.§"§ == §2k§)
         {
            this.§9!&§ = 2000;
            this.§0!N§ = §4d§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§20§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§2M§.§1?§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §;_§.§`!,§(§;_§.§2!Q§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§%P§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§%P§ = param1;
      }
   }
}

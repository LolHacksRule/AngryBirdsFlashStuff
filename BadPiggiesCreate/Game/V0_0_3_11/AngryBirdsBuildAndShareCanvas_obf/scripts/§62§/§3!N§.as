package §62§
{
   import § ""§.§%,§;
   import § ""§.§0"2§;
   import § ""§.§2!u§;
   import §'x§.§?z§;
   import §+%§.§+"%§;
   import §1!v§.§>"!§;
   import §1!v§.§@%§;
   import §1"3§.§`"0§;
   import §2i§.§%!+§;
   import §;X§.§ "2§;
   import §?!k§.§0!t§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §3!N§ extends §7! §
   {
      
      public static const §?" §:int = 0;
      
      public static const §<!>§:int = 1;
      
      public static const §#!!§:int = 2;
      
      public static const §>y§:int = 3;
      
      public static const §2`§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §!!k§:int = 7;
      
      protected static const §;!#§:Number = §`"0§.MANUAL_SCALE_STEP / 100;
      
      public static const §,l§:Number = 2000;
      
      public static const §^!d§:Number = 2500;
      
      public static const §+"0§:int = 5;
       
      
      public var §3!b§:int = 0;
      
      protected var §0!K§:int = 0;
      
      public var §!!N§:Number;
      
      protected var §get §:Number = 0;
      
      protected var §-!o§:Boolean = false;
      
      private var §>"2§:Number = 0;
      
      public var §<9§:Number = 0;
      
      protected var §8!!§:Boolean;
      
      protected var §'!s§:Number = 0;
      
      protected var §'"6§:Number = 0;
      
      protected var §]I§:Boolean = true;
      
      protected var §!!F§:§%!+§;
      
      public function §3!N§(param1:§@%§)
      {
         this.§!!F§ = new §%!+§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!!F§.§`H§(0);
         this.§3!b§ = -1;
         this.§0!K§ = 0;
         this.§get § = 0;
         this.§-!o§ = false;
         this.§'!l§(§?" §);
         this.§!!N§ = §,l§;
         §%5§(true);
         §]Z§.objects.setDamageEnabled(true);
         §]Z§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §]Z§.update(param1,true);
         this.§8!3§(param1);
         this.§>!K§(param1);
      }
      
      private function §8!3§(param1:int) : void
      {
         if(this.§0!K§ != 0)
         {
            §]Z§.camera.adjustManualScale(this.§0!K§ > 0,param1 * §;!#§);
         }
      }
      
      public function clearLevel() : void
      {
         §]Z§.clearLevel();
         removeEventListeners();
         this.§3!b§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §9"3§() : Boolean
      {
         if(§]Z§.camera.mCurrentCameraSliderLocation < §`"0§.§%"3§)
         {
            return false;
         }
         if(!§]Z§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §6N§(param1:int) : void
      {
         var _loc2_:§`"0§ = §]Z§.camera;
         if(_loc2_.§9!e§ > 0)
         {
            _loc2_.§9!e§ -= param1;
            if(_loc2_.§9!e§ <= 0)
            {
               if(this.§9"3§())
               {
                  _loc2_.§9!e§ = -1;
                  if(§]Z§.slingshot.birdsAvailable)
                  {
                     _loc2_.§@!s§();
                  }
               }
               else
               {
                  _loc2_.§9!e§ = §`"0§.§1s§ / 2;
               }
            }
         }
      }
      
      public function §'!l§(param1:int, param2:Boolean = false) : void
      {
         if(this.§5T§(false) && !param2)
         {
            return;
         }
         if(param1 == §?" §)
         {
            this.§<9§ = 2000;
         }
         else if(param1 == §<!>§)
         {
            §]Z§.camera.goToBirdView();
         }
         else if(param1 == §#!!§)
         {
            this.§8!!§ = false;
            this.§<9§ = 5000;
            §]Z§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §>y§)
         {
            §]Z§.camera.goToCastleView();
         }
         else if(param1 == §2`§)
         {
            this.§<9§ = 2000;
            this.§>"2§ = §+"0§;
            §]Z§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§<9§ = 1200;
            if(!§]Z§.objects.mMightyEagleAdded)
            {
               §]Z§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§<9§ = 1200;
            if(!§]Z§.objects.mMightyEagleAdded)
            {
               §]Z§.camera.goToBirdView();
               §]Z§.slingshot.makeBirdsJumpForJoy();
            }
            §0!t§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §!!k§)
         {
            §0!t§.§,!S§();
            §0!t§.playSound("LevelFailedPigs1");
            this.§<9§ = 1200;
            §]Z§.camera.goToCastleView();
            §]Z§.objects.makePigsSmile(5);
         }
         this.§3!b§ = param1;
      }
      
      public function §0!i§(param1:Number) : void
      {
         this.§get § = Math.max(this.§get §,param1);
      }
      
      protected function §#I§() : Boolean
      {
         return §]Z§.slingshot.mSlingShotState == §>"!§.§9!o§ && !§]Z§.objects.hasBirds();
      }
      
      public function §>!K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§%,§ = null;
         this.§!!N§ -= param1;
         if(this.§-!o§)
         {
            this.§get § -= param1;
            if(this.§get § < 0)
            {
               this.§!!N§ = 0;
            }
         }
         if(this.§!!N§ <= 0 && !this.§5T§(false))
         {
            this.§!!N§ = §,l§;
            _loc2_ = §]Z§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§-!o§ || this.§get § > 0))
            {
               if((!this.§-!o§ || this.§get § > 6000) && !§]Z§.objects.isPigsAlive())
               {
                  this.§get § = 6000;
                  this.§-!o§ = true;
               }
               else if(!this.§-!o§ && this.§#I§())
               {
                  this.§get § = 15000;
                  this.§-!o§ = true;
               }
            }
            else if(!§]Z§.objects.isPigsAlive() && !§]Z§.objects.mSardineCanAdded && !§]Z§.objects.mMightyEagleAdded)
            {
               this.§5>§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§#I§())
            {
               if(§]Z§.objects.mMightyEagleAdded)
               {
                  if(§]Z§.objects.mMightyEagleHasTouchedGround && §]Z§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§5>§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§]Z§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§!!N§ = §,l§;
                  }
               }
               else if(!§]Z§.objects.mSardineCanAdded)
               {
                  this.§5>§(§!!k§);
               }
            }
            if(this.§5T§(false))
            {
               §]Z§.gameOver();
            }
         }
         this.§<9§ -= param1;
         if(this.§<9§ < 0)
         {
            this.§<9§ = 0;
         }
         if(this.§3!b§ == §>y§)
         {
            §]Z§.updatePigAnimations(param1);
            if(!§]Z§.camera.isOnCastleView() && §]Z§.camera.mCurrentAction != §`"0§.§1a§)
            {
               this.§'!l§(§<!>§);
            }
         }
         else if(this.§3!b§ == §2`§)
         {
            if(this.§<9§ <= 0)
            {
               _loc3_ = §]Z§.objects.hasBirds();
               if(_loc3_ && this.§>"2§ > 0)
               {
                  this.§<9§ = 2000;
                  this.§!!N§ = 0;
                  this.§>"2§ = this.§>"2§ - 1;
               }
               else if(!§?z§.§=7§.objects.mMightyEagleAdded)
               {
                  this.§'!l§(§<!>§);
               }
            }
            else
            {
               §]Z§.updatePigAnimations(param1);
            }
            if(!§]Z§.camera.isOnCastleView() && §]Z§.camera.mCurrentAction != §`"0§.§1a§)
            {
               this.§'!l§(§<!>§);
            }
         }
         else if(this.§3!b§ == §?" §)
         {
            if(this.§<9§ <= 0)
            {
               this.§'!l§(§<!>§);
            }
         }
         else if(this.§3!b§ == §<!>§)
         {
            if(§]Z§.camera.isOnCastleView() && §]Z§.camera.mCurrentAction != §`"0§.§1a§)
            {
               this.§'!l§(§>y§);
            }
         }
         else if(this.§3!b§ == §#!!§)
         {
            if(!(_loc4_ = §]Z§.activeObject) || _loc4_.§=!,§ < _loc4_.§,!f§)
            {
               if(_loc4_ && _loc4_ is §2!u§ && (!(_loc4_ as §0"2§).§>!d§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§8!!§ = true;
                  this.§'!l§(§2`§);
               }
               §]Z§.activeObject = null;
               this.§'!l§(§2`§);
            }
         }
         else if(this.§3!b§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§<9§ <= 0)
            {
               if(§]Z§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§<9§ = 1000;
               }
               else
               {
                  this.§'!l§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §5>§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§-!o§)
         {
            this.§-!o§ = true;
         }
         if(new Date().time - §]Z§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§]Z§.slingshot.mDragging)
         {
            return;
         }
         if(§]Z§.objects.isWorldAtSleep())
         {
            this.§get § = Math.min(this.§get §,3500);
         }
         if(this.§get § <= 0)
         {
            this.§'!l§(param1,param2);
         }
      }
      
      public function §5T§(param1:Boolean = false) : Boolean
      {
         return (this.§3!b§ == LEVEL_STATE_VICTORY2_END || this.§3!b§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§3!b§ == §!!k§) && (!param1 || this.§<9§ <= 0 && this.§3!b§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §!o§() : Boolean
      {
         return this.§3!b§ == LEVEL_STATE_VICTORY2_END || this.§3!b§ == §!!k§;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.§@!x§(param1.delta > 0);
         }
      }
      
      public function §@!x§(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.§]I§ || !§]Z§.mReadyToRun)
         {
            return;
         }
         if(!(§]Z§.slingshot.mDragging || §]Z§.camera.mDragging))
         {
            if(this.§3!b§ == §2`§ || this.§3!b§ == §>y§ || this.§3!b§ == §<!>§)
            {
               if(!§]Z§.isPlayingReplay())
               {
                  §]Z§.camera.adjustManualScale(param1,param2 == 0 ? Number(§`"0§.MANUAL_SCALE_STEP) : Number(param2));
               }
               else
               {
                  §]Z§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §5e§(param1:int) : void
      {
         this.§0!K§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§]I§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         § "2§.§=i§();
         if(this.§5T§(false))
         {
            return;
         }
         if(!§]Z§.isPlayingReplay())
         {
            if(§]Z§.activeObject && this.§3!b§ == §#!!§ || this.§8!!§)
            {
               this.§8!!§ = false;
               §]Z§.activatePowerup();
               return;
            }
            _loc4_ = §]Z§.screenToBox2D(param1,param2);
            if(§]Z§.slingshot.canStartDragging(_loc4_))
            {
               §]Z§.slingshot.startDragging();
               this.§'!l§(§<!>§);
            }
            else
            {
               §]Z§.camera.startDragging(param1,param2);
            }
            return;
         }
         §]Z§.camera.startDragging(param1,param2);
         §]Z§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§]I§)
         {
            return;
         }
         § "2§.§'9§();
         if(this.§3!b§ == §?" §)
         {
            this.§'!l§(§<!>§);
         }
         if(§]Z§.slingshot.mDragging)
         {
            _loc3_ = §]Z§.screenToBox2D(param1,param2);
            §]Z§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§]Z§.slingshot.canShootTheBird())
            {
               §]Z§.slingshot.shoot();
               this.§'!l§(§#!!§);
            }
            else
            {
               §]Z§.slingshot.cancelDragging();
            }
         }
         if(§]Z§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §]Z§.camera.dragToNewPoint(param1,param2);
            }
            §]Z§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§]I§)
         {
            return;
         }
         if(§]Z§.slingshot.mDragging)
         {
            _loc3_ = §]Z§.screenToBox2D(param1,param2);
            §]Z§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§]Z§.camera.mDragging)
         {
            §]Z§.camera.dragToNewPoint(param1,param2);
         }
         this.§'!s§ = param1;
         this.§'"6§ = param2;
      }
      
      public function §?!6§() : Point
      {
         return new Point(this.§'!s§,this.§'"6§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§!!F§.§`H§(this.§!!F§.getValue() + param1);
         this.§0!i§(§^!d§);
         if(this.§3!b§ == §2`§)
         {
            this.§<9§ = 2000;
            this.§>"2§ = §+"0§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§!!F§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§?z§.§=7§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §+"%§.§,>§(§+"%§.§9!'§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§]I§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§]I§ = param1;
      }
   }
}

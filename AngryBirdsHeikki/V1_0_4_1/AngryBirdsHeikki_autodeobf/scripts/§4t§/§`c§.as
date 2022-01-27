package §4t§
{
   import §%!$§.§;!U§;
   import §,J§.§7!A§;
   import §-!1§.§=!_§;
   import §4!9§.§5O§;
   import §7h§.§7!"§;
   import §?!P§.§@@§;
   import §^!7§.§]H§;
   import §^!7§.§^A§;
   import §`!X§.§5&§;
   import §`!X§.§>K§;
   import §`!X§.§]!<§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §`c§ extends §;h§
   {
      
      public static const §86§:int = 0;
      
      public static const §]W§:int = 1;
      
      public static const §+!]§:int = 2;
      
      public static const §%3§:int = 3;
      
      public static const §,e§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §;M§:int = 7;
      
      protected static const §?!#§:Number = §=!_§.§9V§ / 100;
      
      public static const §,D§:Number = 2000;
      
      public static const §"3§:Number = 2500;
      
      public static const §<h§:int = 5;
       
      
      public var §"!>§:int = 0;
      
      protected var §"!#§:int = 0;
      
      public var §@B§:Number;
      
      protected var §#]§:Number = 0;
      
      protected var §<!3§:Boolean = false;
      
      private var §^!T§:Number = 0;
      
      public var §7?§:Number = 0;
      
      protected var §4!X§:Boolean;
      
      protected var §95§:Number = 0;
      
      protected var §!t§:Number = 0;
      
      protected var §;s§:Boolean = true;
      
      protected var §+J§:§5O§;
      
      public function §`c§(param1:§^A§)
      {
         this.§+J§ = new §5O§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§+J§.§4C§(0);
         this.§"!>§ = -1;
         this.§"!#§ = 0;
         this.§#]§ = 0;
         this.§<!3§ = false;
         this.§>U§(§86§);
         this.§@B§ = §,D§;
         §4i§(true);
         §<&§.objects.setDamageEnabled(true);
         §<&§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §<&§.update(param1,true);
         this.§5!'§(param1);
         this.§?+§(param1);
      }
      
      private function §5!'§(param1:int) : void
      {
         if(this.§"!#§ != 0)
         {
            §<&§.camera.adjustManualScale(this.§"!#§ > 0,param1 * §?!#§);
         }
      }
      
      public function clearLevel() : void
      {
         §<&§.clearLevel();
         removeEventListeners();
         this.§"!>§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §-!<§() : Boolean
      {
         if(§<&§.camera.mCurrentCameraSliderLocation < §=!_§.§?8§)
         {
            return false;
         }
         if(!§<&§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §=!a§(param1:int) : void
      {
         var _loc2_:§=!_§ = §<&§.camera;
         if(_loc2_.§;Y§ > 0)
         {
            _loc2_.§;Y§ -= param1;
            if(_loc2_.§;Y§ <= 0)
            {
               if(this.§-!<§())
               {
                  _loc2_.§;Y§ = -1;
                  if(§<&§.slingshot.birdsAvailable)
                  {
                     _loc2_.§,!&§();
                  }
               }
               else
               {
                  _loc2_.§;Y§ = §=!_§.§;[§ / 2;
               }
            }
         }
      }
      
      public function §>U§(param1:int, param2:Boolean = false) : void
      {
         if(this.§]!D§(false) && !param2)
         {
            return;
         }
         if(param1 == §86§)
         {
            this.§7?§ = 2000;
         }
         else if(param1 == §]W§)
         {
            §<&§.camera.goToBirdView();
         }
         else if(param1 == §+!]§)
         {
            this.§4!X§ = false;
            this.§7?§ = 5000;
            §<&§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §%3§)
         {
            §<&§.camera.goToCastleView();
         }
         else if(param1 == §,e§)
         {
            this.§7?§ = 2000;
            this.§^!T§ = §<h§;
            §<&§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§7?§ = 1200;
            if(!§<&§.objects.mMightyEagleAdded)
            {
               §<&§.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§7?§ = 1200;
            if(!§<&§.objects.mMightyEagleAdded)
            {
               §<&§.camera.goToBirdView();
               §<&§.slingshot.makeBirdsJumpForJoy();
            }
            §7!"§.§#W§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §;M§)
         {
            §7!"§.§9!0§();
            §7!"§.§#W§("LevelFailedPigs1");
            this.§7?§ = 1200;
            §<&§.camera.goToCastleView();
            §<&§.objects.makePigsSmile(5);
         }
         this.§"!>§ = param1;
      }
      
      public function §32§(param1:Number) : void
      {
         this.§#]§ = Math.max(this.§#]§,param1);
      }
      
      protected function §3@§() : Boolean
      {
         return §<&§.slingshot.mSlingShotState == §]H§.§+;§ && !§<&§.objects.hasBirds();
      }
      
      public function §?+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§5&§ = null;
         this.§@B§ -= param1;
         if(this.§<!3§)
         {
            this.§#]§ -= param1;
            if(this.§#]§ < 0)
            {
               this.§@B§ = 0;
            }
         }
         if(this.§@B§ <= 0 && !this.§]!D§(false))
         {
            this.§@B§ = §,D§;
            _loc2_ = §<&§.objects.isWorldAtSleep();
            if(!_loc2_ && (!this.§<!3§ || this.§#]§ > 0))
            {
               if((!this.§<!3§ || this.§#]§ > 6000) && !§<&§.objects.isPigsAlive())
               {
                  this.§#]§ = 6000;
                  this.§<!3§ = true;
               }
               else if(!this.§<!3§ && this.§3@§())
               {
                  this.§#]§ = 15000;
                  this.§<!3§ = true;
               }
            }
            else if(!§<&§.objects.isPigsAlive() && !§<&§.objects.mSardineCanAdded && !§<&§.objects.mMightyEagleAdded)
            {
               this.§&!b§(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.§3@§())
            {
               if(§<&§.objects.mMightyEagleAdded)
               {
                  if(§<&§.objects.mMightyEagleHasTouchedGround && §<&§.objects.mMightyEagleTimer > 5500)
                  {
                     this.§&!b§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(§<&§.objects.mMightyEagleHasTouchedGround)
                  {
                     this.§@B§ = §,D§;
                  }
               }
               else if(!§<&§.objects.mSardineCanAdded)
               {
                  this.§&!b§(§;M§);
               }
            }
            if(this.§]!D§(false))
            {
               §<&§.gameOver();
            }
         }
         this.§7?§ -= param1;
         if(this.§7?§ < 0)
         {
            this.§7?§ = 0;
         }
         if(this.§"!>§ == §%3§)
         {
            §<&§.updatePigAnimations(param1);
            if(!§<&§.camera.isOnCastleView() && §<&§.camera.mCurrentAction != §=!_§.§>§)
            {
               this.§>U§(§]W§);
            }
         }
         else if(this.§"!>§ == §,e§)
         {
            if(this.§7?§ <= 0)
            {
               _loc3_ = §<&§.objects.hasBirds();
               if(_loc3_ && this.§^!T§ > 0)
               {
                  this.§7?§ = 2000;
                  this.§@B§ = 0;
                  this.§^!T§ = this.§^!T§ - 1;
               }
               else if(!§@@§.§ !8§.objects.mMightyEagleAdded)
               {
                  this.§>U§(§]W§);
               }
            }
            else
            {
               §<&§.updatePigAnimations(param1);
            }
            if(!§<&§.camera.isOnCastleView() && §<&§.camera.mCurrentAction != §=!_§.§>§)
            {
               this.§>U§(§]W§);
            }
         }
         else if(this.§"!>§ == §86§)
         {
            if(this.§7?§ <= 0)
            {
               this.§>U§(§]W§);
            }
         }
         else if(this.§"!>§ == §]W§)
         {
            if(§<&§.camera.isOnCastleView() && §<&§.camera.mCurrentAction != §=!_§.§>§)
            {
               this.§>U§(§%3§);
            }
         }
         else if(this.§"!>§ == §+!]§)
         {
            if(!(_loc4_ = §<&§.activeObject) || _loc4_.§^o§ < _loc4_.§'!M§)
            {
               if(_loc4_ && _loc4_ is §]!<§ && (!(_loc4_ as §>K§).§'!8§ || _loc4_.getSpecialAnimationProgress() >= 0))
               {
                  this.§4!X§ = true;
                  this.§>U§(§,e§);
               }
               §<&§.activeObject = null;
               this.§>U§(§,e§);
            }
         }
         else if(this.§"!>§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§7?§ <= 0)
            {
               if(§<&§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§7?§ = 1000;
               }
               else
               {
                  this.§>U§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function §&!b§(param1:int, param2:Boolean = false) : void
      {
         if(!this.§<!3§)
         {
            this.§<!3§ = true;
         }
         if(new Date().time - §<&§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§<&§.slingshot.mDragging)
         {
            return;
         }
         if(§<&§.objects.isWorldAtSleep())
         {
            this.§#]§ = Math.min(this.§#]§,3500);
         }
         if(this.§#]§ <= 0)
         {
            this.§>U§(param1,param2);
         }
      }
      
      public function §]!D§(param1:Boolean = false) : Boolean
      {
         return (this.§"!>§ == LEVEL_STATE_VICTORY2_END || this.§"!>§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§"!>§ == §;M§) && (!param1 || this.§7?§ <= 0 && this.§"!>§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §>!!§() : Boolean
      {
         return this.§"!>§ == LEVEL_STATE_VICTORY2_END || this.§"!>§ == §;M§;
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
         if(!this.§;s§ || !§<&§.mReadyToRun)
         {
            return;
         }
         if(!(§<&§.slingshot.mDragging || §<&§.camera.mDragging))
         {
            if(this.§"!>§ == §,e§ || this.§"!>§ == §%3§ || this.§"!>§ == §]W§)
            {
               if(!§<&§.isPlayingReplay())
               {
                  §<&§.camera.adjustManualScale(param1);
               }
               else
               {
                  §<&§.changeReplaySpeed(param1);
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §#!?§(param1:int) : void
      {
         this.§"!#§ = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Point = null;
         if(!this.§;s§)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         §;!U§.§0!F§();
         if(this.§]!D§(false))
         {
            return;
         }
         if(!§<&§.isPlayingReplay())
         {
            if(§<&§.activeObject && this.§"!>§ == §+!]§ || this.§4!X§)
            {
               this.§4!X§ = false;
               §<&§.activatePowerup();
               return;
            }
            _loc4_ = §<&§.screenToBox2D(param1,param2);
            if(§<&§.slingshot.canStartDragging(_loc4_))
            {
               §<&§.slingshot.startDragging();
               this.§>U§(§]W§);
            }
            else
            {
               §<&§.camera.startDragging(param1,param2);
            }
            return;
         }
         §<&§.camera.startDragging(param1,param2);
         §<&§.resetReplaySpeed();
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§;s§)
         {
            return;
         }
         §;!U§.§45§();
         if(this.§"!>§ == §86§)
         {
            this.§>U§(§]W§);
         }
         if(§<&§.slingshot.mDragging)
         {
            _loc3_ = §<&§.screenToBox2D(param1,param2);
            §<&§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§<&§.slingshot.canShootTheBird())
            {
               §<&§.slingshot.shoot();
               this.§>U§(§+!]§);
            }
            else
            {
               §<&§.slingshot.cancelDragging();
            }
         }
         if(§<&§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §<&§.camera.dragToNewPoint(param1,param2);
            }
            §<&§.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§;s§)
         {
            return;
         }
         if(§<&§.slingshot.mDragging)
         {
            _loc3_ = §<&§.screenToBox2D(param1,param2);
            §<&§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§<&§.camera.mDragging)
         {
            §<&§.camera.dragToNewPoint(param1,param2);
         }
         this.§95§ = param1;
         this.§!t§ = param2;
      }
      
      public function §0,§() : Point
      {
         return new Point(this.§95§,this.§!t§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§+J§.§4C§(this.§+J§.getValue() + param1);
         this.§32§(§"3§);
         if(this.§"!>§ == §,e§)
         {
            this.§7?§ = 2000;
            this.§^!T§ = §<h§;
         }
      }
      
      override public function getScore() : int
      {
         return this.§+J§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!§@@§.§ !8§.objects.mMightyEagleAdded)
         {
            return 0;
         }
         var _loc1_:Number = §7!A§.§5!O§(§7!A§.§ !A§).getEagleScore();
         var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§;s§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§;s§ = param1;
      }
   }
}

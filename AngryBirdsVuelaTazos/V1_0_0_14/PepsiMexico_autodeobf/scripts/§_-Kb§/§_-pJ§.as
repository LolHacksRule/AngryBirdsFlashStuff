package §_-Kb§
{
   import §_-5Y§.§_-GA§;
   import §_-5Y§.§_-vn§;
   import §_-5Y§.§_-yw§;
   import §_-6n§.§_-5z§;
   import §_-Eo§.§_-Wt§;
   import §_-mc§.§_-TP§;
   import §_-mj§.§_-8x§;
   import §_-mj§.§_-GI§;
   import §_-mj§.§_-ab§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-pJ§ extends §_-e§
   {
      
      public static const §_-69§:int = 0;
      
      public static const §_-vc§:int = 1;
      
      public static const §_-p6§:int = 2;
      
      public static const §_-vD§:int = 3;
      
      public static const §_-wm§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-ss§:int = 7;
      
      public static const §_-vL§:Number = 2000;
       
      
      public var §_-oi§:int = 0;
      
      public var §_-r2§:Number;
      
      public var §_-bT§:Number = 0;
      
      private var §_-lM§:Boolean;
      
      private var §_-CS§:Number = 0;
      
      private var §_-Bn§:Number = 0;
      
      protected var §_-W4§:Boolean = true;
      
      protected var §_-Df§:§_-TP§;
      
      public function §_-pJ§(param1:§_-yw§)
      {
         this.§_-Df§ = new §_-TP§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-Df§.§_-ws§(0);
         this.§_-oi§ = -1;
         this.§_-jC§(§_-69§);
         this.§_-r2§ = §_-vL§;
         §_-oz§(true);
         §_-Fx§.objects.setDamageEnabled(true);
         §_-Fx§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §_-Fx§.update(param1,true);
         this.§_-h1§(param1);
      }
      
      public function clearLevel() : void
      {
         §_-Fx§.clearLevel();
         removeEventListeners();
         this.§_-oi§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-Cm§() : Boolean
      {
         if(§_-Fx§.camera.mCurrentCameraSliderLocation < §_-vn§.§_-pN§)
         {
            return false;
         }
         if(!§_-Fx§.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-lH§(param1:int) : void
      {
         var _loc2_:§_-vn§ = §_-Fx§.camera;
         if(_loc2_.§_-Qz§ > 0)
         {
            _loc2_.§_-Qz§ -= param1;
            if(_loc2_.§_-Qz§ <= 0)
            {
               if(this.§_-Cm§())
               {
                  _loc2_.§_-Qz§ = -1;
                  if(§_-Fx§.slingshot.birdsAvailable)
                  {
                     _loc2_.§_-o§();
                  }
               }
               else
               {
                  _loc2_.§_-Qz§ = §_-vn§.§_-wN§ / 2;
               }
            }
         }
      }
      
      public function §_-jC§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-9L§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-69§)
         {
            this.§_-bT§ = 2000;
         }
         else if(param1 == §_-vc§)
         {
            §_-Fx§.camera.goToBirdView();
         }
         else if(param1 == §_-p6§)
         {
            this.§_-lM§ = false;
            this.§_-bT§ = 5000;
            §_-Fx§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-vD§)
         {
            §_-Fx§.camera.goToCastleView();
         }
         else if(param1 == §_-wm§)
         {
            this.§_-bT§ = 2000;
            §_-Fx§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-bT§ = 1200;
            §_-Fx§.camera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-bT§ = 1200;
            §_-Fx§.camera.goToBirdView();
            §_-Fx§.slingshot.makeBirdsJumpForJoy();
            §_-5z§.§_-rp§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-ss§)
         {
            §_-5z§.§_-i-§();
            §_-5z§.§_-rp§("LevelFailedPigs1");
            this.§_-bT§ = 1200;
            §_-Fx§.camera.goToCastleView();
            §_-Fx§.objects.makePigsSmile(5);
         }
         this.§_-oi§ = param1;
      }
      
      public function §_-h1§(param1:Number) : void
      {
         var _loc2_:§_-GI§ = null;
         this.§_-r2§ -= param1;
         if(this.§_-r2§ <= 0 && !this.§_-9L§(false))
         {
            this.§_-r2§ = §_-vL§;
            if(§_-Fx§.objects.isWorldAtSleep())
            {
               if(!§_-Fx§.objects.isPigsAlive() && !§_-Fx§.objects.mSardineCanAdded)
               {
                  this.§_-jC§(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
               else if(§_-Fx§.slingshot.mSlingShotState == §_-GA§.§_-Dn§)
               {
                  if(§_-Fx§.objects.mMightyEagleAdded)
                  {
                     if(§_-Fx§.objects.mMightyEagleHasTouchedGround && §_-Fx§.objects.mMightyEagleTimer > 5500)
                     {
                        this.§_-jC§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                     }
                     else if(§_-Fx§.objects.mMightyEagleHasTouchedGround)
                     {
                        this.§_-r2§ = §_-vL§;
                     }
                  }
                  else
                  {
                     this.§_-jC§(§_-ss§);
                  }
               }
            }
            if(this.§_-9L§(false))
            {
               §_-Fx§.gameOver();
            }
         }
         this.§_-bT§ -= param1;
         if(this.§_-bT§ < 0)
         {
            this.§_-bT§ = 0;
         }
         if(this.§_-oi§ == §_-vD§)
         {
            §_-Fx§.updatePigAnimations(param1);
            if(!§_-Fx§.camera.isOnCastleView() && §_-Fx§.camera.mCurrentAction != §_-vn§.§_-I7§)
            {
               this.§_-jC§(§_-vc§);
            }
         }
         else if(this.§_-oi§ == §_-wm§)
         {
            if(this.§_-bT§ <= 0)
            {
               if(§_-Fx§.objects.isWorldAtSleep())
               {
                  this.§_-jC§(§_-vc§);
               }
               else
               {
                  this.§_-r2§ = 0;
                  this.§_-bT§ = 2000;
               }
            }
            else
            {
               §_-Fx§.updatePigAnimations(param1);
            }
            if(!§_-Fx§.camera.isOnCastleView() && §_-Fx§.camera.mCurrentAction != §_-vn§.§_-I7§)
            {
               this.§_-jC§(§_-vc§);
            }
         }
         else if(this.§_-oi§ == §_-69§)
         {
            if(this.§_-bT§ <= 0)
            {
               this.§_-jC§(§_-vc§);
            }
         }
         else if(this.§_-oi§ == §_-vc§)
         {
            if(§_-Fx§.camera.isOnCastleView() && §_-Fx§.camera.mCurrentAction != §_-vn§.§_-I7§)
            {
               this.§_-jC§(§_-vD§);
            }
         }
         else if(this.§_-oi§ == §_-p6§)
         {
            _loc2_ = §_-Fx§.activeObject;
            if(!_loc2_ || _loc2_.§_-QY§ < _loc2_.§_-t6§)
            {
               if(_loc2_ && _loc2_ is §_-ab§ && (!(_loc2_ as §_-8x§).§_-zd§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  this.§_-lM§ = true;
                  this.§_-jC§(§_-wm§);
               }
               §_-Fx§.activeObject = null;
               this.§_-jC§(§_-wm§);
            }
         }
         else if(this.§_-oi§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-bT§ <= 0)
            {
               if(§_-Fx§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-bT§ = 1000;
               }
               else
               {
                  this.§_-jC§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-9L§(param1:Boolean = false) : Boolean
      {
         return (this.§_-oi§ == LEVEL_STATE_VICTORY2_END || this.§_-oi§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-oi§ == §_-ss§) && (!param1 || this.§_-bT§ <= 0 && this.§_-oi§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-Kq§() : Boolean
      {
         return this.§_-oi§ == LEVEL_STATE_VICTORY2_END || this.§_-oi§ == §_-ss§;
      }
      
      override public function onMouseWheel(param1:MouseEvent) : void
      {
         if(!this.§_-W4§)
         {
            return;
         }
         if(!(§_-Fx§.slingshot.mDragging || §_-Fx§.camera.mDragging))
         {
            if(this.§_-oi§ == §_-wm§ || this.§_-oi§ == §_-vD§ || this.§_-oi§ == §_-vc§)
            {
               if(param1.delta != 0)
               {
                  if(!§_-Fx§.isPlayingReplay())
                  {
                     §_-Fx§.camera.adjustManualScale(param1.delta > 0);
                  }
                  else
                  {
                     §_-Fx§.changeReplaySpeed(param1.delta > 0);
                  }
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      override public function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-W4§)
         {
            return;
         }
         §_-Wt§.§_-5t§();
         if(this.§_-9L§(false))
         {
            return;
         }
         if(!§_-Fx§.isPlayingReplay())
         {
            if(§_-Fx§.activeObject && this.§_-oi§ == §_-p6§ || this.§_-lM§)
            {
               this.§_-lM§ = false;
               §_-Fx§.activatePowerup();
               return;
            }
            _loc3_ = §_-Fx§.screenToBox2D(param1,param2);
            if(§_-Fx§.slingshot.canStartDragging(_loc3_))
            {
               §_-Fx§.slingshot.startDragging();
               this.§_-jC§(§_-vc§);
            }
            else
            {
               §_-Fx§.camera.startDragging(param1,param2);
            }
            return;
         }
         §_-Fx§.camera.startDragging(param1,param2);
         §_-Fx§.resetReplaySpeed();
      }
      
      private function §_-ts§(param1:MouseEvent) : void
      {
         this.handleMouseDown(param1.stageX,param1.stageY);
      }
      
      public function §_-eD§(param1:Event) : void
      {
         §_-Wt§.§_-vF§();
      }
      
      public function §_-GW§(param1:MouseEvent) : void
      {
         this.handleMouseUp(NaN,NaN);
         §_-Wt§.§_-xR§();
      }
      
      override public function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-W4§)
         {
            return;
         }
         §_-Wt§.§_-Wa§();
         if(§_-Fx§.slingshot.mDragging)
         {
            _loc3_ = §_-Fx§.screenToBox2D(param1,param2);
            §_-Fx§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§_-Fx§.slingshot.canShootTheBird())
            {
               §_-Fx§.slingshot.shoot();
               this.§_-jC§(§_-p6§);
            }
            else
            {
               §_-Fx§.slingshot.cancelDragging();
            }
         }
         if(§_-Fx§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-Fx§.camera.dragToNewPoint(param1,param2);
            }
            §_-Fx§.camera.stopDragging();
         }
      }
      
      override public function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(!this.§_-W4§)
         {
            return;
         }
         if(§_-Fx§.slingshot.mDragging)
         {
            _loc3_ = §_-Fx§.screenToBox2D(param1,param2);
            §_-Fx§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-Fx§.camera.mDragging)
         {
            §_-Fx§.camera.dragToNewPoint(param1,param2);
         }
         this.§_-CS§ = param1;
         this.§_-Bn§ = param2;
      }
      
      public function §_-xT§() : Point
      {
         return new Point(this.§_-CS§,this.§_-Bn§);
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-Df§.§_-ws§(this.§_-Df§.getValue() + param1);
      }
      
      override public function getScore() : int
      {
         return this.§_-Df§.getValue();
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-W4§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.§_-W4§ = param1;
      }
   }
}

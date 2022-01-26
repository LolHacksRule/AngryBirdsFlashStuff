package §_-Tf§
{
   import §_-RG§.§_-TC§;
   import §_-Xr§.§_-mU§;
   import §_-am§.§_-XJ§;
   import §_-rp§.§_-BF§;
   import §_-rp§.§_-Hz§;
   import §_-rp§.§_-c5§;
   import §_-u§.§_-02§;
   import §_-u§.§_-5Q§;
   import §_-u§.§_-5j§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-V6§ extends §_-Qv§
   {
      
      public static const §_-GZ§:int = 0;
      
      public static const §_-CB§:int = 1;
      
      public static const §_-nB§:int = 2;
      
      public static const §_-rF§:int = 3;
      
      public static const §_-J3§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-Is§:int = 7;
      
      public static const §_-vX§:Number = 2000;
       
      
      public var §_-wE§:int = 0;
      
      public var §_-fR§:Number;
      
      public var §_-YH§:Number = 0;
      
      protected var §_-5U§:§_-mU§;
      
      public function §_-V6§(param1:§_-c5§)
      {
         this.§_-5U§ = new §_-mU§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-5U§.§_-HE§(0);
         this.§_-wE§ = -1;
         this.§_-rg§(§_-GZ§);
         this.§_-fR§ = §_-vX§;
         §_-3H§(true);
         §_-fE§.objects.setDamageEnabled(true);
         §_-fE§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         §_-fE§.update(param1,true);
         this.§_-vD§(param1);
      }
      
      public function clearLevel() : void
      {
         §_-fE§.clearLevel();
         §_-Nx§();
         this.§_-wE§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-SO§() : Boolean
      {
         if(§_-fE§.camera.mCurrentCameraSliderLocation < §_-Hz§.§_-XQ§)
         {
            return false;
         }
         if(!§_-fE§.mLevelObjects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-kN§(param1:int) : void
      {
         var _loc2_:§_-Hz§ = §_-fE§.camera;
         if(_loc2_.§_-4X§ > 0)
         {
            _loc2_.§_-4X§ -= param1;
            if(_loc2_.§_-4X§ <= 0)
            {
               if(this.§_-SO§())
               {
                  _loc2_.§_-4X§ = -1;
                  if(§_-fE§.mLevelSlingshot.mNextBirdIndex < §_-fE§.mLevelSlingshot.mBirds.length)
                  {
                     _loc2_.§_-lJ§();
                  }
               }
               else
               {
                  _loc2_.§_-4X§ = §_-Hz§.§_-Zz§ / 2;
               }
            }
         }
      }
      
      public function §_-rg§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-BO§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-GZ§)
         {
            this.§_-YH§ = 2000;
         }
         else if(param1 == §_-CB§)
         {
            §_-fE§.camera.goToBirdView();
         }
         else if(param1 == §_-nB§)
         {
            §_-fE§.objects.mExplodePreviousActiveObjectOnNextClick = false;
            this.§_-YH§ = 5000;
            §_-fE§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-rF§)
         {
            §_-fE§.camera.goToCastleView();
         }
         else if(param1 == §_-J3§)
         {
            this.§_-YH§ = 2000;
            §_-fE§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-YH§ = 1200;
            §_-fE§.camera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-YH§ = 1200;
            §_-fE§.camera.goToBirdView();
            §_-fE§.mLevelSlingshot.makeBirdsJumpForJoy();
            §_-XJ§.§_-aW§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-Is§)
         {
            §_-XJ§.§_-48§();
            §_-XJ§.§_-aW§("LevelFailedPigs1");
            this.§_-YH§ = 1200;
            §_-fE§.camera.goToCastleView();
            §_-fE§.objects.makePigsSmile(5);
         }
         this.§_-wE§ = param1;
      }
      
      public function §_-vD§(param1:Number) : void
      {
         var _loc2_:§_-5Q§ = null;
         this.§_-fR§ -= param1;
         if(this.§_-fR§ <= 0 && !this.§_-BO§(false))
         {
            this.§_-fR§ = §_-vX§;
            if(§_-fE§.objects.isWorldAtSleep())
            {
               if(!§_-fE§.objects.isPigsAlive() && !§_-fE§.mLevelObjects.mSardineCanAdded)
               {
                  this.§_-rg§(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
               else if(§_-fE§.slingshot.mSlingShotState == §_-BF§.§_-q1§)
               {
                  if(§_-fE§.mLevelObjects.mMightyEagleAdded)
                  {
                     if(§_-fE§.mLevelObjects.mMightyEagleHasTouchedGround && §_-fE§.mLevelObjects.mMightyEagleTimer > 5500)
                     {
                        this.§_-rg§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                     }
                     else if(§_-fE§.mLevelObjects.mMightyEagleHasTouchedGround)
                     {
                        this.§_-fR§ = §_-vX§;
                     }
                  }
                  else
                  {
                     this.§_-rg§(§_-Is§);
                  }
               }
            }
         }
         this.§_-YH§ -= param1;
         if(this.§_-YH§ < 0)
         {
            this.§_-YH§ = 0;
         }
         if(this.§_-wE§ == §_-rF§)
         {
            §_-fE§.updatePigAnimations(param1);
            if(!§_-fE§.camera.isOnCastleView() && §_-fE§.camera.mCurrentAction != §_-Hz§.§_-pa§)
            {
               this.§_-rg§(§_-CB§);
            }
         }
         else if(this.§_-wE§ == §_-J3§)
         {
            if(this.§_-YH§ <= 0)
            {
               if(§_-fE§.objects.isWorldAtSleep())
               {
                  this.§_-rg§(§_-CB§);
               }
               else
               {
                  this.§_-fR§ = 0;
                  this.§_-YH§ = 2000;
               }
            }
            else
            {
               §_-fE§.updatePigAnimations(param1);
            }
            if(!§_-fE§.camera.isOnCastleView() && §_-fE§.camera.mCurrentAction != §_-Hz§.§_-pa§)
            {
               this.§_-rg§(§_-CB§);
            }
         }
         else if(this.§_-wE§ == §_-GZ§)
         {
            if(this.§_-YH§ <= 0)
            {
               this.§_-rg§(§_-CB§);
            }
         }
         else if(this.§_-wE§ == §_-CB§)
         {
            if(§_-fE§.camera.isOnCastleView() && §_-fE§.camera.mCurrentAction != §_-Hz§.§_-pa§)
            {
               this.§_-rg§(§_-rF§);
            }
         }
         else if(this.§_-wE§ == §_-nB§)
         {
            _loc2_ = §_-fE§.getActiveObject();
            if(!_loc2_ || _loc2_.§_-c8§ < _loc2_.§_-gA§ || _loc2_.§_-s7§.toUpperCase() != "BIRD_GREEN" && §_-fE§.camera.mPigsAreOnRight && _loc2_.§_-t9§().GetLinearVelocity().x <= 0)
            {
               if(_loc2_ && _loc2_ is §_-02§ && (!(_loc2_ as §_-5j§).§_-Zx§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  §_-fE§.objects.mExplodePreviousActiveObjectOnNextClick = true;
                  this.§_-rg§(§_-J3§);
               }
               §_-fE§.mActiveObject = null;
               this.§_-rg§(§_-J3§);
            }
         }
         else if(this.§_-wE§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-YH§ <= 0)
            {
               if(§_-fE§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-YH§ = 1000;
               }
               else
               {
                  this.§_-rg§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-BO§(param1:Boolean = false) : Boolean
      {
         return (this.§_-wE§ == LEVEL_STATE_VICTORY2_END || this.§_-wE§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-wE§ == §_-Is§) && (!param1 || this.§_-YH§ <= 0 && this.§_-wE§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-In§() : Boolean
      {
         return this.§_-wE§ == LEVEL_STATE_VICTORY2_END || this.§_-wE§ == §_-Is§;
      }
      
      override public function onMouseWheel(param1:MouseEvent) : void
      {
         if(!(§_-fE§.mLevelSlingshot.mDragging || §_-fE§.camera.mDragging))
         {
            if(this.§_-wE§ == §_-J3§ || this.§_-wE§ == §_-rF§ || this.§_-wE§ == §_-CB§)
            {
               if(param1.delta != 0)
               {
                  §_-fE§.camera.adjustManualScale(param1.delta > 0);
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
         §_-TC§.§_-km§();
         if(this.§_-BO§(false))
         {
            return;
         }
         if(§_-fE§.getActiveObject())
         {
            if(this.§_-wE§ == §_-nB§)
            {
               if(§_-fE§.getActiveObject() is §_-5j§ && !(§_-fE§.getActiveObject() as §_-5j§).§_-Zx§)
               {
                  §_-fE§.objects.mActivateSpecialPower = true;
                  §_-fE§.mTrailSpecial = true;
               }
            }
            return;
         }
         if(§_-fE§.objects.mExplodePreviousActiveObjectOnNextClick)
         {
            if(§_-fE§.objects.explodePreviousActiveObjects())
            {
               return;
            }
         }
         var _loc3_:Point = §_-fE§.screenToBox2D(param1,param2);
         if(§_-fE§.slingshot.canStartDragging(_loc3_))
         {
            §_-fE§.slingshot.startDragging();
            this.§_-rg§(§_-CB§);
         }
         else
         {
            §_-fE§.camera.startDragging(param1,param2);
         }
      }
      
      private function §_-VS§(param1:MouseEvent) : void
      {
         this.handleMouseDown(param1.stageX,param1.stageY);
      }
      
      public function §_-kW§(param1:Event) : void
      {
         §_-TC§.§_-TH§();
      }
      
      public function §_-vL§(param1:MouseEvent) : void
      {
         this.handleMouseUp(NaN,NaN);
         §_-TC§.§_-e2§();
      }
      
      override public function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         §_-TC§.§_-cj§();
         if(§_-fE§.slingshot.mDragging)
         {
            if(isNaN(param1) || isNaN(param2))
            {
               §_-fE§.slingshot.cancelDragging();
            }
            else
            {
               _loc3_ = §_-fE§.screenToBox2D(param1,param2);
               §_-fE§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
               if(§_-fE§.slingshot.canShootTheBird())
               {
                  §_-fE§.slingshot.mShootTheBird = true;
                  this.§_-rg§(§_-nB§);
               }
               else
               {
                  §_-fE§.slingshot.cancelDragging();
               }
            }
         }
         if(§_-fE§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-fE§.camera.dragToNewPoint(param1,param2);
            }
            §_-fE§.camera.stopDragging();
         }
      }
      
      override public function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§_-fE§.slingshot.mDragging)
         {
            _loc3_ = §_-fE§.screenToBox2D(param1,param2);
            §_-fE§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-fE§.camera.mDragging)
         {
            §_-fE§.camera.dragToNewPoint(param1,param2);
         }
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-5U§.§_-HE§(this.§_-5U§.getValue() + param1);
      }
      
      override public function getScore() : int
      {
         return this.§_-5U§.getValue();
      }
   }
}

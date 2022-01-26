package §_-hz§
{
   import §_-4R§.§_-kz§;
   import §_-5x§.§_-8p§;
   import §_-ST§.§_-GF§;
   import §_-ST§.§_-dq§;
   import §_-ST§.§_-fK§;
   import §_-ZG§.§_-HK§;
   import §_-ez§.§_-8g§;
   import §_-ez§.§_-Ay§;
   import §_-ez§.§_-nt§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-rI§ extends §_-L1§
   {
      
      public static const §_-4Y§:int = 0;
      
      public static const §_-Sj§:int = 1;
      
      public static const §_-rd§:int = 2;
      
      public static const §_-iz§:int = 3;
      
      public static const §_-s3§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-Lr§:int = 7;
      
      public static const §_-Gt§:Number = 2000;
       
      
      public var §_-J5§:int = 0;
      
      public var §_-MH§:Number;
      
      public var §_-a4§:Number = 0;
      
      protected var §_-Nx§:§_-kz§;
      
      public function §_-rI§(param1:§_-Ay§)
      {
         this.§_-Nx§ = new §_-kz§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-Nx§.§_-lk§(0);
         this.§_-J5§ = -1;
         this.§_-kI§(§_-4Y§);
         this.§_-MH§ = §_-Gt§;
         §_-uI§(true);
         §_-9N§.objects.setDamageEnabled(true);
         §_-9N§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         §_-9N§.update(param1,true);
         this.§_-ws§(param1);
      }
      
      public function clearLevel() : void
      {
         §_-9N§.clearLevel();
         §_-D7§();
         this.§_-J5§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-V3§() : Boolean
      {
         if(§_-9N§.camera.mCurrentCameraSliderLocation < §_-8g§.§_-d9§)
         {
            return false;
         }
         if(!§_-9N§.mLevelObjects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-8A§(param1:int) : void
      {
         var _loc2_:§_-8g§ = §_-9N§.camera;
         if(_loc2_.§_-WG§ > 0)
         {
            _loc2_.§_-WG§ -= param1;
            if(_loc2_.§_-WG§ <= 0)
            {
               if(this.§_-V3§())
               {
                  _loc2_.§_-WG§ = -1;
                  if(§_-9N§.mLevelSlingshot.mNextBirdIndex < §_-9N§.mLevelSlingshot.mBirds.length)
                  {
                     _loc2_.§_-tO§();
                  }
               }
               else
               {
                  _loc2_.§_-WG§ = §_-8g§.§_-YF§ / 2;
               }
            }
         }
      }
      
      public function §_-kI§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-GE§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-4Y§)
         {
            this.§_-a4§ = 2000;
         }
         else if(param1 == §_-Sj§)
         {
            §_-9N§.camera.goToBirdView();
         }
         else if(param1 == §_-rd§)
         {
            §_-9N§.objects.mExplodePreviousActiveObjectOnNextClick = false;
            this.§_-a4§ = 5000;
            §_-9N§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-iz§)
         {
            §_-9N§.camera.goToCastleView();
         }
         else if(param1 == §_-s3§)
         {
            this.§_-a4§ = 2000;
            §_-9N§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-a4§ = 1200;
            §_-9N§.camera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-a4§ = 1200;
            §_-9N§.camera.goToBirdView();
            §_-9N§.mLevelSlingshot.makeBirdsJumpForJoy();
            §_-8p§.§_-rD§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-Lr§)
         {
            §_-8p§.§_-m-§();
            §_-8p§.§_-rD§("LevelFailedPigs1");
            this.§_-a4§ = 1200;
            §_-9N§.camera.goToCastleView();
            §_-9N§.objects.makePigsSmile(5);
         }
         this.§_-J5§ = param1;
      }
      
      public function §_-ws§(param1:Number) : void
      {
         var _loc2_:§_-fK§ = null;
         this.§_-MH§ -= param1;
         if(this.§_-MH§ <= 0 && !this.§_-GE§(false))
         {
            this.§_-MH§ = §_-Gt§;
            if(§_-9N§.objects.isWorldAtSleep())
            {
               if(!§_-9N§.objects.isPigsAlive() && !§_-9N§.mLevelObjects.mSardineCanAdded)
               {
                  this.§_-kI§(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
               else if(§_-9N§.slingshot.mSlingShotState == §_-nt§.§_-wF§)
               {
                  if(§_-9N§.mLevelObjects.mMightyEagleAdded)
                  {
                     if(§_-9N§.mLevelObjects.mMightyEagleHasTouchedGround && §_-9N§.mLevelObjects.mMightyEagleTimer > 5500)
                     {
                        this.§_-kI§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                     }
                     else if(§_-9N§.mLevelObjects.mMightyEagleHasTouchedGround)
                     {
                        this.§_-MH§ = §_-Gt§;
                     }
                  }
                  else
                  {
                     this.§_-kI§(§_-Lr§);
                  }
               }
            }
         }
         this.§_-a4§ -= param1;
         if(this.§_-a4§ < 0)
         {
            this.§_-a4§ = 0;
         }
         if(this.§_-J5§ == §_-iz§)
         {
            §_-9N§.updatePigAnimations(param1);
            if(!§_-9N§.camera.isOnCastleView() && §_-9N§.camera.mCurrentAction != §_-8g§.§_-he§)
            {
               this.§_-kI§(§_-Sj§);
            }
         }
         else if(this.§_-J5§ == §_-s3§)
         {
            if(this.§_-a4§ <= 0)
            {
               if(§_-9N§.objects.isWorldAtSleep())
               {
                  this.§_-kI§(§_-Sj§);
               }
               else
               {
                  this.§_-MH§ = 0;
                  this.§_-a4§ = 2000;
               }
            }
            else
            {
               §_-9N§.updatePigAnimations(param1);
            }
            if(!§_-9N§.camera.isOnCastleView() && §_-9N§.camera.mCurrentAction != §_-8g§.§_-he§)
            {
               this.§_-kI§(§_-Sj§);
            }
         }
         else if(this.§_-J5§ == §_-4Y§)
         {
            if(this.§_-a4§ <= 0)
            {
               this.§_-kI§(§_-Sj§);
            }
         }
         else if(this.§_-J5§ == §_-Sj§)
         {
            if(§_-9N§.camera.isOnCastleView() && §_-9N§.camera.mCurrentAction != §_-8g§.§_-he§)
            {
               this.§_-kI§(§_-iz§);
            }
         }
         else if(this.§_-J5§ == §_-rd§)
         {
            _loc2_ = §_-9N§.getActiveObject();
            if(!_loc2_ || _loc2_.§_-Sy§ < _loc2_.§_-JQ§ || _loc2_.§_-Pd§.toUpperCase() != "BIRD_GREEN" && §_-9N§.camera.mPigsAreOnRight && _loc2_.§_-Nu§().GetLinearVelocity().x <= 0)
            {
               if(_loc2_ && _loc2_ is §_-dq§ && (!(_loc2_ as §_-GF§).§_-8R§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  §_-9N§.objects.mExplodePreviousActiveObjectOnNextClick = true;
                  this.§_-kI§(§_-s3§);
               }
               §_-9N§.mActiveObject = null;
               this.§_-kI§(§_-s3§);
            }
         }
         else if(this.§_-J5§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-a4§ <= 0)
            {
               if(§_-9N§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-a4§ = 1000;
               }
               else
               {
                  this.§_-kI§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-GE§(param1:Boolean = false) : Boolean
      {
         return (this.§_-J5§ == LEVEL_STATE_VICTORY2_END || this.§_-J5§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-J5§ == §_-Lr§) && (!param1 || this.§_-a4§ <= 0 && this.§_-J5§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-id§() : Boolean
      {
         return this.§_-J5§ == LEVEL_STATE_VICTORY2_END || this.§_-J5§ == §_-Lr§;
      }
      
      override public function onMouseWheel(param1:MouseEvent) : void
      {
         if(!(§_-9N§.mLevelSlingshot.mDragging || §_-9N§.camera.mDragging))
         {
            if(this.§_-J5§ == §_-s3§ || this.§_-J5§ == §_-iz§ || this.§_-J5§ == §_-Sj§)
            {
               if(param1.delta != 0)
               {
                  §_-9N§.camera.adjustManualScale(param1.delta > 0);
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
         §_-HK§.§_-nW§();
         if(this.§_-GE§(false))
         {
            return;
         }
         if(§_-9N§.getActiveObject())
         {
            if(this.§_-J5§ == §_-rd§)
            {
               if(§_-9N§.getActiveObject() is §_-GF§ && !(§_-9N§.getActiveObject() as §_-GF§).§_-8R§)
               {
                  §_-9N§.objects.mActivateSpecialPower = true;
                  §_-9N§.mTrailSpecial = true;
               }
            }
            return;
         }
         if(§_-9N§.objects.mExplodePreviousActiveObjectOnNextClick)
         {
            if(§_-9N§.objects.explodePreviousActiveObjects())
            {
               return;
            }
         }
         var _loc3_:Point = §_-9N§.screenToBox2D(param1,param2);
         if(§_-9N§.slingshot.canStartDragging(_loc3_))
         {
            §_-9N§.slingshot.startDragging();
            this.§_-kI§(§_-Sj§);
         }
         else
         {
            §_-9N§.camera.startDragging(param1,param2);
         }
      }
      
      private function §_-29§(param1:MouseEvent) : void
      {
         this.handleMouseDown(param1.stageX,param1.stageY);
      }
      
      public function §_-Lv§(param1:Event) : void
      {
         §_-HK§.§_-mK§();
      }
      
      public function §_-Vp§(param1:MouseEvent) : void
      {
         this.handleMouseUp(NaN,NaN);
         §_-HK§.§_-57§();
      }
      
      override public function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         §_-HK§.§_-uL§();
         if(§_-9N§.slingshot.mDragging)
         {
            if(isNaN(param1) || isNaN(param2))
            {
               §_-9N§.slingshot.cancelDragging();
            }
            else
            {
               _loc3_ = §_-9N§.screenToBox2D(param1,param2);
               §_-9N§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
               if(§_-9N§.slingshot.canShootTheBird())
               {
                  §_-9N§.slingshot.mShootTheBird = true;
                  this.§_-kI§(§_-rd§);
               }
               else
               {
                  §_-9N§.slingshot.cancelDragging();
               }
            }
         }
         if(§_-9N§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-9N§.camera.dragToNewPoint(param1,param2);
            }
            §_-9N§.camera.stopDragging();
         }
      }
      
      override public function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§_-9N§.slingshot.mDragging)
         {
            _loc3_ = §_-9N§.screenToBox2D(param1,param2);
            §_-9N§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-9N§.camera.mDragging)
         {
            §_-9N§.camera.dragToNewPoint(param1,param2);
         }
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-Nx§.§_-lk§(this.§_-Nx§.getValue() + param1);
      }
      
      override public function getScore() : int
      {
         return this.§_-Nx§.getValue();
      }
   }
}

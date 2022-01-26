package §_-m6§
{
   import §_-0y§.§_-B3§;
   import §_-0y§.§_-Y4§;
   import §_-0y§.§_-ZB§;
   import §_-HJ§.§_-SG§;
   import §_-Sp§.§_-FR§;
   import §_-Sp§.§_-JP§;
   import §_-Sp§.§_-ZY§;
   import §_-oZ§.§_-JH§;
   import §_-ot§.§_-UQ§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §case§ extends §_-a-§
   {
      
      public static const §_-ol§:int = 0;
      
      public static const §_-uL§:int = 1;
      
      public static const §_-e3§:int = 2;
      
      public static const §_-mN§:int = 3;
      
      public static const §_-Da§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-aX§:int = 7;
      
      public static const §_-mg§:Number = 2000;
       
      
      public var §_-r9§:int = 0;
      
      public var §_-NK§:Number;
      
      public var §_-eJ§:Number = 0;
      
      protected var §_-oX§:§_-SG§;
      
      public function §case§(param1:§_-B3§)
      {
         this.§_-oX§ = new §_-SG§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-oX§.§_-2D§(0);
         this.§_-r9§ = -1;
         this.§_-0r§(§_-ol§);
         this.§_-NK§ = §_-mg§;
         §_-91§(true);
         §_-Ia§.objects.setDamageEnabled(true);
         §_-Ia§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         §_-Ia§.update(param1,true);
         this.§_-uD§(param1);
      }
      
      public function clearLevel() : void
      {
         §_-Ia§.clearLevel();
         §_-7a§();
         this.§_-r9§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-gy§() : Boolean
      {
         if(§_-Ia§.camera.mCurrentCameraSliderLocation < §_-Y4§.§_-L4§)
         {
            return false;
         }
         if(!§_-Ia§.mLevelObjects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-D5§(param1:int) : void
      {
         var _loc2_:§_-Y4§ = §_-Ia§.camera;
         if(_loc2_.§_-fN§ > 0)
         {
            _loc2_.§_-fN§ -= param1;
            if(_loc2_.§_-fN§ <= 0)
            {
               if(this.§_-gy§())
               {
                  _loc2_.§_-fN§ = -1;
                  if(§_-Ia§.mLevelSlingshot.mNextBirdIndex < §_-Ia§.mLevelSlingshot.mBirds.length)
                  {
                     _loc2_.§_-ca§();
                  }
               }
               else
               {
                  _loc2_.§_-fN§ = §_-Y4§.§_-so§ / 2;
               }
            }
         }
      }
      
      public function §_-0r§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-1F§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-ol§)
         {
            this.§_-eJ§ = 2000;
         }
         else if(param1 == §_-uL§)
         {
            §_-Ia§.camera.goToBirdView();
         }
         else if(param1 == §_-e3§)
         {
            §_-Ia§.objects.mExplodePreviousActiveObjectOnNextClick = false;
            this.§_-eJ§ = 5000;
            §_-Ia§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-mN§)
         {
            §_-Ia§.camera.goToCastleView();
         }
         else if(param1 == §_-Da§)
         {
            this.§_-eJ§ = 2000;
            §_-Ia§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-eJ§ = 1200;
            §_-Ia§.camera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-eJ§ = 1200;
            §_-Ia§.camera.goToBirdView();
            §_-Ia§.mLevelSlingshot.makeBirdsJumpForJoy();
            §_-JH§.§_-A3§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-aX§)
         {
            §_-JH§.§_-YQ§();
            §_-JH§.§_-A3§("LevelFailedPigs1");
            this.§_-eJ§ = 1200;
            §_-Ia§.camera.goToCastleView();
            §_-Ia§.objects.makePigsSmile(5);
         }
         this.§_-r9§ = param1;
      }
      
      public function §_-uD§(param1:Number) : void
      {
         var _loc2_:§_-JP§ = null;
         this.§_-NK§ -= param1;
         if(this.§_-NK§ <= 0 && !this.§_-1F§(false))
         {
            this.§_-NK§ = §_-mg§;
            if(§_-Ia§.objects.isWorldAtSleep())
            {
               if(!§_-Ia§.objects.isPigsAlive() && !§_-Ia§.mLevelObjects.mSardineCanAdded)
               {
                  this.§_-0r§(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
               else if(§_-Ia§.slingshot.mSlingShotState == §_-ZB§.§_-GG§)
               {
                  if(§_-Ia§.mLevelObjects.mMightyEagleAdded)
                  {
                     if(§_-Ia§.mLevelObjects.mMightyEagleHasTouchedGround && §_-Ia§.mLevelObjects.mMightyEagleTimer > 5500)
                     {
                        this.§_-0r§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                     }
                     else if(§_-Ia§.mLevelObjects.mMightyEagleHasTouchedGround)
                     {
                        this.§_-NK§ = §_-mg§;
                     }
                  }
                  else
                  {
                     this.§_-0r§(§_-aX§);
                  }
               }
            }
         }
         this.§_-eJ§ -= param1;
         if(this.§_-eJ§ < 0)
         {
            this.§_-eJ§ = 0;
         }
         if(this.§_-r9§ == §_-mN§)
         {
            §_-Ia§.updatePigAnimations(param1);
            if(!§_-Ia§.camera.isOnCastleView() && §_-Ia§.camera.mCurrentAction != §_-Y4§.§_-G2§)
            {
               this.§_-0r§(§_-uL§);
            }
         }
         else if(this.§_-r9§ == §_-Da§)
         {
            if(this.§_-eJ§ <= 0)
            {
               if(§_-Ia§.objects.isWorldAtSleep())
               {
                  this.§_-0r§(§_-uL§);
               }
               else
               {
                  this.§_-NK§ = 0;
                  this.§_-eJ§ = 2000;
               }
            }
            else
            {
               §_-Ia§.updatePigAnimations(param1);
            }
            if(!§_-Ia§.camera.isOnCastleView() && §_-Ia§.camera.mCurrentAction != §_-Y4§.§_-G2§)
            {
               this.§_-0r§(§_-uL§);
            }
         }
         else if(this.§_-r9§ == §_-ol§)
         {
            if(this.§_-eJ§ <= 0)
            {
               this.§_-0r§(§_-uL§);
            }
         }
         else if(this.§_-r9§ == §_-uL§)
         {
            if(§_-Ia§.camera.isOnCastleView() && §_-Ia§.camera.mCurrentAction != §_-Y4§.§_-G2§)
            {
               this.§_-0r§(§_-mN§);
            }
         }
         else if(this.§_-r9§ == §_-e3§)
         {
            _loc2_ = §_-Ia§.getActiveObject();
            if(!_loc2_ || _loc2_.§null § < _loc2_.§_-8S§ || _loc2_.§_-TR§.toUpperCase() != "BIRD_GREEN" && §_-Ia§.camera.mPigsAreOnRight && _loc2_.§_-dZ§().GetLinearVelocity().x <= 0)
            {
               if(_loc2_ && _loc2_ is §_-ZY§ && (!(_loc2_ as §_-FR§).§_-SX§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  §_-Ia§.objects.mExplodePreviousActiveObjectOnNextClick = true;
                  this.§_-0r§(§_-Da§);
               }
               §_-Ia§.mActiveObject = null;
               this.§_-0r§(§_-Da§);
            }
         }
         else if(this.§_-r9§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-eJ§ <= 0)
            {
               if(§_-Ia§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-eJ§ = 1000;
               }
               else
               {
                  this.§_-0r§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-1F§(param1:Boolean = false) : Boolean
      {
         return (this.§_-r9§ == LEVEL_STATE_VICTORY2_END || this.§_-r9§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-r9§ == §_-aX§) && (!param1 || this.§_-eJ§ <= 0 && this.§_-r9§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-nr§() : Boolean
      {
         return this.§_-r9§ == LEVEL_STATE_VICTORY2_END || this.§_-r9§ == §_-aX§;
      }
      
      override public function onMouseWheel(param1:MouseEvent) : void
      {
         if(!(§_-Ia§.mLevelSlingshot.mDragging || §_-Ia§.camera.mDragging))
         {
            if(this.§_-r9§ == §_-Da§ || this.§_-r9§ == §_-mN§ || this.§_-r9§ == §_-uL§)
            {
               if(param1.delta != 0)
               {
                  §_-Ia§.camera.adjustManualScale(param1.delta > 0);
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
         §_-UQ§.§_-qw§();
         if(this.§_-1F§(false))
         {
            return;
         }
         if(§_-Ia§.getActiveObject())
         {
            if(this.§_-r9§ == §_-e3§)
            {
               if(§_-Ia§.getActiveObject() is §_-FR§ && !(§_-Ia§.getActiveObject() as §_-FR§).§_-SX§)
               {
                  §_-Ia§.objects.mActivateSpecialPower = true;
                  §_-Ia§.mTrailSpecial = true;
               }
            }
            return;
         }
         if(§_-Ia§.objects.mExplodePreviousActiveObjectOnNextClick)
         {
            if(§_-Ia§.objects.explodePreviousActiveObjects())
            {
               return;
            }
         }
         var _loc3_:Point = §_-Ia§.screenToBox2D(param1,param2);
         if(§_-Ia§.slingshot.canStartDragging(_loc3_))
         {
            §_-Ia§.slingshot.startDragging();
            this.§_-0r§(§_-uL§);
         }
         else
         {
            §_-Ia§.camera.startDragging(param1,param2);
         }
      }
      
      private function §_-Qb§(param1:MouseEvent) : void
      {
         this.handleMouseDown(param1.stageX,param1.stageY);
      }
      
      public function §_-pu§(param1:Event) : void
      {
         §_-UQ§.§_-XN§();
      }
      
      public function §_-Rl§(param1:MouseEvent) : void
      {
         this.handleMouseUp(NaN,NaN);
         §_-UQ§.§_-s2§();
      }
      
      override public function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         §_-UQ§.§_-nd§();
         if(§_-Ia§.slingshot.mDragging)
         {
            if(isNaN(param1) || isNaN(param2))
            {
               §_-Ia§.slingshot.cancelDragging();
            }
            else
            {
               _loc3_ = §_-Ia§.screenToBox2D(param1,param2);
               §_-Ia§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
               if(§_-Ia§.slingshot.canShootTheBird())
               {
                  §_-Ia§.slingshot.mShootTheBird = true;
                  this.§_-0r§(§_-e3§);
               }
               else
               {
                  §_-Ia§.slingshot.cancelDragging();
               }
            }
         }
         if(§_-Ia§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-Ia§.camera.dragToNewPoint(param1,param2);
            }
            §_-Ia§.camera.stopDragging();
         }
      }
      
      override public function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§_-Ia§.slingshot.mDragging)
         {
            _loc3_ = §_-Ia§.screenToBox2D(param1,param2);
            §_-Ia§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-Ia§.camera.mDragging)
         {
            §_-Ia§.camera.dragToNewPoint(param1,param2);
         }
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-oX§.§_-2D§(this.§_-oX§.getValue() + param1);
      }
      
      override public function getScore() : int
      {
         return this.§_-oX§.getValue();
      }
   }
}

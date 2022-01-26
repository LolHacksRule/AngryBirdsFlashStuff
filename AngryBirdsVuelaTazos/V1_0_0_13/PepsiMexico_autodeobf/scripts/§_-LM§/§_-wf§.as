package §_-LM§
{
   import § get§.§_-pD§;
   import §_-FQ§.§_-7W§;
   import §_-FQ§.§_-Vg§;
   import §_-FQ§.§_-if§;
   import §_-XI§.§_-Er§;
   import §_-Xd§.§_-HY§;
   import §_-Xd§.§_-Xr§;
   import §_-Xd§.§_-sW§;
   import §_-ex§.§_-Mh§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-wf§ extends §_-sY§
   {
      
      public static const §_-oz§:int = 0;
      
      public static const §_-Iq§:int = 1;
      
      public static const §_-pb§:int = 2;
      
      public static const §_-IB§:int = 3;
      
      public static const §_-yP§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-qm§:int = 7;
      
      public static const §_-nO§:Number = 2000;
       
      
      public var §_-NW§:int = 0;
      
      public var §_-WV§:Number;
      
      public var §_-99§:Number = 0;
      
      private var §_-HC§:Boolean;
      
      protected var §_-Qp§:§_-Er§;
      
      public function §_-wf§(param1:§_-7W§)
      {
         this.§_-Qp§ = new §_-Er§();
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-Qp§.§_-SJ§(0);
         this.§_-NW§ = -1;
         this.§_-u0§(§_-oz§);
         this.§_-WV§ = §_-nO§;
         §_-pL§(true);
         §_-6q§.objects.setDamageEnabled(true);
         §_-6q§.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = §_-6q§.update(param1,true);
         this.§_-uN§(param1);
      }
      
      public function clearLevel() : void
      {
         §_-6q§.clearLevel();
         removeEventListeners();
         this.§_-NW§ = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function §_-jp§() : Boolean
      {
         if(§_-6q§.camera.mCurrentCameraSliderLocation < §_-if§.§_-aT§)
         {
            return false;
         }
         if(!§_-6q§.mLevelObjects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function §_-v2§(param1:int) : void
      {
         var _loc2_:§_-if§ = §_-6q§.camera;
         if(_loc2_.§_-mo§ > 0)
         {
            _loc2_.§_-mo§ -= param1;
            if(_loc2_.§_-mo§ <= 0)
            {
               if(this.§_-jp§())
               {
                  _loc2_.§_-mo§ = -1;
                  if(§_-6q§.mLevelSlingshot.birdsAvailable)
                  {
                     _loc2_.§_-1S§();
                  }
               }
               else
               {
                  _loc2_.§_-mo§ = §_-if§.§_-hw§ / 2;
               }
            }
         }
      }
      
      public function §_-u0§(param1:int, param2:Boolean = false) : void
      {
         if(this.§_-ml§(false) && !param2)
         {
            return;
         }
         if(param1 == §_-oz§)
         {
            this.§_-99§ = 2000;
         }
         else if(param1 == §_-Iq§)
         {
            §_-6q§.camera.goToBirdView();
         }
         else if(param1 == §_-pb§)
         {
            this.§_-HC§ = false;
            this.§_-99§ = 5000;
            §_-6q§.particles.moveTrailsNewToOld();
         }
         else if(param1 == §_-IB§)
         {
            §_-6q§.camera.goToCastleView();
         }
         else if(param1 == §_-yP§)
         {
            this.§_-99§ = 2000;
            §_-6q§.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.§_-99§ = 1200;
            §_-6q§.camera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.§_-99§ = 1200;
            §_-6q§.camera.goToBirdView();
            §_-6q§.mLevelSlingshot.makeBirdsJumpForJoy();
            §_-pD§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         else if(param1 == §_-qm§)
         {
            §_-pD§.§_-6Y§();
            §_-pD§.playSound("LevelFailedPigs1");
            this.§_-99§ = 1200;
            §_-6q§.camera.goToCastleView();
            §_-6q§.objects.makePigsSmile(5);
         }
         this.§_-NW§ = param1;
      }
      
      public function §_-uN§(param1:Number) : void
      {
         var _loc2_:§_-sW§ = null;
         this.§_-WV§ -= param1;
         if(this.§_-WV§ <= 0 && !this.§_-ml§(false))
         {
            this.§_-WV§ = §_-nO§;
            if(§_-6q§.objects.isWorldAtSleep())
            {
               if(!§_-6q§.objects.isPigsAlive() && !§_-6q§.mLevelObjects.mSardineCanAdded)
               {
                  this.§_-u0§(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
               else if(§_-6q§.slingshot.mSlingShotState == §_-Vg§.§_-jr§)
               {
                  if(§_-6q§.mLevelObjects.mMightyEagleAdded)
                  {
                     if(§_-6q§.mLevelObjects.mMightyEagleHasTouchedGround && §_-6q§.mLevelObjects.mMightyEagleTimer > 5500)
                     {
                        this.§_-u0§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                     }
                     else if(§_-6q§.mLevelObjects.mMightyEagleHasTouchedGround)
                     {
                        this.§_-WV§ = §_-nO§;
                     }
                  }
                  else
                  {
                     this.§_-u0§(§_-qm§);
                  }
               }
            }
            if(this.§_-ml§(false))
            {
               §_-6q§.gameOver();
            }
         }
         this.§_-99§ -= param1;
         if(this.§_-99§ < 0)
         {
            this.§_-99§ = 0;
         }
         if(this.§_-NW§ == §_-IB§)
         {
            §_-6q§.updatePigAnimations(param1);
            if(!§_-6q§.camera.isOnCastleView() && §_-6q§.camera.mCurrentAction != §_-if§.§_-me§)
            {
               this.§_-u0§(§_-Iq§);
            }
         }
         else if(this.§_-NW§ == §_-yP§)
         {
            if(this.§_-99§ <= 0)
            {
               if(§_-6q§.objects.isWorldAtSleep())
               {
                  this.§_-u0§(§_-Iq§);
               }
               else
               {
                  this.§_-WV§ = 0;
                  this.§_-99§ = 2000;
               }
            }
            else
            {
               §_-6q§.updatePigAnimations(param1);
            }
            if(!§_-6q§.camera.isOnCastleView() && §_-6q§.camera.mCurrentAction != §_-if§.§_-me§)
            {
               this.§_-u0§(§_-Iq§);
            }
         }
         else if(this.§_-NW§ == §_-oz§)
         {
            if(this.§_-99§ <= 0)
            {
               this.§_-u0§(§_-Iq§);
            }
         }
         else if(this.§_-NW§ == §_-Iq§)
         {
            if(§_-6q§.camera.isOnCastleView() && §_-6q§.camera.mCurrentAction != §_-if§.§_-me§)
            {
               this.§_-u0§(§_-IB§);
            }
         }
         else if(this.§_-NW§ == §_-pb§)
         {
            _loc2_ = §_-6q§.getActiveObject();
            if(!_loc2_ || _loc2_.§_-gg§ < _loc2_.§_-jW§ || _loc2_.§true §.toUpperCase() != "BIRD_GREEN" && §_-6q§.camera.mPigsAreOnRight && _loc2_.§_-vv§().GetLinearVelocity().x <= 0)
            {
               if(_loc2_ && _loc2_ is §_-HY§ && (!(_loc2_ as §_-Xr§).§_-aR§ || _loc2_.getSpecialAnimationProgress() >= 0))
               {
                  this.§_-HC§ = true;
                  this.§_-u0§(§_-yP§);
               }
               §_-6q§.mActiveObject = null;
               this.§_-u0§(§_-yP§);
            }
         }
         else if(this.§_-NW§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.§_-99§ <= 0)
            {
               if(§_-6q§.slingshot.updateScoreForRemainingBirds())
               {
                  this.§_-99§ = 1000;
               }
               else
               {
                  this.§_-u0§(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      public function §_-ml§(param1:Boolean = false) : Boolean
      {
         return (this.§_-NW§ == LEVEL_STATE_VICTORY2_END || this.§_-NW§ == LEVEL_STATE_VICTORY1_SLINGSHOT || this.§_-NW§ == §_-qm§) && (!param1 || this.§_-99§ <= 0 && this.§_-NW§ != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function §_-Pl§() : Boolean
      {
         return this.§_-NW§ == LEVEL_STATE_VICTORY2_END || this.§_-NW§ == §_-qm§;
      }
      
      override public function onMouseWheel(param1:MouseEvent) : void
      {
         if(!(§_-6q§.mLevelSlingshot.mDragging || §_-6q§.camera.mDragging))
         {
            if(this.§_-NW§ == §_-yP§ || this.§_-NW§ == §_-IB§ || this.§_-NW§ == §_-Iq§)
            {
               if(param1.delta != 0)
               {
                  §_-6q§.camera.adjustManualScale(param1.delta > 0);
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
         §_-Mh§.§_-Hu§();
         if(this.§_-ml§(false))
         {
            return;
         }
         if(!§_-6q§.isPlayingReplay() && (§_-6q§.getActiveObject() && this.§_-NW§ == §_-pb§) || this.§_-HC§)
         {
            this.§_-HC§ = false;
            §_-6q§.activatePowerup();
            return;
         }
         var _loc3_:Point = §_-6q§.screenToBox2D(param1,param2);
         if(!§_-6q§.isPlayingReplay() && §_-6q§.slingshot.canStartDragging(_loc3_))
         {
            §_-6q§.slingshot.startDragging();
            this.§_-u0§(§_-Iq§);
         }
         else
         {
            §_-6q§.camera.startDragging(param1,param2);
         }
      }
      
      private function §_-wF§(param1:MouseEvent) : void
      {
         this.handleMouseDown(param1.stageX,param1.stageY);
      }
      
      public function §_-cR§(param1:Event) : void
      {
         §_-Mh§.§_-Wg§();
      }
      
      public function §_-K3§(param1:MouseEvent) : void
      {
         this.handleMouseUp(NaN,NaN);
         §_-Mh§.§_-wb§();
      }
      
      override public function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         §_-Mh§.§_-XE§();
         if(§_-6q§.slingshot.mDragging)
         {
            _loc3_ = §_-6q§.screenToBox2D(param1,param2);
            §_-6q§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
            if(§_-6q§.slingshot.canShootTheBird())
            {
               §_-6q§.slingshot.shoot();
               this.§_-u0§(§_-pb§);
            }
            else
            {
               §_-6q§.slingshot.cancelDragging();
            }
         }
         if(§_-6q§.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               §_-6q§.camera.dragToNewPoint(param1,param2);
            }
            §_-6q§.camera.stopDragging();
         }
      }
      
      override public function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(§_-6q§.slingshot.mDragging)
         {
            _loc3_ = §_-6q§.screenToBox2D(param1,param2);
            §_-6q§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
         }
         else if(§_-6q§.camera.mDragging)
         {
            §_-6q§.camera.dragToNewPoint(param1,param2);
         }
      }
      
      override public function addScore(param1:int) : void
      {
         this.§_-Qp§.§_-SJ§(this.§_-Qp§.getValue() + param1);
      }
      
      override public function getScore() : int
      {
         return this.§_-Qp§.getValue();
      }
   }
}

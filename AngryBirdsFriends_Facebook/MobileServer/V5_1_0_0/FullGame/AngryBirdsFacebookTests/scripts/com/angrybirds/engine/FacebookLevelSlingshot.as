package com.angrybirds.engine
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelJoint;
   import com.angrybirds.data.level.object.LevelJointModel;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.engine.objects.FacebookLevelObjectManager;
   import com.angrybirds.engine.objects.FacebookLevelObjectXmasTreeAmmo;
   import com.angrybirds.engine.objects.FacebookSlingshotTreepart;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.angrybirds.engine.particles.FacebookLevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.slingshots.SlingShotUIManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2MouseJoint;
   import com.rovio.graphics.Animation;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.TextureManager;
   import com.rovio.sound.SoundEngine;
   import flash.geom.Point;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
   public class FacebookLevelSlingshot extends LevelSlingshot
   {
      
      public static const STATE_WAITING_FOR_WINGMAN:int = 777;
      
      protected static const SUPER_ROPE_COLOR:uint = 7602176;
      
      protected static var sSuperHolsterTexture:Texture;
      
      public static var smSnowParticlesSpeedY:int = 8;
      
      public static var smSnowParticlesWindSpeed:int = 5;
      
      public static var smSnowParticlesAmountPerFrame:int = 1;
      
      public static var smSnowParticlesScale:Number = 1;
      
      public static var smDistanceJointFq:Number = 180;
      
      public static var smDistanceJointDamp:Number = 70;
      
      public static var smMouseJointFq:Number = 0;
      
      public static var smMouseJointDamp:Number = 0;
       
      
      private var mWingmanJumpOffCoordinates:Point;
      
      private var mBlastAnimation:FacebookLevelSlingshotEffect;
      
      private var mLightningAnimations:Vector.<FacebookLevelSlingshotEffect>;
      
      private var mPowerPotionAnimation:FacebookLevelSlingshotEffect;
      
      private var mBoomboxAnimation:FacebookLevelSlingshotEffect;
      
      private var mIsTelescopeInstalled:Boolean;
      
      private var mTelescopeMountImage:DisplayObject;
      
      private var mTelescopeTubeImage:DisplayObject;
      
      private var mTelescopeCurrentAngle:Number;
      
      private var mActivatedSlingShotType:SlingShotDefinition;
      
      private var mIsSeasonal:Boolean = false;
      
      private var mIsSuper:Boolean = false;
      
      private var mObjFakeBird:LevelObject;
      
      private var mTreePartToAttachBirdTo:FacebookSlingshotTreepart;
      
      private var mTreePartTop:FacebookSlingshotTreepart;
      
      private var mJointMouseB2Joint:b2MouseJoint;
      
      private var mJointMouse:LevelJoint;
      
      private var mSlingShotParts:Vector.<LevelObject>;
      
      private var mHasAttachedJoint:Boolean;
      
      private var mHasUpdatedTreeJoints:Boolean;
      
      private var mLaunchObjectAmount:int = 5;
      
      private var mLaunchObjectSpreadAngle:int = 8;
      
      private var mLaunchObjectForceRangeStartPercentage:int = 85;
      
      private var mLaunchObjectForceRangeEndPercentage:int = 98;
      
      private var mThrowObjectStartPosition:Point;
      
      private var mThrowObjectStartSpeed:Number;
      
      private var mThrowObjectStartPower:Number;
      
      private var mThrowObjectStartAngle:Number;
      
      public function FacebookLevelSlingshot(newLevelMain:LevelMain, level:LevelModel, aSprite:Sprite)
      {
         this.mSlingShotParts = new Vector.<LevelObject>();
         super(newLevelMain,level,aSprite);
         this.activateSlingShotType(SlingShotType.getSlingShotByID(SlingShotUIManager.getSelectedSlingShotId()),true);
         this.superSlingshot = false;
         if(mBirds.length > 1)
         {
            this.mWingmanJumpOffCoordinates = new Point(mBirds[1].originalX,mBirds[1].originalY - (1.8 - mBirds[1].radius));
         }
         else if(mBirds.length > 0)
         {
            this.mWingmanJumpOffCoordinates = new Point(mBirds[0].originalX,mBirds[0].originalY - (1.8 - mBirds[0].radius));
         }
         else
         {
            this.mWingmanJumpOffCoordinates = new Point(x,y + 7);
         }
      }
      
      public function get superSlingshot() : Boolean
      {
         return this.mIsSuper;
      }
      
      public function set superSlingshot(value:Boolean) : void
      {
         this.mIsSuper = value;
      }
      
      public function get isSeasonal() : Boolean
      {
         return this.mIsSeasonal;
      }
      
      public function set isSeasonal(value:Boolean) : void
      {
         var slingshotAnimation:Animation = null;
         if(this.mIsSeasonal == value)
         {
            return;
         }
         this.mIsSeasonal = value;
         if(this.mIsSeasonal)
         {
            slingshotAnimation = this.getSlingshotAnimation();
            while(mSprite.numChildren > 0)
            {
               mSprite.removeChildAt(0);
            }
            mBackImage = slingshotAnimation.getFrame(0,mBackImage);
            mFrontImage = slingshotAnimation.getFrame(1,mFrontImage);
            mSprite.addChild(mBackImage);
            mSprite.addChild(mRopeBackContainer);
            mSprite.addChild(mBirdsSprite);
            mSprite.addChild(mRopeRubber);
            mSprite.addChild(mRopeFrontContainer);
            mSprite.addChild(mFrontImage);
            mUpdateVisuals = true;
            this.superSlingshot = false;
         }
      }
      
      override protected function getSlingshotAnimation() : Animation
      {
         if(this.mIsSeasonal)
         {
            return mLevelMain.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         if(this.mActivatedSlingShotType)
         {
            return mLevelMain.animationManager.getAnimation(this.mActivatedSlingShotType.graphicName);
         }
         return super.getSlingshotAnimation();
      }
      
      public function activateSlingShotType(slingShotDef:SlingShotDefinition, slingshotSelectedAtStartup:Boolean, gotoCastleSide:Boolean = false) : void
      {
         var bird:FacebookLevelSlingshotObject = null;
         if(!slingshotSelectedAtStartup && (this.mActivatedSlingShotType && this.mActivatedSlingShotType.identifier == slingShotDef.identifier))
         {
            return;
         }
         this.mActivatedSlingShotType = slingShotDef;
         if(!slingshotSelectedAtStartup)
         {
            DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.storeData(ClientStorage.CURRENT_SLINGSHOT_STORAGE_NAME,[this.mActivatedSlingShotType.identifier],true);
         }
         for each(bird in mBirds)
         {
            bird.SlingShotAbility = this.mActivatedSlingShotType;
         }
         mLevelMain.camera.setAction(!!gotoCastleSide ? int(LevelCamera.ACTION_GO_TO_CASTLE) : int(LevelCamera.ACTION_GO_TO_SLINGSHOT));
         var slingshotAnimation:Animation = mLevelMain.animationManager.getAnimation(this.mActivatedSlingShotType.graphicName);
         mBackImage = slingshotAnimation.getFrame(0,mBackImage);
         mFrontImage = slingshotAnimation.getFrame(1,mFrontImage);
         this.updateSlingshotGraphics(this.superSlingshot);
         mBackImage.visible = mFrontImage.visible = true;
         this.removeSlingShotParts();
         if(this.mActivatedSlingShotType == SlingShotType.SLING_SHOT_CHRISTMAS)
         {
            this.setupXmasSlingshot();
         }
         if((levelMain as FacebookLevelMain).powerupsHandler)
         {
            (levelMain as FacebookLevelMain).powerupsHandler.setAimingLineTexture();
         }
         if(!slingshotSelectedAtStartup)
         {
            this.startLightningAnimation(this.mActivatedSlingShotType.effectName,this.mActivatedSlingShotType.particleName,this.mActivatedSlingShotType.particleCount);
            if(!AngryBirdsEngine.isPaused)
            {
               SoundEngine.playSound(this.mActivatedSlingShotType.soundName,"ChannelPowerups");
            }
         }
         if(this.mIsTelescopeInstalled)
         {
            this.installTelescope();
         }
         this.updateAnimations(0);
      }
      
      private function setupXmasSlingshot() : void
      {
         var prevObject:LevelObject = null;
         var obj:FacebookSlingshotTreepart = null;
         var weldJointModel:LevelJointModel = null;
         var jointRevWeld:LevelJoint = null;
         var lowerLimit:Number = NaN;
         var upperLimit:Number = NaN;
         var levelJointModel:LevelJointModel = null;
         var jointRev:LevelJoint = null;
         var levelJointModel2:LevelJointModel = null;
         var jointDistance1:LevelJoint = null;
         var levelJointModel3:LevelJointModel = null;
         var jointDistance2:LevelJoint = null;
         mFrontImage.visible = false;
         mBackImage.visible = false;
         mBackImage.width = 1;
         mBackImage.height = 220;
         var pivots:Array = [0.275,2.5,4.5,6.3,7.5,9.5];
         var prevId:int = -1;
         for(var i:int = 1; i <= 6; i++)
         {
            obj = mLevelMain.levelObjects.addObject("SLING_SHOT_TREE_PART_" + i,mX,7.5 + mY - pivots[i - 1],0,LevelObjectManager.ID_NEXT_FREE,false,false,false) as FacebookSlingshotTreepart;
            obj.getBody().GetDefinition().linearDamping = 7;
            obj.getBody().GetDefinition().angularDamping = 0.1;
            obj.getBody().SetAwake(true);
            this.mSlingShotParts.push(obj);
            if(prevId == -1)
            {
               prevId = obj.id;
               prevObject = obj;
            }
            else
            {
               if(i == 5)
               {
                  this.mTreePartToAttachBirdTo = obj;
               }
               if(i == 6)
               {
                  this.mTreePartTop = obj;
                  weldJointModel = new LevelJointModel(LevelJointModel.WELD_JOINT,prevId,obj.id,new Point(0,0),new Point(0,0));
                  weldJointModel.breakable = false;
                  weldJointModel.coordinateType = 2;
                  weldJointModel.slingshotJoint = true;
                  jointRevWeld = (mLevelMain.levelObjects as FacebookLevelObjectManager).createJointAtRuntime(weldJointModel);
               }
               else
               {
                  lowerLimit = -0.3 * Math.PI;
                  upperLimit = 0.3 * Math.PI;
                  levelJointModel = new LevelJointModel(LevelJointModel.REVOLUTE_JOINT,prevId,obj.id,new Point(0,0),new Point(0,0),false,true,lowerLimit,upperLimit,false);
                  levelJointModel.coordinateType = 2;
                  levelJointModel.breakable = false;
                  levelJointModel.slingshotJoint = true;
                  jointRev = (mLevelMain.levelObjects as FacebookLevelObjectManager).createJointAtRuntime(levelJointModel);
                  levelJointModel2 = new LevelJointModel(LevelJointModel.DISTANCE_JOINT,prevId,obj.id,new Point(obj.getBody().GetPosition().x,obj.getBody().GetPosition().y),new Point(obj.getBody().GetPosition().x + 1,obj.getBody().GetPosition().y - 1));
                  levelJointModel2.coordinateType = 1;
                  levelJointModel2.frequency = smDistanceJointFq * 0.1;
                  levelJointModel2.dampingRatio = smDistanceJointDamp * 0.1;
                  levelJointModel2.breakable = false;
                  levelJointModel2.slingshotJoint = true;
                  jointDistance1 = (mLevelMain.levelObjects as FacebookLevelObjectManager).createJointAtRuntime(levelJointModel2);
                  levelJointModel3 = new LevelJointModel(LevelJointModel.DISTANCE_JOINT,prevId,obj.id,new Point(obj.getBody().GetPosition().x,obj.getBody().GetPosition().y),new Point(obj.getBody().GetPosition().x - 1,obj.getBody().GetPosition().y - 1));
                  levelJointModel3.coordinateType = 1;
                  levelJointModel3.frequency = smDistanceJointFq * 0.1;
                  levelJointModel3.dampingRatio = smDistanceJointDamp * 0.1;
                  levelJointModel3.breakable = false;
                  levelJointModel3.slingshotJoint = true;
                  jointDistance2 = (mLevelMain.levelObjects as FacebookLevelObjectManager).createJointAtRuntime(levelJointModel3);
               }
               prevId = obj.id;
               prevObject = obj;
            }
         }
         prevId = obj.id;
         prevObject = obj;
      }
      
      private function createFakeBirdObject() : void
      {
         this.mObjFakeBird = mLevelMain.levelObjects.addObject("POWERUP_TREESLING_FAKEBIRD",this.mTreePartToAttachBirdTo.getBody().GetPosition().x,this.mTreePartToAttachBirdTo.getBody().GetPosition().y,0,LevelObjectManager.ID_NEXT_FREE,false,false,false) as LevelObject;
         this.mObjFakeBird.getBody().GetDefinition().linearDamping = 7;
         this.mObjFakeBird.getBody().GetDefinition().angularDamping = 0.1;
         this.mObjFakeBird.getBody().SetAwake(true);
      }
      
      private function removeSlingShotParts() : void
      {
         var lo:LevelObject = null;
         this.mHasAttachedJoint = false;
         this.mObjFakeBird = null;
         this.mTreePartToAttachBirdTo = null;
         this.mJointMouseB2Joint = null;
         this.mJointMouse = null;
         for each(lo in this.mSlingShotParts)
         {
            if(mLevelMain.levelObjects)
            {
               mLevelMain.levelObjects.removeObject(lo);
            }
         }
         this.mSlingShotParts.length = 0;
      }
      
      private function addBirdToTreeJoint() : void
      {
         this.createFakeBirdObject();
         var levelJointModel4:LevelJointModel = new LevelJointModel(LevelJointModel.DISTANCE_JOINT,this.mObjFakeBird.id,this.mTreePartToAttachBirdTo.id,new Point(0,0),new Point(0,0),false);
         levelJointModel4.coordinateType = 2;
         levelJointModel4.frequency = smMouseJointFq;
         levelJointModel4.dampingRatio = smMouseJointDamp;
         levelJointModel4.breakable = false;
         levelJointModel4.slingshotJoint = true;
         var jointDistance3:LevelJoint = (mLevelMain.levelObjects as FacebookLevelObjectManager).createJointAtRuntime(levelJointModel4);
         var mouseJointModel:LevelJointModel = new LevelJointModel(LevelJointModel.MOUSE_JOINT,this.mTreePartToAttachBirdTo.id,this.mObjFakeBird.id,new Point(0,0),new Point(0,0));
         mouseJointModel.breakable = false;
         mouseJointModel.slingshotJoint = true;
         this.mJointMouse = (mLevelMain.levelObjects as FacebookLevelObjectManager).createJointAtRuntime(mouseJointModel);
         this.mJointMouseB2Joint = this.mJointMouse.B2Joint as b2MouseJoint;
         this.mObjFakeBird.getBody().SetAwake(true);
      }
      
      override public function update(deltaTime:Number, updateLogic:Boolean = true) : void
      {
         var mousePoint:Point = null;
         var targetVector:b2Vec2 = null;
         if((levelMain as FacebookLevelMain).powerupsHandler)
         {
            if(mDragging)
            {
               if((levelMain as FacebookLevelMain).powerupsHandler.isWaitingForPowerupActivation)
               {
                  mDragging = false;
                  mShootTheBird = false;
                  setDefaultCoordinatesForRubber();
               }
            }
         }
         super.update(deltaTime,updateLogic);
         var bird:LevelSlingshotObject = null;
         if(mSlingShotState == STATE_BIRD_IS_READY && !this.mHasAttachedJoint && !this.mObjFakeBird && this.mTreePartToAttachBirdTo && this.mTreePartToAttachBirdTo.getBody())
         {
            this.mHasAttachedJoint = true;
            this.mHasUpdatedTreeJoints = false;
            this.addBirdToTreeJoint();
         }
         else if(mSlingShotState == STATE_WAIT_FOR_NEXT_BIRD && !this.mHasUpdatedTreeJoints)
         {
            this.mHasUpdatedTreeJoints = true;
         }
         var birdOffsetX:Number = 0;
         var birdOffsetY:Number = 0;
         if(this.mObjFakeBird && mBirds.length > 0 && mSlingShotState == STATE_BIRD_IS_READY)
         {
            bird = mBirds[mNextBirdIndex];
            if(bird)
            {
               birdOffsetX = 0.5 * bird.radius * Math.cos(this.mTreePartToAttachBirdTo.getAngle());
               birdOffsetY = 0.5 * bird.radius * Math.sin(this.mTreePartToAttachBirdTo.getAngle());
            }
            if(this.mJointMouseB2Joint)
            {
               if(mDragging)
               {
                  mousePoint = (AngryBirdsEngine.controller as GameLogicController).getMouseScreenCoordinates();
                  mousePoint = mLevelMain.screenToBox2D(mousePoint.x,mousePoint.y);
                  targetVector = new b2Vec2(drawingDragX - mBirds[mNextBirdIndex].radius * Math.cos(mShootingAngle / (180 / Math.PI)),drawingDragY + mBirds[mNextBirdIndex].radius * Math.sin(mShootingAngle / (180 / Math.PI)));
                  this.mJointMouseB2Joint.SetTarget(new b2Vec2(this.mObjFakeBird.getBody().GetPosition().x,this.mObjFakeBird.getBody().GetPosition().y));
                  this.mObjFakeBird.getBody().SetPosition(targetVector);
               }
               else
               {
                  this.removeXmasTreeJoint();
               }
            }
         }
         if(mSlingShotState == STATE_BIRD_IS_READY && bird && this.mTreePartToAttachBirdTo && this.mTreePartToAttachBirdTo.getBody() && this.mHasAttachedJoint)
         {
         }
         if(this.mActivatedSlingShotType == SlingShotType.SLING_SHOT_CHRISTMAS)
         {
            mSlingshotFront.y = mY / LevelMain.PIXEL_TO_B2_SCALE + 60;
         }
      }
      
      public function activateSuperSlingshot() : void
      {
         this.updateSlingshotGraphics(true);
         this.setSpeed(Tuner.POWERUP_SPEED);
         this.startLightningAnimation("POWERUP_SLINGSHOT_LIGHTNING",null,0);
         if(this.mIsTelescopeInstalled)
         {
            this.installTelescope();
         }
      }
      
      public function setSpeed(value:Number) : void
      {
         var bird:LevelSlingshotObject = null;
         for each(bird in mBirds)
         {
            if(bird.name == "BIRD_GREEN")
            {
               bird.powerUpSpeed = value * LevelSlingshotObject.getGreenBirdLaunchSpeedRatio();
            }
            else
            {
               bird.powerUpSpeed = value;
            }
         }
      }
      
      protected function updateSlingshotGraphics(isSuper:Boolean = false) : void
      {
         var kingSlingAnimation:Animation = null;
         if(this.mActivatedSlingShotType)
         {
            createRopes(this.mActivatedSlingShotType.ropeColor,this.mActivatedSlingShotType.ropeColor,true);
         }
         else
         {
            createRopes();
         }
         mSlingshotRadiusMax = !!isSuper ? Number(Tuner.SLINGSHOT_SPED_UP_RUBBERBAND_LENGTH) : Number(Tuner.SLINGSHOT_RUBBERBAND_LENGTH);
         this.superSlingshot = isSuper;
         while(mSprite.numChildren > 0)
         {
            mSprite.removeChildAt(0);
         }
         if(this.mActivatedSlingShotType != SlingShotType.SLING_SHOT_CHRISTMAS)
         {
            mSlingshotBack = new Sprite();
            mSlingshotBack.addChild(mBackImage);
            mSlingshotBack.addChild(mRopeBackContainer);
            mSlingshotFront = new Sprite();
            mSlingshotFront.addChild(mRopeRubberContainer);
            mSlingshotFront.addChild(mRopeFrontContainer);
            mSlingshotFront.addChild(mFrontImage);
         }
         if(isSuper)
         {
            kingSlingAnimation = mLevelMain.animationManager.getAnimation("SLING_SHOT_KINGSLING");
            mSlingshotFront.addChild(kingSlingAnimation.getFrame(0));
         }
         addSprites();
         mUpdateVisuals = true;
      }
      
      override protected function updateAnimations(deltaTime:Number) : void
      {
         var i:int = 0;
         super.updateAnimations(deltaTime);
         if(this.mLightningAnimations)
         {
            for(i = this.mLightningAnimations.length - 1; i >= 0; i--)
            {
               if(!this.updateEffect(this.mLightningAnimations[i],deltaTime))
               {
                  this.mLightningAnimations.splice(i,1);
               }
            }
         }
         this.updateEffect(this.mBlastAnimation,deltaTime);
         this.updateEffect(this.mPowerPotionAnimation,deltaTime);
         this.updateEffect(this.mBoomboxAnimation,deltaTime);
         this.updateTelescope();
      }
      
      override public function useMightyEagle() : LevelSlingshotObject
      {
         var bait:LevelSlingshotObject = super.useMightyEagle();
         (bait as FacebookLevelSlingshotObject).SlingShotAbility = this.mActivatedSlingShotType;
         return bait;
      }
      
      override protected function initializeSlingshotObject(levelItem:LevelItem, x:Number, y:Number, angle:Number, sprite:Sprite, index:int) : LevelSlingshotObject
      {
         return new FacebookLevelSlingshotObject(this,sprite,levelItem.itemName,levelItem,x,y,angle,index);
      }
      
      override protected function addSlingshotObject(name:String, x:Number, y:Number, angle:Number, index:int = -1) : LevelSlingshotObject
      {
         var bird:LevelSlingshotObject = super.addSlingshotObject(name,x,y,angle,index);
         if(this.superSlingshot)
         {
            this.setSpeed(Tuner.POWERUP_SPEED);
         }
         if(mLevelMain is FacebookLevelMain)
         {
            (mLevelMain as FacebookLevelMain).initializeSlingshotObject(bird);
         }
         return bird;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.superSlingshot)
         {
            SoundEngine.playSound("super_shot");
         }
         else if(this.mActivatedSlingShotType.shootSoundName)
         {
            SoundEngine.playSound(this.mActivatedSlingShotType.shootSoundName);
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      public function addWingmanAppearEffect() : Boolean
      {
         var angle2:Number = NaN;
         var featherSpeed:Number = NaN;
         var wX:Number = mX / LevelMain.PIXEL_TO_B2_SCALE;
         var wY:Number = mY / LevelMain.PIXEL_TO_B2_SCALE;
         var featherCount:int = 20 + Math.random() * 10;
         for(var i:int = 0; i < featherCount; i++)
         {
            angle2 = Math.random() * (Math.PI * 2);
            featherSpeed = 0.5 * 10 + 10 * (Math.random() * 0.5);
            levelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,mX,mY,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial("BIRD_RED"),featherSpeed * Math.cos(angle2) * 1,-featherSpeed * Math.sin(angle2) * 1,5,featherSpeed * 20,Math.sqrt(1));
         }
         var bird:FacebookLevelSlingshotObject = null;
         if(mBirds.length > 0)
         {
            bird = mBirds[mNextBirdIndex] as FacebookLevelSlingshotObject;
            mBirds.splice(mNextBirdIndex,1);
         }
         var addedBird:LevelSlingshotObject = this.addBirdStraightIntoSlingshot("BIRD_WINGMAN",mX + 0.7,mY + 0.1,0);
         if(this.mActivatedSlingShotType)
         {
            (addedBird as FacebookLevelSlingshotObject).SlingShotAbility = this.mActivatedSlingShotType;
         }
         for(var j:int = 0; j < mBirds.length; j++)
         {
            if(mBirds[j] != addedBird)
            {
               mBirds[j].animationsEnabled = true;
            }
         }
         SoundEngine.playSound("wingman_appears_slingshot","ChannelPowerups",0,1);
         (levelMain as FacebookLevelMain).powerupsHandler.wingmanUsed = true;
         var particleManager:FacebookLevelParticleManager = AngryBirdsEngine.smLevelMain.particles as FacebookLevelParticleManager;
         particleManager.addWingmanEffectParticle(mX,mY);
         mUpdateVisuals = true;
         if(bird && bird.powerUpSuperSeedUsed)
         {
            return true;
         }
         return false;
      }
      
      override public function getLaunchSpeed() : Number
      {
         var bird:LevelSlingshotObject = null;
         var speed:Number = super.getLaunchSpeed();
         if(mBirds.length > 0)
         {
            bird = mBirds[mNextBirdIndex];
         }
         if(bird && bird.powerUpSpeed > 0)
         {
            speed = speed / bird.launchSpeed * bird.powerUpSpeed;
         }
         return speed;
      }
      
      public function setPower(value:Number, powerupDef:PowerupDefinition) : LevelSlingshotObject
      {
         var slingshotObject:LevelSlingshotObject = null;
         var pd:PowerupDefinition = null;
         if(mBirds.length > 0)
         {
            slingshotObject = mBirds[mNextBirdIndex];
            for each(pd in PowerupType.allPowerups)
            {
               if(pd == powerupDef)
               {
                  slingshotObject.powerUpDamageMultiplier = pd.getPowerupDamageMultiplier(slingshotObject.name.toUpperCase());
                  slingshotObject.powerUpVelocityMultiplier = pd.getPowerupVelocityMultiplier(slingshotObject.name.toUpperCase());
                  break;
               }
            }
            slingshotObject.scale = value;
            slingshotObject.sprite.scaleX = slingshotObject.scale;
            slingshotObject.sprite.scaleY = slingshotObject.scale;
            return slingshotObject;
         }
         return null;
      }
      
      public function installTelescope() : void
      {
         var centerForEffectsX:Number = NaN;
         var centerForEffectsY:Number = NaN;
         var slingScopeTexture:PivotTexture = null;
         this.mIsTelescopeInstalled = true;
         this.mTelescopeMountImage = this.mTelescopeMountImage || mLevelMain.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0,this.mTelescopeMountImage);
         this.mTelescopeTubeImage = this.mTelescopeTubeImage || mLevelMain.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0,this.mTelescopeTubeImage);
         if(!this.isSeasonal)
         {
            this.mTelescopeMountImage.x = (mX - 2) / LevelMain.PIXEL_TO_B2_SCALE;
            this.mTelescopeMountImage.y = (mY - 3) / LevelMain.PIXEL_TO_B2_SCALE;
         }
         this.mTelescopeTubeImage.x = this.mTelescopeMountImage.x - 12;
         this.mTelescopeTubeImage.y = this.mTelescopeMountImage.y - 42;
         this.mTelescopeTubeImage.pivotX = -50;
         this.mTelescopeTubeImage.pivotY = -32;
         if(this.mActivatedSlingShotType != SlingShotType.SLING_SHOT_CHRISTMAS)
         {
            mSprite.addChild(this.mTelescopeTubeImage);
            mSprite.addChild(this.mTelescopeMountImage);
            this.mTelescopeCurrentAngle = Math.PI - mShootingAngle * (Math.PI / 180);
            centerForEffectsX = this.mTelescopeMountImage.x * LevelMain.PIXEL_TO_B2_SCALE;
            centerForEffectsY = this.mTelescopeMountImage.y * LevelMain.PIXEL_TO_B2_SCALE;
            this.addBlast(centerForEffectsX,centerForEffectsY);
         }
         else
         {
            slingScopeTexture = TextureManager.instance.getTexture("SLINGSCOPE_TREE_PART_6");
            this.mTreePartTop.sprite.removeChildAt(0);
            this.mTreePartTop.sprite.addChild(slingScopeTexture.getAsImage());
            this.addBlast(this.mTreePartTop.x * LevelMain.PIXEL_TO_B2_SCALE,this.mTreePartTop.y * LevelMain.PIXEL_TO_B2_SCALE - 1);
         }
         mUpdateVisuals = true;
      }
      
      private function updateTelescope() : void
      {
         var deltaAngle:Number = NaN;
         if(this.mIsTelescopeInstalled)
         {
            deltaAngle = mShootingAngle * (Math.PI / 180) - this.mTelescopeCurrentAngle;
            if(Math.abs(deltaAngle) < 0.5 * (Math.PI / 180))
            {
               this.mTelescopeCurrentAngle = mShootingAngle * (Math.PI / 180);
            }
            else
            {
               if(deltaAngle > Math.PI)
               {
                  deltaAngle -= Math.PI * 2;
               }
               if(deltaAngle < -Math.PI)
               {
                  deltaAngle += Math.PI * 2;
               }
               this.mTelescopeCurrentAngle += deltaAngle / 20;
            }
            this.mTelescopeTubeImage.rotation = Math.PI - this.mTelescopeCurrentAngle;
            mUpdateVisuals = true;
         }
      }
      
      private function startLightningAnimation(effectName:String, particleName:String, particleCount:int) : void
      {
         var amount:int = 0;
         var baseSpeed:int = 0;
         var i:int = 0;
         var angle2:Number = NaN;
         var name:String = null;
         var widthOfSling:Number = mBackImage.width;
         var heightOfSling:Number = mBackImage.height;
         var positionX:Number = mX / LevelMain.PIXEL_TO_B2_SCALE + widthOfSling / 2 + -15;
         var positionY:Number = mY / LevelMain.PIXEL_TO_B2_SCALE + heightOfSling + -13;
         if(!this.mLightningAnimations)
         {
            this.mLightningAnimations = new Vector.<FacebookLevelSlingshotEffect>();
         }
         this.mLightningAnimations.push(new FacebookLevelSlingshotEffect(effectName,mSprite,levelMain,positionX,positionY,50));
         mUpdateVisuals = true;
         if(particleName && particleCount > 0)
         {
            amount = 10 + Math.random() * 5;
            baseSpeed = 10;
            for(i = 0; i < amount; i++)
            {
               angle2 = 360 / amount * (i + 1);
               name = particleName + int(Math.random() * particleCount + 1);
               mLevelMain.particles.addSimpleParticle(name,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,mLevelMain.slingshot.x,mLevelMain.slingshot.y + Math.random() * 6,700 + Math.random() * 500,"",LevelParticle.PARTICLE_MATERIAL_BLOCKS_WOOD,baseSpeed * Math.cos(angle2),-baseSpeed * Math.sin(angle2),15,Math.random() * 60,0.5 + Math.random() * 1);
            }
         }
      }
      
      public function addBlast(blastCenterX:Number, blastCenterY:Number) : void
      {
         blastCenterX /= LevelMain.PIXEL_TO_B2_SCALE;
         blastCenterY /= LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mBlastAnimation)
         {
            this.mBlastAnimation.reset();
            this.mBlastAnimation.setPosition(blastCenterX,blastCenterY);
         }
         else
         {
            this.mBlastAnimation = new FacebookLevelSlingshotEffect("BLAST_EFFECT",mSprite,mLevelMain,blastCenterX,blastCenterY,50);
            this.mBlastAnimation.setCenteredVertically(true);
         }
         mUpdateVisuals = true;
      }
      
      public function addPowerPotionAnimation(blastCenterX:Number, blastCenterY:Number) : void
      {
         blastCenterX /= LevelMain.PIXEL_TO_B2_SCALE;
         blastCenterY /= LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mPowerPotionAnimation)
         {
            this.mPowerPotionAnimation.reset();
            this.mPowerPotionAnimation.setPosition(blastCenterX,blastCenterY);
         }
         else
         {
            this.mPowerPotionAnimation = new FacebookLevelSlingshotEffect("POWERUP_POWERPOTION_ACTIVATION",mSprite,mLevelMain,blastCenterX,blastCenterY,50);
            this.mPowerPotionAnimation.setCenteredVertically(true);
         }
         mUpdateVisuals = true;
      }
      
      public function addBoomboxAnimation(blastCenterX:Number, blastCenterY:Number) : void
      {
         blastCenterX /= LevelMain.PIXEL_TO_B2_SCALE;
         blastCenterY /= LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mBoomboxAnimation)
         {
            this.mBoomboxAnimation.reset();
            this.mBoomboxAnimation.setPosition(blastCenterX,blastCenterY);
         }
         else
         {
            this.mBoomboxAnimation = new FacebookLevelSlingshotEffect("POWERUP_BOOMBOX_ACTIVATION",mSprite,mLevelMain,blastCenterX,blastCenterY,50);
            this.mBoomboxAnimation.setCenteredVertically(true);
         }
         mUpdateVisuals = true;
      }
      
      private function updateEffect(effect:FacebookLevelSlingshotEffect, deltaTime:Number) : Boolean
      {
         if(effect && effect.update(deltaTime))
         {
            mUpdateVisuals = true;
            return true;
         }
         return false;
      }
      
      override protected function shootBird() : void
      {
         if(this.mActivatedSlingShotType == SlingShotType.SLING_SHOT_CHRISTMAS)
         {
            this.removeXmasTreeJoint();
         }
         super.shootBird();
      }
      
      override public function shootCurrentBird(power:Number, angle:Number) : void
      {
         super.shootCurrentBird(power,angle);
         if(this.mActivatedSlingShotType == SlingShotType.SLING_SHOT_CHRISTMAS)
         {
            this.mThrowObjectStartPosition = getPosition();
            this.mThrowObjectStartSpeed = this.getLaunchSpeed();
            this.mThrowObjectStartPower = getLaunchPower();
            this.mThrowObjectStartAngle = mShootingAngle;
            this.throwChristmasTreeObjects();
         }
      }
      
      private function removeXmasTreeJoint() : void
      {
         this.mHasAttachedJoint = false;
         if(this.mObjFakeBird)
         {
            mLevelMain.levelObjects.removeObject(this.mObjFakeBird);
            this.mObjFakeBird = null;
         }
      }
      
      private function throwChristmasTreeObjects() : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         var bird:LevelSlingshotObject = null;
         var radius:Number = NaN;
         var a:Number = NaN;
         var launchX:Number = NaN;
         var launchY:Number = NaN;
         var power:Number = NaN;
         var angle:Number = NaN;
         var speedX:Number = NaN;
         var speedY:Number = NaN;
         var xmasAmmoGraphics:String = null;
         var xmasAmmo:FacebookLevelObjectXmasTreeAmmo = null;
         var powerRange:Number = this.mThrowObjectStartPower * (this.mLaunchObjectForceRangeEndPercentage - this.mLaunchObjectForceRangeStartPercentage) / 100;
         var powerRangeMin:Number = this.mThrowObjectStartPower * this.mLaunchObjectForceRangeStartPercentage / 100;
         for(var i:int = 1; i <= this.mLaunchObjectAmount; i++)
         {
            posX = this.mThrowObjectStartPosition.x;
            posY = this.mThrowObjectStartPosition.y;
            bird = mBirds[mNextBirdIndex];
            radius = bird.radius + 0.1;
            a = this.mThrowObjectStartAngle;
            launchX = radius * Math.cos(a * (Math.PI / 180));
            launchY = radius * Math.sin(a * (Math.PI / 180));
            posX += launchX;
            posY -= launchY;
            power = powerRangeMin + Math.random() * powerRange;
            angle = this.mThrowObjectStartAngle + ((this.mLaunchObjectSpreadAngle >> 1) - this.mLaunchObjectSpreadAngle / this.mLaunchObjectAmount * i);
            speedX = -this.mThrowObjectStartSpeed * power * Math.cos(angle / (180 / Math.PI));
            speedY = this.mThrowObjectStartSpeed * power * Math.sin(angle / (180 / Math.PI));
            xmasAmmoGraphics = FacebookLevelObjectXmasTreeAmmo.randomGraphicName();
            xmasAmmo = (mLevelMain.levelObjects as FacebookLevelObjectManager).addObject(xmasAmmoGraphics,posX,posY,this.mThrowObjectStartAngle,LevelObjectManager.ID_NEXT_FREE,false,false,false,1) as FacebookLevelObjectXmasTreeAmmo;
            xmasAmmo.applyLinearVelocity(new b2Vec2(speedX,speedY),false,true);
         }
      }
      
      override public function dispose() : void
      {
         this.removeSlingShotParts();
         super.dispose();
      }
      
      public function get activatedSlingShotType() : SlingShotDefinition
      {
         return this.mActivatedSlingShotType;
      }
      
      public function updateTreeJoints(hz:Number, damp:Number) : void
      {
         var lo:LevelObject = null;
         var distJoint:b2DistanceJoint = null;
         smDistanceJointFq = hz;
         smDistanceJointDamp = damp;
         for each(lo in this.mSlingShotParts)
         {
            if(lo.getBody().GetJointList() && lo.getBody().GetJointList().joint && lo.getBody().GetJointList().joint is b2DistanceJoint)
            {
               distJoint = b2DistanceJoint(lo.getBody().GetJointList().joint);
               distJoint.SetFrequency(hz);
               distJoint.SetDampingRatio(damp);
            }
         }
      }
      
      public function get fakeBird() : LevelObject
      {
         return this.mObjFakeBird;
      }
      
      public function get treePartToAttachBirdTo() : FacebookSlingshotTreepart
      {
         return this.mTreePartToAttachBirdTo;
      }
      
      override protected function playStretchSound() : void
      {
         SoundEngine.playSound(this.mActivatedSlingShotType.stretchSoundName);
      }
      
      override public function setSlingShotState(newState:int) : void
      {
         if(mSlingShotState == STATE_WAITING_FOR_WINGMAN && newState == STATE_BIRDS_ARE_GONE)
         {
            return;
         }
         super.setSlingShotState(newState);
      }
      
      override public function addBirdStraightIntoSlingshot(name:String, x:Number, y:Number, index:int) : LevelSlingshotObject
      {
         var addedObject:LevelSlingshotObject = super.addBirdStraightIntoSlingshot(name,x,y,index);
         if(this.mActivatedSlingShotType)
         {
            (addedObject as FacebookLevelSlingshotObject).SlingShotAbility = this.mActivatedSlingShotType;
         }
         return addedObject;
      }
      
      public function getWingmanJumpOffCoordinates() : Point
      {
         return this.mWingmanJumpOffCoordinates;
      }
      
      override public function sortBirds() : void
      {
         super.sortBirds();
         for(var i:int = 0; i < mBirds.length; i++)
         {
            if(mBirds[i].name == "BIRD_WINGMAN")
            {
               mBirdsSprite.setChildIndex(mBirds[i].sprite,0);
               break;
            }
         }
      }
   }
}

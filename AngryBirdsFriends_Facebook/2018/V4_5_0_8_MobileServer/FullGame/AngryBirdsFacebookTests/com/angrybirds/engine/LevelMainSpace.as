package com.angrybirds.engine
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelModelSpace;
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItemBirdSpace;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   import com.angrybirds.data.level.item.LevelItemSoundManagerLua;
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManager;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundSpace;
   import com.angrybirds.engine.background.LevelBackground;
   import com.angrybirds.engine.background.LevelBackgroundSpace;
   import com.angrybirds.engine.objects.LevelObjectBirdSpace;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.angrybirds.engine.objects.LevelObjectManagerSpace;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.Joints.b2Joint;
   import com.rovio.factory.Log;
   import com.rovio.graphics.DynamicContentManager;
   import com.rovio.graphics.DynamicContentManagerSpace;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.TextureManager;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   import starling.core.Starling;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
   public class LevelMainSpace extends LevelMain
   {
       
      
      protected var mAimingLine:AimingLineSpace;
      
      protected var mAimingLineBitmap:BitmapData;
      
      protected var mAimingLineTexture:Texture;
      
      public function LevelMainSpace(stage:Stage, levelItemManager:LevelItemManager, levelThemeManager:LevelThemeBackgroundManager, levelManager:LevelManager)
      {
         super(stage,levelItemManager,levelThemeManager,levelManager);
      }
      
      public function get levelItemManagerSpace() : LevelItemManagerSpace
      {
         return mLevelItemManager as LevelItemManagerSpace;
      }
      
      override protected function initializeLevelSlingshot(level:LevelModel) : LevelSlingshot
      {
         return new LevelSlingshotSpace(this,level,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : DynamicContentManager
      {
         return new DynamicContentManagerSpace(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,LevelItemManagerSpace(mLevelItemManager));
      }
      
      override protected function initThemeSoundsManager() : DynamicContentManager
      {
         return new DynamicContentManagerSpace(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,LevelItemManagerSpace(mLevelItemManager),false);
      }
      
      override protected function initCutSceneManager() : DynamicContentManager
      {
         return new DynamicContentManagerSpace(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,LevelItemManagerSpace(mLevelItemManager));
      }
      
      override protected function initLevelEngine(level:LevelModel) : void
      {
         var gravity:Number = level.worldGravity;
         mLevelEngine = new LevelEngineBox2D(this,gravity);
      }
      
      override protected function initializeLevelBackground(name:String, groundLevel:Number, textureManager:TextureManager, minimumScale:Number) : LevelBackground
      {
         var spaceBackground:LevelThemeBackgroundSpace = null;
         var background:LevelThemeBackground = mLevelThemeManager.getBackground(name);
         if(background == null)
         {
            Log.log("UNKNOWN LEVEL THEME! " + name);
            name = LevelModel.DEFAULT_THEME;
            background = mLevelThemeManager.getBackground(name);
         }
         var soundManager:LevelItemSoundManagerLua = null;
         if(this.levelItemManagerSpace)
         {
            soundManager = this.levelItemManagerSpace.soundManager;
         }
         if(background is LevelThemeBackgroundSpace)
         {
            spaceBackground = background as LevelThemeBackgroundSpace;
            return this.initializeLevelBackgroundSpace(spaceBackground,groundLevel,textureManager,soundManager,minimumScale,!Starling.isSoftware);
         }
         return super.initializeLevelBackground(name,groundLevel,textureManager,minimumScale);
      }
      
      private function initializeLevelBackgroundSpace(background:LevelThemeBackgroundSpace, groundLevel:Number, textureManager:TextureManager, soundManager:LevelItemSoundManagerLua, minimumScale:Number, highQuality:Boolean = true) : LevelBackgroundSpace
      {
         return new LevelBackgroundSpace(this,background,groundLevel,textureManager,soundManager,minimumScale,highQuality);
      }
      
      override protected function initializeLevelObjectManager(level:LevelModel) : LevelObjectManager
      {
         var spaceBackground:LevelBackgroundSpace = null;
         var gravitySpriteName:String = null;
         var gravitySpriteFadedName:String = null;
         var groundType:String = LevelThemeBackground.GROUND_TYPE;
         if(level is LevelModelSpace)
         {
            spaceBackground = mLevelBackground as LevelBackgroundSpace;
            if(spaceBackground)
            {
               gravitySpriteName = spaceBackground.gravitySliceSpriteName;
               gravitySpriteFadedName = spaceBackground.gravitySliceSpriteFadedName;
               return new LevelObjectManagerSpace(this,level as LevelModelSpace,new Sprite(),gravitySpriteName,gravitySpriteFadedName);
            }
            return new LevelObjectManagerSpace(this,level as LevelModelSpace,new Sprite(),groundType);
         }
         return super.initializeLevelObjectManager(level);
      }
      
      override protected function getThemeGraphicsLoadList(themeName:String) : Array
      {
         var spaceBackground:LevelThemeBackgroundSpace = null;
         var background:LevelThemeBackground = mLevelThemeManager.getBackground(themeName);
         if(background is LevelThemeBackgroundSpace)
         {
            spaceBackground = background as LevelThemeBackgroundSpace;
            return spaceBackground.loadNames;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(level:LevelModel) : void
      {
         if(level.hasGround)
         {
            super.initializePhysicsConstants(level);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.LINEAR_SLEEP_TOLERANCE_SPACE;
         }
      }
      
      override protected function levelInitialized() : void
      {
         super.levelInitialized();
         this.initializeAimingLine();
         this.stabilizeWorld();
      }
      
      protected function initializeAimingLine() : void
      {
         this.mAimingLineBitmap = new BitmapData(16,16,true,2298413056);
         this.mAimingLineTexture = textureManager.getTextureFromBitmapData(this.mAimingLineBitmap);
         this.mAimingLine = new AimingLineSpace(new Sprite(),this.mAimingLineTexture,LevelObjectBirdSpace.DEFAULT_DAMPING_START_TIME_MILLISECONDS / 1000,LevelObjectBirdSpace.LINEAR_DAMPING_AFTER_DELAY);
         slingshot.aimingLineSprite.addChild(this.mAimingLine.sprite);
      }
      
      protected function stabilizeWorld() : void
      {
         this.stabilizeWorldWithSteps(20,1000 / 30);
      }
      
      protected function stabilizeWorldWithSteps(stepCount:int, stepDuration:Number) : void
      {
         var gravity:b2Vec2 = new b2Vec2();
         gravity.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.levelObjectsSpace && this.levelObjectsSpace.hasGravitySensors)
         {
            mLevelEngine.mWorld.SetGravity(new b2Vec2(0,0));
         }
         else
         {
            mLevelEngine.mWorld.SetGravity(new b2Vec2(gravity.x / 10,gravity.y / 10));
         }
         var joint:b2Joint = mLevelEngine.mWorld.GetJointList();
         var motorJoints:Vector.<b2Joint> = new Vector.<b2Joint>();
         while(joint)
         {
            if(joint.IsMotorEnabled())
            {
               motorJoints.push(joint);
               joint.EnableMotor(false);
            }
            joint = joint.GetNext();
         }
         for(var i:int = 0; i < stepCount; i++)
         {
            mLevelEngine.mWorld.Step(stepDuration,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(i == 0)
            {
               mLevelObjects.setCollisionsEnabled(false);
            }
         }
         for each(joint in motorJoints)
         {
            joint.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(gravity);
         mLevelEngine.mWorld.SetWarmStarting(true);
         mLevelObjects.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.mAimingLineTexture)
         {
            textureManager.unregisterBitmapDataTexture(this.mAimingLineTexture);
            this.mAimingLineTexture = null;
            this.mAimingLineBitmap = null;
         }
         if(this.mAimingLine)
         {
            this.mAimingLine.dispose();
            this.mAimingLine = null;
         }
         super.clearLevel();
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateSlingshot:Boolean) : Number
      {
         var time:Number = super.update(deltaTimeMilliSeconds,updateSlingshot);
         this.updateAimingLine();
         return time;
      }
      
      protected function updateAimingLine() : void
      {
         var birdType:String = null;
         var startPoint:Point = null;
         var levelItem:LevelItemBirdSpace = null;
         var aimingLineTexture:String = null;
         var texture:PivotTexture = null;
         var birdRadius:Number = NaN;
         var speedX:Number = NaN;
         var speedY:Number = NaN;
         if(this.mAimingLine && slingshot)
         {
            birdType = slingshot.getCurrentBirdType();
            if(birdType)
            {
               levelItem = mLevelItemManager.getItem(birdType) as LevelItemBirdSpace;
               if(levelItem)
               {
                  aimingLineTexture = levelItem.getProperty("aimingAidSprite");
                  texture = mTextureManager.getTexture(aimingLineTexture);
                  if(texture)
                  {
                     this.mAimingLine.setDotTexture(texture.texture);
                  }
                  if(levelItem.shape is CircleShapeDefinition)
                  {
                     birdRadius = CircleShapeDefinition(levelItem.shape).radius;
                     this.mAimingLine.setObjectRadius(birdRadius);
                  }
               }
            }
            startPoint = slingshot.getPosition();
            this.mAimingLine.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.mAimingLine.enabled && startPoint != null && slingshot.mDragging)
            {
               speedX = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               speedY = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.mAimingLine.showLine(startPoint,new Point(speedX,speedY),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get levelObjectsSpace() : LevelObjectManagerSpace
      {
         return levelObjects as LevelObjectManagerSpace;
      }
   }
}

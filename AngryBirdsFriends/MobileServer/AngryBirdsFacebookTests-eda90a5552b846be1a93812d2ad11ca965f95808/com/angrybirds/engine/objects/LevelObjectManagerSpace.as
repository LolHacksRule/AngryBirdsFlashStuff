package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelModelSpace;
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemParticleSpace;
   import com.angrybirds.data.level.item.LevelItemPigSpace;
   import com.angrybirds.data.level.item.LevelItemSpace;
   import com.angrybirds.data.level.item.LevelItemSpaceLua;
   import com.angrybirds.data.level.object.LevelObjectExplosiveModel;
   import com.angrybirds.data.level.object.LevelObjectGravitySensorModel;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.background.LevelBackgroundSpace;
   import com.angrybirds.engine.beams.LevelLaserManager;
   import com.angrybirds.engine.objects.utils.DistanceCalculator;
   import com.angrybirds.engine.objects.utils.ObjectDistanceResults;
   import com.angrybirds.engine.particles.LevelParticleAnimated;
   import com.angrybirds.engine.particles.LevelParticleLaserCrosshair;
   import com.angrybirds.engine.particles.LevelParticleScore;
   import com.angrybirds.engine.particles.LevelParticleSplash;
   import com.angrybirds.engine.particles.LevelParticleTrail;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.graphics.PivotTexture;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class LevelObjectManagerSpace extends LevelObjectManager implements ILevelObjectUpdateManagerSpace
   {
       
      
      protected var mGravitySpriteName:String;
      
      protected var mGravitySpriteFadedName:String;
      
      protected var mPositionVector:b2Vec2;
      
      protected var mForceVector:b2Vec2;
      
      protected var mUseGravity:Boolean = true;
      
      protected var mLaserManager:LevelLaserManager;
      
      public function LevelObjectManagerSpace(levelMain:LevelMain, levelModel:LevelModel, sprite:Sprite, groundType:String, gravitySpriteName:String = "", gravitySpriteFadedName:String = "")
      {
         var levelSpace:LevelModelSpace = null;
         this.mPositionVector = new b2Vec2();
         this.mForceVector = new b2Vec2();
         this.mGravitySpriteName = gravitySpriteName;
         this.mGravitySpriteFadedName = gravitySpriteFadedName;
         super(levelMain,levelModel,sprite,groundType);
         if(levelModel is LevelModelSpace)
         {
            levelSpace = levelModel as LevelModelSpace;
            if(levelSpace.gravitySensorCount > 0)
            {
               this.mUseGravity = false;
            }
         }
         this.mLaserManager = new LevelLaserManager(levelMain.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.mLaserManager)
         {
            this.mLaserManager.dispose();
            this.mLaserManager = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var background:LevelBackgroundSpace = mLevelMain.background as LevelBackgroundSpace;
         if(background)
         {
            return background.textureScale;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(object:LevelObject) : Boolean
      {
         var levelItem:LevelItemSpaceLua = null;
         if(object)
         {
            levelItem = object.levelItem as LevelItemSpaceLua;
            if(levelItem && levelItem.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(object);
      }
      
      override protected function getScoreTextPosition(object:LevelObject) : Point
      {
         var x:Number = object.getBody().GetPosition().x;
         var y:Number = object.getBody().GetPosition().y;
         return new Point(x,y);
      }
      
      override protected function addLevelObjects(levelModel:LevelModel) : void
      {
         var i:int = 0;
         var scale:Number = NaN;
         var sensor:LevelObjectGravitySensorModel = null;
         var levelModelSpace:LevelModelSpace = levelModel as LevelModelSpace;
         if(levelModelSpace)
         {
            for(i = 0; i < levelModelSpace.gravitySensorCount; i++)
            {
               scale = 1;
               sensor = levelModelSpace.getGravitySensor(i);
               addObjectFromModel(sensor,sensor.id,false,false,false,scale);
            }
         }
         super.addLevelObjects(levelModel);
      }
      
      protected function addParticleSpace(model:LevelObjectModel, sprite:Sprite, animation:Animation) : LevelObjectBase
      {
         var texture:PivotTexture = null;
         var itemName:String = model.type;
         if(itemName.indexOf("SCORE") != -1)
         {
            itemName = LevelParticleScore.NAME;
         }
         var x:Number = model.x;
         var y:Number = model.y;
         var angle:Number = model.angle;
         var areaWidth:Number = model.areaWidth;
         var areaHeight:Number = model.areaHeight;
         var levelItem:LevelItemParticleSpace = mLevelMain.levelItemManager.getItem(itemName) as LevelItemParticleSpace;
         if(!levelItem)
         {
            return null;
         }
         if(levelItem.isReticle)
         {
            return new LevelParticleLaserCrosshair(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,x,y);
         }
         if(itemName == LevelParticleScore.NAME)
         {
            texture = mLevelMain.textureManager.getTexture(model.type);
            return new LevelParticleScore(texture,sprite,mLevelMain.mLevelEngine.mWorld,levelItem,x,y);
         }
         if(itemName.indexOf("Trail") != -1)
         {
            return new LevelParticleTrail(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,x,y,angle,areaWidth,areaHeight);
         }
         if(levelItem.amount <= 3)
         {
            return new LevelParticleAnimated(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,x,y,angle,areaWidth,areaHeight);
         }
         return new LevelParticleSplash(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,x,y,angle,areaWidth,areaHeight);
      }
      
      override protected function createObjectInstance(model:LevelObjectModel, sprite:Sprite, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObjectBase
      {
         var animationName:String = null;
         var animation:Animation = null;
         var gravitySensorModel:LevelObjectGravitySensorModel = null;
         var outerPivotTexture:PivotTexture = null;
         var innerPivotTexture:PivotTexture = null;
         var levelItem:LevelItem = mLevelMain.levelItemManager.getItem(model.type);
         if(levelItem is LevelItemSpace)
         {
            animationName = levelItem.itemName;
            animation = mLevelMain.animationManager.getAnimation(animationName);
            if(levelItem is LevelItemParticleSpace)
            {
               return this.addParticleSpace(model,sprite,animation);
            }
            if(model.type.indexOf(LevelObjectGravitySensor.NAME) != -1)
            {
               gravitySensorModel = model as LevelObjectGravitySensorModel;
               if(gravitySensorModel)
               {
                  if(!levelItem)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + model.type + "\'");
                  }
                  outerPivotTexture = mLevelMain.backgroundTextureManager.getTexture(this.mGravitySpriteName);
                  innerPivotTexture = mLevelMain.backgroundTextureManager.getTexture(this.mGravitySpriteFadedName);
                  return new LevelObjectGravitySensor(sprite,mLevelMain.mLevelEngine.mWorld,model,levelItem as LevelItemSpace,CircleShapeDefinition(gravitySensorModel.shape).radius,gravitySensorModel.minForce,gravitySensorModel.maxForce,gravitySensorModel.gravityMultiplier,outerPivotTexture,innerPivotTexture);
               }
            }
            else if(model.type.indexOf("SENSOR_PIG") != -1)
            {
               return new LevelObjectEmotionSensor(sprite,mLevelMain.mLevelEngine.mWorld,levelItem,levelItem.shape,model);
            }
            if(animationName.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(model,sprite,tryToScream,scale);
            }
            if(animationName.substr(0,7) == "BUBBLE_")
            {
               return new LevelObjectBubbleSpace(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
            }
            if(levelItem is LevelItemSpaceLua)
            {
               if(model is LevelObjectExplosiveModel)
               {
                  return this.createBombBlockInstance(model,sprite,animation,levelItem,LevelExplosion.TYPE_CUSTOM,scale);
               }
               return this.createObjectBlockSpace(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
            }
         }
         return super.createObjectInstance(model,sprite,tryToScream,scale);
      }
      
      protected function createObjectBlockSpace(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number) : LevelObjectBlockSpace
      {
         return new LevelObjectBlockSpace(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override protected function addObjectPig(model:LevelObjectModel, sprite:Sprite, animation:Animation, levelItem:LevelItem, scale:Number = 1.0) : LevelObjectPig
      {
         if(animation.hasSubAnimation(LevelItemPigSpace.DEFAULT_STATE))
         {
            return new LevelObjectPigSpace(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,scale);
         }
         return super.addObjectPig(model,sprite,animation,levelItem,scale);
      }
      
      override protected function createBombBlockInstance(model:LevelObjectModel, sprite:Sprite, animation:Animation, levelItem:LevelItem, explosionType:int, scale:Number = 1.0) : LevelObjectBase
      {
         var levelItemSpace:LevelItemSpace = null;
         var pushRadius:Number = NaN;
         var push:Number = NaN;
         var damageRadius:Number = NaN;
         var damage:Number = NaN;
         var modelTNT:LevelObjectExplosiveModel = null;
         if(levelItem is LevelItemSpace)
         {
            levelItemSpace = levelItem as LevelItemSpace;
            pushRadius = levelItemSpace.getNumberProperty("explosionRadius");
            push = levelItemSpace.getNumberProperty("explosionForce");
            damageRadius = levelItemSpace.getNumberProperty("explosionDamageRadius");
            damage = levelItemSpace.getNumberProperty("explosionDamage");
            if(model is LevelObjectExplosiveModel)
            {
               modelTNT = model as LevelObjectExplosiveModel;
               if(!isNaN(modelTNT.explosionRadius))
               {
                  pushRadius = modelTNT.explosionRadius;
               }
               if(!isNaN(modelTNT.explosionForce))
               {
                  push = modelTNT.explosionForce;
               }
               if(!isNaN(modelTNT.explosionDamageRadius))
               {
                  damageRadius = modelTNT.explosionDamageRadius;
               }
               if(!isNaN(modelTNT.explosionDamage))
               {
                  damage = modelTNT.explosionDamage;
               }
            }
            return new LevelObjectBlockBombSpace(sprite,animation,mLevelMain.mLevelEngine.mWorld,levelItem,model,pushRadius,push,damageRadius,damage,scale);
         }
         return super.createBombBlockInstance(model,sprite,animation,levelItem,explosionType,scale);
      }
      
      override public function renderObjects(deltaTimeMilliSeconds:Number, physicsStepMilliSeconds:Number, physicsTimeOffsetMilliSeconds:Number) : void
      {
         super.renderObjects(deltaTimeMilliSeconds,physicsStepMilliSeconds,physicsTimeOffsetMilliSeconds);
         if(this.mLaserManager)
         {
            this.mLaserManager.renderLasers(deltaTimeMilliSeconds,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(distance:Number, maximumDistance:Number) : Number
      {
         return 1 - distance / maximumDistance;
      }
      
      protected function getExplosionDamageMultiplierClassic(distance:Number, maximumDistance:Number) : Number
      {
         return super.getExplosionDamageMultiplier(distance,maximumDistance);
      }
      
      override protected function getExplosionDistanceToObject(explosionX:Number, explosionY:Number, object:LevelObject) : ObjectDistanceResults
      {
         var x:Number = object.getBody().GetPosition().x;
         var y:Number = object.getBody().GetPosition().y;
         var width:Number = object.levelItem.shape.getWidth();
         var height:Number = object.levelItem.shape.getHeight();
         var angle:Number = object.getBody().GetAngle();
         return DistanceCalculator.getDistanceFromOBBToPoint(x,y,width,height,angle,explosionX,explosionY);
      }
      
      protected function getExplosionDistanceToObjectClassic(explosionX:Number, explosionY:Number, object:LevelObject) : ObjectDistanceResults
      {
         return super.getExplosionDistanceToObject(explosionX,explosionY,object);
      }
      
      public function shootLaser(type:String, x:Number, y:Number, angleDegrees:Number, speed:Number, shotByBird:Boolean) : void
      {
         var scale:Number = NaN;
         var sprite:Sprite = null;
         var animation:Animation = null;
         var levelItem:LevelItemSpaceLua = mLevelMain.levelItemManager.getItem(type) as LevelItemSpaceLua;
         if(levelItem)
         {
            scale = levelItem.scale;
            if(shotByBird)
            {
               scale = 1;
            }
            scale *= 1.5;
            sprite = new Sprite();
            animation = mLevelMain.animationManager.getAnimation(type);
            this.mLaserManager.shootLaser(x,y,angleDegrees,speed,levelItem,sprite,animation,scale,shotByBird);
            overlaySprite.addChild(sprite);
         }
      }
      
      public function getClosestLaserTargetPig(x:Number, y:Number) : LevelObjectPigSpace
      {
         var pig:LevelObjectPigSpace = null;
         var pos:b2Vec2 = null;
         var distance:Number = NaN;
         var closest:LevelObjectPigSpace = null;
         var closestDistance:Number = 0;
         var arrayLength:int = mObjects.length;
         for(var i:int = 0; i < arrayLength; i++)
         {
            pig = mObjects[i] as LevelObjectPigSpace;
            if(pig && pig.health > 0 && !pig.isLaserTarget)
            {
               pos = pig.getBody().GetPosition();
               distance = Math.sqrt((x - pos.x) * (x - pos.x) + (y - pos.y) * (y - pos.y));
               if(closest == null || distance < closestDistance)
               {
                  closest = pig;
                  closestDistance = distance;
               }
            }
         }
         return closest;
      }
      
      public function slowMotion(fadeInMilliSeconds:Number, durationMilliSeconds:Number, fadeOutMilliSeconds:Number, speed:Number) : void
      {
         mLevelMain.setSlowMotion(fadeInMilliSeconds,durationMilliSeconds,fadeOutMilliSeconds,speed);
      }
      
      override public function getForceAtPoint(x:Number, y:Number, radius:Number, result:b2Vec2) : b2Vec2
      {
         var sensor:LevelObjectSensor = null;
         var gravitySensor:LevelObjectGravitySensor = null;
         if(this.mUseGravity)
         {
            return super.getForceAtPoint(x,y,radius,result);
         }
         if(!result)
         {
            result = new b2Vec2();
         }
         result.x = 0;
         result.y = 0;
         for each(sensor in mSensors)
         {
            gravitySensor = sensor as LevelObjectGravitySensor;
            if(gravitySensor)
            {
               this.mPositionVector.x = x;
               this.mPositionVector.y = y;
               gravitySensor.getForceAt(this.mPositionVector,radius,this.mForceVector);
               result.Add(this.mForceVector);
            }
         }
         return result;
      }
      
      override protected function updateExplosionEffects(explosion:LevelExplosion, x:Number, y:Number, pushRadius:Number) : void
      {
      }
      
      protected function updateExplosionEffectsClassic(explosion:LevelExplosion, x:Number, y:Number, pushRadius:Number) : void
      {
         super.updateExplosionEffects(explosion,x,y,pushRadius);
      }
      
      override protected function hasMinimumCollisionSpeed(obj1:LevelObjectBase, obj2:LevelObjectBase) : Boolean
      {
         return true;
      }
      
      protected function getCollisionDamageFactorClassic(collider:LevelObject, target:LevelObject) : Number
      {
         return super.getCollisionDamageFactor(collider,target);
      }
      
      override protected function getCollisionDamageFactor(collider:LevelObject, target:LevelObject) : Number
      {
         var damageFactor:Number = NaN;
         if(collider is LevelObjectBird)
         {
            return 1;
         }
         if(target is LevelObjectBird)
         {
            return 0;
         }
         return Number(collider.getDamageFactor(target.getMaterialName()));
      }
      
      protected function getCollisionForceFactorClassic(collider:LevelObject, target:LevelObject) : Number
      {
         return super.getCollisionForceFactor(collider,target);
      }
      
      override protected function getCollisionForceFactor(collider:LevelObject, target:LevelObject) : Number
      {
         var forceFactor:Number = NaN;
         if(collider is LevelObjectBird)
         {
            return Number(collider.getDamageFactor(target.getMaterialName()));
         }
         return 1;
      }
      
      public function get hasGravitySensors() : Boolean
      {
         var sensor:LevelObjectSensor = null;
         if(mSensors.length > 0)
         {
            for each(sensor in mSensors)
            {
               if(sensor is LevelObjectGravitySensor)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}

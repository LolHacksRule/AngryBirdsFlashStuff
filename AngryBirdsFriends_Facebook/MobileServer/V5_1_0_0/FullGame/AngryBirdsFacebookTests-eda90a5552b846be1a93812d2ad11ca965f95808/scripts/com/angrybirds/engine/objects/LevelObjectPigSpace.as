package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemPigSpace;
   import com.angrybirds.data.level.item.LevelItemSpace;
   import com.angrybirds.data.level.item.LevelItemSpacePigLua;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectPigSpace extends LevelObjectPig implements IEmotionSensorOwner
   {
      
      public static const DEFAULT_LINEAR_DAMPING:Number = 0.15;
      
      public static const SENSOR_A_TYPE:String = "BLOCK_SENSOR_PIG_A";
      
      public static const SENSOR_B_TYPE:String = "BLOCK_SENSOR_PIG_B";
      
      private static const FREEZE_TIME_LIMIT_MILLISECONDS:Number = 2000;
       
      
      protected var mSensorA:LevelObjectEmotionSensor;
      
      protected var mSensorB:LevelObjectEmotionSensor;
      
      protected var mBehavior:PigBehaviorLogic;
      
      protected var mFreezeTimeCounter:Number;
      
      protected var mInsideGravityFieldCount:int = 0;
      
      protected var mInsideBubbleCount:int = 0;
      
      protected var mParticlesDestroyed:String = "lightBuff";
      
      protected var mParticlesFreeze:String = "iceExplosion";
      
      protected var mLevelItemSpacePigLua:LevelItemSpacePigLua;
      
      protected var mObjectLogic:ObjectBehaviorLogic;
      
      protected var mIsLaserTarget:Boolean;
      
      public function LevelObjectPigSpace(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0)
      {
         this.mLevelItemSpacePigLua = levelItem as LevelItemSpacePigLua;
         this.mBehavior = new PigBehaviorLogic(this,LevelItemPigSpace(levelItem));
         this.initializeObjectBehaviorLogic();
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         if(world.GetGravity().Length() > 0)
         {
            this.mInsideGravityFieldCount = 1;
         }
      }
      
      protected function get sensorAType() : String
      {
         return SENSOR_A_TYPE;
      }
      
      protected function get sensorBType() : String
      {
         return SENSOR_B_TYPE;
      }
      
      public function get isLaserTarget() : Boolean
      {
         return this.mIsLaserTarget;
      }
      
      public function set isLaserTarget(isTarget:Boolean) : void
      {
         this.mIsLaserTarget = isTarget;
      }
      
      override protected function createPhysicsBody(x:Number, y:Number) : void
      {
         super.createPhysicsBody(x,y);
         getBody().SetLinearDamping(DEFAULT_LINEAR_DAMPING);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.mObjectLogic = new ObjectBehaviorLogic(this.mLevelItemSpacePigLua);
      }
      
      override protected function initObjectRenderer() : LevelObjectRenderer
      {
         var renderer:LevelObjectSpacePigRenderer = new LevelObjectSpacePigRenderer(animation,sprite);
         renderer.animationListener = this.mBehavior;
         return renderer;
      }
      
      protected function isBubbleObject(object:LevelObjectBase) : Boolean
      {
         var levelItemSpace:LevelItemSpace = null;
         if(object && object.levelItem is LevelItemSpace)
         {
            levelItemSpace = object.levelItem as LevelItemSpace;
            if(levelItemSpace.getBooleanProperty("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(disconnectedObject:LevelObjectBase = null) : void
      {
         super.attachedJointRemoved(disconnectedObject);
         if(this.isBubbleObject(disconnectedObject))
         {
            --this.mInsideBubbleCount;
         }
         this.setFrozen(true);
      }
      
      override public function attachedJointCreated(connectedObject:LevelObjectBase = null) : void
      {
         super.attachedJointCreated(connectedObject);
         if(this.isBubbleObject(connectedObject))
         {
            ++this.mInsideBubbleCount;
         }
         this.setFrozen(false);
      }
      
      public function objectEnteredSensor(object:LevelObjectBase, sensor:LevelObjectEmotionSensor) : void
      {
         if(sensor == this.mSensorA)
         {
            this.mBehavior.objectEnteredSensorA(object);
         }
         else if(sensor == this.mSensorB)
         {
            this.mBehavior.objectEnteredSensorB(object);
         }
      }
      
      public function objectExitedSensor(object:LevelObjectBase, sensor:LevelObjectEmotionSensor) : void
      {
         if(sensor == this.mSensorA)
         {
            this.mBehavior.objectExitedSensorA(object);
         }
         else if(sensor == this.mSensorB)
         {
            this.mBehavior.objectExitedSensorB(object);
         }
      }
      
      override public function enteredSensor(sensor:LevelObjectSensor) : void
      {
         super.enteredSensor(sensor);
         if(sensor is LevelObjectGravitySensor)
         {
            ++this.mInsideGravityFieldCount;
            this.setFrozen(false);
         }
      }
      
      override public function leftSensor(sensor:LevelObjectSensor) : void
      {
         super.leftSensor(sensor);
         if(sensor is LevelObjectGravitySensor)
         {
            --this.mInsideGravityFieldCount;
            this.setFrozen(true);
         }
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         if(!updateManager)
         {
            return;
         }
         if(this.mSensorA)
         {
            updateManager.removeObject(this.mSensorA);
            this.mSensorA = null;
         }
         if(this.mSensorB)
         {
            updateManager.removeObject(this.mSensorB);
            this.mSensorB = null;
         }
         var x:Number = getBody().GetPosition().x;
         var y:Number = getBody().GetPosition().y;
         var angle:Number = getAngle();
         this.spawnParticlesOnExplode(updateManager,x,y,angle);
         this.mObjectLogic.spawnObjectsOnDestruction(updateManager,x,y,angle);
         this.mObjectLogic.makeExplosion(updateManager,x,y);
         super.updateBeforeRemoving(updateManager,countScore);
      }
      
      protected function spawnParticlesOnExplode(updateManager:ILevelObjectUpdateManager, x:Number, y:Number, angle:Number) : void
      {
         var posX:Number = getBody().GetPosition().x;
         var posY:Number = getBody().GetPosition().y;
         angle = getAngle();
         if(this.mLevelItemSpacePigLua.spriteScore)
         {
            updateManager.addObject(this.mLevelItemSpacePigLua.spriteScore,posX,posY,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,3,true);
         }
      }
      
      protected function spawnParticlesOnFreeze(updateManager:ILevelObjectUpdateManager) : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         if(this.mParticlesFreeze)
         {
            posX = getBody().GetPosition().x;
            posY = getBody().GetPosition().y;
            updateManager.addObject(this.mParticlesFreeze,posX,posY,0,LevelObjectManager.ID_NEXT_FREE,false,true,false);
         }
      }
      
      override protected function setDamageState(damageState:Number, updateManager:ILevelObjectUpdateManager) : Boolean
      {
         if(this.mBehavior)
         {
            if(this.mBehavior.isFrozen)
            {
               return false;
            }
            this.mBehavior.setDamageState(damageState);
         }
         return super.setDamageState(damageState,updateManager);
      }
      
      override protected function normalize() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      protected function createSensors(updateManager:ILevelObjectUpdateManager) : void
      {
         var x:Number = getBody().GetPosition().x;
         var y:Number = getBody().GetPosition().y;
         if(!this.mSensorA)
         {
            this.mSensorA = updateManager.addObject(this.sensorAType,x,y,0,LevelObjectManager.ID_NEXT_FREE) as LevelObjectEmotionSensor;
            this.mSensorA.owner = this;
         }
         if(!this.mSensorB)
         {
            this.mSensorB = updateManager.addObject(this.sensorBType,x,y,0,LevelObjectManager.ID_NEXT_FREE) as LevelObjectEmotionSensor;
            this.mSensorB.owner = this;
         }
      }
      
      protected function updateSensorPositions() : void
      {
         if(this.mSensorA)
         {
            this.mSensorA.getBody().SetPosition(getBody().GetPosition());
         }
         if(this.mSensorB)
         {
            this.mSensorB.getBody().SetPosition(getBody().GetPosition());
         }
      }
      
      public function playSoundLua(soundName:String) : void
      {
         this.mLevelItemSpacePigLua.playSoundLua(soundName);
      }
      
      protected function initializeFreezing(updateManager:ILevelObjectUpdateManager) : void
      {
         this.spawnParticlesOnFreeze(updateManager);
         var soundName:String = this.mLevelItemSpacePigLua.freezeSound;
         if(soundName)
         {
            this.mLevelItemSpacePigLua.playSoundLua(soundName);
         }
      }
      
      protected function updateFrozenPig(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         if(this.mFreezeTimeCounter == FREEZE_TIME_LIMIT_MILLISECONDS)
         {
            this.initializeFreezing(updateManager);
         }
         this.mFreezeTimeCounter -= deltaTimeMilliSeconds;
         if(this.mFreezeTimeCounter < 0)
         {
            health = 0;
            this.playFrozenDestroyedSound();
         }
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(updateManager)
         {
            this.createSensors(updateManager);
         }
         this.mBehavior.update(deltaTimeMilliSeconds);
         if(this.mBehavior.isFrozen)
         {
            this.updateFrozenPig(deltaTimeMilliSeconds,updateManager);
         }
         this.mObjectLogic.update(deltaTimeMilliSeconds,updateManager);
         this.updateSensorPositions();
      }
      
      protected function setFrozen(freeze:Boolean) : void
      {
         if(this.mBehavior.isFrozen)
         {
            return;
         }
         if(this.mInsideGravityFieldCount <= 0 && this.mInsideBubbleCount <= 0 && freeze)
         {
            if(!this.mBehavior.isFrozen)
            {
               this.mFreezeTimeCounter = FREEZE_TIME_LIMIT_MILLISECONDS;
               this.mBehavior.isFrozen = true;
               mRenderer.setAnimation(LevelObjectSpacePigRenderer.ANIMATION_FREEZE);
            }
         }
         else if(this.mBehavior.isFrozen)
         {
            this.mBehavior.isFrozen = false;
            mRenderer.setAnimation(LevelObjectSpacePigRenderer.ANIMATION_IDLE);
         }
      }
      
      override public function render(deltaTimeMilliSeconds:Number, worldStepMilliSeconds:Number, worldTimeOffsetMilliSeconds:Number) : void
      {
         super.render(deltaTimeMilliSeconds,worldStepMilliSeconds,worldTimeOffsetMilliSeconds);
         sprite.rotation = mRotation + this.mObjectLogic.spriteRotation;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         return super.applyDamage(damage,updateManager,damagingObject,addScore);
      }
      
      override protected function playCollisionSound() : void
      {
         this.mObjectLogic.playCollisionSound();
      }
      
      protected function playFrozenDestroyedSound() : void
      {
         var soundName:String = this.mLevelItemSpacePigLua.frozenKilledSound;
         this.mLevelItemSpacePigLua.playSoundLua(soundName);
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.mBehavior.isFrozen)
         {
            this.playFrozenDestroyedSound();
         }
         else
         {
            this.mObjectLogic.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         if(!updateManager)
         {
            return;
         }
         var posX:Number = getBody().GetPosition().x;
         var posY:Number = getBody().GetPosition().y;
         var angle:Number = getAngle();
         this.mObjectLogic.spawnParticles(true,updateManager,posX,posY,angle);
      }
   }
}

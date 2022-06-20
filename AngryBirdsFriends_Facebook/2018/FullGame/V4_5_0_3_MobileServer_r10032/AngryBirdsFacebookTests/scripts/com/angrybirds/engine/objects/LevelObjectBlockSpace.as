package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemSpaceLua;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBlockSpace extends LevelObjectBlock
   {
      
      public static const DEFAULT_LINEAR_DAMPING:Number = 0.15;
       
      
      protected var mLevelItemLua:LevelItemSpaceLua;
      
      protected var mObjectLogic:ObjectBehaviorLogic;
      
      public function LevelObjectBlockSpace(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         this.mLevelItemLua = levelItem as LevelItemSpaceLua;
         if(this.mLevelItemLua)
         {
            if(this.mLevelItemLua.scale)
            {
               scale = this.mLevelItemLua.scale;
            }
         }
         this.initializeObjectBehaviorLogic();
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.mObjectLogic = new ObjectBehaviorLogic(this.mLevelItemLua);
      }
      
      override protected function initObjectRenderer() : LevelObjectRenderer
      {
         var horizontalFlip:Boolean = false;
         if(this.mLevelItemLua)
         {
            horizontalFlip = this.mLevelItemLua.horizontalFlip;
         }
         return new LevelObjectRenderer(animation,sprite,horizontalFlip);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mObjectLogic.update(deltaTimeMilliSeconds,updateManager,x,y);
      }
      
      override public function render(deltaTimeMilliSeconds:Number, worldStepMilliSeconds:Number, worldTimeOffsetMilliSeconds:Number) : void
      {
         super.render(deltaTimeMilliSeconds,worldStepMilliSeconds,worldTimeOffsetMilliSeconds);
         sprite.rotation = mRotation + this.mObjectLogic.spriteRotation;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.mObjectLogic.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         if(!updateManager)
         {
            return;
         }
         this.explodeBeforeRemoving(updateManager);
         if(health <= 0)
         {
            if(this.mLevelItemLua.spriteScore)
            {
               posX = getBody().GetPosition().x;
               posY = getBody().GetPosition().y;
               updateManager.addObject(this.mLevelItemLua.spriteScore,posX,posY,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(updateManager,countScore);
      }
      
      protected function spawnParticlesAndObjectsBeforeRemoving(updateManager:ILevelObjectUpdateManager) : void
      {
         var x:Number = getBody().GetPosition().x;
         var y:Number = getBody().GetPosition().y;
         var angle:Number = getAngle();
         this.mObjectLogic.spawnParticles(true,updateManager,x,y,angle);
         this.mObjectLogic.spawnObjectsOnDestruction(updateManager,x,y,angle);
      }
      
      protected function explodeBeforeRemoving(updateManager:ILevelObjectUpdateManager) : void
      {
         var x:Number = getBody().GetPosition().x;
         var y:Number = getBody().GetPosition().y;
         this.mObjectLogic.makeExplosion(updateManager,x,y);
      }
      
      override protected function createPhysicsBody(x:Number, y:Number) : void
      {
         super.createPhysicsBody(x,y);
         getBody().SetLinearDamping(DEFAULT_LINEAR_DAMPING);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         this.mObjectLogic.applyDamage(damage,updateManager,damagingObject);
         return super.applyDamage(damage,updateManager,damagingObject,addScore);
      }
      
      override protected function playCollisionSound() : void
      {
         if(this.mLevelItemLua.materialCollisionSound)
         {
            this.mObjectLogic.playCollisionSound();
         }
         else
         {
            super.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         if(this.mLevelItemLua.materialDamageSound)
         {
            this.mObjectLogic.playDamagedSound();
         }
         else
         {
            super.playDamagedSound();
         }
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.mLevelItemLua.materialDestroyedSound)
         {
            this.mObjectLogic.playDestroyedSound();
         }
         else
         {
            super.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         this.spawnParticlesAndObjectsBeforeRemoving(updateManager);
      }
      
      override public function addDamageParticles(updateManager:ILevelObjectUpdateManager, damage:int) : void
      {
         var x:Number = getBody().GetPosition().x;
         var y:Number = getBody().GetPosition().y;
         var angle:Number = getAngle();
         this.mObjectLogic.spawnParticles(false,updateManager,x,y,angle,0.5);
      }
      
      override public function applyLinearForce() : void
      {
         if(mLevelObjectModel.linearForce)
         {
            mB2Body.ApplyForce(new b2Vec2(mLevelObjectModel.linearForce.x * mB2Body.GetMass(),mLevelObjectModel.linearForce.y * mB2Body.GetMass()),mB2Body.GetWorldCenter());
         }
         else if(this.mLevelItemLua.materialForceX != 0 || this.mLevelItemLua.materialForceY != 0)
         {
            mB2Body.ApplyForce(new b2Vec2(this.mLevelItemLua.materialForceX * mB2Body.GetMass(),this.mLevelItemLua.materialForceY * mB2Body.GetMass()),mB2Body.GetWorldCenter());
         }
      }
   }
}

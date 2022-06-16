package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectParachute extends LevelObject
   {
       
      
      private var mParent:LevelObject;
      
      private var mLifeTime:Number = 0;
      
      private var mIsAttached:Boolean;
      
      public function FacebookLevelObjectParachute(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.mIsAttached = true;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var fixture:b2Fixture = super.createFixture();
         fixture.SetSensor(true);
         return fixture;
      }
      
      public function init(linearVelocity:b2Vec2, linearDamping:Number) : void
      {
         getBody().SetLinearVelocity(linearVelocity);
         getBody().SetLinearDamping(linearDamping);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         if(damagingObject != this.mParent)
         {
            this.mIsAttached = false;
         }
         return health;
      }
      
      public function setParent(value:LevelObject) : void
      {
         if(value && this.mParent)
         {
            throw new Error("Parent already set.");
         }
         this.mParent = value;
         this.mIsAttached = value != null;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mLifeTime += deltaTimeMilliSeconds;
         setAngularVelocity(Math.sin(this.mLifeTime / 200) * 0.15);
         if(!this.mParent)
         {
            this.mIsAttached = false;
         }
         if(!this.mIsAttached)
         {
            sprite.alpha = Math.max(0,sprite.alpha - deltaTimeMilliSeconds / 500);
            if(sprite.alpha == 0)
            {
               health = 0;
            }
         }
      }
      
      public function isAttached() : Boolean
      {
         return this.mIsAttached;
      }
      
      override public function dispose(b:Boolean = true) : void
      {
         super.dispose(b);
         this.mIsAttached = false;
      }
   }
}

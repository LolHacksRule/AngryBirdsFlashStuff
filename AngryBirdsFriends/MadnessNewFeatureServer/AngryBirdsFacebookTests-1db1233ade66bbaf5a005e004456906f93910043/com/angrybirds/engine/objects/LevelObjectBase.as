package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.angrybirds.engine.Tuner;
   import com.rovio.Box2D.Collision.b2AABB;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   
   public class LevelObjectBase
   {
       
      
      protected var mWorld:b2World;
      
      private var mSprite:Sprite;
      
      private var mBackgroundSprite:Sprite;
      
      private var mLifeTimeMilliSeconds:Number = 0.0;
      
      protected var mZ:Number;
      
      protected var mFixture:b2Fixture;
      
      protected var mB2Body:b2Body;
      
      protected var mLevelItem:LevelItem;
      
      protected var mIsDisposed:Boolean = false;
      
      protected var mGravityFilter:int = -1;
      
      protected var mGravityMultiplier:Number;
      
      private var mLevelGoalObject:Boolean;
      
      public function LevelObjectBase(sprite:Sprite, world:b2World, levelItem:LevelItem)
      {
         this.mZ = LevelObject.Z_ORDER_DEFAULT;
         super();
         this.mSprite = sprite;
         this.mWorld = world;
         this.mLevelItem = levelItem;
         if(this.mLevelItem)
         {
            this.setZ(this.mLevelItem.getItemZOrder());
         }
         else
         {
            this.setZ(1);
         }
         this.mLevelGoalObject = this.mLevelItem.isLevelGoalItem;
      }
      
      public function get sprite() : Sprite
      {
         return this.mSprite;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.mBackgroundSprite;
      }
      
      public function get levelItem() : LevelItem
      {
         return this.mLevelItem;
      }
      
      public function get isDisposed() : Boolean
      {
         return this.mIsDisposed;
      }
      
      public function get lifeTimeMilliSeconds() : Number
      {
         return this.mLifeTimeMilliSeconds;
      }
      
      public function get isLevelGoal() : Boolean
      {
         return this.mLevelGoalObject;
      }
      
      public function set isLevelGoal(value:Boolean) : void
      {
         this.mLevelGoalObject = value;
      }
      
      public function set gravityMultiplier(value:Number) : void
      {
         this.mGravityMultiplier = value;
      }
      
      public function getGravityMultiplier(worldMultiplier:Number) : Number
      {
         if(this.mGravityFilter == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            return this.mGravityMultiplier;
         }
         return 1;
      }
      
      public function get shape() : ShapeDefinition
      {
         return this.mLevelItem.shape;
      }
      
      public function createBackgroundSprite() : void
      {
         if(!this.mBackgroundSprite)
         {
            this.mBackgroundSprite = new Sprite();
         }
      }
      
      public function dispose(disposePhysicsBody:Boolean = true) : void
      {
         this.mIsDisposed = true;
         if(disposePhysicsBody)
         {
            if(this.mWorld && this.mB2Body)
            {
               this.mWorld.DestroyBody(this.mB2Body);
            }
         }
         if(this.mSprite)
         {
            this.mSprite.dispose();
            this.mSprite = null;
         }
         if(this.mBackgroundSprite)
         {
            this.mBackgroundSprite.dispose();
            this.mBackgroundSprite = null;
         }
         this.mWorld = null;
         this.mB2Body = null;
         this.mFixture = null;
         if(this.isLevelGoal && AngryBirdsEngine.controller)
         {
            AngryBirdsEngine.controller.checkForLevelEnd();
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.mB2Body;
      }
      
      public function isInCoordinates(x:Number, y:Number) : Boolean
      {
         var aabb:b2AABB = this.mFixture.GetAABB();
         if(x >= aabb.lowerBound.x && x <= aabb.upperBound.x && y >= aabb.lowerBound.y && y <= aabb.upperBound.y)
         {
            return this.mFixture.TestPoint(new b2Vec2(x,y));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.getBody() && this.getBody().IsAwake();
      }
      
      public function get gravityFilter() : int
      {
         return this.mGravityFilter;
      }
      
      public function set gravityFilter(value:int) : void
      {
         if(this.mGravityFilter == value)
         {
            return;
         }
         this.mGravityFilter = value;
         if(this.mB2Body)
         {
            this.updateGravityFilter();
            this.mB2Body.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.mGravityFilter)
         {
            case -1:
            case GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT:
               this.mB2Body.SetLinearDamping(Tuner.DEFAULT_PHYSICS_DRAG);
               this.mB2Body.SetAngularDamping(Tuner.DEFAULT_ANGULAR_DRAG);
               this.mB2Body.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.mGravityFilter + "\'.");
         }
      }
      
      public function isInsideRectangle(top:Number, bottom:Number, left:Number, right:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= left && this.getBody().GetPosition().x <= right && this.getBody().GetPosition().y >= top && this.getBody().GetPosition().y <= bottom;
      }
      
      public function get worldX() : Number
      {
         return this.mB2Body.GetPosition().x;
      }
      
      public function get worldY() : Number
      {
         return this.mB2Body.GetPosition().y;
      }
      
      public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         if(this.mLifeTimeMilliSeconds + deltaTimeMilliSeconds > Number.MAX_VALUE)
         {
            this.mLifeTimeMilliSeconds = 0;
         }
         this.mLifeTimeMilliSeconds += deltaTimeMilliSeconds;
      }
      
      public function render(deltaTimeMilliSeconds:Number, worldStepMilliSeconds:Number, worldTimeOffsetMilliSeconds:Number) : void
      {
      }
      
      public function enteredSensor(sensor:LevelObjectSensor) : void
      {
      }
      
      public function leftSensor(sensor:LevelObjectSensor) : void
      {
      }
      
      public function attachedJointRemoved(disconnectedObject:LevelObjectBase = null) : void
      {
      }
      
      public function attachedJointCreated(connectedObject:LevelObjectBase = null) : void
      {
      }
      
      public function collidedWith(collidee:LevelObjectBase) : void
      {
      }
      
      public function collisionEnded(collidee:LevelObjectBase) : void
      {
      }
      
      public function getZ() : Number
      {
         return this.mZ;
      }
      
      public function setZ(val:Number) : void
      {
         if(val == 0)
         {
            val = 1;
         }
         this.mZ = val;
         this.sprite.z = val;
      }
   }
}

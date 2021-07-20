package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.engine.Tuner;
   import com.rovio.Box2D.Collision.b2AABB;
   
   public class LevelObjectBase
   {
       
      
      protected var mWorld:b2World;
      
      private var mSprite:Sprite;
      
      protected var mFixture:b2Fixture;
      
      protected var mB2Body:b2Body;
      
      protected var mLevelItem:LevelItem;
      
      protected var mIsDisposed:Boolean = false;
      
      protected var mGravityFilter:int = -1;
      
      protected var mGravityMultiplier:Number;
      
      public function LevelObjectBase(param1:Sprite, param2:b2World, param3:LevelItem)
      {
         super();
         this.mSprite = param1;
         this.mWorld = param2;
         this.mLevelItem = param3;
         if(this.mLevelItem)
         {
            param1.z = this.mLevelItem.getItemZOrder();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.mSprite;
      }
      
      public function get levelItem() : LevelItem
      {
         return this.mLevelItem;
      }
      
      public function get isDisposed() : Boolean
      {
         return this.mIsDisposed;
      }
      
      public function set gravityMultiplier(param1:Number) : void
      {
         this.mGravityMultiplier = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
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
      
      public function dispose() : void
      {
         this.mIsDisposed = true;
         if(this.mWorld && this.mB2Body)
         {
            this.mWorld.DestroyBody(this.mB2Body);
         }
         if(this.mSprite)
         {
            this.mSprite.dispose();
            this.mSprite = null;
         }
         this.mWorld = null;
         this.mB2Body = null;
         this.mFixture = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.mB2Body;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.mFixture.GetAABB();
         if(param1 >= _loc3_.lowerBound.x && param1 <= _loc3_.upperBound.x && param2 >= _loc3_.lowerBound.y && param2 <= _loc3_.upperBound.y)
         {
            return this.mFixture.TestPoint(new b2Vec2(param1,param2));
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
      
      public function set gravityFilter(param1:int) : void
      {
         if(this.mGravityFilter == param1)
         {
            return;
         }
         this.mGravityFilter = param1;
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
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function get worldX() : Number
      {
         return this.mB2Body.GetPosition().x;
      }
      
      public function get worldY() : Number
      {
         return this.mB2Body.GetPosition().y;
      }
      
      public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:LevelObjectSensor) : void
      {
      }
      
      public function leftSensor(param1:LevelObjectSensor) : void
      {
      }
      
      public function attachedJointRemoved(param1:LevelObjectBase = null) : void
      {
      }
      
      public function attachedJointCreated(param1:LevelObjectBase = null) : void
      {
      }
      
      public function collidedWith(param1:LevelObjectBase) : void
      {
      }
      
      public function collisionEnded(param1:LevelObjectBase) : void
      {
      }
   }
}

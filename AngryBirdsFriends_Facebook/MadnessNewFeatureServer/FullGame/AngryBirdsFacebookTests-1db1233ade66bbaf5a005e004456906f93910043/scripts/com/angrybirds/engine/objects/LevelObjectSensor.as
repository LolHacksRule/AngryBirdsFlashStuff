package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FixtureDef;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   
   public class LevelObjectSensor extends LevelObjectInterpolated
   {
       
      
      protected var mShapeDefinition:ShapeDefinition;
      
      protected var mSensedObjects:Vector.<LevelObjectBase>;
      
      public function LevelObjectSensor(sprite:Sprite, world:b2World, levelItem:LevelItem, shapeDefinition:ShapeDefinition, levelObjectModel:LevelObjectModel)
      {
         this.mSensedObjects = new Vector.<LevelObjectBase>();
         this.mShapeDefinition = shapeDefinition;
         super(sprite,world,levelItem,levelObjectModel);
         this.createBody(mLevelObjectModel.x,mLevelObjectModel.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function createBody(x:Number, y:Number) : void
      {
         var sensorBodyDef:b2BodyDef = null;
         sensorBodyDef = new b2BodyDef();
         sensorBodyDef.type = b2Body.b2_staticBody;
         sensorBodyDef.position.x = x;
         sensorBodyDef.position.y = y;
         mB2Body = mWorld.CreateBody(sensorBodyDef);
         mB2Body.SetUserData(this);
         var fixtureDef:b2FixtureDef = new b2FixtureDef();
         fixtureDef.shape = this.mShapeDefinition.getB2Shape(this.scale);
         fixtureDef.isSensor = true;
         mFixture = mB2Body.CreateFixture(fixtureDef);
      }
      
      override public function collidedWith(object:LevelObjectBase) : void
      {
         if(object)
         {
            if(this.mSensedObjects.indexOf(object) == -1)
            {
               this.mSensedObjects.push(object);
               object.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(object:LevelObjectBase) : void
      {
         var index:int = 0;
         if(object)
         {
            index = this.mSensedObjects.indexOf(object);
            if(index != -1)
            {
               this.mSensedObjects.splice(index,1);
               object.leftSensor(this);
            }
         }
      }
   }
}

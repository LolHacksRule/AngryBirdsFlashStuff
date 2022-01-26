package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FixtureDef;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelObjectSensor extends LevelObjectInterpolated
   {
       
      
      protected var mShapeDefinition:ShapeDefinition;
      
      protected var mSensedObjects:Vector.<LevelObjectBase>;
      
      public function LevelObjectSensor(param1:Sprite, param2:b2World, param3:LevelItem, param4:ShapeDefinition, param5:LevelObjectModel)
      {
         this.mSensedObjects = new Vector.<LevelObjectBase>();
         this.mShapeDefinition = param4;
         super(param1,param2,param3,param5);
         this.createBody(mLevelObjectModel.x,mLevelObjectModel.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function createBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         mB2Body = mWorld.CreateBody(_loc3_);
         mB2Body.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.mShapeDefinition.getB2Shape(this.scale);
         _loc4_.isSensor = true;
         mFixture = mB2Body.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:LevelObjectBase) : void
      {
         if(param1)
         {
            if(this.mSensedObjects.indexOf(param1) == -1)
            {
               this.mSensedObjects.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:LevelObjectBase) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.mSensedObjects.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.mSensedObjects.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}

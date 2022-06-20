package com.angrybirds.data.level.object
{
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2MouseJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class LevelJointModel
   {
      
      public static const DISTANCE_JOINT:uint = 1;
      
      public static const WELD_JOINT:uint = 2;
      
      public static const REVOLUTE_JOINT:uint = 3;
      
      public static const PRISMATIC_JOINT:uint = 4;
      
      public static const DESTROY_ATTACHED:uint = 5;
      
      public static const MOUSE_JOINT:uint = 6;
       
      
      private var mType:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var mIsLimited:Boolean;
      
      private var mLowerLimit:Number;
      
      private var mUpperLimit:Number;
      
      private var mIsMotor:Boolean;
      
      private var mMotorSpeed:Number;
      
      private var mIsBackAndForth:Boolean;
      
      private var mIsOneWayDestroyed:Boolean;
      
      private var mIsCollideConnected:Boolean;
      
      private var mMaxTorque:Number;
      
      private var mAxisX:Number;
      
      private var mAxisY:Number;
      
      private var mCoordinateType:int = 0;
      
      private var mDampingRatio:Number = 0.0;
      
      private var mFrequency:Number = 0.0;
      
      private var mAnnihilationTime:Number = 0;
      
      private var mDistanceToDestroyChild:Number = 0;
      
      private var mBreakable:Boolean = false;
      
      private var mDestroyChild:Boolean = false;
      
      private var mbreakForce:Number = 0.0;
      
      public function LevelJointModel(type:int, id1:int, id2:int, point1:Point, point2:Point, isCollideConnected:Boolean = false, isLimited:Boolean = false, lowerLimit:Number = 0.0, upperLimit:Number = 0.0, isMotor:Boolean = false, motorSpeed:Number = 0.0, isBackAndForth:Boolean = false, maxTorque:Number = 0.0, breakable:Boolean = false, breakForce:Number = 0.0, isOneWayDestroyed:Boolean = false, coordinateType:int = 0, dampingRatio:Number = 0.0, frequency:Number = 0.0, destroyChild:Boolean = false, annihilationTime:Number = 0, distanceToDestroyChild:Number = 0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.mType = type;
         this.mId1 = id1;
         this.mId2 = id2;
         this.mPoint1 = point1.clone();
         this.mPoint2 = point2.clone();
         this.mIsLimited = isLimited;
         this.mLowerLimit = lowerLimit;
         this.mUpperLimit = upperLimit;
         this.mIsMotor = isMotor;
         this.mMotorSpeed = motorSpeed;
         this.mIsBackAndForth = isBackAndForth;
         this.mIsCollideConnected = isCollideConnected;
         this.mMaxTorque = maxTorque;
         this.mBreakable = breakable;
         this.mbreakForce = breakForce;
         this.mIsOneWayDestroyed = isOneWayDestroyed;
         this.mCoordinateType = coordinateType;
         this.mDampingRatio = dampingRatio;
         this.mFrequency = frequency;
         this.mDestroyChild = destroyChild;
         this.mAnnihilationTime = annihilationTime;
         this.mDistanceToDestroyChild = distanceToDestroyChild;
      }
      
      public function get type() : int
      {
         return this.mType;
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get isLimited() : Boolean
      {
         return this.mIsLimited;
      }
      
      public function get lowerLimit() : Number
      {
         return this.mLowerLimit;
      }
      
      public function get upperLimit() : Number
      {
         return this.mUpperLimit;
      }
      
      public function get isMotor() : Boolean
      {
         return this.mIsMotor;
      }
      
      public function get motorSpeed() : Number
      {
         return this.mMotorSpeed;
      }
      
      public function get isBackAndForth() : Boolean
      {
         return this.mIsBackAndForth;
      }
      
      public function get isCollideConnected() : Boolean
      {
         return this.mIsCollideConnected;
      }
      
      public function get maxTorque() : Number
      {
         return this.mMaxTorque;
      }
      
      public function get breakable() : Boolean
      {
         return this.mBreakable;
      }
      
      public function set breakable(value:Boolean) : void
      {
         this.mBreakable = value;
      }
      
      public function get destroyChild() : Boolean
      {
         return this.mDestroyChild;
      }
      
      public function set destroyChild(value:Boolean) : void
      {
         this.mDestroyChild = value;
      }
      
      public function get breakForce() : Number
      {
         return this.mbreakForce;
      }
      
      public function set breakForce(value:Number) : void
      {
         this.mbreakForce = value;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.mIsOneWayDestroyed;
      }
      
      public function set isOneWayDestroyed(value:Boolean) : void
      {
         this.mIsOneWayDestroyed = value;
      }
      
      public function get axisX() : Number
      {
         return this.mAxisX;
      }
      
      public function set axisX(value:Number) : void
      {
         this.mAxisX = value;
      }
      
      public function get axisY() : Number
      {
         return this.mAxisY;
      }
      
      public function set axisY(value:Number) : void
      {
         this.mAxisY = value;
      }
      
      public function get annihilationTime() : Number
      {
         return this.mAnnihilationTime;
      }
      
      public function set annihilationTime(value:Number) : void
      {
         this.mAnnihilationTime = value;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.mDistanceToDestroyChild;
      }
      
      public function set distanceToDestroyChild(value:Number) : void
      {
         this.mDistanceToDestroyChild = value;
      }
      
      public function get coordinateType() : int
      {
         return this.mCoordinateType;
      }
      
      public function set coordinateType(value:int) : void
      {
         this.mCoordinateType = value;
      }
      
      public function get dampingRatio() : Number
      {
         return this.mDampingRatio;
      }
      
      public function set dampingRatio(value:Number) : void
      {
         this.mDampingRatio = value;
      }
      
      public function get frequency() : Number
      {
         return this.mFrequency;
      }
      
      public function set frequency(value:Number) : void
      {
         this.mFrequency = value;
      }
      
      private function getDistanceJointDefinition(object1:LevelObjectBase, object2:LevelObjectBase) : b2JointDef
      {
         var b1pos:b2Vec2 = null;
         var b2pos:b2Vec2 = null;
         var b1:b2Vec2 = null;
         var b2:b2Vec2 = null;
         var distanceJointDef:b2DistanceJointDef = new b2DistanceJointDef();
         distanceJointDef.collideConnected = this.mIsCollideConnected;
         distanceJointDef.frequencyHz = this.mFrequency;
         distanceJointDef.dampingRatio = this.mDampingRatio;
         if(this.mCoordinateType == 0)
         {
            distanceJointDef.localAnchorA.x = 0;
            distanceJointDef.localAnchorA.y = 0;
            distanceJointDef.localAnchorB.x = 0;
            distanceJointDef.localAnchorB.y = 0;
         }
         else if(this.mCoordinateType == 1)
         {
            b1pos = object1.getBody().GetWorldPoint(new b2Vec2(0,0));
            b2pos = object2.getBody().GetWorldPoint(new b2Vec2(0,0));
            b1 = new b2Vec2(this.mPoint1.x - b1pos.x,this.mPoint1.y - b1pos.y);
            b2 = new b2Vec2(this.mPoint2.x - b2pos.x,this.mPoint2.y - b2pos.y);
            distanceJointDef.localAnchorA = b1;
            distanceJointDef.localAnchorB = b2;
         }
         else if(this.mCoordinateType == 2)
         {
            distanceJointDef.localAnchorA.x = this.mPoint1.x;
            distanceJointDef.localAnchorA.y = this.mPoint1.y;
            distanceJointDef.localAnchorB.x = this.mPoint2.x;
            distanceJointDef.localAnchorB.y = this.mPoint2.y;
         }
         var p1:b2Vec2 = object1.getBody().GetWorldPoint(distanceJointDef.localAnchorA);
         var p2:b2Vec2 = object2.getBody().GetWorldPoint(distanceJointDef.localAnchorB);
         distanceJointDef.length = Math.sqrt((p2.x - p1.x) * (p2.x - p1.x) + (p2.y - p1.y) * (p2.y - p1.y));
         distanceJointDef.bodyA = object1.getBody();
         distanceJointDef.bodyB = object2.getBody();
         return distanceJointDef;
      }
      
      private function getWeldJointDefinition(object1:LevelObjectBase, object2:LevelObjectBase) : b2JointDef
      {
         var weldJointDef:b2WeldJointDef = new b2WeldJointDef();
         weldJointDef.collideConnected = this.mIsCollideConnected;
         var anchor1:b2Vec2 = object1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var anchor2:b2Vec2 = object2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var anchor:b2Vec2 = new b2Vec2((anchor2.x + anchor1.x) * 0.5,(anchor2.y + anchor1.y) * 0.5);
         weldJointDef.Initialize(object1.getBody(),object2.getBody(),anchor);
         return weldJointDef;
      }
      
      private function getRevoluteJointDefinition(object1:LevelObjectBase, object2:LevelObjectBase) : b2JointDef
      {
         var revoluteJointDef:b2RevoluteJointDef = new b2RevoluteJointDef();
         revoluteJointDef.collideConnected = this.mIsCollideConnected;
         revoluteJointDef.Initialize(object1.getBody(),object2.getBody(),object1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         revoluteJointDef.enableLimit = this.mIsLimited;
         revoluteJointDef.enableMotor = this.mIsMotor;
         revoluteJointDef.motorSpeed = this.mMotorSpeed;
         revoluteJointDef.upperAngle = this.mUpperLimit;
         revoluteJointDef.lowerAngle = this.mLowerLimit;
         revoluteJointDef.maxMotorTorque = this.mMaxTorque;
         return revoluteJointDef;
      }
      
      private function getPrismaticJointDefinition(object1:LevelObjectBase, object2:LevelObjectBase) : b2JointDef
      {
         var prismaticJointDef:b2PrismaticJointDef = new b2PrismaticJointDef();
         prismaticJointDef.collideConnected = this.mIsCollideConnected;
         var tempAxisX:Number = 1;
         var tempAxisY:Number = 0;
         if(!isNaN(this.axisX))
         {
            tempAxisX = this.axisX;
         }
         if(!isNaN(this.axisY))
         {
            tempAxisY = this.axisY;
         }
         prismaticJointDef.Initialize(object1.getBody(),object2.getBody(),object1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(tempAxisX,tempAxisY));
         prismaticJointDef.enableLimit = this.mIsLimited;
         prismaticJointDef.lowerTranslation = this.mLowerLimit;
         prismaticJointDef.upperTranslation = this.mUpperLimit;
         prismaticJointDef.enableMotor = this.mIsMotor;
         prismaticJointDef.maxMotorForce = this.mMaxTorque;
         prismaticJointDef.motorSpeed = this.mMotorSpeed;
         return prismaticJointDef;
      }
      
      private function getMouseJointDefinition(object1:LevelObjectBase, object2:LevelObjectBase) : b2JointDef
      {
         var mouseJointDef:b2MouseJointDef = new b2MouseJointDef();
         mouseJointDef.bodyA = object2.getBody().GetWorld().GetGroundBody();
         mouseJointDef.bodyB = object2.getBody();
         mouseJointDef.target.Set(object2.getBody().GetPosition().x,object2.getBody().GetPosition().y);
         mouseJointDef.collideConnected = this.mIsCollideConnected;
         mouseJointDef.maxForce = 1000000;
         return mouseJointDef;
      }
      
      public function getJointDefinition(object1:LevelObjectBase, object2:LevelObjectBase) : b2JointDef
      {
         switch(this.mType)
         {
            case DISTANCE_JOINT:
               return this.getDistanceJointDefinition(object1,object2);
            case WELD_JOINT:
               return this.getWeldJointDefinition(object1,object2);
            case REVOLUTE_JOINT:
               return this.getRevoluteJointDefinition(object1,object2);
            case PRISMATIC_JOINT:
               return this.getPrismaticJointDefinition(object1,object2);
            case MOUSE_JOINT:
               return this.getMouseJointDefinition(object1,object2);
            default:
               return null;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var object:Object = new Object();
         object.x1 = this.point1.x;
         object.y1 = this.point1.y;
         object.x2 = this.point2.x;
         object.y2 = this.point2.y;
         object.motorSpeed = this.motorSpeed;
         object.limit = this.isLimited;
         object.maxTorque = this.maxTorque;
         object.motor = this.isMotor;
         object.type = this.type;
         object.backAndForth = this.isBackAndForth;
         object.collideConnected = this.isCollideConnected;
         object.lowerLimit = this.lowerLimit;
         object.upperLimit = this.upperLimit;
         object.index1 = this.id1;
         object.index2 = this.id2;
         object.isOneWayDestroyed = this.isOneWayDestroyed;
         object.coordinateType = this.coordinateType;
         object.dampingRatio = this.dampingRatio;
         object.frequency = this.frequency;
         object.breakable = this.breakable;
         object.destroyChild = this.destroyChild;
         if(!isNaN(this.annihilationTime))
         {
            object.annihilationTime = this.annihilationTime;
         }
         if(!isNaN(this.distanceToDestroyChild))
         {
            object.distanceToDestroyChild = this.distanceToDestroyChild;
         }
         if(!isNaN(this.breakForce))
         {
            object.breakForce = this.breakForce;
         }
         if(!isNaN(this.axisX))
         {
            object.axisX = this.axisX;
         }
         if(!isNaN(this.axisY))
         {
            object.axisY = this.axisY;
         }
         return object;
      }
   }
}

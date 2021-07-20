package com.angrybirds.data.level.object
{
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.geom.Point;
   
   public class LevelJointModel
   {
      
      public static const DISTANCE_JOINT:uint = 1;
      
      public static const WELD_JOINT:uint = 2;
      
      public static const REVOLUTE_JOINT:uint = 3;
      
      public static const PRISMATIC_JOINT:uint = 4;
      
      public static const DESTROY_ATTACHED:uint = 5;
       
      
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
      
      private var mAnnihilationTime:Number;
      
      private var mIsBreakable:Boolean;
      
      private var mMinBreakForce:Number;
      
      public function LevelJointModel(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.mType = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.mIsLimited = param7;
         this.mLowerLimit = param8;
         this.mUpperLimit = param9;
         this.mIsMotor = param10;
         this.mMotorSpeed = param11;
         this.mIsBackAndForth = param12;
         this.mIsCollideConnected = param6;
         this.mMaxTorque = param13;
         this.mIsBreakable = param14;
         this.mMinBreakForce = param15;
         this.mIsOneWayDestroyed = param16;
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
      
      public function get isBreakable() : Boolean
      {
         return this.mIsBreakable;
      }
      
      public function set isBreakable(param1:Boolean) : void
      {
         this.mIsBreakable = param1;
      }
      
      public function get minBreakForce() : Number
      {
         return this.mMinBreakForce;
      }
      
      public function set minBreakForce(param1:Number) : void
      {
         this.mMinBreakForce = param1;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.mIsOneWayDestroyed;
      }
      
      public function set isOneWayDestroyed(param1:Boolean) : void
      {
         this.mIsOneWayDestroyed = param1;
      }
      
      public function get axisX() : Number
      {
         return this.mAxisX;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.mAxisX = param1;
      }
      
      public function get axisY() : Number
      {
         return this.mAxisY;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.mAxisY = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.mAnnihilationTime;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.mAnnihilationTime = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.mCoordinateType;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.mCoordinateType = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.mDampingRatio;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.mDampingRatio = param1;
      }
      
      public function get frequency() : Number
      {
         return this.mFrequency;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.mFrequency = param1;
      }
      
      private function getDistanceJointDefinition(param1:LevelObjectBase, param2:LevelObjectBase) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.mIsCollideConnected;
         _loc3_.frequencyHz = this.mFrequency;
         _loc3_.dampingRatio = this.mDampingRatio;
         if(this.mCoordinateType == 0)
         {
            _loc3_.localAnchorA.x = 0;
            _loc3_.localAnchorA.y = 0;
            _loc3_.localAnchorB.x = 0;
            _loc3_.localAnchorB.y = 0;
         }
         else
         {
            if(this.mCoordinateType == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.mCoordinateType == 2)
            {
               _loc3_.localAnchorA.x = this.mPoint1.x;
               _loc3_.localAnchorA.y = this.mPoint1.y;
               _loc3_.localAnchorB.x = this.mPoint2.x;
               _loc3_.localAnchorB.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(_loc3_.localAnchorA);
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(_loc3_.localAnchorB);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.bodyA = param1.getBody();
         _loc3_.bodyB = param2.getBody();
         return _loc3_;
      }
      
      private function getWeldJointDefinition(param1:LevelObjectBase, param2:LevelObjectBase) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.mIsCollideConnected;
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.Initialize(param1.getBody(),param2.getBody(),_loc6_);
         return _loc3_;
      }
      
      private function getRevoluteJointDefinition(param1:LevelObjectBase, param2:LevelObjectBase) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.mIsCollideConnected;
         _loc3_.Initialize(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.enableLimit = this.mIsLimited;
         _loc3_.enableMotor = this.mIsMotor;
         _loc3_.motorSpeed = this.mMotorSpeed;
         _loc3_.upperAngle = this.mUpperLimit;
         _loc3_.lowerAngle = this.mLowerLimit;
         _loc3_.maxMotorTorque = this.mMaxTorque;
         return _loc3_;
      }
      
      private function getPrismaticJointDefinition(param1:LevelObjectBase, param2:LevelObjectBase) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.mIsCollideConnected;
         _loc3_.Initialize(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.mAxisX,this.mAxisY));
         _loc3_.enableLimit = this.mIsLimited;
         _loc3_.lowerTranslation = this.mLowerLimit;
         _loc3_.upperTranslation = this.mUpperLimit;
         _loc3_.enableMotor = this.mIsMotor;
         _loc3_.maxMotorForce = this.mMaxTorque;
         _loc3_.motorSpeed = this.mMotorSpeed;
         return _loc3_;
      }
      
      public function getJointDefinition(param1:LevelObjectBase, param2:LevelObjectBase) : b2JointDef
      {
         switch(this.mType)
         {
            case DISTANCE_JOINT:
               return this.getDistanceJointDefinition(param1,param2);
            case WELD_JOINT:
               return this.getWeldJointDefinition(param1,param2);
            case REVOLUTE_JOINT:
               return this.getRevoluteJointDefinition(param1,param2);
            case PRISMATIC_JOINT:
               return this.getPrismaticJointDefinition(param1,param2);
            default:
               return null;
         }
      }
   }
}

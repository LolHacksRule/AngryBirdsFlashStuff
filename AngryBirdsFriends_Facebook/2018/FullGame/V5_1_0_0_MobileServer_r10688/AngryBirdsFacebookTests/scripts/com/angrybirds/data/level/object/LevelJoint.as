package com.angrybirds.data.level.object
{
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.Box2D.Dynamics.Joints.b2Joint;
   import flash.geom.Point;
   import starling.display.Quad;
   
   public class LevelJoint extends LevelJointModel
   {
       
      
      private var mB2Joint:b2Joint;
      
      public var debug_quad:Quad;
      
      public var debug_object_1:LevelObject;
      
      public var debug_object_2:LevelObject;
      
      public function LevelJoint(type:int, index1:int, index2:int, point1:Point, point2:Point, isCollideConnected:Boolean = false, isLimited:Boolean = false, lowerLimit:Number = 0.0, upperLimit:Number = 0.0, isMotor:Boolean = false, motorSpeed:Number = 0.0, isBackAndForth:Boolean = false, maxTorque:Number = 0.0, breakable:Boolean = false, breakForce:Number = 0.0, isOneWayDestroyed:Boolean = false)
      {
         super(type,index1,index2,point1,point2,isCollideConnected,isLimited,lowerLimit,upperLimit,isMotor,motorSpeed,isBackAndForth,maxTorque,breakable,breakForce,isOneWayDestroyed);
      }
      
      public static function createJoint(model:LevelJointModel) : LevelJoint
      {
         var joint:LevelJoint = new LevelJoint(model.type,model.id1,model.id2,model.point1,model.point2,model.isCollideConnected,model.isLimited,model.lowerLimit,model.upperLimit,model.isMotor,model.motorSpeed,model.isBackAndForth,model.maxTorque,model.breakable,model.breakForce,model.isOneWayDestroyed);
         joint.annihilationTime = model.annihilationTime;
         joint.distanceToDestroyChild = model.distanceToDestroyChild;
         joint.isOneWayDestroyed = model.isOneWayDestroyed;
         joint.axisX = model.axisX;
         joint.axisY = model.axisY;
         joint.coordinateType = model.coordinateType;
         joint.frequency = model.frequency;
         joint.dampingRatio = model.dampingRatio;
         joint.breakable = model.breakable;
         joint.breakForce = model.breakForce;
         joint.destroyChild = model.destroyChild;
         joint.slingshotJoint = model.slingshotJoint;
         return joint;
      }
      
      public function get B2Joint() : b2Joint
      {
         return this.mB2Joint;
      }
      
      public function set B2Joint(value:b2Joint) : void
      {
         this.mB2Joint = value;
      }
   }
}

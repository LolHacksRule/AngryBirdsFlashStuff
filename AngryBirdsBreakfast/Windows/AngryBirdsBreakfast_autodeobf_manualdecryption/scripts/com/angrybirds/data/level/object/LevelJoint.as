package com.angrybirds.data.level.object
{
   import com.rovio.Box2D.Dynamics.Joints.b2Joint;
   import com.angrybirds.engine.objects.LevelObject;
   import starling.display.Quad;
   import flash.geom.Point;
   
   public class LevelJoint extends LevelJointModel
   {
       
      
      private var mB2Joint:b2Joint;
      
      public var debug_quad:Quad;
      
      public var debug_object_1:LevelObject;
      
      public var debug_object_2:LevelObject;
      
      public function LevelJoint(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function createJoint(param1:LevelJointModel) : LevelJoint
      {
         var _loc2_:LevelJoint = new LevelJoint(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.isCollideConnected,param1.isLimited,param1.lowerLimit,param1.upperLimit,param1.isMotor,param1.motorSpeed,param1.isBackAndForth,param1.maxTorque,param1.isBreakable,param1.minBreakForce,param1.isOneWayDestroyed);
         _loc2_.annihilationTime = param1.annihilationTime;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.coordinateType = param1.coordinateType;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         return _loc2_;
      }
      
      public function get B2Joint() : b2Joint
      {
         return this.mB2Joint;
      }
      
      public function set B2Joint(param1:b2Joint) : void
      {
         this.mB2Joint = param1;
      }
   }
}

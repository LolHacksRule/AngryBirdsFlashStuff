package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var maxForce:Number;
      
      public var frequencyHz:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.e_mouseJoint;
         this.maxForce = 0;
         this.frequencyHz = 5;
         this.dampingRatio = 0.7;
      }
   }
}

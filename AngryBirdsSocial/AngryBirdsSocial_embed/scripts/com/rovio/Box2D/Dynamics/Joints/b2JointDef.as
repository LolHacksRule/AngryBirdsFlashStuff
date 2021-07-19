package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var bodyA:b2Body;
      
      public var bodyB:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.e_unknownJoint;
         this.userData = null;
         this.bodyA = null;
         this.bodyB = null;
         this.collideConnected = false;
      }
   }
}

package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var length:Number;
      
      public var frequencyHz:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         super();
         type = b2Joint.e_distanceJoint;
         this.length = 1;
         this.frequencyHz = 0;
         this.dampingRatio = 0;
      }
      
      public function Initialize(bA:b2Body, bB:b2Body, anchorA:b2Vec2, anchorB:b2Vec2) : void
      {
         bodyA = bA;
         bodyB = bB;
         this.localAnchorA.SetV(bodyA.GetLocalPoint(anchorA));
         this.localAnchorB.SetV(bodyB.GetLocalPoint(anchorB));
         var dX:Number = anchorB.x - anchorA.x;
         var dY:Number = anchorB.y - anchorA.y;
         this.length = Math.sqrt(dX * dX + dY * dY);
         this.frequencyHz = 0;
         this.dampingRatio = 0;
      }
   }
}

package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var groundAnchorA:b2Vec2;
      
      public var groundAnchorB:b2Vec2;
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var lengthA:Number;
      
      public var maxLengthA:Number;
      
      public var lengthB:Number;
      
      public var maxLengthB:Number;
      
      public var ratio:Number;
      
      public function b2PulleyJointDef()
      {
         this.groundAnchorA = new b2Vec2();
         this.groundAnchorB = new b2Vec2();
         this.localAnchorA = new b2Vec2();
         this.localAnchorB = new b2Vec2();
         super();
         type = b2Joint.e_pulleyJoint;
         this.groundAnchorA.Set(-1,1);
         this.groundAnchorB.Set(1,1);
         this.localAnchorA.Set(-1,0);
         this.localAnchorB.Set(1,0);
         this.lengthA = 0;
         this.maxLengthA = 0;
         this.lengthB = 0;
         this.maxLengthB = 0;
         this.ratio = 1;
         collideConnected = true;
      }
      
      public function Initialize(bA:b2Body, bB:b2Body, gaA:b2Vec2, gaB:b2Vec2, anchorA:b2Vec2, anchorB:b2Vec2, r:Number) : void
      {
         bodyA = bA;
         bodyB = bB;
         this.groundAnchorA.SetV(gaA);
         this.groundAnchorB.SetV(gaB);
         this.localAnchorA = bodyA.GetLocalPoint(anchorA);
         this.localAnchorB = bodyB.GetLocalPoint(anchorB);
         var d1X:Number = anchorA.x - gaA.x;
         var d1Y:Number = anchorA.y - gaA.y;
         this.lengthA = Math.sqrt(d1X * d1X + d1Y * d1Y);
         var d2X:Number = anchorB.x - gaB.x;
         var d2Y:Number = anchorB.y - gaB.y;
         this.lengthB = Math.sqrt(d2X * d2X + d2Y * d2Y);
         this.ratio = r;
         var C:Number = this.lengthA + this.ratio * this.lengthB;
         this.maxLengthA = C - this.ratio * b2PulleyJoint.b2_minPulleyLength;
         this.maxLengthB = (C - b2PulleyJoint.b2_minPulleyLength) / this.ratio;
      }
   }
}

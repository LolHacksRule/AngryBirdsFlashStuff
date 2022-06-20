package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Dynamics.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var circlePointA:b2Vec2 = new b2Vec2();
      
      private static var circlePointB:b2Vec2 = new b2Vec2();
       
      
      public var m_normal:b2Vec2;
      
      public var m_points:Vector.<b2Vec2>;
      
      public var m_separations:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         super();
         this.m_normal = new b2Vec2();
         this.m_separations = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.m_points = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         for(var i:int = 0; i < b2Settings.b2_maxManifoldPoints; i++)
         {
            this.m_points[i] = new b2Vec2();
         }
      }
      
      public function Initialize(cc:b2ContactConstraint) : void
      {
         var i:int = 0;
         var clipPointX:Number = NaN;
         var clipPointY:Number = NaN;
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var planePointX:Number = NaN;
         var planePointY:Number = NaN;
         var pointAX:Number = NaN;
         var pointAY:Number = NaN;
         var pointBX:Number = NaN;
         var pointBY:Number = NaN;
         var dX:Number = NaN;
         var dY:Number = NaN;
         var d2:Number = NaN;
         var d:Number = NaN;
         b2Settings.b2Assert(cc.pointCount > 0);
         switch(cc.type)
         {
            case b2Manifold.e_circles:
               tMat = cc.bodyA.m_xf.R;
               tVec = cc.localPoint;
               pointAX = cc.bodyA.m_xf.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
               pointAY = cc.bodyA.m_xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
               tMat = cc.bodyB.m_xf.R;
               tVec = cc.points[0].localPoint;
               pointBX = cc.bodyB.m_xf.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
               pointBY = cc.bodyB.m_xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
               dX = pointBX - pointAX;
               dY = pointBY - pointAY;
               d2 = dX * dX + dY * dY;
               if(d2 > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  d = Math.sqrt(d2);
                  this.m_normal.x = dX / d;
                  this.m_normal.y = dY / d;
               }
               else
               {
                  this.m_normal.x = 1;
                  this.m_normal.y = 0;
               }
               this.m_points[0].x = 0.5 * (pointAX + pointBX);
               this.m_points[0].y = 0.5 * (pointAY + pointBY);
               this.m_separations[0] = dX * this.m_normal.x + dY * this.m_normal.y - cc.radius;
               break;
            case b2Manifold.e_faceA:
               tMat = cc.bodyA.m_xf.R;
               tVec = cc.localPlaneNormal;
               this.m_normal.x = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
               this.m_normal.y = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
               tMat = cc.bodyA.m_xf.R;
               tVec = cc.localPoint;
               planePointX = cc.bodyA.m_xf.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
               planePointY = cc.bodyA.m_xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
               tMat = cc.bodyB.m_xf.R;
               for(i = 0; i < cc.pointCount; i++)
               {
                  tVec = cc.points[i].localPoint;
                  clipPointX = cc.bodyB.m_xf.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
                  clipPointY = cc.bodyB.m_xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
                  this.m_separations[i] = (clipPointX - planePointX) * this.m_normal.x + (clipPointY - planePointY) * this.m_normal.y - cc.radius;
                  this.m_points[i].x = clipPointX;
                  this.m_points[i].y = clipPointY;
               }
               break;
            case b2Manifold.e_faceB:
               tMat = cc.bodyB.m_xf.R;
               tVec = cc.localPlaneNormal;
               this.m_normal.x = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
               this.m_normal.y = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
               tMat = cc.bodyB.m_xf.R;
               tVec = cc.localPoint;
               planePointX = cc.bodyB.m_xf.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
               planePointY = cc.bodyB.m_xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
               tMat = cc.bodyA.m_xf.R;
               for(i = 0; i < cc.pointCount; i++)
               {
                  tVec = cc.points[i].localPoint;
                  clipPointX = cc.bodyA.m_xf.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
                  clipPointY = cc.bodyA.m_xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
                  this.m_separations[i] = (clipPointX - planePointX) * this.m_normal.x + (clipPointY - planePointY) * this.m_normal.y - cc.radius;
                  this.m_points[i].Set(clipPointX,clipPointY);
               }
               this.m_normal.x *= -1;
               this.m_normal.y *= -1;
         }
      }
   }
}

package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const e_points:int = 1;
      
      public static const e_faceA:int = 2;
      
      public static const e_faceB:int = 4;
       
      
      public var m_proxyA:b2DistanceProxy;
      
      public var m_proxyB:b2DistanceProxy;
      
      public var m_type:int;
      
      public var m_localPoint:b2Vec2;
      
      public var m_axis:b2Vec2;
      
      function b2SeparationFunction()
      {
         this.m_localPoint = new b2Vec2();
         this.m_axis = new b2Vec2();
         super();
      }
      
      public function Initialize(cache:b2SimplexCache, proxyA:b2DistanceProxy, transformA:b2Transform, proxyB:b2DistanceProxy, transformB:b2Transform) : void
      {
         var localPointA:b2Vec2 = null;
         var localPointA1:b2Vec2 = null;
         var localPointA2:b2Vec2 = null;
         var localPointB:b2Vec2 = null;
         var localPointB1:b2Vec2 = null;
         var localPointB2:b2Vec2 = null;
         var pointAX:Number = NaN;
         var pointAY:Number = NaN;
         var pointBX:Number = NaN;
         var pointBY:Number = NaN;
         var normalX:Number = NaN;
         var normalY:Number = NaN;
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var s:Number = NaN;
         var sgn:Number = NaN;
         var pA:b2Vec2 = null;
         var dA:b2Vec2 = null;
         var pB:b2Vec2 = null;
         var dB:b2Vec2 = null;
         var a:Number = NaN;
         var e:Number = NaN;
         var r:b2Vec2 = null;
         var c:Number = NaN;
         var f:Number = NaN;
         var b:Number = NaN;
         var denom:Number = NaN;
         var t:Number = NaN;
         this.m_proxyA = proxyA;
         this.m_proxyB = proxyB;
         var count:int = cache.count;
         b2Settings.b2Assert(0 < count && count < 3);
         if(count == 1)
         {
            this.m_type = e_points;
            localPointA = this.m_proxyA.GetVertex(cache.indexA[0]);
            localPointB = this.m_proxyB.GetVertex(cache.indexB[0]);
            tVec = localPointA;
            tMat = transformA.R;
            pointAX = transformA.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
            pointAY = transformA.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
            tVec = localPointB;
            tMat = transformB.R;
            pointBX = transformB.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
            pointBY = transformB.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
            this.m_axis.x = pointBX - pointAX;
            this.m_axis.y = pointBY - pointAY;
            this.m_axis.Normalize();
         }
         else if(cache.indexB[0] == cache.indexB[1])
         {
            this.m_type = e_faceA;
            localPointA1 = this.m_proxyA.GetVertex(cache.indexA[0]);
            localPointA2 = this.m_proxyA.GetVertex(cache.indexA[1]);
            localPointB = this.m_proxyB.GetVertex(cache.indexB[0]);
            this.m_localPoint.x = 0.5 * (localPointA1.x + localPointA2.x);
            this.m_localPoint.y = 0.5 * (localPointA1.y + localPointA2.y);
            this.m_axis = b2Math.CrossVF(b2Math.SubtractVV(localPointA2,localPointA1),1);
            this.m_axis.Normalize();
            tVec = this.m_axis;
            tMat = transformA.R;
            normalX = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
            normalY = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
            tVec = this.m_localPoint;
            tMat = transformA.R;
            pointAX = transformA.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
            pointAY = transformA.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
            tVec = localPointB;
            tMat = transformB.R;
            pointBX = transformB.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
            pointBY = transformB.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
            s = (pointBX - pointAX) * normalX + (pointBY - pointAY) * normalY;
            if(s < 0)
            {
               this.m_axis.NegativeSelf();
            }
         }
         else if(cache.indexA[0] == cache.indexA[0])
         {
            this.m_type = e_faceB;
            localPointB1 = this.m_proxyB.GetVertex(cache.indexB[0]);
            localPointB2 = this.m_proxyB.GetVertex(cache.indexB[1]);
            localPointA = this.m_proxyA.GetVertex(cache.indexA[0]);
            this.m_localPoint.x = 0.5 * (localPointB1.x + localPointB2.x);
            this.m_localPoint.y = 0.5 * (localPointB1.y + localPointB2.y);
            this.m_axis = b2Math.CrossVF(b2Math.SubtractVV(localPointB2,localPointB1),1);
            this.m_axis.Normalize();
            tVec = this.m_axis;
            tMat = transformB.R;
            normalX = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
            normalY = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
            tVec = this.m_localPoint;
            tMat = transformB.R;
            pointBX = transformB.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
            pointBY = transformB.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
            tVec = localPointA;
            tMat = transformA.R;
            pointAX = transformA.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
            pointAY = transformA.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
            s = (pointAX - pointBX) * normalX + (pointAY - pointBY) * normalY;
            if(s < 0)
            {
               this.m_axis.NegativeSelf();
            }
         }
         else
         {
            localPointA1 = this.m_proxyA.GetVertex(cache.indexA[0]);
            localPointA2 = this.m_proxyA.GetVertex(cache.indexA[1]);
            localPointB1 = this.m_proxyB.GetVertex(cache.indexB[0]);
            localPointB2 = this.m_proxyB.GetVertex(cache.indexB[1]);
            pA = b2Math.MulX(transformA,localPointA);
            dA = b2Math.MulMV(transformA.R,b2Math.SubtractVV(localPointA2,localPointA1));
            pB = b2Math.MulX(transformB,localPointB);
            dB = b2Math.MulMV(transformB.R,b2Math.SubtractVV(localPointB2,localPointB1));
            a = dA.x * dA.x + dA.y * dA.y;
            e = dB.x * dB.x + dB.y * dB.y;
            r = b2Math.SubtractVV(dB,dA);
            c = dA.x * r.x + dA.y * r.y;
            f = dB.x * r.x + dB.y * r.y;
            b = dA.x * dB.x + dA.y * dB.y;
            denom = a * e - b * b;
            s = 0;
            if(denom != 0)
            {
               s = b2Math.Clamp((b * f - c * e) / denom,0,1);
            }
            t = (b * s + f) / e;
            if(t < 0)
            {
               t = 0;
               s = b2Math.Clamp((b - c) / a,0,1);
            }
            localPointA = new b2Vec2();
            localPointA.x = localPointA1.x + s * (localPointA2.x - localPointA1.x);
            localPointA.y = localPointA1.y + s * (localPointA2.y - localPointA1.y);
            localPointB = new b2Vec2();
            localPointB.x = localPointB1.x + s * (localPointB2.x - localPointB1.x);
            localPointB.y = localPointB1.y + s * (localPointB2.y - localPointB1.y);
            if(s == 0 || s == 1)
            {
               this.m_type = e_faceB;
               this.m_axis = b2Math.CrossVF(b2Math.SubtractVV(localPointB2,localPointB1),1);
               this.m_axis.Normalize();
               this.m_localPoint = localPointB;
               tVec = this.m_axis;
               tMat = transformB.R;
               normalX = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
               normalY = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
               tVec = this.m_localPoint;
               tMat = transformB.R;
               pointBX = transformB.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
               pointBY = transformB.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
               tVec = localPointA;
               tMat = transformA.R;
               pointAX = transformA.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
               pointAY = transformA.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
               sgn = (pointAX - pointBX) * normalX + (pointAY - pointBY) * normalY;
               if(s < 0)
               {
                  this.m_axis.NegativeSelf();
               }
            }
            else
            {
               this.m_type = e_faceA;
               this.m_axis = b2Math.CrossVF(b2Math.SubtractVV(localPointA2,localPointA1),1);
               this.m_localPoint = localPointA;
               tVec = this.m_axis;
               tMat = transformA.R;
               normalX = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
               normalY = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
               tVec = this.m_localPoint;
               tMat = transformA.R;
               pointAX = transformA.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
               pointAY = transformA.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
               tVec = localPointB;
               tMat = transformB.R;
               pointBX = transformB.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
               pointBY = transformB.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
               sgn = (pointBX - pointAX) * normalX + (pointBY - pointAY) * normalY;
               if(s < 0)
               {
                  this.m_axis.NegativeSelf();
               }
            }
         }
      }
      
      public function Evaluate(transformA:b2Transform, transformB:b2Transform) : Number
      {
         var axisA:b2Vec2 = null;
         var axisB:b2Vec2 = null;
         var localPointA:b2Vec2 = null;
         var localPointB:b2Vec2 = null;
         var pointA:b2Vec2 = null;
         var pointB:b2Vec2 = null;
         var seperation:Number = NaN;
         var normal:b2Vec2 = null;
         switch(this.m_type)
         {
            case e_points:
               axisA = b2Math.MulTMV(transformA.R,this.m_axis);
               axisB = b2Math.MulTMV(transformB.R,this.m_axis.GetNegative());
               localPointA = this.m_proxyA.GetSupportVertex(axisA);
               localPointB = this.m_proxyB.GetSupportVertex(axisB);
               pointA = b2Math.MulX(transformA,localPointA);
               pointB = b2Math.MulX(transformB,localPointB);
               return Number((pointB.x - pointA.x) * this.m_axis.x + (pointB.y - pointA.y) * this.m_axis.y);
            case e_faceA:
               normal = b2Math.MulMV(transformA.R,this.m_axis);
               pointA = b2Math.MulX(transformA,this.m_localPoint);
               axisB = b2Math.MulTMV(transformB.R,normal.GetNegative());
               localPointB = this.m_proxyB.GetSupportVertex(axisB);
               pointB = b2Math.MulX(transformB,localPointB);
               return Number((pointB.x - pointA.x) * normal.x + (pointB.y - pointA.y) * normal.y);
            case e_faceB:
               normal = b2Math.MulMV(transformB.R,this.m_axis);
               pointB = b2Math.MulX(transformB,this.m_localPoint);
               axisA = b2Math.MulTMV(transformA.R,normal.GetNegative());
               localPointA = this.m_proxyA.GetSupportVertex(axisA);
               pointA = b2Math.MulX(transformA,localPointA);
               return Number((pointA.x - pointB.x) * normal.x + (pointA.y - pointB.y) * normal.y);
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
   }
}

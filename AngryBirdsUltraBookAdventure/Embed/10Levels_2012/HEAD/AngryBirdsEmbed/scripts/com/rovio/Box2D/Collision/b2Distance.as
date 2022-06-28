package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Collision.Shapes.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var s_simplex:b2Simplex = new b2Simplex();
      
      private static var s_saveA:Vector.<int> = new Vector.<int>(3);
      
      private static var s_saveB:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function Distance(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc17_:int = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:Boolean = false;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         ++b2_gjkCalls;
         var _loc4_:b2DistanceProxy = param3.proxyA;
         var _loc5_:b2DistanceProxy = param3.proxyB;
         var _loc6_:b2Transform = param3.transformA;
         var _loc7_:b2Transform = param3.transformB;
         var _loc8_:b2Simplex;
         (_loc8_ = s_simplex).ReadCache(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.m_vertices;
         var _loc11_:Vector.<int> = s_saveA;
         var _loc12_:Vector.<int> = s_saveB;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.GetClosestPoint()).LengthSquared();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.m_count;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.m_count)
            {
               case 1:
                  break;
               case 2:
                  _loc8_.Solve2();
                  break;
               case 3:
                  _loc8_.Solve3();
                  break;
               default:
                  b2Settings.b2Assert(false);
            }
            if(_loc8_.m_count == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.GetClosestPoint()).LengthSquared()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.GetSearchDirection()).LengthSquared() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.m_count]).indexA = _loc4_.GetSupport(b2Math.MulTMV(_loc6_.R,_loc20_.GetNegative()));
            _loc21_.wA = b2Math.MulX(_loc6_,_loc4_.GetVertex(_loc21_.indexA));
            _loc21_.indexB = _loc5_.GetSupport(b2Math.MulTMV(_loc7_.R,_loc20_));
            _loc21_.wB = b2Math.MulX(_loc7_,_loc5_.GetVertex(_loc21_.indexB));
            _loc21_.w = b2Math.SubtractVV(_loc21_.wB,_loc21_.wA);
            _loc19_++;
            ++b2_gjkIters;
            _loc22_ = false;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               if(_loc21_.indexA == _loc11_[_loc17_] && _loc21_.indexB == _loc12_[_loc17_])
               {
                  _loc22_ = true;
                  break;
               }
               _loc17_++;
            }
            if(_loc22_)
            {
               break;
            }
            ++_loc8_.m_count;
         }
         b2_gjkMaxIters = b2Math.Max(b2_gjkMaxIters,_loc19_);
         _loc8_.GetWitnessPoints(param1.pointA,param1.pointB);
         param1.distance = b2Math.SubtractVV(param1.pointA,param1.pointB).Length();
         param1.iterations = _loc19_;
         _loc8_.WriteCache(param2);
         if(param3.useRadii)
         {
            _loc23_ = _loc4_.m_radius;
            _loc24_ = _loc5_.m_radius;
            if(param1.distance > _loc23_ + _loc24_ && param1.distance > Number.MIN_VALUE)
            {
               param1.distance -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.SubtractVV(param1.pointB,param1.pointA)).Normalize();
               param1.pointA.x += _loc23_ * _loc25_.x;
               param1.pointA.y += _loc23_ * _loc25_.y;
               param1.pointB.x -= _loc24_ * _loc25_.x;
               param1.pointB.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.pointA.x + param1.pointB.x);
               _loc18_.y = 0.5 * (param1.pointA.y + param1.pointB.y);
               param1.pointA.x = param1.pointB.x = _loc18_.x;
               param1.pointA.y = param1.pointB.y = _loc18_.y;
               param1.distance = 0;
            }
         }
      }
   }
}

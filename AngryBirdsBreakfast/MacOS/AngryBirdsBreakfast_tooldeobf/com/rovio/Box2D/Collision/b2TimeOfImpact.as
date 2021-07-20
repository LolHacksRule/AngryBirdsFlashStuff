package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Sweep;
   import com.rovio.Box2D.Common.Math.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var s_cache:b2SimplexCache = new b2SimplexCache();
      
      private static var s_distanceInput:b2DistanceInput = new b2DistanceInput();
      
      private static var s_xfA:b2Transform = new b2Transform();
      
      private static var s_xfB:b2Transform = new b2Transform();
      
      private static var s_fcn:b2SeparationFunction = new b2SeparationFunction();
      
      private static var s_distanceOutput:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function TimeOfImpact(param1:b2TOIInput) : Number
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         ++b2_toiCalls;
         var _loc2_:b2DistanceProxy = param1.proxyA;
         var _loc3_:b2DistanceProxy = param1.proxyB;
         var _loc4_:b2Sweep = param1.sweepA;
         var _loc5_:b2Sweep = param1.sweepB;
         b2Settings.b2Assert(_loc4_.t0 == _loc5_.t0);
         b2Settings.b2Assert(1 - _loc4_.t0 > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.m_radius + _loc3_.m_radius;
         var _loc7_:Number = param1.tolerance;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         s_cache.count = 0;
         s_distanceInput.useRadii = false;
         do
         {
            _loc4_.GetTransform(s_xfA,_loc8_);
            _loc5_.GetTransform(s_xfB,_loc8_);
            s_distanceInput.proxyA = _loc2_;
            s_distanceInput.proxyB = _loc3_;
            s_distanceInput.transformA = s_xfA;
            s_distanceInput.transformB = s_xfB;
            b2Distance.Distance(§0!]GetGravity8!vGetGravity0"-§);
            if(s_distanceOutput.distance <= 0)
            {
               _loc8_ = 1;
               break;
            }
            s_fcn.Initialize(s_cache,_loc2_,s_xfA,_loc3_,s_xfB);
            if((_loc12_ = s_fcn.Evaluate(§@bGetGravity1!i§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.Max(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.Max(_loc12_ - _loc7_,0.02 * _loc6_);
               }
            }
            if(_loc12_ - _loc11_ < 0.5 * _loc7_)
            {
               if(_loc10_ == 0)
               {
                  _loc8_ = 1;
                  break;
               }
               break;
            }
            _loc13_ = _loc8_;
            _loc14_ = _loc8_;
            _loc15_ = 1;
            _loc16_ = _loc12_;
            _loc4_.GetTransform(s_xfA,_loc15_);
            _loc5_.GetTransform(s_xfB,_loc15_);
            if((_loc17_ = s_fcn.Evaluate(§@bGetGravity1!i§)) >= _loc11_)
            {
               _loc8_ = 1;
               break;
            }
            _loc18_ = 0;
            do
            {
               if(_loc18_ & 1)
               {
                  _loc19_ = _loc14_ + (_loc11_ - _loc16_) * (_loc15_ - _loc14_) / (_loc17_ - _loc16_);
               }
               else
               {
                  _loc19_ = 0.5 * (_loc14_ + _loc15_);
               }
               _loc4_.GetTransform(s_xfA,_loc19_);
               _loc5_.GetTransform(s_xfB,_loc19_);
               _loc20_ = s_fcn.Evaluate(§@bGetGravity1!i§);
               if(b2Math.Abs(_loc20_ - _loc11_) < 0.025 * _loc7_)
               {
                  _loc13_ = _loc19_;
                  break;
               }
               if(_loc20_ > _loc11_)
               {
                  _loc14_ = _loc19_;
                  _loc16_ = _loc20_;
               }
               else
               {
                  _loc15_ = _loc19_;
                  _loc17_ = _loc20_;
               }
               _loc18_++;
               ++b2_toiRootIters;
            }
            while(_loc18_ != 50);
            
            b2_toiMaxRootIters = b2Math.Max(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.Max(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

package §_-yI§
{
   import §_-b4§.b2Settings;
   import §_-cP§.b2Math;
   import §_-cP§.b2Sweep;
   import §_-cP§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-K4§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-GS§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-Fq§:b2Transform = new b2Transform();
      
      private static var §_-Vv§:b2Transform = new b2Transform();
      
      private static var §_-gN§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-yP§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-Ry§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§_-s1§;
         var _loc3_:b2DistanceProxy = param1.§_-vt§;
         var _loc4_:b2Sweep = param1.§_-Qu§;
         var _loc5_:b2Sweep = param1.§_-vS§;
         b2Settings.b2Assert(_loc4_.§_-7z§ == _loc5_.§_-7z§);
         b2Settings.b2Assert(1 - _loc4_.§_-7z§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-EO§ + _loc3_.§_-EO§;
         var _loc7_:Number = param1.§_-zz§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-K4§.count = 0;
         §_-GS§.§_-Rd§ = false;
         do
         {
            _loc4_.§_-KR§(§_-Fq§,_loc8_);
            _loc5_.§_-KR§(§_-Vv§,_loc8_);
            §_-GS§.§_-s1§ = _loc2_;
            §_-GS§.§_-vt§ = _loc3_;
            §_-GS§.§_-uv§ = §_-Fq§;
            §_-GS§.§_-d2§ = §_-Vv§;
            b2Distance.§_-T2§(§_-yP§,§_-K4§,§_-GS§);
            if(§_-yP§.§_-qK§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-gN§.§_-Qz§(§_-K4§,_loc2_,§_-Fq§,_loc3_,§_-Vv§);
            if((_loc12_ = §_-gN§.Evaluate(§_-Fq§,§_-Vv§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-5m§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-5m§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§_-KR§(§_-Fq§,_loc15_);
            _loc5_.§_-KR§(§_-Vv§,_loc15_);
            if((_loc17_ = §_-gN§.Evaluate(§_-Fq§,§_-Vv§)) >= _loc11_)
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
               _loc4_.§_-KR§(§_-Fq§,_loc19_);
               _loc5_.§_-KR§(§_-Vv§,_loc19_);
               _loc20_ = §_-gN§.Evaluate(§_-Fq§,§_-Vv§);
               if(b2Math.§_-5C§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-5m§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-5m§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

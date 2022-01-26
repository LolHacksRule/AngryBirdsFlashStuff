package §_-wZ§
{
   import §_-SM§.b2Settings;
   import §var§.b2Math;
   import §var§.b2Sweep;
   import §var§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-YC§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-y8§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-uZ§:b2Transform = new b2Transform();
      
      private static var §_-by§:b2Transform = new b2Transform();
      
      private static var §_-tm§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-v1§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-A1§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§_-RO§;
         var _loc3_:b2DistanceProxy = param1.§_-5J§;
         var _loc4_:b2Sweep = param1.§_-21§;
         var _loc5_:b2Sweep = param1.§_-b-§;
         b2Settings.b2Assert(_loc4_.§_-EZ§ == _loc5_.§_-EZ§);
         b2Settings.b2Assert(1 - _loc4_.§_-EZ§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-uG§ + _loc3_.§_-uG§;
         var _loc7_:Number = param1.§_-p1§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-YC§.count = 0;
         §_-y8§.§_-nG§ = false;
         do
         {
            _loc4_.§_-tx§(§_-uZ§,_loc8_);
            _loc5_.§_-tx§(§_-by§,_loc8_);
            §_-y8§.§_-RO§ = _loc2_;
            §_-y8§.§_-5J§ = _loc3_;
            §_-y8§.§_-wt§ = §_-uZ§;
            §_-y8§.§_-HJ§ = §_-by§;
            b2Distance.§_-CU§(§_-v1§,§_-YC§,§_-y8§);
            if(§_-v1§.§_-L3§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-tm§.§_-PU§(§_-YC§,_loc2_,§_-uZ§,_loc3_,§_-by§);
            if((_loc12_ = §_-tm§.Evaluate(§_-uZ§,§_-by§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-NO§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-NO§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§_-tx§(§_-uZ§,_loc15_);
            _loc5_.§_-tx§(§_-by§,_loc15_);
            if((_loc17_ = §_-tm§.Evaluate(§_-uZ§,§_-by§)) >= _loc11_)
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
               _loc4_.§_-tx§(§_-uZ§,_loc19_);
               _loc5_.§_-tx§(§_-by§,_loc19_);
               _loc20_ = §_-tm§.Evaluate(§_-uZ§,§_-by§);
               if(b2Math.§_-PB§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-NO§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-NO§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

package §_-Nw§
{
   import §_-9z§.b2Math;
   import §_-9z§.b2Sweep;
   import §_-9z§.b2Transform;
   import §_-sU§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-SE§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-sB§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-Hk§:b2Transform = new b2Transform();
      
      private static var §_-wn§:b2Transform = new b2Transform();
      
      private static var §_-O0§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-b2§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-Zo§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§_-gv§;
         var _loc3_:b2DistanceProxy = param1.§_-KQ§;
         var _loc4_:b2Sweep = param1.§_-EY§;
         var _loc5_:b2Sweep = param1.§_-G1§;
         b2Settings.b2Assert(_loc4_.§_-Mv§ == _loc5_.§_-Mv§);
         b2Settings.b2Assert(1 - _loc4_.§_-Mv§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-uB§ + _loc3_.§_-uB§;
         var _loc7_:Number = param1.§_-WU§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-SE§.count = 0;
         §_-sB§.§_-JK§ = false;
         do
         {
            _loc4_.§return§(§_-Hk§,_loc8_);
            _loc5_.§return§(§_-wn§,_loc8_);
            §_-sB§.§_-gv§ = _loc2_;
            §_-sB§.§_-KQ§ = _loc3_;
            §_-sB§.§_-cv§ = §_-Hk§;
            §_-sB§.§_-Tr§ = §_-wn§;
            b2Distance.§_-OQ§(§_-b2§,§_-SE§,§_-sB§);
            if(§_-b2§.§_-M9§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-O0§.§_-fn§(§_-SE§,_loc2_,§_-Hk§,_loc3_,§_-wn§);
            if((_loc12_ = §_-O0§.Evaluate(§_-Hk§,§_-wn§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-DY§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-DY§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§return§(§_-Hk§,_loc15_);
            _loc5_.§return§(§_-wn§,_loc15_);
            if((_loc17_ = §_-O0§.Evaluate(§_-Hk§,§_-wn§)) >= _loc11_)
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
               _loc4_.§return§(§_-Hk§,_loc19_);
               _loc5_.§return§(§_-wn§,_loc19_);
               _loc20_ = §_-O0§.Evaluate(§_-Hk§,§_-wn§);
               if(b2Math.§_-Y9§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-DY§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-DY§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

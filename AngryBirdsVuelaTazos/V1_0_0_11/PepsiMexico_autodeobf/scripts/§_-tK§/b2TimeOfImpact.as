package §_-tK§
{
   import §_-dx§.b2Math;
   import §_-dx§.b2Sweep;
   import §_-dx§.b2Transform;
   import §_-iO§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §package§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-ld§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-Ug§:b2Transform = new b2Transform();
      
      private static var §_-IX§:b2Transform = new b2Transform();
      
      private static var §_-DC§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-nO§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-LU§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§_-sM§;
         var _loc3_:b2DistanceProxy = param1.§_-cZ§;
         var _loc4_:b2Sweep = param1.§_-n2§;
         var _loc5_:b2Sweep = param1.§_-SM§;
         b2Settings.b2Assert(_loc4_.§_-Oc§ == _loc5_.§_-Oc§);
         b2Settings.b2Assert(1 - _loc4_.§_-Oc§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-8z§ + _loc3_.§_-8z§;
         var _loc7_:Number = param1.§_-pC§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §package§.count = 0;
         §_-ld§.§_-pJ§ = false;
         do
         {
            _loc4_.§_-LW§(§_-Ug§,_loc8_);
            _loc5_.§_-LW§(§_-IX§,_loc8_);
            §_-ld§.§_-sM§ = _loc2_;
            §_-ld§.§_-cZ§ = _loc3_;
            §_-ld§.§_-3K§ = §_-Ug§;
            §_-ld§.§_-Yp§ = §_-IX§;
            b2Distance.§_-aO§(§_-nO§,§package§,§_-ld§);
            if(§_-nO§.§_-9q§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-DC§.§_-t1§(§package§,_loc2_,§_-Ug§,_loc3_,§_-IX§);
            if((_loc12_ = §_-DC§.Evaluate(§_-Ug§,§_-IX§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-Cz§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-Cz§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§_-LW§(§_-Ug§,_loc15_);
            _loc5_.§_-LW§(§_-IX§,_loc15_);
            if((_loc17_ = §_-DC§.Evaluate(§_-Ug§,§_-IX§)) >= _loc11_)
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
               _loc4_.§_-LW§(§_-Ug§,_loc19_);
               _loc5_.§_-LW§(§_-IX§,_loc19_);
               _loc20_ = §_-DC§.Evaluate(§_-Ug§,§_-IX§);
               if(b2Math.§_-2l§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-Cz§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-Cz§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

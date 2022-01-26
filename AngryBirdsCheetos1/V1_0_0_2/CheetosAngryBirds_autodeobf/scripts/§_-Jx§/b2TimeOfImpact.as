package §_-Jx§
{
   import §_-F2§.b2Math;
   import §_-F2§.b2Sweep;
   import §_-F2§.b2Transform;
   import §_-d6§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-bS§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-dR§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-C7§:b2Transform = new b2Transform();
      
      private static var §_-ZG§:b2Transform = new b2Transform();
      
      private static var §_-5f§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-tv§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-G0§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§_-WA§;
         var _loc3_:b2DistanceProxy = param1.§_-tr§;
         var _loc4_:b2Sweep = param1.§_-J8§;
         var _loc5_:b2Sweep = param1.§_-Jk§;
         b2Settings.b2Assert(_loc4_.§_-4u§ == _loc5_.§_-4u§);
         b2Settings.b2Assert(1 - _loc4_.§_-4u§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-KL§ + _loc3_.§_-KL§;
         var _loc7_:Number = param1.§_-Mj§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-bS§.count = 0;
         §_-dR§.§_-pF§ = false;
         do
         {
            _loc4_.§_-lD§(§_-C7§,_loc8_);
            _loc5_.§_-lD§(§_-ZG§,_loc8_);
            §_-dR§.§_-WA§ = _loc2_;
            §_-dR§.§_-tr§ = _loc3_;
            §_-dR§.§_-dP§ = §_-C7§;
            §_-dR§.§_-af§ = §_-ZG§;
            b2Distance.§_-NX§(§_-tv§,§_-bS§,§_-dR§);
            if(§_-tv§.include <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-5f§.§_-M0§(§_-bS§,_loc2_,§_-C7§,_loc3_,§_-ZG§);
            if((_loc12_ = §_-5f§.Evaluate(§_-C7§,§_-ZG§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-xk§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-xk§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§_-lD§(§_-C7§,_loc15_);
            _loc5_.§_-lD§(§_-ZG§,_loc15_);
            if((_loc17_ = §_-5f§.Evaluate(§_-C7§,§_-ZG§)) >= _loc11_)
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
               _loc4_.§_-lD§(§_-C7§,_loc19_);
               _loc5_.§_-lD§(§_-ZG§,_loc19_);
               _loc20_ = §_-5f§.Evaluate(§_-C7§,§_-ZG§);
               if(b2Math.§_-qe§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-xk§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-xk§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

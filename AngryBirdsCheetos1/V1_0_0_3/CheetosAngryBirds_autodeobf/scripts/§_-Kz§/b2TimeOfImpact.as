package §_-Kz§
{
   import §_-Jf§.b2Settings;
   import §_-Vn§.b2Math;
   import §_-Vn§.b2Sweep;
   import §_-Vn§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-cS§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-pZ§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-Kt§:b2Transform = new b2Transform();
      
      private static var §_-hc§:b2Transform = new b2Transform();
      
      private static var §_-Td§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-AC§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-qL§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§_-t6§;
         var _loc3_:b2DistanceProxy = param1.§_-iZ§;
         var _loc4_:b2Sweep = param1.§_-gQ§;
         var _loc5_:b2Sweep = param1.§_-Es§;
         b2Settings.b2Assert(_loc4_.§_-4f§ == _loc5_.§_-4f§);
         b2Settings.b2Assert(1 - _loc4_.§_-4f§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-EG§ + _loc3_.§_-EG§;
         var _loc7_:Number = param1.§_-O5§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-cS§.count = 0;
         §_-pZ§.§_-7H§ = false;
         do
         {
            _loc4_.§_-fs§(§_-Kt§,_loc8_);
            _loc5_.§_-fs§(§_-hc§,_loc8_);
            §_-pZ§.§_-t6§ = _loc2_;
            §_-pZ§.§_-iZ§ = _loc3_;
            §_-pZ§.§_-p8§ = §_-Kt§;
            §_-pZ§.§_-Mv§ = §_-hc§;
            b2Distance.§_-N§(§_-AC§,§_-cS§,§_-pZ§);
            if(§_-AC§.§_-TQ§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-Td§.§_-yN§(§_-cS§,_loc2_,§_-Kt§,_loc3_,§_-hc§);
            if((_loc12_ = §_-Td§.Evaluate(§_-Kt§,§_-hc§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-6y§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-6y§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§_-fs§(§_-Kt§,_loc15_);
            _loc5_.§_-fs§(§_-hc§,_loc15_);
            if((_loc17_ = §_-Td§.Evaluate(§_-Kt§,§_-hc§)) >= _loc11_)
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
               _loc4_.§_-fs§(§_-Kt§,_loc19_);
               _loc5_.§_-fs§(§_-hc§,_loc19_);
               _loc20_ = §_-Td§.Evaluate(§_-Kt§,§_-hc§);
               if(b2Math.§_-hI§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-6y§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-6y§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

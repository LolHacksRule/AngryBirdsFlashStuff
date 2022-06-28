package §_-gE§
{
   import §_-5§.b2Settings;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Sweep;
   import §_-Yp§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-02v§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-J8§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-Jj§:b2Transform = new b2Transform();
      
      private static var §_-X2§:b2Transform = new b2Transform();
      
      private static var §_-rh§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-08r§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-e9§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§_-05Z§;
         var _loc3_:b2DistanceProxy = param1.§_-l4§;
         var _loc4_:b2Sweep = param1.§_-04k§;
         var _loc5_:b2Sweep = param1.§_-07c§;
         b2Settings.b2Assert(_loc4_.§_-RN§ == _loc5_.§_-RN§);
         b2Settings.b2Assert(1 - _loc4_.§_-RN§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-0CZ§ + _loc3_.§_-0CZ§;
         var _loc7_:Number = param1.§_-PB§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-02v§.count = 0;
         §_-J8§.§_-029§ = false;
         do
         {
            _loc4_.§_-tg§(§_-Jj§,_loc8_);
            _loc5_.§_-tg§(§_-X2§,_loc8_);
            §_-J8§.§_-05Z§ = _loc2_;
            §_-J8§.§_-l4§ = _loc3_;
            §_-J8§.§_-Jr§ = §_-Jj§;
            §_-J8§.§_-St§ = §_-X2§;
            b2Distance.§_-Gt§(§_-08r§,§_-02v§,§_-J8§);
            if(§_-08r§.§_-1P§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-rh§.§_-bL§(§_-02v§,_loc2_,§_-Jj§,_loc3_,§_-X2§);
            if((_loc12_ = §_-rh§.Evaluate(§_-Jj§,§_-X2§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-yL§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-yL§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§_-tg§(§_-Jj§,_loc15_);
            _loc5_.§_-tg§(§_-X2§,_loc15_);
            if((_loc17_ = §_-rh§.Evaluate(§_-Jj§,§_-X2§)) >= _loc11_)
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
               _loc4_.§_-tg§(§_-Jj§,_loc19_);
               _loc5_.§_-tg§(§_-X2§,_loc19_);
               _loc20_ = §_-rh§.Evaluate(§_-Jj§,§_-X2§);
               if(b2Math.§_-010§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-yL§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-yL§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

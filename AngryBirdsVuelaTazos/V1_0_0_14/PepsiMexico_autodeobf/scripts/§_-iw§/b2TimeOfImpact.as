package §_-iw§
{
   import §_-4n§.b2Math;
   import §_-4n§.b2Sweep;
   import §_-4n§.b2Transform;
   import §_-bW§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-hG§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-wQ§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-zE§:b2Transform = new b2Transform();
      
      private static var §_-v0§:b2Transform = new b2Transform();
      
      private static var §_-MJ§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-jh§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-OG§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§_-uI§;
         var _loc3_:b2DistanceProxy = param1.§_-Hj§;
         var _loc4_:b2Sweep = param1.§_-vd§;
         var _loc5_:b2Sweep = param1.§_-tl§;
         b2Settings.b2Assert(_loc4_.§_-pu§ == _loc5_.§_-pu§);
         b2Settings.b2Assert(1 - _loc4_.§_-pu§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-9H§ + _loc3_.§_-9H§;
         var _loc7_:Number = param1.§_-La§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-hG§.count = 0;
         §_-wQ§.§_-DN§ = false;
         do
         {
            _loc4_.§_-XD§(§_-zE§,_loc8_);
            _loc5_.§_-XD§(§_-v0§,_loc8_);
            §_-wQ§.§_-uI§ = _loc2_;
            §_-wQ§.§_-Hj§ = _loc3_;
            §_-wQ§.§_-B3§ = §_-zE§;
            §_-wQ§.§_-c4§ = §_-v0§;
            b2Distance.§_-ef§(§_-jh§,§_-hG§,§_-wQ§);
            if(§_-jh§.§_-EH§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-MJ§.§_-Vy§(§_-hG§,_loc2_,§_-zE§,_loc3_,§_-v0§);
            if((_loc12_ = §_-MJ§.Evaluate(§_-zE§,§_-v0§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-NX§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-NX§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§_-XD§(§_-zE§,_loc15_);
            _loc5_.§_-XD§(§_-v0§,_loc15_);
            if((_loc17_ = §_-MJ§.Evaluate(§_-zE§,§_-v0§)) >= _loc11_)
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
               _loc4_.§_-XD§(§_-zE§,_loc19_);
               _loc5_.§_-XD§(§_-v0§,_loc19_);
               _loc20_ = §_-MJ§.Evaluate(§_-zE§,§_-v0§);
               if(b2Math.§_-R3§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-NX§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-NX§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

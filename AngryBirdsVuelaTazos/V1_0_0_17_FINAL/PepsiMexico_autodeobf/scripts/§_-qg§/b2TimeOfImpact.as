package §_-qg§
{
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Sweep;
   import §_-Ja§.b2Transform;
   import §_-lh§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-l3§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-PS§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-6A§:b2Transform = new b2Transform();
      
      private static var §_-ge§:b2Transform = new b2Transform();
      
      private static var §_-5p§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-iX§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-d1§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§ do§;
         var _loc3_:b2DistanceProxy = param1.§_-q9§;
         var _loc4_:b2Sweep = param1.§_-nQ§;
         var _loc5_:b2Sweep = param1.§_-OY§;
         b2Settings.b2Assert(_loc4_.§_-EG§ == _loc5_.§_-EG§);
         b2Settings.b2Assert(1 - _loc4_.§_-EG§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-Q2§ + _loc3_.§_-Q2§;
         var _loc7_:Number = param1.§_-hR§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-l3§.count = 0;
         §_-PS§.§_-X4§ = false;
         do
         {
            _loc4_.§_-ZO§(§_-6A§,_loc8_);
            _loc5_.§_-ZO§(§_-ge§,_loc8_);
            §_-PS§.§ do§ = _loc2_;
            §_-PS§.§_-q9§ = _loc3_;
            §_-PS§.§_-Yf§ = §_-6A§;
            §_-PS§.§_-gD§ = §_-ge§;
            b2Distance.§_-PT§(§_-iX§,§_-l3§,§_-PS§);
            if(§_-iX§.§_-fF§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-5p§.§_-lc§(§_-l3§,_loc2_,§_-6A§,_loc3_,§_-ge§);
            if((_loc12_ = §_-5p§.Evaluate(§_-6A§,§_-ge§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-YD§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-YD§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§_-ZO§(§_-6A§,_loc15_);
            _loc5_.§_-ZO§(§_-ge§,_loc15_);
            if((_loc17_ = §_-5p§.Evaluate(§_-6A§,§_-ge§)) >= _loc11_)
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
               _loc4_.§_-ZO§(§_-6A§,_loc19_);
               _loc5_.§_-ZO§(§_-ge§,_loc19_);
               _loc20_ = §_-5p§.Evaluate(§_-6A§,§_-ge§);
               if(b2Math.§_-xY§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§_-YD§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-YD§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

package §!!#§
{
   import §4! §.b2Settings;
   import §^q§.b2Math;
   import §^q§.b2Sweep;
   import §^q§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §&T§:b2SimplexCache = new b2SimplexCache();
      
      private static var §6A§:b2DistanceInput = new b2DistanceInput();
      
      private static var §,a§:b2Transform = new b2Transform();
      
      private static var §8%§:b2Transform = new b2Transform();
      
      private static var §7O§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §3$§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §8R§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§'!@§;
         var _loc3_:b2DistanceProxy = param1.§5!4§;
         var _loc4_:b2Sweep = param1.§3!<§;
         var _loc5_:b2Sweep = param1.§;K§;
         b2Settings.b2Assert(_loc4_.§0N§ == _loc5_.§0N§);
         b2Settings.b2Assert(1 - _loc4_.§0N§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§9@§ + _loc3_.§9@§;
         var _loc7_:Number = param1.§6L§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §&T§.count = 0;
         §6A§.§#!^§ = false;
         do
         {
            _loc4_.§%!c§(§,a§,_loc8_);
            _loc5_.§%!c§(§8%§,_loc8_);
            §6A§.§'!@§ = _loc2_;
            §6A§.§5!4§ = _loc3_;
            §6A§.§]!F§ = §,a§;
            §6A§.§!`§ = §8%§;
            b2Distance.§^!"§(§3$§,§&T§,§6A§);
            if(§3$§.§+p§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §7O§.§in §(§&T§,_loc2_,§,a§,_loc3_,§8%§);
            if((_loc12_ = §7O§.Evaluate(§,a§,§8%§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§`a§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§`a§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§%!c§(§,a§,_loc15_);
            _loc5_.§%!c§(§8%§,_loc15_);
            if((_loc17_ = §7O§.Evaluate(§,a§,§8%§)) >= _loc11_)
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
               _loc4_.§%!c§(§,a§,_loc19_);
               _loc5_.§%!c§(§8%§,_loc19_);
               _loc20_ = §7O§.Evaluate(§,a§,§8%§);
               if(b2Math.§"§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§`a§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§`a§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

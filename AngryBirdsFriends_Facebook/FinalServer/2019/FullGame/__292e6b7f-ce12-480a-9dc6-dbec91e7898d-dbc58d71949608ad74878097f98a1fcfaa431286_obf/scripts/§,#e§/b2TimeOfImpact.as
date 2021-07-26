package §,#E§
{
   import §&$+§.b2Settings;
   import §04§.b2Math;
   import §04§.b2Sweep;
   import §04§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §<"n§:b2SimplexCache = new b2SimplexCache();
      
      private static var § !x§:b2DistanceInput = new b2DistanceInput();
      
      private static var §8"a§:b2Transform = new b2Transform();
      
      private static var §'$%§:b2Transform = new b2Transform();
      
      private static var §-!S§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §1!W§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §=!F§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§^#1§;
         var _loc3_:b2DistanceProxy = param1.§2$A§;
         var _loc4_:b2Sweep = param1.§[#A§;
         var _loc5_:b2Sweep = param1.§2#u§;
         b2Settings.b2Assert(_loc4_.§60§ == _loc5_.§60§);
         b2Settings.b2Assert(1 - _loc4_.§60§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§&"7§ + _loc3_.§&"7§;
         var _loc7_:Number = param1.§<#U§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §<"n§.count = 0;
         § !x§.§2!J§ = false;
         do
         {
            _loc4_.GetTransform(§8"a§,_loc8_);
            _loc5_.GetTransform(§'$%§,_loc8_);
            § !x§.§^#1§ = _loc2_;
            § !x§.§2$A§ = _loc3_;
            § !x§.§>#J§ = §8"a§;
            § !x§.§8"Z§ = §'$%§;
            b2Distance.§"!t§(§1!W§,§<"n§,§ !x§);
            if(§1!W§.§56§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §-!S§.§&N§(§<"n§,_loc2_,§8"a§,_loc3_,§'$%§);
            if((_loc12_ = §-!S§.Evaluate(§8"a§,§'$%§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§="Z§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§="Z§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.GetTransform(§8"a§,_loc15_);
            _loc5_.GetTransform(§'$%§,_loc15_);
            if((_loc17_ = §-!S§.Evaluate(§8"a§,§'$%§)) >= _loc11_)
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
               _loc4_.GetTransform(§8"a§,_loc19_);
               _loc5_.GetTransform(§'$%§,_loc19_);
               _loc20_ = §-!S§.Evaluate(§8"a§,§'$%§);
               if(b2Math.§0!2§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§="Z§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§="Z§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

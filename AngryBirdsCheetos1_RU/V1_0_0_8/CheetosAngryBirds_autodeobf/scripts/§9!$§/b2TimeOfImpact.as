package §9!$§
{
   import §'!3§.b2Settings;
   import §3q§.b2Math;
   import §3q§.b2Sweep;
   import §3q§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var § !1§:b2SimplexCache = new b2SimplexCache();
      
      private static var §case§:b2DistanceInput = new b2DistanceInput();
      
      private static var §@W§:b2Transform = new b2Transform();
      
      private static var §<4§:b2Transform = new b2Transform();
      
      private static var §6!P§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §>-§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §?k§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§;`§;
         var _loc3_:b2DistanceProxy = param1.§?!5§;
         var _loc4_:b2Sweep = param1.§7!2§;
         var _loc5_:b2Sweep = param1.§ !a§;
         b2Settings.b2Assert(_loc4_.§75§ == _loc5_.§75§);
         b2Settings.b2Assert(1 - _loc4_.§75§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§!R§ + _loc3_.§!R§;
         var _loc7_:Number = param1.§^!A§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         § !1§.count = 0;
         §case§.§&0§ = false;
         do
         {
            _loc4_.§[!4§(§@W§,_loc8_);
            _loc5_.§[!4§(§<4§,_loc8_);
            §case§.§;`§ = _loc2_;
            §case§.§?!5§ = _loc3_;
            §case§.§0Q§ = §@W§;
            §case§.§3t§ = §<4§;
            b2Distance.§0!#§(§>-§,§ !1§,§case§);
            if(§>-§.§9!H§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §6!P§.§;!W§(§ !1§,_loc2_,§@W§,_loc3_,§<4§);
            if((_loc12_ = §6!P§.Evaluate(§@W§,§<4§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§[!6§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§[!6§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§[!4§(§@W§,_loc15_);
            _loc5_.§[!4§(§<4§,_loc15_);
            if((_loc17_ = §6!P§.Evaluate(§@W§,§<4§)) >= _loc11_)
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
               _loc4_.§[!4§(§@W§,_loc19_);
               _loc5_.§[!4§(§<4§,_loc19_);
               _loc20_ = §6!P§.Evaluate(§@W§,§<4§);
               if(b2Math.§@6§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§[!6§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§[!6§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

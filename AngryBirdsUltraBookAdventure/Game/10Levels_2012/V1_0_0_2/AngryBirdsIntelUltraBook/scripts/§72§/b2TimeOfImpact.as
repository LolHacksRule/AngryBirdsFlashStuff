package §72§
{
   import §7!u§.b2Settings;
   import §>H§.b2Math;
   import §>H§.b2Sweep;
   import §>H§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §"8§:b2SimplexCache = new b2SimplexCache();
      
      private static var §!!F§:b2DistanceInput = new b2DistanceInput();
      
      private static var §0!n§:b2Transform = new b2Transform();
      
      private static var §>§:b2Transform = new b2Transform();
      
      private static var §<>§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §?!p§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §+U§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§]!O§;
         var _loc3_:b2DistanceProxy = param1.§&d§;
         var _loc4_:b2Sweep = param1.§'!S§;
         var _loc5_:b2Sweep = param1.§?X§;
         b2Settings.b2Assert(_loc4_.§3J§ == _loc5_.§3J§);
         b2Settings.b2Assert(1 - _loc4_.§3J§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§9!A§ + _loc3_.§9!A§;
         var _loc7_:Number = param1.§0%§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §"8§.count = 0;
         §!!F§.§^1§ = false;
         do
         {
            _loc4_.§2!0§(§0!n§,_loc8_);
            _loc5_.§2!0§(§>§,_loc8_);
            §!!F§.§]!O§ = _loc2_;
            §!!F§.§&d§ = _loc3_;
            §!!F§.§=!G§ = §0!n§;
            §!!F§.§"!O§ = §>§;
            b2Distance.§&7§(§?!p§,§"8§,§!!F§);
            if(§?!p§.§8j§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §<>§.§%%§(§"8§,_loc2_,§0!n§,_loc3_,§>§);
            if((_loc12_ = §<>§.Evaluate(§0!n§,§>§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§0!_§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§0!_§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§2!0§(§0!n§,_loc15_);
            _loc5_.§2!0§(§>§,_loc15_);
            if((_loc17_ = §<>§.Evaluate(§0!n§,§>§)) >= _loc11_)
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
               _loc4_.§2!0§(§0!n§,_loc19_);
               _loc5_.§2!0§(§>§,_loc19_);
               _loc20_ = §<>§.Evaluate(§0!n§,§>§);
               if(b2Math.§-n§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§0!_§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§0!_§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

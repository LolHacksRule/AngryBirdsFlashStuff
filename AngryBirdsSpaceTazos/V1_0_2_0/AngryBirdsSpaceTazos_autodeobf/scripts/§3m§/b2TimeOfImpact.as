package §3m§
{
   import §&!S§.b2Math;
   import §&!S§.b2Sweep;
   import §&!S§.b2Transform;
   import §@!@§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §4i§:b2SimplexCache = new b2SimplexCache();
      
      private static var §'!n§:b2DistanceInput = new b2DistanceInput();
      
      private static var §[!J§:b2Transform = new b2Transform();
      
      private static var §?!C§:b2Transform = new b2Transform();
      
      private static var §1U§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §5J§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §%"§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§@!§;
         var _loc3_:b2DistanceProxy = param1.§'%§;
         var _loc4_:b2Sweep = param1.§@h§;
         var _loc5_:b2Sweep = param1.§@W§;
         b2Settings.b2Assert(_loc4_.§^%§ == _loc5_.§^%§);
         b2Settings.b2Assert(1 - _loc4_.§^%§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§'"D§ + _loc3_.§'"D§;
         var _loc7_:Number = param1.§8!V§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §4i§.count = 0;
         §'!n§.§7!n§ = false;
         do
         {
            _loc4_.§+!T§(§[!J§,_loc8_);
            _loc5_.§+!T§(§?!C§,_loc8_);
            §'!n§.§@!§ = _loc2_;
            §'!n§.§'%§ = _loc3_;
            §'!n§.§[!M§ = §[!J§;
            §'!n§.§#!a§ = §?!C§;
            b2Distance.§[!U§(§5J§,§4i§,§'!n§);
            if(§5J§.§6b§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §1U§.§5!k§(§4i§,_loc2_,§[!J§,_loc3_,§?!C§);
            if((_loc12_ = §1U§.Evaluate(§[!J§,§?!C§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§!!e§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§!!e§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§+!T§(§[!J§,_loc15_);
            _loc5_.§+!T§(§?!C§,_loc15_);
            if((_loc17_ = §1U§.Evaluate(§[!J§,§?!C§)) >= _loc11_)
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
               _loc4_.§+!T§(§[!J§,_loc19_);
               _loc5_.§+!T§(§?!C§,_loc19_);
               _loc20_ = §1U§.Evaluate(§[!J§,§?!C§);
               if(b2Math.§12§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§!!e§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§!!e§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

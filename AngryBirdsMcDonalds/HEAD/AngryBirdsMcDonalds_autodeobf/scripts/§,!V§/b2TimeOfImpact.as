package §,!V§
{
   import §+S§.b2Math;
   import §+S§.b2Sweep;
   import §+S§.b2Transform;
   import §?!n§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §3C§:b2SimplexCache = new b2SimplexCache();
      
      private static var §,!X§:b2DistanceInput = new b2DistanceInput();
      
      private static var §7!L§:b2Transform = new b2Transform();
      
      private static var §^!!§:b2Transform = new b2Transform();
      
      private static var §%!Q§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §9a§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §+! §(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§1e§;
         var _loc3_:b2DistanceProxy = param1.§8!"§;
         var _loc4_:b2Sweep = param1.§-H§;
         var _loc5_:b2Sweep = param1.§]!8§;
         b2Settings.b2Assert(_loc4_.§?9§ == _loc5_.§?9§);
         b2Settings.b2Assert(1 - _loc4_.§?9§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§0!7§ + _loc3_.§0!7§;
         var _loc7_:Number = param1.§8!3§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §3C§.count = 0;
         §,!X§.§;!4§ = false;
         do
         {
            _loc4_.§+!g§(§7!L§,_loc8_);
            _loc5_.§+!g§(§^!!§,_loc8_);
            §,!X§.§1e§ = _loc2_;
            §,!X§.§8!"§ = _loc3_;
            §,!X§.§#!S§ = §7!L§;
            §,!X§.§^!2§ = §^!!§;
            b2Distance.§2!H§(§9a§,§3C§,§,!X§);
            if(§9a§.§+!B§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §%!Q§.§`!9§(§3C§,_loc2_,§7!L§,_loc3_,§^!!§);
            if((_loc12_ = §%!Q§.Evaluate(§7!L§,§^!!§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§!U§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§!U§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§+!g§(§7!L§,_loc15_);
            _loc5_.§+!g§(§^!!§,_loc15_);
            if((_loc17_ = §%!Q§.Evaluate(§7!L§,§^!!§)) >= _loc11_)
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
               _loc4_.§+!g§(§7!L§,_loc19_);
               _loc5_.§+!g§(§^!!§,_loc19_);
               _loc20_ = §%!Q§.Evaluate(§7!L§,§^!!§);
               if(b2Math.§3!0§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§!U§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§!U§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

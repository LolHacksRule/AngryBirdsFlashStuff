package §%!B§
{
   import §&!B§.b2Math;
   import §&!B§.b2Sweep;
   import §&!B§.b2Transform;
   import §^<§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §9!E§:b2SimplexCache = new b2SimplexCache();
      
      private static var §-!J§:b2DistanceInput = new b2DistanceInput();
      
      private static var §3!G§:b2Transform = new b2Transform();
      
      private static var §,4§:b2Transform = new b2Transform();
      
      private static var §>r§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §1!P§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §9p§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§8!=§;
         var _loc3_:b2DistanceProxy = param1.§0A§;
         var _loc4_:b2Sweep = param1.§1@§;
         var _loc5_:b2Sweep = param1.§^!1§;
         b2Settings.b2Assert(_loc4_.§`!W§ == _loc5_.§`!W§);
         b2Settings.b2Assert(1 - _loc4_.§`!W§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§!!`§ + _loc3_.§!!`§;
         var _loc7_:Number = param1.§]k§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §9!E§.count = 0;
         §-!J§.§[!;§ = false;
         do
         {
            _loc4_.§4g§(§3!G§,_loc8_);
            _loc5_.§4g§(§,4§,_loc8_);
            §-!J§.§8!=§ = _loc2_;
            §-!J§.§0A§ = _loc3_;
            §-!J§.§@a§ = §3!G§;
            §-!J§.§2!Y§ = §,4§;
            b2Distance.§^!$§(§1!P§,§9!E§,§-!J§);
            if(§1!P§.§,h§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §>r§.§8#§(§9!E§,_loc2_,§3!G§,_loc3_,§,4§);
            if((_loc12_ = §>r§.Evaluate(§3!G§,§,4§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§,L§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§,L§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§4g§(§3!G§,_loc15_);
            _loc5_.§4g§(§,4§,_loc15_);
            if((_loc17_ = §>r§.Evaluate(§3!G§,§,4§)) >= _loc11_)
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
               _loc4_.§4g§(§3!G§,_loc19_);
               _loc5_.§4g§(§,4§,_loc19_);
               _loc20_ = §>r§.Evaluate(§3!G§,§,4§);
               if(b2Math.§<!,§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§,L§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§,L§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

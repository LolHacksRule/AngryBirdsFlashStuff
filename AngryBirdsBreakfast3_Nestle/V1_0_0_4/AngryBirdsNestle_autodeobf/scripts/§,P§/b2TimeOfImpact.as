package §,P§
{
   import §-%§.b2Math;
   import §-%§.b2Sweep;
   import §-%§.b2Transform;
   import §>!R§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §8i§:b2SimplexCache = new b2SimplexCache();
      
      private static var §1?§:b2DistanceInput = new b2DistanceInput();
      
      private static var §0!1§:b2Transform = new b2Transform();
      
      private static var §5$§:b2Transform = new b2Transform();
      
      private static var §5V§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §6-§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §^!D§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§,"4§;
         var _loc3_:b2DistanceProxy = param1.§0S§;
         var _loc4_:b2Sweep = param1.§5j§;
         var _loc5_:b2Sweep = param1.§?!Y§;
         b2Settings.b2Assert(_loc4_.§?!S§ == _loc5_.§?!S§);
         b2Settings.b2Assert(1 - _loc4_.§?!S§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§4=§ + _loc3_.§4=§;
         var _loc7_:Number = param1.§[!$§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §8i§.count = 0;
         §1?§.§1!A§ = false;
         do
         {
            _loc4_.§,!h§(§0!1§,_loc8_);
            _loc5_.§,!h§(§5$§,_loc8_);
            §1?§.§,"4§ = _loc2_;
            §1?§.§0S§ = _loc3_;
            §1?§.§9!f§ = §0!1§;
            §1?§.§+L§ = §5$§;
            b2Distance.§4x§(§6-§,§8i§,§1?§);
            if(§6-§.§2@§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §5V§.§,n§(§8i§,_loc2_,§0!1§,_loc3_,§5$§);
            if((_loc12_ = §5V§.Evaluate(§0!1§,§5$§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§=Q§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§=Q§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§,!h§(§0!1§,_loc15_);
            _loc5_.§,!h§(§5$§,_loc15_);
            if((_loc17_ = §5V§.Evaluate(§0!1§,§5$§)) >= _loc11_)
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
               _loc4_.§,!h§(§0!1§,_loc19_);
               _loc5_.§,!h§(§5$§,_loc19_);
               _loc20_ = §5V§.Evaluate(§0!1§,§5$§);
               if(b2Math.§-Z§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§=Q§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§=Q§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

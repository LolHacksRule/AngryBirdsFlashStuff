package §&!-§
{
   import §8>§.b2Math;
   import §8>§.b2Sweep;
   import §8>§.b2Transform;
   import §;u§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §4![§:b2SimplexCache = new b2SimplexCache();
      
      private static var §!N§:b2DistanceInput = new b2DistanceInput();
      
      private static var § true§:b2Transform = new b2Transform();
      
      private static var §4!F§:b2Transform = new b2Transform();
      
      private static var §3!C§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §?w§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §'!<§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§5R§;
         var _loc3_:b2DistanceProxy = param1.§0D§;
         var _loc4_:b2Sweep = param1.§@!F§;
         var _loc5_:b2Sweep = param1.§7A§;
         b2Settings.b2Assert(_loc4_.§0p§ == _loc5_.§0p§);
         b2Settings.b2Assert(1 - _loc4_.§0p§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§6q§ + _loc3_.§6q§;
         var _loc7_:Number = param1.§4!P§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §4![§.count = 0;
         §!N§.§2!j§ = false;
         do
         {
            _loc4_.§+!C§(§ true§,_loc8_);
            _loc5_.§+!C§(§4!F§,_loc8_);
            §!N§.§5R§ = _loc2_;
            §!N§.§0D§ = _loc3_;
            §!N§.§&!D§ = § true§;
            §!N§.§`]§ = §4!F§;
            b2Distance.§7U§(§?w§,§4![§,§!N§);
            if(§?w§.§!!q§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §3!C§.§7R§(§4![§,_loc2_,§ true§,_loc3_,§4!F§);
            if((_loc12_ = §3!C§.Evaluate(§ true§,§4!F§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§ 9§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§ 9§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§+!C§(§ true§,_loc15_);
            _loc5_.§+!C§(§4!F§,_loc15_);
            if((_loc17_ = §3!C§.Evaluate(§ true§,§4!F§)) >= _loc11_)
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
               _loc4_.§+!C§(§ true§,_loc19_);
               _loc5_.§+!C§(§4!F§,_loc19_);
               _loc20_ = §3!C§.Evaluate(§ true§,§4!F§);
               if(b2Math.§>!Y§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§ 9§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§ 9§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

package §`!E§
{
   import §0!=§.b2Math;
   import §0!=§.b2Sweep;
   import §0!=§.b2Transform;
   import §0^§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §>2§:b2SimplexCache = new b2SimplexCache();
      
      private static var §2!J§:b2DistanceInput = new b2DistanceInput();
      
      private static var §9X§:b2Transform = new b2Transform();
      
      private static var §function§:b2Transform = new b2Transform();
      
      private static var §2!?§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §6!<§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §4]§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§0!f§;
         var _loc3_:b2DistanceProxy = param1.§<!I§;
         var _loc4_:b2Sweep = param1.§6z§;
         var _loc5_:b2Sweep = param1.§]i§;
         b2Settings.b2Assert(_loc4_.§5!K§ == _loc5_.§5!K§);
         b2Settings.b2Assert(1 - _loc4_.§5!K§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§]!5§ + _loc3_.§]!5§;
         var _loc7_:Number = param1.§&!2§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §>2§.count = 0;
         §2!J§.§5!8§ = false;
         do
         {
            _loc4_.§6!a§(§9X§,_loc8_);
            _loc5_.§6!a§(§function§,_loc8_);
            §2!J§.§0!f§ = _loc2_;
            §2!J§.§<!I§ = _loc3_;
            §2!J§.§7!X§ = §9X§;
            §2!J§.§'n§ = §function§;
            b2Distance.§#!f§(§6!<§,§>2§,§2!J§);
            if(§6!<§.§[!>§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §2!?§.§8!6§(§>2§,_loc2_,§9X§,_loc3_,§function§);
            if((_loc12_ = §2!?§.Evaluate(§9X§,§function§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§`!d§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§`!d§(_loc12_ - _loc7_,0.02 * _loc6_);
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
            _loc4_.§6!a§(§9X§,_loc15_);
            _loc5_.§6!a§(§function§,_loc15_);
            if((_loc17_ = §2!?§.Evaluate(§9X§,§function§)) >= _loc11_)
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
               _loc4_.§6!a§(§9X§,_loc19_);
               _loc5_.§6!a§(§function§,_loc19_);
               _loc20_ = §2!?§.Evaluate(§9X§,§function§);
               if(b2Math.§4B§(_loc20_ - _loc11_) < 0.025 * _loc7_)
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
            
            b2_toiMaxRootIters = b2Math.§`!d§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§`!d§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}

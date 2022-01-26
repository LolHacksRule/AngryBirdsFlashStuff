package §0!2§
{
   import §1!H§.*;
   import §;]§.*;
   import §=E§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §79§:b2Simplex = new b2Simplex();
      
      private static var §5V§:Vector.<int> = new Vector.<int>(3);
      
      private static var §^O§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §?d§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc17_:int = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:Boolean = false;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         ++b2_gjkCalls;
         var _loc4_:b2DistanceProxy = param3.§5j§;
         var _loc5_:b2DistanceProxy = param3.§;!?§;
         var _loc6_:b2Transform = param3.§&z§;
         var _loc7_:b2Transform = param3.§+]§;
         var _loc8_:b2Simplex;
         (_loc8_ = §79§).§+!!§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§9!Z§;
         var _loc11_:Vector.<int> = §5V§;
         var _loc12_:Vector.<int> = §^O§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§`!S§()).§8!%§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§]!A§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§]!A§)
            {
               case 1:
                  break;
               case 2:
                  _loc8_.Solve2();
                  break;
               case 3:
                  _loc8_.Solve3();
                  break;
               default:
                  b2Settings.b2Assert(false);
            }
            if(_loc8_.§]!A§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§`!S§()).§8!%§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§3e§()).§8!%§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§]!A§]).indexA = _loc4_.§%<§(b2Math.§ set§(_loc6_.R,_loc20_.§9"§()));
            _loc21_.§9!J§ = b2Math.§1!F§(_loc6_,_loc4_.§%?§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§%<§(b2Math.§ set§(_loc7_.R,_loc20_));
            _loc21_.§<j§ = b2Math.§1!F§(_loc7_,_loc5_.§%?§(_loc21_.indexB));
            _loc21_.§ a§ = b2Math.§`#§(_loc21_.§<j§,_loc21_.§9!J§);
            _loc19_++;
            ++b2_gjkIters;
            _loc22_ = false;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               if(_loc21_.indexA == _loc11_[_loc17_] && _loc21_.indexB == _loc12_[_loc17_])
               {
                  _loc22_ = true;
                  break;
               }
               _loc17_++;
            }
            if(_loc22_)
            {
               break;
            }
            ++_loc8_.§]!A§;
         }
         b2_gjkMaxIters = b2Math.§&f§(b2_gjkMaxIters,_loc19_);
         _loc8_.§<k§(param1.§[B§,param1.§^N§);
         param1.§!B§ = b2Math.§`#§(param1.§[B§,param1.§^N§).§>8§();
         param1.§ !@§ = _loc19_;
         _loc8_.§1!B§(param2);
         if(param3.§&!6§)
         {
            _loc23_ = _loc4_.§-!C§;
            _loc24_ = _loc5_.§-!C§;
            if(param1.§!B§ > _loc23_ + _loc24_ && param1.§!B§ > Number.MIN_VALUE)
            {
               param1.§!B§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§`#§(param1.§^N§,param1.§[B§)).Normalize();
               param1.§[B§.x += _loc23_ * _loc25_.x;
               param1.§[B§.y += _loc23_ * _loc25_.y;
               param1.§^N§.x -= _loc24_ * _loc25_.x;
               param1.§^N§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§[B§.x + param1.§^N§.x);
               _loc18_.y = 0.5 * (param1.§[B§.y + param1.§^N§.y);
               param1.§[B§.x = param1.§^N§.x = _loc18_.x;
               param1.§[B§.y = param1.§^N§.y = _loc18_.y;
               param1.§!B§ = 0;
            }
         }
      }
   }
}

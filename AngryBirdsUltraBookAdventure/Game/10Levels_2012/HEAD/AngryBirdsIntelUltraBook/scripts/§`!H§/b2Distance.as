package §`!H§
{
   import §,X§.*;
   import §8!H§.*;
   import §?!&§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §5W§:b2Simplex = new b2Simplex();
      
      private static var §&g§:Vector.<int> = new Vector.<int>(3);
      
      private static var §@!B§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §9!=§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§1&§;
         var _loc5_:b2DistanceProxy = param3.§5!f§;
         var _loc6_:b2Transform = param3.§1!C§;
         var _loc7_:b2Transform = param3.§0D§;
         var _loc8_:b2Simplex = §5W§;
         _loc8_.§&!-§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§!!I§;
         var _loc11_:Vector.<int> = §&g§;
         var _loc12_:Vector.<int> = §@!B§;
         var _loc13_:int = 0;
         var _loc14_:b2Vec2 = _loc8_.§=k§();
         var _loc15_:Number = _loc14_.§ 8§();
         var _loc16_:Number = _loc15_;
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§5!C§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§5!C§)
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
            if(_loc8_.§5!C§ == 3)
            {
               break;
            }
            _loc18_ = _loc8_.§=k§();
            _loc16_ = _loc18_.§ 8§();
            if(_loc16_ > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            _loc20_ = _loc8_.§6r§();
            if(_loc20_.§ 8§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            _loc21_ = _loc9_[_loc8_.§5!C§];
            _loc21_.indexA = _loc4_.§+H§(b2Math.§`!e§(_loc6_.R,_loc20_.§7!F§()));
            _loc21_.§28§ = b2Math.§5F§(_loc6_,_loc4_.§2!6§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§+H§(b2Math.§`!e§(_loc7_.R,_loc20_));
            _loc21_.§`j§ = b2Math.§5F§(_loc7_,_loc5_.§2!6§(_loc21_.indexB));
            _loc21_.§81§ = b2Math.§0l§(_loc21_.§`j§,_loc21_.§28§);
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
            ++_loc8_.§5!C§;
         }
         b2_gjkMaxIters = b2Math.§,C§(b2_gjkMaxIters,_loc19_);
         _loc8_.§-S§(param1.§<u§,param1.§ !I§);
         param1.distance = b2Math.§0l§(param1.§<u§,param1.§ !I§).§2o§();
         param1.§8]§ = _loc19_;
         _loc8_.§62§(param2);
         if(param3.§+!?§)
         {
            _loc23_ = _loc4_.§&!N§;
            _loc24_ = _loc5_.§&!N§;
            if(param1.distance > _loc23_ + _loc24_ && param1.distance > Number.MIN_VALUE)
            {
               param1.distance -= _loc23_ + _loc24_;
               _loc25_ = b2Math.§0l§(param1.§ !I§,param1.§<u§);
               _loc25_.Normalize();
               param1.§<u§.x += _loc23_ * _loc25_.x;
               param1.§<u§.y += _loc23_ * _loc25_.y;
               param1.§ !I§.x -= _loc24_ * _loc25_.x;
               param1.§ !I§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               _loc18_ = new b2Vec2();
               _loc18_.x = 0.5 * (param1.§<u§.x + param1.§ !I§.x);
               _loc18_.y = 0.5 * (param1.§<u§.y + param1.§ !I§.y);
               param1.§<u§.x = param1.§ !I§.x = _loc18_.x;
               param1.§<u§.y = param1.§ !I§.y = _loc18_.y;
               param1.distance = 0;
            }
         }
      }
   }
}

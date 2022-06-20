package §7"^§
{
   import §%!9§.*;
   import §+#f§.*;
   import §9#K§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §<#&§:b2Simplex = new b2Simplex();
      
      private static var §<# §:Vector.<int> = new Vector.<int>(3);
      
      private static var §3$ §:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §"u§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§7"'§;
         var _loc5_:b2DistanceProxy = param3.§>z§;
         var _loc6_:b2Transform = param3.§"!a§;
         var _loc7_:b2Transform = param3.§+!8§;
         var _loc8_:b2Simplex;
         (_loc8_ = §<#&§).§ &§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§ "4§;
         var _loc11_:Vector.<int> = §<# §;
         var _loc12_:Vector.<int> = §3$ §;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§4"d§()).§&$<§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§]"A§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§]"A§)
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
            if(_loc8_.§]"A§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§4"d§()).§&$<§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§"j§()).§&$<§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§]"A§]).indexA = _loc4_.§[!d§(b2Math.§%§(_loc6_.R,_loc20_.§',§()));
            _loc21_.§,9§ = b2Math.§^#j§(_loc6_,_loc4_.§^!v§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§[!d§(b2Math.§%§(_loc7_.R,_loc20_));
            _loc21_.§7#%§ = b2Math.§^#j§(_loc7_,_loc5_.§^!v§(_loc21_.indexB));
            _loc21_.w = b2Math.§ "&§(_loc21_.§7#%§,_loc21_.§,9§);
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
            ++_loc8_.§]"A§;
         }
         b2_gjkMaxIters = b2Math.§[#1§(b2_gjkMaxIters,_loc19_);
         _loc8_.§6"9§(param1.§%"t§,param1.§%!E§);
         param1.§0!j§ = b2Math.§ "&§(param1.§%"t§,param1.§%!E§).Length();
         param1.§+"C§ = _loc19_;
         _loc8_.§="C§(param2);
         if(param3.§'#u§)
         {
            _loc23_ = _loc4_.§[1§;
            _loc24_ = _loc5_.§[1§;
            if(param1.§0!j§ > _loc23_ + _loc24_ && param1.§0!j§ > Number.MIN_VALUE)
            {
               param1.§0!j§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§ "&§(param1.§%!E§,param1.§%"t§)).Normalize();
               param1.§%"t§.x += _loc23_ * _loc25_.x;
               param1.§%"t§.y += _loc23_ * _loc25_.y;
               param1.§%!E§.x -= _loc24_ * _loc25_.x;
               param1.§%!E§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§%"t§.x + param1.§%!E§.x);
               _loc18_.y = 0.5 * (param1.§%"t§.y + param1.§%!E§.y);
               param1.§%"t§.x = param1.§%!E§.x = _loc18_.x;
               param1.§%"t§.y = param1.§%!E§.y = _loc18_.y;
               param1.§0!j§ = 0;
            }
         }
      }
   }
}

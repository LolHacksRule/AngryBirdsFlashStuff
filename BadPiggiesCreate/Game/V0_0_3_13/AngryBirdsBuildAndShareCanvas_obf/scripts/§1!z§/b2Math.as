package §1!z§
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2 = new b2Vec2(0,0);
      
      public static const b2Mat22_identity:b2Mat22 = b2Mat22.§>!>§(new b2Vec2(1,0),new b2Vec2(0,1));
      
      public static const b2Transform_identity:b2Transform = new b2Transform(b2Vec2_zero,b2Mat22_identity);
       
      
      public function b2Math()
      {
         super();
      }
      
      public static function §"";§(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function §9!%§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         return param1.x * param2.x + param1.y * param2.y;
      }
      
      public static function §?r§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         return param1.x * param2.y - param1.y * param2.x;
      }
      
      public static function §=§(param1:b2Vec2, param2:Number) : b2Vec2
      {
         return new b2Vec2(param2 * param1.y,-param2 * param1.x);
      }
      
      public static function §`f§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(-param1 * param2.y,param1 * param2.x);
      }
      
      public static function §%!T§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1.col1.x * param2.x + param1.col2.x * param2.y,param1.col1.y * param2.x + param1.col2.y * param2.y);
      }
      
      public static function §1j§(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§9!%§(param2,param1.col1),§9!%§(param2,param1.col2));
      }
      
      public static function §5!V§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         _loc3_ = §%!T§(param1.R,param2);
         _loc3_.x += param1.position.x;
         _loc3_.y += param1.position.y;
         return _loc3_;
      }
      
      public static function §5"%§(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         _loc3_ = §8"<§(param2,param1.position);
         _loc4_ = _loc3_.x * param1.R.col1.x + _loc3_.y * param1.R.col1.y;
         _loc3_.y = _loc3_.x * param1.R.col2.x + _loc3_.y * param1.R.col2.y;
         _loc3_.x = _loc4_;
         return _loc3_;
      }
      
      public static function §+!§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1.x + param2.x,param1.y + param2.y);
      }
      
      public static function §8"<§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1.x - param2.x,param1.y - param2.y);
      }
      
      public static function §`<§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public static function §0a§(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         return _loc3_ * _loc3_ + _loc4_ * _loc4_;
      }
      
      public static function § "&§(param1:Number, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1 * param2.x,param1 * param2.y);
      }
      
      public static function §^&§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§>!>§(§+!§(param1.col1,param2.col1),§+!§(param1.col2,param2.col2));
      }
      
      public static function §;m§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22.§>!>§(§%!T§(param1,param2.col1),§%!T§(param1,param2.col2));
      }
      
      public static function §<D§(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(§9!%§(param1.col1,param2.col1),§9!%§(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(§9!%§(param1.col1,param2.col2),§9!%§(param1.col2,param2.col2));
         return b2Mat22.§>!>§(_loc3_,_loc4_);
      }
      
      public static function §'!2§(param1:Number) : Number
      {
         return param1 > 0 ? Number(param1) : Number(-param1);
      }
      
      public static function §-!B§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§'!2§(param1.x),§'!2§(param1.y));
      }
      
      public static function §&g§(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22.§>!>§(§-!B§(param1.col1),§-!B§(param1.col2));
      }
      
      public static function §7!-§(param1:Number, param2:Number) : Number
      {
         return param1 < param2 ? Number(param1) : Number(param2);
      }
      
      public static function §&!G§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§7!-§(param1.x,param2.x),§7!-§(param1.y,param2.y));
      }
      
      public static function §9!o§(param1:Number, param2:Number) : Number
      {
         return param1 > param2 ? Number(param1) : Number(param2);
      }
      
      public static function §#!-§(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(§9!o§(param1.x,param2.x),§9!o§(param1.y,param2.y));
      }
      
      public static function §`"?§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 < param2 ? Number(param2) : (param1 > param3 ? Number(param3) : Number(param1));
      }
      
      public static function §&>§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return §#!-§(param2,§&!G§(param1,param3));
      }
      
      public static function §6d§(param1:Array, param2:Array) : void
      {
         var _loc3_:* = param1[0];
         param1[0] = param2[0];
         param2[0] = _loc3_;
      }
      
      public static function §#t§() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      public static function §-`§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = Math.random();
         return Number((param2 - param1) * _loc3_ + param1);
      }
      
      public static function §[C§(param1:uint) : uint
      {
         param1 |= param1 >> 1 & 2147483647;
         param1 |= param1 >> 2 & 1073741823;
         param1 |= param1 >> 4 & 268435455;
         param1 |= param1 >> 8 & 16777215;
         param1 |= param1 >> 16 & 65535;
         return param1 + 1;
      }
      
      public static function §>9§(param1:uint) : Boolean
      {
         return Boolean(param1 > 0 && (param1 & param1 - 1) == 0);
      }
   }
}

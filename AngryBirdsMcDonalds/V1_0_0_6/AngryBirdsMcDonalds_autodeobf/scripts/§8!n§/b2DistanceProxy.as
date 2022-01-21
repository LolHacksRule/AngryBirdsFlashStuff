package §8!n§
{
   import §%!h§.*;
   import §7!Y§.*;
   import §@![§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §'9§:Vector.<b2Vec2>;
      
      public var §=!S§:int;
      
      public var §?!U§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§&!B§())
         {
            case b2Shape.§9D§:
               _loc2_ = param1 as b2CircleShape;
               this.§'9§ = new Vector.<b2Vec2>(1,true);
               this.§'9§[0] = _loc2_.§>l§;
               this.§=!S§ = 1;
               this.§?!U§ = _loc2_.§?!U§;
               break;
            case b2Shape.§]!k§:
               _loc3_ = param1 as b2PolygonShape;
               this.§'9§ = _loc3_.§'9§;
               this.§=!S§ = _loc3_.§9>§;
               this.§?!U§ = _loc3_.§?!U§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §[j§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§'9§[0].x * param1.x + this.§'9§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§=!S§)
         {
            if((_loc5_ = this.§'9§[_loc4_].x * param1.x + this.§'9§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §7!"§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§'9§[0].x * param1.x + this.§'9§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§=!S§)
         {
            if((_loc5_ = this.§'9§[_loc4_].x * param1.x + this.§'9§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§'9§[_loc2_];
      }
      
      public function §<w§() : int
      {
         return this.§=!S§;
      }
      
      public function § L§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§=!S§);
         return this.§'9§[param1];
      }
   }
}

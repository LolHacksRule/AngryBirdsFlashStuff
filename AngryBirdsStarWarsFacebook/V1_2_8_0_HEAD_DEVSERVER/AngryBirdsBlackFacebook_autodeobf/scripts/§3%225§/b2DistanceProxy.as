package §3"5§
{
   import §4!$§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §=#S§:Vector.<b2Vec2>;
      
      public var §@"K§:int;
      
      public var § "^§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§8! §())
         {
            case b2Shape.§;!T§:
               _loc2_ = param1 as b2CircleShape;
               this.§=#S§ = new Vector.<b2Vec2>(1,true);
               this.§=#S§[0] = _loc2_.§&!i§;
               this.§@"K§ = 1;
               this.§ "^§ = _loc2_.§ "^§;
               break;
            case b2Shape.§ !7§:
               _loc3_ = param1 as b2PolygonShape;
               this.§=#S§ = _loc3_.§=#S§;
               this.§@"K§ = _loc3_.§;!9§;
               this.§ "^§ = _loc3_.§ "^§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §5!y§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§=#S§[0].x * param1.x + this.§=#S§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§@"K§)
         {
            if((_loc5_ = this.§=#S§[_loc4_].x * param1.x + this.§=#S§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function § "7§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§=#S§[0].x * param1.x + this.§=#S§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§@"K§)
         {
            if((_loc5_ = this.§=#S§[_loc4_].x * param1.x + this.§=#S§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§=#S§[_loc2_];
      }
      
      public function §4#_§() : int
      {
         return this.§@"K§;
      }
      
      public function §-",§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§@"K§);
         return this.§=#S§[param1];
      }
   }
}

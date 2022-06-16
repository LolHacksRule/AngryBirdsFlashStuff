package § !0§
{
   import §+!d§.*;
   import §7F§.*;
   import §@!a§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §?z§:Vector.<b2Vec2>;
      
      public var §?!§:int;
      
      public var §,0§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§;!w§())
         {
            case b2Shape.§9!y§:
               _loc2_ = param1 as b2CircleShape;
               this.§?z§ = new Vector.<b2Vec2>(1,true);
               this.§?z§[0] = _loc2_.§3!R§;
               this.§?!§ = 1;
               this.§,0§ = _loc2_.§,0§;
               break;
            case b2Shape.§-c§:
               _loc3_ = param1 as b2PolygonShape;
               this.§?z§ = _loc3_.§?z§;
               this.§?!§ = _loc3_.§@!N§;
               this.§,0§ = _loc3_.§,0§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §7!n§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§?z§[0].x * param1.x + this.§?z§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§?!§)
         {
            if((_loc5_ = this.§?z§[_loc4_].x * param1.x + this.§?z§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §#b§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§?z§[0].x * param1.x + this.§?z§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§?!§)
         {
            if((_loc5_ = this.§?z§[_loc4_].x * param1.x + this.§?z§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§?z§[_loc2_];
      }
      
      public function §1c§() : int
      {
         return this.§?!§;
      }
      
      public function §!v§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§?!§);
         return this.§?z§[param1];
      }
   }
}

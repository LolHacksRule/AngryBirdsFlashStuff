package §6f§
{
   import § !%§.*;
   import §,!k§.*;
   import §?m§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §]x§:Vector.<b2Vec2>;
      
      public var §[d§:int;
      
      public var §["2§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§]"$§())
         {
            case b2Shape.§;"4§:
               _loc2_ = param1 as b2CircleShape;
               this.§]x§ = new Vector.<b2Vec2>(1,true);
               this.§]x§[0] = _loc2_.§1b§;
               this.§[d§ = 1;
               this.§["2§ = _loc2_.§["2§;
               break;
            case b2Shape.§!Y§:
               _loc3_ = param1 as b2PolygonShape;
               this.§]x§ = _loc3_.§]x§;
               this.§[d§ = _loc3_.§?3§;
               this.§["2§ = _loc3_.§["2§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §>&§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§]x§[0].x * param1.x + this.§]x§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[d§)
         {
            if((_loc5_ = this.§]x§[_loc4_].x * param1.x + this.§]x§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §0u§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§]x§[0].x * param1.x + this.§]x§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[d§)
         {
            if((_loc5_ = this.§]x§[_loc4_].x * param1.x + this.§]x§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§]x§[_loc2_];
      }
      
      public function §^"4§() : int
      {
         return this.§[d§;
      }
      
      public function §,!T§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§[d§);
         return this.§]x§[param1];
      }
   }
}

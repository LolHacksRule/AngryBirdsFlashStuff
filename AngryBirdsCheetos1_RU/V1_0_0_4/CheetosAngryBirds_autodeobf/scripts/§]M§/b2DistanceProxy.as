package §]M§
{
   import §"v§.*;
   import §5!K§.*;
   import §each §.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §[!G§:Vector.<b2Vec2>;
      
      public var §>!D§:int;
      
      public var §>!;§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§"5§())
         {
            case b2Shape.§63§:
               _loc2_ = param1 as b2CircleShape;
               this.§[!G§ = new Vector.<b2Vec2>(1,true);
               this.§[!G§[0] = _loc2_.§@K§;
               this.§>!D§ = 1;
               this.§>!;§ = _loc2_.§>!;§;
               break;
            case b2Shape.§case §:
               _loc3_ = param1 as b2PolygonShape;
               this.§[!G§ = _loc3_.§[!G§;
               this.§>!D§ = _loc3_.§-e§;
               this.§>!;§ = _loc3_.§>!;§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §>!P§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[!G§[0].x * param1.x + this.§[!G§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§>!D§)
         {
            if((_loc5_ = this.§[!G§[_loc4_].x * param1.x + this.§[!G§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §1!V§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[!G§[0].x * param1.x + this.§[!G§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§>!D§)
         {
            if((_loc5_ = this.§[!G§[_loc4_].x * param1.x + this.§[!G§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§[!G§[_loc2_];
      }
      
      public function §[J§() : int
      {
         return this.§>!D§;
      }
      
      public function §8x§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§>!D§);
         return this.§[!G§[param1];
      }
   }
}

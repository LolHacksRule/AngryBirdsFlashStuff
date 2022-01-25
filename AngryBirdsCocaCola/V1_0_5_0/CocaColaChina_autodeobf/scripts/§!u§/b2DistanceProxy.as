package §!u§
{
   import §54§.*;
   import §;h§.*;
   import §]!7§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §9d§:Vector.<b2Vec2>;
      
      public var §0!K§:int;
      
      public var §,!3§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§`!Q§())
         {
            case b2Shape.§8m§:
               _loc2_ = param1 as b2CircleShape;
               this.§9d§ = new Vector.<b2Vec2>(1,true);
               this.§9d§[0] = _loc2_.§3b§;
               this.§0!K§ = 1;
               this.§,!3§ = _loc2_.§,!3§;
               break;
            case b2Shape.§3!D§:
               _loc3_ = param1 as b2PolygonShape;
               this.§9d§ = _loc3_.§9d§;
               this.§0!K§ = _loc3_.§5!5§;
               this.§,!3§ = _loc3_.§,!3§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §2!c§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§9d§[0].x * param1.x + this.§9d§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§0!K§)
         {
            if((_loc5_ = this.§9d§[_loc4_].x * param1.x + this.§9d§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §>!J§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§9d§[0].x * param1.x + this.§9d§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§0!K§)
         {
            if((_loc5_ = this.§9d§[_loc4_].x * param1.x + this.§9d§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§9d§[_loc2_];
      }
      
      public function §!'§() : int
      {
         return this.§0!K§;
      }
      
      public function §>R§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§0!K§);
         return this.§9d§[param1];
      }
   }
}

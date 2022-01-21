package §]7§
{
   import §!R§.*;
   import §9i§.*;
   import §]q§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §5l§:Vector.<b2Vec2>;
      
      public var §5Q§:int;
      
      public var §!C§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§#+§())
         {
            case b2Shape.§9!X§:
               _loc2_ = param1 as b2CircleShape;
               this.§5l§ = new Vector.<b2Vec2>(1,true);
               this.§5l§[0] = _loc2_.§+k§;
               this.§5Q§ = 1;
               this.§!C§ = _loc2_.§!C§;
               break;
            case b2Shape.§1!N§:
               _loc3_ = param1 as b2PolygonShape;
               this.§5l§ = _loc3_.§5l§;
               this.§5Q§ = _loc3_.§<R§;
               this.§!C§ = _loc3_.§!C§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §8!6§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§5l§[0].x * param1.x + this.§5l§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§5Q§)
         {
            if((_loc5_ = this.§5l§[_loc4_].x * param1.x + this.§5l§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §,!0§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§5l§[0].x * param1.x + this.§5l§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§5Q§)
         {
            if((_loc5_ = this.§5l§[_loc4_].x * param1.x + this.§5l§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§5l§[_loc2_];
      }
      
      public function §while§() : int
      {
         return this.§5Q§;
      }
      
      public function §5!P§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§5Q§);
         return this.§5l§[param1];
      }
   }
}

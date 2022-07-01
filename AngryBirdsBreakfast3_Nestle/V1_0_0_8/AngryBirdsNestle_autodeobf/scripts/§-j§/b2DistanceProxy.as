package §-j§
{
   import §7!F§.*;
   import §[K§.*;
   import §[e§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §5P§:Vector.<b2Vec2>;
      
      public var §@",§:int;
      
      public var §-!D§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§&!u§())
         {
            case b2Shape.§?!%§:
               _loc2_ = param1 as b2CircleShape;
               this.§5P§ = new Vector.<b2Vec2>(1,true);
               this.§5P§[0] = _loc2_.§5",§;
               this.§@",§ = 1;
               this.§-!D§ = _loc2_.§-!D§;
               break;
            case b2Shape.§+"0§:
               _loc3_ = param1 as b2PolygonShape;
               this.§5P§ = _loc3_.§5P§;
               this.§@",§ = _loc3_.§4k§;
               this.§-!D§ = _loc3_.§-!D§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §@!Q§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§5P§[0].x * param1.x + this.§5P§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§@",§)
         {
            if((_loc5_ = this.§5P§[_loc4_].x * param1.x + this.§5P§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §>!3§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§5P§[0].x * param1.x + this.§5P§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§@",§)
         {
            if((_loc5_ = this.§5P§[_loc4_].x * param1.x + this.§5P§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§5P§[_loc2_];
      }
      
      public function §#h§() : int
      {
         return this.§@",§;
      }
      
      public function §+%§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§@",§);
         return this.§5P§[param1];
      }
   }
}

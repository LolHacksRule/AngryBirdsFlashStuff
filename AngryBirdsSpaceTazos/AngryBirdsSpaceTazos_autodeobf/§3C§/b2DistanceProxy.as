package §3c§
{
   import §,Z§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §8S§:Vector.<b2Vec2>;
      
      public var §@5§:int;
      
      public var §7!m§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§@!N§())
         {
            case b2Shape.§-M§:
               _loc2_ = param1 as b2CircleShape;
               this.§8S§ = new Vector.<b2Vec2>(1,true);
               this.§8S§[0] = _loc2_.§1Q§;
               this.§@5§ = 1;
               this.§7!m§ = _loc2_.§7!m§;
               break;
            case b2Shape.§4"+§:
               _loc3_ = param1 as b2PolygonShape;
               this.§8S§ = _loc3_.§8S§;
               this.§@5§ = _loc3_.§+!U§;
               this.§7!m§ = _loc3_.§7!m§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §>!S§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§8S§[0].x * param1.x + this.§8S§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§@5§)
         {
            if((_loc5_ = this.§8S§[_loc4_].x * param1.x + this.§8S§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §;d§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§8S§[0].x * param1.x + this.§8S§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§@5§)
         {
            if((_loc5_ = this.§8S§[_loc4_].x * param1.x + this.§8S§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§8S§[_loc2_];
      }
      
      public function §`!E§() : int
      {
         return this.§@5§;
      }
      
      public function §=m§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§@5§);
         return this.§8S§[param1];
      }
   }
}

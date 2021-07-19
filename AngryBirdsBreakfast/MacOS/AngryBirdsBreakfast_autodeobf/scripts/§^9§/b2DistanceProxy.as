package §^9§
{
   import §"y§.*;
   import §'F§.*;
   import §6Z§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §-!L§:Vector.<b2Vec2>;
      
      public var §=r§:int;
      
      public var §,!;§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§<!A§())
         {
            case b2Shape.§9_§:
               _loc2_ = param1 as b2CircleShape;
               this.§-!L§ = new Vector.<b2Vec2>(1,true);
               this.§-!L§[0] = _loc2_.§4b§;
               this.§=r§ = 1;
               this.§,!;§ = _loc2_.§,!;§;
               break;
            case b2Shape.§2e§:
               _loc3_ = param1 as b2PolygonShape;
               this.§-!L§ = _loc3_.§-!L§;
               this.§=r§ = _loc3_.§!1§;
               this.§,!;§ = _loc3_.§,!;§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §8!'§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§-!L§[0].x * param1.x + this.§-!L§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§=r§)
         {
            if((_loc5_ = this.§-!L§[_loc4_].x * param1.x + this.§-!L§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §0!e§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§-!L§[0].x * param1.x + this.§-!L§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§=r§)
         {
            if((_loc5_ = this.§-!L§[_loc4_].x * param1.x + this.§-!L§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§-!L§[_loc2_];
      }
      
      public function §@c§() : int
      {
         return this.§=r§;
      }
      
      public function §0K§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§=r§);
         return this.§-!L§[param1];
      }
   }
}

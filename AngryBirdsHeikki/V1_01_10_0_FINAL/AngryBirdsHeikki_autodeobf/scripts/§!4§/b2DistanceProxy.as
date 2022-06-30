package §!4§
{
   import §6A§.*;
   import §7q§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §+!f§:Vector.<b2Vec2>;
      
      public var §33§:int;
      
      public var §'m§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§0i§())
         {
            case b2Shape.§,!#§:
               _loc2_ = param1 as b2CircleShape;
               this.§+!f§ = new Vector.<b2Vec2>(1,true);
               this.§+!f§[0] = _loc2_.§7]§;
               this.§33§ = 1;
               this.§'m§ = _loc2_.§'m§;
               break;
            case b2Shape.§=!'§:
               _loc3_ = param1 as b2PolygonShape;
               this.§+!f§ = _loc3_.§+!f§;
               this.§33§ = _loc3_.§6!U§;
               this.§'m§ = _loc3_.§'m§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §-!1§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§+!f§[0].x * param1.x + this.§+!f§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§33§)
         {
            if((_loc5_ = this.§+!f§[_loc4_].x * param1.x + this.§+!f§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §^;§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§+!f§[0].x * param1.x + this.§+!f§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§33§)
         {
            if((_loc5_ = this.§+!f§[_loc4_].x * param1.x + this.§+!f§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§+!f§[_loc2_];
      }
      
      public function §7T§() : int
      {
         return this.§33§;
      }
      
      public function §"!Q§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§33§);
         return this.§+!f§[param1];
      }
   }
}

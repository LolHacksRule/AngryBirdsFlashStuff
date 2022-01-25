package §?F§
{
   import § Y§.*;
   import §6V§.*;
   import §[!$§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §33§:Vector.<b2Vec2>;
      
      public var §"2§:int;
      
      public var § !!§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§1k§())
         {
            case b2Shape.§[w§:
               _loc2_ = param1 as b2CircleShape;
               this.§33§ = new Vector.<b2Vec2>(1,true);
               this.§33§[0] = _loc2_.§`!a§;
               this.§"2§ = 1;
               this.§ !!§ = _loc2_.§ !!§;
               break;
            case b2Shape.§"!c§:
               _loc3_ = param1 as b2PolygonShape;
               this.§33§ = _loc3_.§33§;
               this.§"2§ = _loc3_.§>Z§;
               this.§ !!§ = _loc3_.§ !!§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §=!1§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§33§[0].x * param1.x + this.§33§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§"2§)
         {
            if((_loc5_ = this.§33§[_loc4_].x * param1.x + this.§33§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §?i§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§33§[0].x * param1.x + this.§33§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§"2§)
         {
            if((_loc5_ = this.§33§[_loc4_].x * param1.x + this.§33§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§33§[_loc2_];
      }
      
      public function §=-§() : int
      {
         return this.§"2§;
      }
      
      public function §4h§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§"2§);
         return this.§33§[param1];
      }
   }
}

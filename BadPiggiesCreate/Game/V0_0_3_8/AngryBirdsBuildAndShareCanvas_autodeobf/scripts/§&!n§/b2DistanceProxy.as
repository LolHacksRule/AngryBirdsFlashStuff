package §&!n§
{
   import §2!Q§.*;
   import §8,§.*;
   import §9v§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §"x§:Vector.<b2Vec2>;
      
      public var §6!v§:int;
      
      public var §&!o§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§7![§())
         {
            case b2Shape.§1"2§:
               _loc2_ = param1 as b2CircleShape;
               this.§"x§ = new Vector.<b2Vec2>(1,true);
               this.§"x§[0] = _loc2_.§-!C§;
               this.§6!v§ = 1;
               this.§&!o§ = _loc2_.§&!o§;
               break;
            case b2Shape.§;!y§:
               _loc3_ = param1 as b2PolygonShape;
               this.§"x§ = _loc3_.§"x§;
               this.§6!v§ = _loc3_.§0!$§;
               this.§&!o§ = _loc3_.§&!o§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §?<§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§"x§[0].x * param1.x + this.§"x§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§6!v§)
         {
            if((_loc5_ = this.§"x§[_loc4_].x * param1.x + this.§"x§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §?w§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§"x§[0].x * param1.x + this.§"x§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§6!v§)
         {
            if((_loc5_ = this.§"x§[_loc4_].x * param1.x + this.§"x§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§"x§[_loc2_];
      }
      
      public function §+i§() : int
      {
         return this.§6!v§;
      }
      
      public function §@"'§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§6!v§);
         return this.§"x§[param1];
      }
   }
}

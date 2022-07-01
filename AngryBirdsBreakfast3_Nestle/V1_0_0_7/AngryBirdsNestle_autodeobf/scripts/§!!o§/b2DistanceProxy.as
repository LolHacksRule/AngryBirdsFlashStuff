package §!!o§
{
   import §!r§.*;
   import §-!2§.*;
   import §8!K§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §[!Q§:Vector.<b2Vec2>;
      
      public var §[""§:int;
      
      public var §;J§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§6`§())
         {
            case b2Shape.§>!D§:
               _loc2_ = param1 as b2CircleShape;
               this.§[!Q§ = new Vector.<b2Vec2>(1,true);
               this.§[!Q§[0] = _loc2_.§#F§;
               this.§[""§ = 1;
               this.§;J§ = _loc2_.§;J§;
               break;
            case b2Shape.§3!f§:
               _loc3_ = param1 as b2PolygonShape;
               this.§[!Q§ = _loc3_.§[!Q§;
               this.§[""§ = _loc3_.§1Z§;
               this.§;J§ = _loc3_.§;J§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §%!$§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[!Q§[0].x * param1.x + this.§[!Q§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[""§)
         {
            if((_loc5_ = this.§[!Q§[_loc4_].x * param1.x + this.§[!Q§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §&!8§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[!Q§[0].x * param1.x + this.§[!Q§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[""§)
         {
            if((_loc5_ = this.§[!Q§[_loc4_].x * param1.x + this.§[!Q§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§[!Q§[_loc2_];
      }
      
      public function §<y§() : int
      {
         return this.§[""§;
      }
      
      public function §&!F§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§[""§);
         return this.§[!Q§[param1];
      }
   }
}

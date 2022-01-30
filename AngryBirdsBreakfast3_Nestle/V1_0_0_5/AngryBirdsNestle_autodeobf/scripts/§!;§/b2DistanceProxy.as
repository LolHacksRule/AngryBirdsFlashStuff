package §!;§
{
   import §-!A§.*;
   import §3!4§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §[U§:Vector.<b2Vec2>;
      
      public var §+j§:int;
      
      public var §`!,§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§@!D§())
         {
            case b2Shape.§3t§:
               _loc2_ = param1 as b2CircleShape;
               this.§[U§ = new Vector.<b2Vec2>(1,true);
               this.§[U§[0] = _loc2_.§+w§;
               this.§+j§ = 1;
               this.§`!,§ = _loc2_.§`!,§;
               break;
            case b2Shape.§7p§:
               _loc3_ = param1 as b2PolygonShape;
               this.§[U§ = _loc3_.§[U§;
               this.§+j§ = _loc3_.§-!;§;
               this.§`!,§ = _loc3_.§`!,§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §?!;§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[U§[0].x * param1.x + this.§[U§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§+j§)
         {
            if((_loc5_ = this.§[U§[_loc4_].x * param1.x + this.§[U§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §<2§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[U§[0].x * param1.x + this.§[U§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§+j§)
         {
            if((_loc5_ = this.§[U§[_loc4_].x * param1.x + this.§[U§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§[U§[_loc2_];
      }
      
      public function §8_§() : int
      {
         return this.§+j§;
      }
      
      public function §3!s§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§+j§);
         return this.§[U§[param1];
      }
   }
}

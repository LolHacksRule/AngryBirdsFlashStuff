package §'s§
{
   import §#!"§.*;
   import §&L§.*;
   import §+!,§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §`V§:Vector.<b2Vec2>;
      
      public var §[!U§:int;
      
      public var §5!`§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§-V§())
         {
            case b2Shape.§!!W§:
               _loc2_ = param1 as b2CircleShape;
               this.§`V§ = new Vector.<b2Vec2>(1,true);
               this.§`V§[0] = _loc2_.§1!k§;
               this.§[!U§ = 1;
               this.§5!`§ = _loc2_.§5!`§;
               break;
            case b2Shape.§2r§:
               _loc3_ = param1 as b2PolygonShape;
               this.§`V§ = _loc3_.§`V§;
               this.§[!U§ = _loc3_.§>Q§;
               this.§5!`§ = _loc3_.§5!`§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §[-§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§`V§[0].x * param1.x + this.§`V§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[!U§)
         {
            _loc5_ = this.§`V§[_loc4_].x * param1.x + this.§`V§[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §-!K§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§`V§[0].x * param1.x + this.§`V§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[!U§)
         {
            _loc5_ = this.§`V§[_loc4_].x * param1.x + this.§`V§[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§`V§[_loc2_];
      }
      
      public function §7!U§() : int
      {
         return this.§[!U§;
      }
      
      public function §6!'§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§[!U§);
         return this.§`V§[param1];
      }
   }
}

package §,!V§
{
   import §+S§.*;
   import §<!D§.*;
   import §?!n§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §-x§:Vector.<b2Vec2>;
      
      public var §@!E§:int;
      
      public var §0!7§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§1l§())
         {
            case b2Shape.§8M§:
               _loc2_ = param1 as b2CircleShape;
               this.§-x§ = new Vector.<b2Vec2>(1,true);
               this.§-x§[0] = _loc2_.§ A§;
               this.§@!E§ = 1;
               this.§0!7§ = _loc2_.§0!7§;
               break;
            case b2Shape.§%'§:
               _loc3_ = param1 as b2PolygonShape;
               this.§-x§ = _loc3_.§-x§;
               this.§@!E§ = _loc3_.§9Z§;
               this.§0!7§ = _loc3_.§0!7§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §3Q§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§-x§[0].x * param1.x + this.§-x§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§@!E§)
         {
            if((_loc5_ = this.§-x§[_loc4_].x * param1.x + this.§-x§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function § U§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§-x§[0].x * param1.x + this.§-x§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§@!E§)
         {
            if((_loc5_ = this.§-x§[_loc4_].x * param1.x + this.§-x§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§-x§[_loc2_];
      }
      
      public function §1-§() : int
      {
         return this.§@!E§;
      }
      
      public function §4!p§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§@!E§);
         return this.§-x§[param1];
      }
   }
}

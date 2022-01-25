package §&!P§
{
   import §+!o§.*;
   import §@g§.*;
   import §^!%§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §0S§:Vector.<b2Vec2>;
      
      public var §9![§:int;
      
      public var §0!B§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§use§())
         {
            case b2Shape.§'B§:
               _loc2_ = param1 as b2CircleShape;
               this.§0S§ = new Vector.<b2Vec2>(1,true);
               this.§0S§[0] = _loc2_.§`%§;
               this.§9![§ = 1;
               this.§0!B§ = _loc2_.§0!B§;
               break;
            case b2Shape.§@P§:
               _loc3_ = param1 as b2PolygonShape;
               this.§0S§ = _loc3_.§0S§;
               this.§9![§ = _loc3_.§1y§;
               this.§0!B§ = _loc3_.§0!B§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §9!k§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§0S§[0].x * param1.x + this.§0S§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§9![§)
         {
            if((_loc5_ = this.§0S§[_loc4_].x * param1.x + this.§0S§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §[U§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§0S§[0].x * param1.x + this.§0S§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§9![§)
         {
            if((_loc5_ = this.§0S§[_loc4_].x * param1.x + this.§0S§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§0S§[_loc2_];
      }
      
      public function §<!C§() : int
      {
         return this.§9![§;
      }
      
      public function §!!A§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§9![§);
         return this.§0S§[param1];
      }
   }
}

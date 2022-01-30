package §1!1§
{
   import §!S§.*;
   import §6U§.*;
   import §?!h§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §-u§:Vector.<b2Vec2>;
      
      public var §;z§:int;
      
      public var §'O§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§8!d§())
         {
            case b2Shape.§^C§:
               _loc2_ = param1 as b2CircleShape;
               this.§-u§ = new Vector.<b2Vec2>(1,true);
               this.§-u§[0] = _loc2_.§]z§;
               this.§;z§ = 1;
               this.§'O§ = _loc2_.§'O§;
               break;
            case b2Shape.§`"6§:
               _loc3_ = param1 as b2PolygonShape;
               this.§-u§ = _loc3_.§-u§;
               this.§;z§ = _loc3_.§8x§;
               this.§'O§ = _loc3_.§'O§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §,G§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§-u§[0].x * param1.x + this.§-u§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§;z§)
         {
            if((_loc5_ = this.§-u§[_loc4_].x * param1.x + this.§-u§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §+!=§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§-u§[0].x * param1.x + this.§-u§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§;z§)
         {
            if((_loc5_ = this.§-u§[_loc4_].x * param1.x + this.§-u§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§-u§[_loc2_];
      }
      
      public function §"-§() : int
      {
         return this.§;z§;
      }
      
      public function §9S§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§;z§);
         return this.§-u§[param1];
      }
   }
}

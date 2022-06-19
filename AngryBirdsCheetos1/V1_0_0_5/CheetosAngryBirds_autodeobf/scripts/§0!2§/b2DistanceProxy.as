package §0!2§
{
   import §1!H§.*;
   import §;]§.*;
   import §=E§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §9!Z§:Vector.<b2Vec2>;
      
      public var §]!A§:int;
      
      public var §-!C§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§0!$§())
         {
            case b2Shape.§8;§:
               _loc2_ = param1 as b2CircleShape;
               this.§9!Z§ = new Vector.<b2Vec2>(1,true);
               this.§9!Z§[0] = _loc2_.§>w§;
               this.§]!A§ = 1;
               this.§-!C§ = _loc2_.§-!C§;
               break;
            case b2Shape.§9!T§:
               _loc3_ = param1 as b2PolygonShape;
               this.§9!Z§ = _loc3_.§9!Z§;
               this.§]!A§ = _loc3_.§0!'§;
               this.§-!C§ = _loc3_.§-!C§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §%<§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§9!Z§[0].x * param1.x + this.§9!Z§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§]!A§)
         {
            if((_loc5_ = this.§9!Z§[_loc4_].x * param1.x + this.§9!Z§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §"9§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§9!Z§[0].x * param1.x + this.§9!Z§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§]!A§)
         {
            if((_loc5_ = this.§9!Z§[_loc4_].x * param1.x + this.§9!Z§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§9!Z§[_loc2_];
      }
      
      public function §!;§() : int
      {
         return this.§]!A§;
      }
      
      public function §%?§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§]!A§);
         return this.§9!Z§[param1];
      }
   }
}

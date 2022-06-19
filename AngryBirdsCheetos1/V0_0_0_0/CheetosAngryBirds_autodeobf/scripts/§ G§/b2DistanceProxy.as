package § G§
{
   import §-!C§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §3!S§:Vector.<b2Vec2>;
      
      public var §[B§:int;
      
      public var §=!W§:Number;
      
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
            case b2Shape.§9!T§:
               _loc2_ = param1 as b2CircleShape;
               this.§3!S§ = new Vector.<b2Vec2>(1,true);
               this.§3!S§[0] = _loc2_.§?8§;
               this.§[B§ = 1;
               this.§=!W§ = _loc2_.§=!W§;
               break;
            case b2Shape.§;!5§:
               _loc3_ = param1 as b2PolygonShape;
               this.§3!S§ = _loc3_.§3!S§;
               this.§[B§ = _loc3_.§^L§;
               this.§=!W§ = _loc3_.§=!W§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §"9§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§3!S§[0].x * param1.x + this.§3!S§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[B§)
         {
            if((_loc5_ = this.§3!S§[_loc4_].x * param1.x + this.§3!S§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §0-§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§3!S§[0].x * param1.x + this.§3!S§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[B§)
         {
            if((_loc5_ = this.§3!S§[_loc4_].x * param1.x + this.§3!S§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§3!S§[_loc2_];
      }
      
      public function §>!2§() : int
      {
         return this.§[B§;
      }
      
      public function §]!A§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§[B§);
         return this.§3!S§[param1];
      }
   }
}

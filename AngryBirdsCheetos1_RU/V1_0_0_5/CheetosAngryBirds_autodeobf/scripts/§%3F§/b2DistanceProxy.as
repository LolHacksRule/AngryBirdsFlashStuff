package §?§
{
   import § !5§.*;
   import §+,§.*;
   import §-!$§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §try§:Vector.<b2Vec2>;
      
      public var §&w§:int;
      
      public var each:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§@i§())
         {
            case b2Shape.§@B§:
               _loc2_ = param1 as b2CircleShape;
               this.§try§ = new Vector.<b2Vec2>(1,true);
               this.§try§[0] = _loc2_.§0k§;
               this.§&w§ = 1;
               this.each = _loc2_.each;
               break;
            case b2Shape.§0D§:
               _loc3_ = param1 as b2PolygonShape;
               this.§try§ = _loc3_.§try§;
               this.§&w§ = _loc3_.§^Z§;
               this.each = _loc3_.each;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §?!+§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§try§[0].x * param1.x + this.§try§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§&w§)
         {
            if((_loc5_ = this.§try§[_loc4_].x * param1.x + this.§try§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §,;§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§try§[0].x * param1.x + this.§try§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§&w§)
         {
            if((_loc5_ = this.§try§[_loc4_].x * param1.x + this.§try§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§try§[_loc2_];
      }
      
      public function §>g§() : int
      {
         return this.§&w§;
      }
      
      public function §4<§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§&w§);
         return this.§try§[param1];
      }
   }
}

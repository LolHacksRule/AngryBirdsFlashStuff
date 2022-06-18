package §7"^§
{
   import §%!9§.*;
   import §+#f§.*;
   import §9#K§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var § "4§:Vector.<b2Vec2>;
      
      public var §]"A§:int;
      
      public var §[1§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§%"+§())
         {
            case b2Shape.§ j§:
               _loc2_ = param1 as b2CircleShape;
               this.§ "4§ = new Vector.<b2Vec2>(1,true);
               this.§ "4§[0] = _loc2_.§6"a§;
               this.§]"A§ = 1;
               this.§[1§ = _loc2_.§[1§;
               break;
            case b2Shape.§"!<§:
               _loc3_ = param1 as b2PolygonShape;
               this.§ "4§ = _loc3_.§ "4§;
               this.§]"A§ = _loc3_.§>#B§;
               this.§[1§ = _loc3_.§[1§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §[!d§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§ "4§[0].x * param1.x + this.§ "4§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§]"A§)
         {
            if((_loc5_ = this.§ "4§[_loc4_].x * param1.x + this.§ "4§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §5#<§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§ "4§[0].x * param1.x + this.§ "4§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§]"A§)
         {
            if((_loc5_ = this.§ "4§[_loc4_].x * param1.x + this.§ "4§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§ "4§[_loc2_];
      }
      
      public function §-!B§() : int
      {
         return this.§]"A§;
      }
      
      public function §^!v§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§]"A§);
         return this.§ "4§[param1];
      }
   }
}

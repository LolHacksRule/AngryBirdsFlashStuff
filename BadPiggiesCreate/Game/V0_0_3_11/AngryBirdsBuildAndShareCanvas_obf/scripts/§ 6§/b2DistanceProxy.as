package § 6§
{
   import §+L§.*;
   import §1!3§.*;
   import §^+§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §[Q§:Vector.<b2Vec2>;
      
      public var §6_§:int;
      
      public var §5^§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§,!B§())
         {
            case b2Shape.§'6§:
               _loc2_ = param1 as b2CircleShape;
               this.§[Q§ = new Vector.<b2Vec2>(1,true);
               this.§[Q§[0] = _loc2_.§;!+§;
               this.§6_§ = 1;
               this.§5^§ = _loc2_.§5^§;
               break;
            case b2Shape.§4!Q§:
               _loc3_ = param1 as b2PolygonShape;
               this.§[Q§ = _loc3_.§[Q§;
               this.§6_§ = _loc3_.§]n§;
               this.§5^§ = _loc3_.§5^§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §`!D§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[Q§[0].x * param1.x + this.§[Q§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§6_§)
         {
            if((_loc5_ = this.§[Q§[_loc4_].x * param1.x + this.§[Q§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §const§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[Q§[0].x * param1.x + this.§[Q§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§6_§)
         {
            if((_loc5_ = this.§[Q§[_loc4_].x * param1.x + this.§[Q§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§[Q§[_loc2_];
      }
      
      public function §2!D§() : int
      {
         return this.§6_§;
      }
      
      public function §;@§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§6_§);
         return this.§[Q§[param1];
      }
   }
}

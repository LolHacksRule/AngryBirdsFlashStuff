package §9$A§
{
   import §,!T§.*;
   import §1#F§.*;
   import §6!R§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §?#b§:Vector.<b2Vec2>;
      
      public var §7Z§:int;
      
      public var §?#o§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§!"k§())
         {
            case b2Shape.§?#n§:
               _loc2_ = param1 as b2CircleShape;
               this.§?#b§ = new Vector.<b2Vec2>(1,true);
               this.§?#b§[0] = _loc2_.§>4§;
               this.§7Z§ = 1;
               this.§?#o§ = _loc2_.§?#o§;
               break;
            case b2Shape.§!"Q§:
               _loc3_ = param1 as b2PolygonShape;
               this.§?#b§ = _loc3_.§?#b§;
               this.§7Z§ = _loc3_.§;!p§;
               this.§?#o§ = _loc3_.§?#o§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §;"2§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§?#b§[0].x * param1.x + this.§?#b§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§7Z§)
         {
            if((_loc5_ = this.§?#b§[_loc4_].x * param1.x + this.§?#b§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §;Z§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§?#b§[0].x * param1.x + this.§?#b§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§7Z§)
         {
            if((_loc5_ = this.§?#b§[_loc4_].x * param1.x + this.§?#b§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§?#b§[_loc2_];
      }
      
      public function §4#g§() : int
      {
         return this.§7Z§;
      }
      
      public function §7!E§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§7Z§);
         return this.§?#b§[param1];
      }
   }
}

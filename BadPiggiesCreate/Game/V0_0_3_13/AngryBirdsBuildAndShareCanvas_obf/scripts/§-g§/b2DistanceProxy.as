package §-g§
{
   import §1!z§.*;
   import §5!]§.*;
   import §[M§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §6!+§:Vector.<b2Vec2>;
      
      public var §';§:int;
      
      public var §9"=§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§7!r§())
         {
            case b2Shape.§%_§:
               _loc2_ = param1 as b2CircleShape;
               this.§6!+§ = new Vector.<b2Vec2>(1,true);
               this.§6!+§[0] = _loc2_.§<l§;
               this.§';§ = 1;
               this.§9"=§ = _loc2_.§9"=§;
               break;
            case b2Shape.§8!3§:
               _loc3_ = param1 as b2PolygonShape;
               this.§6!+§ = _loc3_.§6!+§;
               this.§';§ = _loc3_.§`e§;
               this.§9"=§ = _loc3_.§9"=§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §8"!§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§6!+§[0].x * param1.x + this.§6!+§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§';§)
         {
            if((_loc5_ = this.§6!+§[_loc4_].x * param1.x + this.§6!+§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §7N§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§6!+§[0].x * param1.x + this.§6!+§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§';§)
         {
            if((_loc5_ = this.§6!+§[_loc4_].x * param1.x + this.§6!+§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§6!+§[_loc2_];
      }
      
      public function §^!r§() : int
      {
         return this.§';§;
      }
      
      public function §&!t§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§';§);
         return this.§6!+§[param1];
      }
   }
}

package §^t§
{
   import § !_§.*;
   import §+&§.*;
   import §-!!§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §!!a§:Vector.<b2Vec2>;
      
      public var §7!<§:int;
      
      public var §?T§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§6+§())
         {
            case b2Shape.§2T§:
               _loc2_ = param1 as b2CircleShape;
               this.§!!a§ = new Vector.<b2Vec2>(1,true);
               this.§!!a§[0] = _loc2_.§3!=§;
               this.§7!<§ = 1;
               this.§?T§ = _loc2_.§?T§;
               break;
            case b2Shape.§>H§:
               _loc3_ = param1 as b2PolygonShape;
               this.§!!a§ = _loc3_.§!!a§;
               this.§7!<§ = _loc3_.§!x§;
               this.§?T§ = _loc3_.§?T§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §"y§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§!!a§[0].x * param1.x + this.§!!a§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§7!<§)
         {
            if((_loc5_ = this.§!!a§[_loc4_].x * param1.x + this.§!!a§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §=O§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§!!a§[0].x * param1.x + this.§!!a§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§7!<§)
         {
            if((_loc5_ = this.§!!a§[_loc4_].x * param1.x + this.§!!a§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§!!a§[_loc2_];
      }
      
      public function §&t§() : int
      {
         return this.§7!<§;
      }
      
      public function §&^§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§7!<§);
         return this.§!!a§[param1];
      }
   }
}

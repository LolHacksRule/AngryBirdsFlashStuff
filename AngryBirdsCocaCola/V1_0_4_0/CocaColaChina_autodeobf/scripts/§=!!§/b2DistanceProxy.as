package §=!!§
{
   import §&!L§.*;
   import §-!<§.*;
   import §7!C§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §+!=§:Vector.<b2Vec2>;
      
      public var §[!b§:int;
      
      public var §=W§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§6`§())
         {
            case b2Shape.§6!>§:
               _loc2_ = param1 as b2CircleShape;
               this.§+!=§ = new Vector.<b2Vec2>(1,true);
               this.§+!=§[0] = _loc2_.§<[§;
               this.§[!b§ = 1;
               this.§=W§ = _loc2_.§=W§;
               break;
            case b2Shape.§`F§:
               _loc3_ = param1 as b2PolygonShape;
               this.§+!=§ = _loc3_.§+!=§;
               this.§[!b§ = _loc3_.§-q§;
               this.§=W§ = _loc3_.§=W§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §0N§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§+!=§[0].x * param1.x + this.§+!=§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[!b§)
         {
            if((_loc5_ = this.§+!=§[_loc4_].x * param1.x + this.§+!=§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §'u§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§+!=§[0].x * param1.x + this.§+!=§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[!b§)
         {
            if((_loc5_ = this.§+!=§[_loc4_].x * param1.x + this.§+!=§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§+!=§[_loc2_];
      }
      
      public function §'d§() : int
      {
         return this.§[!b§;
      }
      
      public function §3!%§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§[!b§);
         return this.§+!=§[param1];
      }
   }
}

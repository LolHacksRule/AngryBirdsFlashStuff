package §`!E§
{
   import §!O§.*;
   import §0!=§.*;
   import §0^§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §1'§:Vector.<b2Vec2>;
      
      public var §%M§:int;
      
      public var §]!5§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§7"§())
         {
            case b2Shape.§8!%§:
               _loc2_ = param1 as b2CircleShape;
               this.§1'§ = new Vector.<b2Vec2>(1,true);
               this.§1'§[0] = _loc2_.§>!D§;
               this.§%M§ = 1;
               this.§]!5§ = _loc2_.§]!5§;
               break;
            case b2Shape.§ !T§:
               _loc3_ = param1 as b2PolygonShape;
               this.§1'§ = _loc3_.§1'§;
               this.§%M§ = _loc3_.§'b§;
               this.§]!5§ = _loc3_.§]!5§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function § !#§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§1'§[0].x * param1.x + this.§1'§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§%M§)
         {
            if((_loc5_ = this.§1'§[_loc4_].x * param1.x + this.§1'§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §%K§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§1'§[0].x * param1.x + this.§1'§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§%M§)
         {
            if((_loc5_ = this.§1'§[_loc4_].x * param1.x + this.§1'§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§1'§[_loc2_];
      }
      
      public function §6@§() : int
      {
         return this.§%M§;
      }
      
      public function §+N§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§%M§);
         return this.§1'§[param1];
      }
   }
}

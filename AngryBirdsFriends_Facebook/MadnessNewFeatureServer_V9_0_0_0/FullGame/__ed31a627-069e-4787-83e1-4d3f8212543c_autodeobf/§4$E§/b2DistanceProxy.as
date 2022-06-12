package §4$E§
{
   import §!H§.*;
   import §?!C§.*;
   import §?N§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §&!g§:Vector.<b2Vec2>;
      
      public var §7"C§:int;
      
      public var §5#n§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§8!p§())
         {
            case b2Shape.§"$E§:
               _loc2_ = param1 as b2CircleShape;
               this.§&!g§ = new Vector.<b2Vec2>(1,true);
               this.§&!g§[0] = _loc2_.§>#>§;
               this.§7"C§ = 1;
               this.§5#n§ = _loc2_.§5#n§;
               break;
            case b2Shape.§?6§:
               _loc3_ = param1 as b2PolygonShape;
               this.§&!g§ = _loc3_.§&!g§;
               this.§7"C§ = _loc3_.§39§;
               this.§5#n§ = _loc3_.§5#n§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §<"B§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§&!g§[0].x * param1.x + this.§&!g§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§7"C§)
         {
            if((_loc5_ = this.§&!g§[_loc4_].x * param1.x + this.§&!g§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §function§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§&!g§[0].x * param1.x + this.§&!g§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§7"C§)
         {
            if((_loc5_ = this.§&!g§[_loc4_].x * param1.x + this.§&!g§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§&!g§[_loc2_];
      }
      
      public function §5S§() : int
      {
         return this.§7"C§;
      }
      
      public function §#q§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§7"C§);
         return this.§&!g§[param1];
      }
   }
}

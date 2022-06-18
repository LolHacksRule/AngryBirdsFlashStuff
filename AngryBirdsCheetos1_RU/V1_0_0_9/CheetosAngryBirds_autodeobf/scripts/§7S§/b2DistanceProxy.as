package §7S§
{
   import §5p§.*;
   import §;0§.*;
   import §;U§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §6!@§:Vector.<b2Vec2>;
      
      public var §5C§:int;
      
      public var §8!!§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§9o§())
         {
            case b2Shape.§!E§:
               _loc2_ = param1 as b2CircleShape;
               this.§6!@§ = new Vector.<b2Vec2>(1,true);
               this.§6!@§[0] = _loc2_.§%!G§;
               this.§5C§ = 1;
               this.§8!!§ = _loc2_.§8!!§;
               break;
            case b2Shape.§%1§:
               _loc3_ = param1 as b2PolygonShape;
               this.§6!@§ = _loc3_.§6!@§;
               this.§5C§ = _loc3_.§6!S§;
               this.§8!!§ = _loc3_.§8!!§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §8!,§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§6!@§[0].x * param1.x + this.§6!@§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§5C§)
         {
            if((_loc5_ = this.§6!@§[_loc4_].x * param1.x + this.§6!@§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §]T§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§6!@§[0].x * param1.x + this.§6!@§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§5C§)
         {
            if((_loc5_ = this.§6!@§[_loc4_].x * param1.x + this.§6!@§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§6!@§[_loc2_];
      }
      
      public function §?@§() : int
      {
         return this.§5C§;
      }
      
      public function §8g§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§5C§);
         return this.§6!@§[param1];
      }
   }
}

package §%!B§
{
   import §#b§.*;
   import §&!B§.*;
   import §^<§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §%%§:Vector.<b2Vec2>;
      
      public var §;X§:int;
      
      public var §!!`§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§=!,§())
         {
            case b2Shape.§,_§:
               _loc2_ = param1 as b2CircleShape;
               this.§%%§ = new Vector.<b2Vec2>(1,true);
               this.§%%§[0] = _loc2_.§!!Q§;
               this.§;X§ = 1;
               this.§!!`§ = _loc2_.§!!`§;
               break;
            case b2Shape.§2f§:
               _loc3_ = param1 as b2PolygonShape;
               this.§%%§ = _loc3_.§%%§;
               this.§;X§ = _loc3_.§"t§;
               this.§!!`§ = _loc3_.§!!`§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §6V§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§%%§[0].x * param1.x + this.§%%§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§;X§)
         {
            if((_loc5_ = this.§%%§[_loc4_].x * param1.x + this.§%%§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §^!0§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§%%§[0].x * param1.x + this.§%%§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§;X§)
         {
            if((_loc5_ = this.§%%§[_loc4_].x * param1.x + this.§%%§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§%%§[_loc2_];
      }
      
      public function §^U§() : int
      {
         return this.§;X§;
      }
      
      public function §^!Q§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§;X§);
         return this.§%%§[param1];
      }
   }
}

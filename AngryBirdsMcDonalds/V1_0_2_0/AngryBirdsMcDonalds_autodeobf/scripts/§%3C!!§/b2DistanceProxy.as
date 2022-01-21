package §<!!§
{
   import §"U§.*;
   import §,7§.*;
   import §=!X§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §<!T§:Vector.<b2Vec2>;
      
      public var §^,§:int;
      
      public var §^!c§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§^!A§())
         {
            case b2Shape.§%b§:
               _loc2_ = param1 as b2CircleShape;
               this.§<!T§ = new Vector.<b2Vec2>(1,true);
               this.§<!T§[0] = _loc2_.§--§;
               this.§^,§ = 1;
               this.§^!c§ = _loc2_.§^!c§;
               break;
            case b2Shape.§0!7§:
               _loc3_ = param1 as b2PolygonShape;
               this.§<!T§ = _loc3_.§<!T§;
               this.§^,§ = _loc3_.§[S§;
               this.§^!c§ = _loc3_.§^!c§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §;Z§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§<!T§[0].x * param1.x + this.§<!T§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§^,§)
         {
            if((_loc5_ = this.§<!T§[_loc4_].x * param1.x + this.§<!T§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §<!>§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§<!T§[0].x * param1.x + this.§<!T§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§^,§)
         {
            if((_loc5_ = this.§<!T§[_loc4_].x * param1.x + this.§<!T§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§<!T§[_loc2_];
      }
      
      public function §&!o§() : int
      {
         return this.§^,§;
      }
      
      public function §#!&§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§^,§);
         return this.§<!T§[param1];
      }
   }
}

package §-!T§
{
   import §0,§.*;
   import §3o§.*;
   import §8!b§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §&!B§:Vector.<b2Vec2>;
      
      public var §,!&§:int;
      
      public var §=V§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§"!I§())
         {
            case b2Shape.§<7§:
               _loc2_ = param1 as b2CircleShape;
               this.§&!B§ = new Vector.<b2Vec2>(1,true);
               this.§&!B§[0] = _loc2_.§?!d§;
               this.§,!&§ = 1;
               this.§=V§ = _loc2_.§=V§;
               break;
            case b2Shape.§5!e§:
               _loc3_ = param1 as b2PolygonShape;
               this.§&!B§ = _loc3_.§&!B§;
               this.§,!&§ = _loc3_.§0`§;
               this.§=V§ = _loc3_.§=V§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §,!>§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§&!B§[0].x * param1.x + this.§&!B§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§,!&§)
         {
            if((_loc5_ = this.§&!B§[_loc4_].x * param1.x + this.§&!B§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §;s§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§&!B§[0].x * param1.x + this.§&!B§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§,!&§)
         {
            if((_loc5_ = this.§&!B§[_loc4_].x * param1.x + this.§&!B§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§&!B§[_loc2_];
      }
      
      public function §7K§() : int
      {
         return this.§,!&§;
      }
      
      public function §[!5§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§,!&§);
         return this.§&!B§[param1];
      }
   }
}

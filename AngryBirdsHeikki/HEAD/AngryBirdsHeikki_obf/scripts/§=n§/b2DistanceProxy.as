package §=n§
{
   import §6%§.*;
   import §8`§.*;
   import §`!^§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §[_§:Vector.<b2Vec2>;
      
      public var §&!Y§:int;
      
      public var §]U§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§,!d§())
         {
            case b2Shape.§%!@§:
               _loc2_ = param1 as b2CircleShape;
               this.§[_§ = new Vector.<b2Vec2>(1,true);
               this.§[_§[0] = _loc2_.§8I§;
               this.§&!Y§ = 1;
               this.§]U§ = _loc2_.§]U§;
               break;
            case b2Shape.§0B§:
               _loc3_ = param1 as b2PolygonShape;
               this.§[_§ = _loc3_.§[_§;
               this.§&!Y§ = _loc3_.§=z§;
               this.§]U§ = _loc3_.§]U§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §"p§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[_§[0].x * param1.x + this.§[_§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§&!Y§)
         {
            if((_loc5_ = this.§[_§[_loc4_].x * param1.x + this.§[_§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §0,§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[_§[0].x * param1.x + this.§[_§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§&!Y§)
         {
            if((_loc5_ = this.§[_§[_loc4_].x * param1.x + this.§[_§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§[_§[_loc2_];
      }
      
      public function §&!X§() : int
      {
         return this.§&!Y§;
      }
      
      public function §@!-§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§&!Y§);
         return this.§[_§[param1];
      }
   }
}

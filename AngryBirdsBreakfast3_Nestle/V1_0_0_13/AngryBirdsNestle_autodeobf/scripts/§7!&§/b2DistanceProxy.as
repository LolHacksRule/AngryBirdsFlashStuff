package §7!&§
{
   import §'I§.*;
   import §?"'§.*;
   import §`!C§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §=!F§:Vector.<b2Vec2>;
      
      public var §^![§:int;
      
      public var §>"§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§&r§())
         {
            case b2Shape.§7"4§:
               _loc2_ = param1 as b2CircleShape;
               this.§=!F§ = new Vector.<b2Vec2>(1,true);
               this.§=!F§[0] = _loc2_.§=g§;
               this.§^![§ = 1;
               this.§>"§ = _loc2_.§>"§;
               break;
            case b2Shape.§?"#§:
               _loc3_ = param1 as b2PolygonShape;
               this.§=!F§ = _loc3_.§=!F§;
               this.§^![§ = _loc3_.§[i§;
               this.§>"§ = _loc3_.§>"§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §%!0§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§=!F§[0].x * param1.x + this.§=!F§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§^![§)
         {
            if((_loc5_ = this.§=!F§[_loc4_].x * param1.x + this.§=!F§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §4"4§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§=!F§[0].x * param1.x + this.§=!F§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§^![§)
         {
            if((_loc5_ = this.§=!F§[_loc4_].x * param1.x + this.§=!F§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§=!F§[_loc2_];
      }
      
      public function §8!%§() : int
      {
         return this.§^![§;
      }
      
      public function §[H§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§^![§);
         return this.§=!F§[param1];
      }
   }
}

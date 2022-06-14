package §55§
{
   import §#]§.*;
   import §4!!§.*;
   import §<!`§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §@"2§:Vector.<b2Vec2>;
      
      public var §,v§:int;
      
      public var §%I§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§"r§())
         {
            case b2Shape.§'!U§:
               _loc2_ = param1 as b2CircleShape;
               this.§@"2§ = new Vector.<b2Vec2>(1,true);
               this.§@"2§[0] = _loc2_.§ m§;
               this.§,v§ = 1;
               this.§%I§ = _loc2_.§%I§;
               break;
            case b2Shape.§@!#§:
               _loc3_ = param1 as b2PolygonShape;
               this.§@"2§ = _loc3_.§@"2§;
               this.§,v§ = _loc3_.§0y§;
               this.§%I§ = _loc3_.§%I§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §8!@§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§@"2§[0].x * param1.x + this.§@"2§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§,v§)
         {
            if((_loc5_ = this.§@"2§[_loc4_].x * param1.x + this.§@"2§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §#@§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§@"2§[0].x * param1.x + this.§@"2§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§,v§)
         {
            if((_loc5_ = this.§@"2§[_loc4_].x * param1.x + this.§@"2§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§@"2§[_loc2_];
      }
      
      public function §^x§() : int
      {
         return this.§,v§;
      }
      
      public function §0!C§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§,v§);
         return this.§@"2§[param1];
      }
   }
}

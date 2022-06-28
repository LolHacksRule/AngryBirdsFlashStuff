package §8w§
{
   import §,C§.*;
   import §3!m§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §%!]§:Vector.<b2Vec2>;
      
      public var §1!Y§:int;
      
      public var §?!X§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§'!_§())
         {
            case b2Shape.§1"§:
               _loc2_ = param1 as b2CircleShape;
               this.§%!]§ = new Vector.<b2Vec2>(1,true);
               this.§%!]§[0] = _loc2_.§^!I§;
               this.§1!Y§ = 1;
               this.§?!X§ = _loc2_.§?!X§;
               break;
            case b2Shape.§+!N§:
               _loc3_ = param1 as b2PolygonShape;
               this.§%!]§ = _loc3_.§%!]§;
               this.§1!Y§ = _loc3_.§!!=§;
               this.§?!X§ = _loc3_.§?!X§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §#!2§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§%!]§[0].x * param1.x + this.§%!]§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§1!Y§)
         {
            if((_loc5_ = this.§%!]§[_loc4_].x * param1.x + this.§%!]§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §<!,§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§%!]§[0].x * param1.x + this.§%!]§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§1!Y§)
         {
            if((_loc5_ = this.§%!]§[_loc4_].x * param1.x + this.§%!]§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§%!]§[_loc2_];
      }
      
      public function §5B§() : int
      {
         return this.§1!Y§;
      }
      
      public function §1!9§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§1!Y§);
         return this.§%!]§[param1];
      }
   }
}

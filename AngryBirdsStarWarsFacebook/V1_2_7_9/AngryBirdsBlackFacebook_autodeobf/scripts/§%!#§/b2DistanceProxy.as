package §%!#§
{
   import §9!s§.*;
   import §[!L§.*;
   import §^>§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §,h§:Vector.<b2Vec2>;
      
      public var §]#!§:int;
      
      public var §8!"§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§ "N§())
         {
            case b2Shape.§">§:
               _loc2_ = param1 as b2CircleShape;
               this.§,h§ = new Vector.<b2Vec2>(1,true);
               this.§,h§[0] = _loc2_.§-6§;
               this.§]#!§ = 1;
               this.§8!"§ = _loc2_.§8!"§;
               break;
            case b2Shape.§2!c§:
               _loc3_ = param1 as b2PolygonShape;
               this.§,h§ = _loc3_.§,h§;
               this.§]#!§ = _loc3_.§"!]§;
               this.§8!"§ = _loc3_.§8!"§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §,"_§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§,h§[0].x * param1.x + this.§,h§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§]#!§)
         {
            if((_loc5_ = this.§,h§[_loc4_].x * param1.x + this.§,h§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §""i§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§,h§[0].x * param1.x + this.§,h§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§]#!§)
         {
            if((_loc5_ = this.§,h§[_loc4_].x * param1.x + this.§,h§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§,h§[_loc2_];
      }
      
      public function §>4§() : int
      {
         return this.§]#!§;
      }
      
      public function §+"2§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§]#!§);
         return this.§,h§[param1];
      }
   }
}

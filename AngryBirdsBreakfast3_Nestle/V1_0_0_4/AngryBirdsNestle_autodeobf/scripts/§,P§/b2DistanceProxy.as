package §,P§
{
   import §-%§.*;
   import §>!R§.*;
   import §>"&§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §%!R§:Vector.<b2Vec2>;
      
      public var §8E§:int;
      
      public var §4=§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§4!C§())
         {
            case b2Shape.§+;§:
               _loc2_ = param1 as b2CircleShape;
               this.§%!R§ = new Vector.<b2Vec2>(1,true);
               this.§%!R§[0] = _loc2_.§^7§;
               this.§8E§ = 1;
               this.§4=§ = _loc2_.§4=§;
               break;
            case b2Shape.§`g§:
               _loc3_ = param1 as b2PolygonShape;
               this.§%!R§ = _loc3_.§%!R§;
               this.§8E§ = _loc3_.§`!J§;
               this.§4=§ = _loc3_.§4=§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §7!N§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§%!R§[0].x * param1.x + this.§%!R§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§8E§)
         {
            if((_loc5_ = this.§%!R§[_loc4_].x * param1.x + this.§%!R§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §"G§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§%!R§[0].x * param1.x + this.§%!R§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§8E§)
         {
            if((_loc5_ = this.§%!R§[_loc4_].x * param1.x + this.§%!R§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§%!R§[_loc2_];
      }
      
      public function §7!e§() : int
      {
         return this.§8E§;
      }
      
      public function §>!!§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§8E§);
         return this.§%!R§[param1];
      }
   }
}

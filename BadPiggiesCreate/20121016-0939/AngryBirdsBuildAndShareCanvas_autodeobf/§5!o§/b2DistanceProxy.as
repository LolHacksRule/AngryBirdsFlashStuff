package §5!o§
{
   import §"!9§.*;
   import §2"=§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §"!@§:Vector.<b2Vec2>;
      
      public var §<v§:int;
      
      public var §;$§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§+!O§())
         {
            case b2Shape.§[x§:
               _loc2_ = param1 as b2CircleShape;
               this.§"!@§ = new Vector.<b2Vec2>(1,true);
               this.§"!@§[0] = _loc2_.§6!B§;
               this.§<v§ = 1;
               this.§;$§ = _loc2_.§;$§;
               break;
            case b2Shape.§4A§:
               _loc3_ = param1 as b2PolygonShape;
               this.§"!@§ = _loc3_.§"!@§;
               this.§<v§ = _loc3_.§2!7§;
               this.§;$§ = _loc3_.§;$§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §0!3§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§"!@§[0].x * param1.x + this.§"!@§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§<v§)
         {
            if((_loc5_ = this.§"!@§[_loc4_].x * param1.x + this.§"!@§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §>h§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§"!@§[0].x * param1.x + this.§"!@§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§<v§)
         {
            if((_loc5_ = this.§"!@§[_loc4_].x * param1.x + this.§"!@§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§"!@§[_loc2_];
      }
      
      public function §6"9§() : int
      {
         return this.§<v§;
      }
      
      public function §,!Q§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§<v§);
         return this.§"!@§[param1];
      }
   }
}

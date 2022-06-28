package §!m§
{
   import §+!g§.*;
   import §0!3§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §`!a§:Vector.<b2Vec2>;
      
      public var §`!@§:int;
      
      public var §!@§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§6!-§())
         {
            case b2Shape.§^%§:
               _loc2_ = param1 as b2CircleShape;
               this.§`!a§ = new Vector.<b2Vec2>(1,true);
               this.§`!a§[0] = _loc2_.§,!2§;
               this.§`!@§ = 1;
               this.§!@§ = _loc2_.§!@§;
               break;
            case b2Shape.§9Q§:
               _loc3_ = param1 as b2PolygonShape;
               this.§`!a§ = _loc3_.§`!a§;
               this.§`!@§ = _loc3_.§"#§;
               this.§!@§ = _loc3_.§!@§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §8!N§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§`!a§[0].x * param1.x + this.§`!a§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§`!@§)
         {
            _loc5_ = this.§`!a§[_loc4_].x * param1.x + this.§`!a§[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §9!-§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§`!a§[0].x * param1.x + this.§`!a§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§`!@§)
         {
            _loc5_ = this.§`!a§[_loc4_].x * param1.x + this.§`!a§[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§`!a§[_loc2_];
      }
      
      public function §8!g§() : int
      {
         return this.§`!@§;
      }
      
      public function §3S§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§`!@§);
         return this.§`!a§[param1];
      }
   }
}

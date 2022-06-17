package §0J§
{
   import §[!3§.*;
   import §]!o§.*;
   import §`# §.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §["q§:Vector.<b2Vec2>;
      
      public var §%"r§:int;
      
      public var §,"k§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§52§())
         {
            case b2Shape.§=#T§:
               _loc2_ = param1 as b2CircleShape;
               this.§["q§ = new Vector.<b2Vec2>(1,true);
               this.§["q§[0] = _loc2_.§5!A§;
               this.§%"r§ = 1;
               this.§,"k§ = _loc2_.§,"k§;
               break;
            case b2Shape.§]#6§:
               _loc3_ = param1 as b2PolygonShape;
               this.§["q§ = _loc3_.§["q§;
               this.§%"r§ = _loc3_.§["w§;
               this.§,"k§ = _loc3_.§,"k§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §2#^§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§["q§[0].x * param1.x + this.§["q§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§%"r§)
         {
            if((_loc5_ = this.§["q§[_loc4_].x * param1.x + this.§["q§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §-6§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§["q§[0].x * param1.x + this.§["q§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§%"r§)
         {
            if((_loc5_ = this.§["q§[_loc4_].x * param1.x + this.§["q§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§["q§[_loc2_];
      }
      
      public function §2$!§() : int
      {
         return this.§%"r§;
      }
      
      public function §2"m§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§%"r§);
         return this.§["q§[param1];
      }
   }
}

package §>!Z§
{
   import §&H§.*;
   import §3b§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §0!k§:Vector.<b2Vec2>;
      
      public var §;!4§:int;
      
      public var § !c§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§ 5§())
         {
            case b2Shape.§^!6§:
               _loc2_ = param1 as b2CircleShape;
               this.§0!k§ = new Vector.<b2Vec2>(1,true);
               this.§0!k§[0] = _loc2_.§`3§;
               this.§;!4§ = 1;
               this.§ !c§ = _loc2_.§ !c§;
               break;
            case b2Shape.§=&§:
               _loc3_ = param1 as b2PolygonShape;
               this.§0!k§ = _loc3_.§0!k§;
               this.§;!4§ = _loc3_.§]D§;
               this.§ !c§ = _loc3_.§ !c§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §'^§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§0!k§[0].x * param1.x + this.§0!k§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§;!4§)
         {
            if((_loc5_ = this.§0!k§[_loc4_].x * param1.x + this.§0!k§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §7#§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§0!k§[0].x * param1.x + this.§0!k§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§;!4§)
         {
            if((_loc5_ = this.§0!k§[_loc4_].x * param1.x + this.§0!k§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§0!k§[_loc2_];
      }
      
      public function §!G§() : int
      {
         return this.§;!4§;
      }
      
      public function §2l§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§;!4§);
         return this.§0!k§[param1];
      }
   }
}

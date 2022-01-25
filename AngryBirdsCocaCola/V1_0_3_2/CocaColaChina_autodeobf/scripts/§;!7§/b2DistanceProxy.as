package §;!7§
{
   import §"!R§.*;
   import §'&§.*;
   import §implements§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §@H§:Vector.<b2Vec2>;
      
      public var §=+§:int;
      
      public var §[8§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§@e§())
         {
            case b2Shape.§@#§:
               _loc2_ = param1 as b2CircleShape;
               this.§@H§ = new Vector.<b2Vec2>(1,true);
               this.§@H§[0] = _loc2_.§0!M§;
               this.§=+§ = 1;
               this.§[8§ = _loc2_.§[8§;
               break;
            case b2Shape.§+Q§:
               _loc3_ = param1 as b2PolygonShape;
               this.§@H§ = _loc3_.§@H§;
               this.§=+§ = _loc3_.§4!M§;
               this.§[8§ = _loc3_.§[8§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §'!L§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§@H§[0].x * param1.x + this.§@H§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§=+§)
         {
            if((_loc5_ = this.§@H§[_loc4_].x * param1.x + this.§@H§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function § @§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§@H§[0].x * param1.x + this.§@H§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§=+§)
         {
            if((_loc5_ = this.§@H§[_loc4_].x * param1.x + this.§@H§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§@H§[_loc2_];
      }
      
      public function §`!#§() : int
      {
         return this.§=+§;
      }
      
      public function §5@§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§=+§);
         return this.§@H§[param1];
      }
   }
}

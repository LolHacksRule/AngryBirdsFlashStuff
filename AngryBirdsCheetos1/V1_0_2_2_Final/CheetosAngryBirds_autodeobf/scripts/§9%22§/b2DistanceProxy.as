package §9"§
{
   import §&U§.*;
   import §0!G§.*;
   import §2!F§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §9Z§:Vector.<b2Vec2>;
      
      public var §#!A§:int;
      
      public var §@s§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§"!M§())
         {
            case b2Shape.§&!L§:
               _loc2_ = param1 as b2CircleShape;
               this.§9Z§ = new Vector.<b2Vec2>(1,true);
               this.§9Z§[0] = _loc2_.§[I§;
               this.§#!A§ = 1;
               this.§@s§ = _loc2_.§@s§;
               break;
            case b2Shape.§,!K§:
               _loc3_ = param1 as b2PolygonShape;
               this.§9Z§ = _loc3_.§9Z§;
               this.§#!A§ = _loc3_.§9X§;
               this.§@s§ = _loc3_.§@s§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §[[§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§9Z§[0].x * param1.x + this.§9Z§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§#!A§)
         {
            if((_loc5_ = this.§9Z§[_loc4_].x * param1.x + this.§9Z§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function § !<§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§9Z§[0].x * param1.x + this.§9Z§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§#!A§)
         {
            if((_loc5_ = this.§9Z§[_loc4_].x * param1.x + this.§9Z§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§9Z§[_loc2_];
      }
      
      public function §%d§() : int
      {
         return this.§#!A§;
      }
      
      public function §-&§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§#!A§);
         return this.§9Z§[param1];
      }
   }
}

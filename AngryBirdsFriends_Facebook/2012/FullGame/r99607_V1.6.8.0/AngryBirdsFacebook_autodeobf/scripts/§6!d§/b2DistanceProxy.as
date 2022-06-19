package §6!d§
{
   import §!"8§.*;
   import §&I§.*;
   import §in§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §>P§:Vector.<b2Vec2>;
      
      public var §-<§:int;
      
      public var §^s§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§9!j§())
         {
            case b2Shape.§-"=§:
               _loc2_ = param1 as b2CircleShape;
               this.§>P§ = new Vector.<b2Vec2>(1,true);
               this.§>P§[0] = _loc2_.§0!S§;
               this.§-<§ = 1;
               this.§^s§ = _loc2_.§^s§;
               break;
            case b2Shape.§?! §:
               _loc3_ = param1 as b2PolygonShape;
               this.§>P§ = _loc3_.§>P§;
               this.§-<§ = _loc3_.§-y§;
               this.§^s§ = _loc3_.§^s§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §>!]§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§>P§[0].x * param1.x + this.§>P§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§-<§)
         {
            if((_loc5_ = this.§>P§[_loc4_].x * param1.x + this.§>P§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §#!R§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§>P§[0].x * param1.x + this.§>P§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§-<§)
         {
            if((_loc5_ = this.§>P§[_loc4_].x * param1.x + this.§>P§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§>P§[_loc2_];
      }
      
      public function §+l§() : int
      {
         return this.§-<§;
      }
      
      public function §?v§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§-<§);
         return this.§>P§[param1];
      }
   }
}

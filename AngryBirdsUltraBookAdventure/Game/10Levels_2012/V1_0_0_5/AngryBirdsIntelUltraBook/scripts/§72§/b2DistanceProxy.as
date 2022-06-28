package §72§
{
   import §2!+§.*;
   import §7!u§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §#!w§:Vector.<b2Vec2>;
      
      public var §9s§:int;
      
      public var §9!A§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§2!r§())
         {
            case b2Shape.§=! §:
               _loc2_ = param1 as b2CircleShape;
               this.§#!w§ = new Vector.<b2Vec2>(1,true);
               this.§#!w§[0] = _loc2_.§]x§;
               this.§9s§ = 1;
               this.§9!A§ = _loc2_.§9!A§;
               break;
            case b2Shape.§6!t§:
               _loc3_ = param1 as b2PolygonShape;
               this.§#!w§ = _loc3_.§#!w§;
               this.§9s§ = _loc3_.§,L§;
               this.§9!A§ = _loc3_.§9!A§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §4!J§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§#!w§[0].x * param1.x + this.§#!w§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§9s§)
         {
            if((_loc5_ = this.§#!w§[_loc4_].x * param1.x + this.§#!w§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function § X§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§#!w§[0].x * param1.x + this.§#!w§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§9s§)
         {
            if((_loc5_ = this.§#!w§[_loc4_].x * param1.x + this.§#!w§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§#!w§[_loc2_];
      }
      
      public function §6+§() : int
      {
         return this.§9s§;
      }
      
      public function §^>§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§9s§);
         return this.§#!w§[param1];
      }
   }
}

package §!!#§
{
   import §4! §.*;
   import §[!E§.*;
   import §^q§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §class§:Vector.<b2Vec2>;
      
      public var §4!L§:int;
      
      public var §9@§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§9P§())
         {
            case b2Shape.§5E§:
               _loc2_ = param1 as b2CircleShape;
               this.§class§ = new Vector.<b2Vec2>(1,true);
               this.§class§[0] = _loc2_.§"! §;
               this.§4!L§ = 1;
               this.§9@§ = _loc2_.§9@§;
               break;
            case b2Shape.§+4§:
               _loc3_ = param1 as b2PolygonShape;
               this.§class§ = _loc3_.§class§;
               this.§4!L§ = _loc3_.§[8§;
               this.§9@§ = _loc3_.§9@§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §#!=§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§class§[0].x * param1.x + this.§class§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§4!L§)
         {
            if((_loc5_ = this.§class§[_loc4_].x * param1.x + this.§class§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §#&§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§class§[0].x * param1.x + this.§class§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§4!L§)
         {
            if((_loc5_ = this.§class§[_loc4_].x * param1.x + this.§class§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§class§[_loc2_];
      }
      
      public function §!=§() : int
      {
         return this.§4!L§;
      }
      
      public function §+1§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§4!L§);
         return this.§class§[param1];
      }
   }
}

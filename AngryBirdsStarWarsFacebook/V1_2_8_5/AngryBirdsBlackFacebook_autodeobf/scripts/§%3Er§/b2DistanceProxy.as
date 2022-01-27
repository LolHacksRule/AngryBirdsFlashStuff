package §>r§
{
   import §1!2§.*;
   import §7!I§.*;
   import §7"A§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §0I§:Vector.<b2Vec2>;
      
      public var §-",§:int;
      
      public var §#J§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§+"M§())
         {
            case b2Shape.§8"y§:
               _loc2_ = param1 as b2CircleShape;
               this.§0I§ = new Vector.<b2Vec2>(1,true);
               this.§0I§[0] = _loc2_.§5!]§;
               this.§-",§ = 1;
               this.§#J§ = _loc2_.§#J§;
               break;
            case b2Shape.§+"<§:
               _loc3_ = param1 as b2PolygonShape;
               this.§0I§ = _loc3_.§0I§;
               this.§-",§ = _loc3_.§,#&§;
               this.§#J§ = _loc3_.§#J§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §+E§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§0I§[0].x * param1.x + this.§0I§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§-",§)
         {
            if((_loc5_ = this.§0I§[_loc4_].x * param1.x + this.§0I§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §=!§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§0I§[0].x * param1.x + this.§0I§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§-",§)
         {
            if((_loc5_ = this.§0I§[_loc4_].x * param1.x + this.§0I§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§0I§[_loc2_];
      }
      
      public function §<=§() : int
      {
         return this.§-",§;
      }
      
      public function §-!=§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§-",§);
         return this.§0I§[param1];
      }
   }
}

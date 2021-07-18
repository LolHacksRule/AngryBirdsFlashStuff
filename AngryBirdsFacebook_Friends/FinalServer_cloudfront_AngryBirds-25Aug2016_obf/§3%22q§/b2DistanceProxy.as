package §3"q§
{
   import §0H§.*;
   import §0m§.*;
   import §?!c§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §[#k§:Vector.<b2Vec2>;
      
      public var §%!V§:int;
      
      public var §0#I§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§ "c§())
         {
            case b2Shape.§+0§:
               _loc2_ = param1 as b2CircleShape;
               this.§[#k§ = new Vector.<b2Vec2>(1,true);
               this.§[#k§[0] = _loc2_.§9#c§;
               this.§%!V§ = 1;
               this.§0#I§ = _loc2_.§0#I§;
               break;
            case b2Shape.§0#N§:
               _loc3_ = param1 as b2PolygonShape;
               this.§[#k§ = _loc3_.§[#k§;
               this.§%!V§ = _loc3_.§3!O§;
               this.§0#I§ = _loc3_.§0#I§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §^!T§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[#k§[0].x * param1.x + this.§[#k§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§%!V§)
         {
            if((_loc5_ = this.§[#k§[_loc4_].x * param1.x + this.§[#k§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §[!t§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§[#k§[0].x * param1.x + this.§[#k§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§%!V§)
         {
            if((_loc5_ = this.§[#k§[_loc4_].x * param1.x + this.§[#k§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§[#k§[_loc2_];
      }
      
      public function §;![§() : int
      {
         return this.§%!V§;
      }
      
      public function §3"e§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§%!V§);
         return this.§[#k§[param1];
      }
   }
}

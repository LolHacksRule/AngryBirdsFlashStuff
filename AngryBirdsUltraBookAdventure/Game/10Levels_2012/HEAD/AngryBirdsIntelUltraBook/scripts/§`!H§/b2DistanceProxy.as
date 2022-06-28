package §`!H§
{
   import §,X§.*;
   import §8!H§.*;
   import §?!&§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §!!I§:Vector.<b2Vec2>;
      
      public var §5!C§:int;
      
      public var §&!N§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§3r§())
         {
            case b2Shape.§'o§:
               _loc2_ = param1 as b2CircleShape;
               this.§!!I§ = new Vector.<b2Vec2>(1,true);
               this.§!!I§[0] = _loc2_.§8!@§;
               this.§5!C§ = 1;
               this.§&!N§ = _loc2_.§&!N§;
               break;
            case b2Shape.§1!f§:
               _loc3_ = param1 as b2PolygonShape;
               this.§!!I§ = _loc3_.§!!I§;
               this.§5!C§ = _loc3_.§<!H§;
               this.§&!N§ = _loc3_.§&!N§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §+H§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§!!I§[0].x * param1.x + this.§!!I§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§5!C§)
         {
            _loc5_ = this.§!!I§[_loc4_].x * param1.x + this.§!!I§[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §1<§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§!!I§[0].x * param1.x + this.§!!I§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§5!C§)
         {
            _loc5_ = this.§!!I§[_loc4_].x * param1.x + this.§!!I§[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§!!I§[_loc2_];
      }
      
      public function §'!V§() : int
      {
         return this.§5!C§;
      }
      
      public function §2!6§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§5!C§);
         return this.§!!I§[param1];
      }
   }
}

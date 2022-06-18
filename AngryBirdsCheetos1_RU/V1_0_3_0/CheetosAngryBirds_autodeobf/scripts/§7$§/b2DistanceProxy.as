package §7$§
{
   import §"x§.*;
   import §#,§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §5!1§:Vector.<b2Vec2>;
      
      public var §7!3§:int;
      
      public var §?'§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§,!W§())
         {
            case b2Shape.§8_§:
               _loc2_ = param1 as b2CircleShape;
               this.§5!1§ = new Vector.<b2Vec2>(1,true);
               this.§5!1§[0] = _loc2_.§`!H§;
               this.§7!3§ = 1;
               this.§?'§ = _loc2_.§?'§;
               break;
            case b2Shape.§+N§:
               _loc3_ = param1 as b2PolygonShape;
               this.§5!1§ = _loc3_.§5!1§;
               this.§7!3§ = _loc3_.§2I§;
               this.§?'§ = _loc3_.§?'§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §-!G§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§5!1§[0].x * param1.x + this.§5!1§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§7!3§)
         {
            if((_loc5_ = this.§5!1§[_loc4_].x * param1.x + this.§5!1§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §?!7§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§5!1§[0].x * param1.x + this.§5!1§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§7!3§)
         {
            if((_loc5_ = this.§5!1§[_loc4_].x * param1.x + this.§5!1§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§5!1§[_loc2_];
      }
      
      public function §0!>§() : int
      {
         return this.§7!3§;
      }
      
      public function §'V§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§7!3§);
         return this.§5!1§[param1];
      }
   }
}

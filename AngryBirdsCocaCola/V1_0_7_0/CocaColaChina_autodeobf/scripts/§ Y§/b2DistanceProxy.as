package § Y§
{
   import §#!M§.*;
   import §<!8§.*;
   import §>![§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §>!5§:Vector.<b2Vec2>;
      
      public var §3!%§:int;
      
      public var §2B§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§6`§())
         {
            case b2Shape.§4!c§:
               _loc2_ = param1 as b2CircleShape;
               this.§>!5§ = new Vector.<b2Vec2>(1,true);
               this.§>!5§[0] = _loc2_.§1!G§;
               this.§3!%§ = 1;
               this.§2B§ = _loc2_.§2B§;
               break;
            case b2Shape.§6!2§:
               _loc3_ = param1 as b2PolygonShape;
               this.§>!5§ = _loc3_.§>!5§;
               this.§3!%§ = _loc3_.§'u§;
               this.§2B§ = _loc3_.§2B§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §>!§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§>!5§[0].x * param1.x + this.§>!5§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§3!%§)
         {
            if((_loc5_ = this.§>!5§[_loc4_].x * param1.x + this.§>!5§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §8-§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§>!5§[0].x * param1.x + this.§>!5§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§3!%§)
         {
            if((_loc5_ = this.§>!5§[_loc4_].x * param1.x + this.§>!5§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§>!5§[_loc2_];
      }
      
      public function §%2§() : int
      {
         return this.§3!%§;
      }
      
      public function §4c§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§3!%§);
         return this.§>!5§[param1];
      }
   }
}

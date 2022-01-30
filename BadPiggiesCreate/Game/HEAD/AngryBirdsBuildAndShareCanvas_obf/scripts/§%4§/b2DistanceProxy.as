package §%4§
{
   import §2k§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §^c§:Vector.<b2Vec2>;
      
      public var §`"2§:int;
      
      public var §&!$§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§;!F§())
         {
            case b2Shape.§;n§:
               _loc2_ = param1 as b2CircleShape;
               this.§^c§ = new Vector.<b2Vec2>(1,true);
               this.§^c§[0] = _loc2_.§!X§;
               this.§`"2§ = 1;
               this.§&!$§ = _loc2_.§&!$§;
               break;
            case b2Shape.§<!D§:
               _loc3_ = param1 as b2PolygonShape;
               this.§^c§ = _loc3_.§^c§;
               this.§`"2§ = _loc3_.§6!-§;
               this.§&!$§ = _loc3_.§&!$§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §5R§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§^c§[0].x * param1.x + this.§^c§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§`"2§)
         {
            if((_loc5_ = this.§^c§[_loc4_].x * param1.x + this.§^c§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §!F§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§^c§[0].x * param1.x + this.§^c§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§`"2§)
         {
            if((_loc5_ = this.§^c§[_loc4_].x * param1.x + this.§^c§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§^c§[_loc2_];
      }
      
      public function §]!`§() : int
      {
         return this.§`"2§;
      }
      
      public function §"]§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§`"2§);
         return this.§^c§[param1];
      }
   }
}

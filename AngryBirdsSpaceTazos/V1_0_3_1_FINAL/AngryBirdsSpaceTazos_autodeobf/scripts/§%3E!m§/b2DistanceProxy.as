package §>!m§
{
   import §"!w§.*;
   import §8K§.*;
   import §[!f§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §8i§:Vector.<b2Vec2>;
      
      public var §<!^§:int;
      
      public var §^!G§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§^![§())
         {
            case b2Shape.§?!<§:
               _loc2_ = param1 as b2CircleShape;
               this.§8i§ = new Vector.<b2Vec2>(1,true);
               this.§8i§[0] = _loc2_.§2O§;
               this.§<!^§ = 1;
               this.§^!G§ = _loc2_.§^!G§;
               break;
            case b2Shape.§7!D§:
               _loc3_ = param1 as b2PolygonShape;
               this.§8i§ = _loc3_.§8i§;
               this.§<!^§ = _loc3_.§ !!§;
               this.§^!G§ = _loc3_.§^!G§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §7!?§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§8i§[0].x * param1.x + this.§8i§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§<!^§)
         {
            if((_loc5_ = this.§8i§[_loc4_].x * param1.x + this.§8i§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §2"3§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§8i§[0].x * param1.x + this.§8i§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§<!^§)
         {
            if((_loc5_ = this.§8i§[_loc4_].x * param1.x + this.§8i§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§8i§[_loc2_];
      }
      
      public function §>^§() : int
      {
         return this.§<!^§;
      }
      
      public function §+!M§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§<!^§);
         return this.§8i§[param1];
      }
   }
}

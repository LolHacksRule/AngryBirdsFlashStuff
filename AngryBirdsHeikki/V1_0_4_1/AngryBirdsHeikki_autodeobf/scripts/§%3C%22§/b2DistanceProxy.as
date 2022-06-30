package §<"§
{
   import §+!b§.*;
   import §4x§.*;
   import §=i§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §`!M§:Vector.<b2Vec2>;
      
      public var §#E§:int;
      
      public var §6x§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§<!M§())
         {
            case b2Shape.§2!Q§:
               _loc2_ = param1 as b2CircleShape;
               this.§`!M§ = new Vector.<b2Vec2>(1,true);
               this.§`!M§[0] = _loc2_.§7V§;
               this.§#E§ = 1;
               this.§6x§ = _loc2_.§6x§;
               break;
            case b2Shape.§-§:
               _loc3_ = param1 as b2PolygonShape;
               this.§`!M§ = _loc3_.§`!M§;
               this.§#E§ = _loc3_.§-A§;
               this.§6x§ = _loc3_.§6x§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §&!R§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§`!M§[0].x * param1.x + this.§`!M§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§#E§)
         {
            if((_loc5_ = this.§`!M§[_loc4_].x * param1.x + this.§`!M§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §`!I§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§`!M§[0].x * param1.x + this.§`!M§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§#E§)
         {
            if((_loc5_ = this.§`!M§[_loc4_].x * param1.x + this.§`!M§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§`!M§[_loc2_];
      }
      
      public function §=r§() : int
      {
         return this.§#E§;
      }
      
      public function §]!Z§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§#E§);
         return this.§`!M§[param1];
      }
   }
}

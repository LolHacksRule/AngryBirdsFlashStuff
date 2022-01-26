package §!§
{
   import §'!_§.*;
   import §=!!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §^v§:Vector.<b2Vec2>;
      
      public var §6]§:int;
      
      public var §>!M§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§4!v§())
         {
            case b2Shape.§+!B§:
               _loc2_ = param1 as b2CircleShape;
               this.§^v§ = new Vector.<b2Vec2>(1,true);
               this.§^v§[0] = _loc2_.§[N§;
               this.§6]§ = 1;
               this.§>!M§ = _loc2_.§>!M§;
               break;
            case b2Shape.§3!;§:
               _loc3_ = param1 as b2PolygonShape;
               this.§^v§ = _loc3_.§^v§;
               this.§6]§ = _loc3_.§"![§;
               this.§>!M§ = _loc3_.§>!M§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §^s§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§^v§[0].x * param1.x + this.§^v§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§6]§)
         {
            if((_loc5_ = this.§^v§[_loc4_].x * param1.x + this.§^v§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §+M§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§^v§[0].x * param1.x + this.§^v§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§6]§)
         {
            if((_loc5_ = this.§^v§[_loc4_].x * param1.x + this.§^v§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§^v§[_loc2_];
      }
      
      public function §@!D§() : int
      {
         return this.§6]§;
      }
      
      public function §]"§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§6]§);
         return this.§^v§[param1];
      }
   }
}

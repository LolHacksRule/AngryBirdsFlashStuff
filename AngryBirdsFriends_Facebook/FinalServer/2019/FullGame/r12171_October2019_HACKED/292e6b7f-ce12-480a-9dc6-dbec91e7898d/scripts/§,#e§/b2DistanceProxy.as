package §,#E§
{
   import §&$+§.*;
   import §04§.*;
   import §1#I§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §!$3§:Vector.<b2Vec2>;
      
      public var §>"$§:int;
      
      public var §&"7§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§<!e§())
         {
            case b2Shape.§7!#§:
               _loc2_ = param1 as b2CircleShape;
               this.§!$3§ = new Vector.<b2Vec2>(1,true);
               this.§!$3§[0] = _loc2_.§]##§;
               this.§>"$§ = 1;
               this.§&"7§ = _loc2_.§&"7§;
               break;
            case b2Shape.§#!J§:
               _loc3_ = param1 as b2PolygonShape;
               this.§!$3§ = _loc3_.§!$3§;
               this.§>"$§ = _loc3_.§5#]§;
               this.§&"7§ = _loc3_.§&"7§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §@!2§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§!$3§[0].x * param1.x + this.§!$3§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§>"$§)
         {
            if((_loc5_ = this.§!$3§[_loc4_].x * param1.x + this.§!$3§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §2"h§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§!$3§[0].x * param1.x + this.§!$3§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§>"$§)
         {
            if((_loc5_ = this.§!$3§[_loc4_].x * param1.x + this.§!$3§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§!$3§[_loc2_];
      }
      
      public function §;#A§() : int
      {
         return this.§>"$§;
      }
      
      public function §+"1§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§>"$§);
         return this.§!$3§[param1];
      }
   }
}

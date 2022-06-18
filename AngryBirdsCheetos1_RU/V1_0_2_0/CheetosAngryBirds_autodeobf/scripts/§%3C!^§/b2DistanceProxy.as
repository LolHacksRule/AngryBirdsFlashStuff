package §<!^§
{
   import § y§.*;
   import §&!+§.*;
   import §8!%§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §while§:Vector.<b2Vec2>;
      
      public var §&!5§:int;
      
      public var §!!&§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§?!S§())
         {
            case b2Shape.§5! §:
               _loc2_ = param1 as b2CircleShape;
               this.§while§ = new Vector.<b2Vec2>(1,true);
               this.§while§[0] = _loc2_.§]'§;
               this.§&!5§ = 1;
               this.§!!&§ = _loc2_.§!!&§;
               break;
            case b2Shape.§7F§:
               _loc3_ = param1 as b2PolygonShape;
               this.§while§ = _loc3_.§while§;
               this.§&!5§ = _loc3_.§<§;
               this.§!!&§ = _loc3_.§!!&§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §12§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§while§[0].x * param1.x + this.§while§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§&!5§)
         {
            if((_loc5_ = this.§while§[_loc4_].x * param1.x + this.§while§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §+4§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§while§[0].x * param1.x + this.§while§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§&!5§)
         {
            if((_loc5_ = this.§while§[_loc4_].x * param1.x + this.§while§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§while§[_loc2_];
      }
      
      public function §0[§() : int
      {
         return this.§&!5§;
      }
      
      public function §&!G§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§&!5§);
         return this.§while§[param1];
      }
   }
}

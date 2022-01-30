package §[!Z§
{
   import §-!G§.*;
   import §7"'§.*;
   import §<!j§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §;W§:Vector.<b2Vec2>;
      
      public var §76§:int;
      
      public var §7!1§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.get())
         {
            case b2Shape.§;e§:
               _loc2_ = param1 as b2CircleShape;
               this.§;W§ = new Vector.<b2Vec2>(1,true);
               this.§;W§[0] = _loc2_.§3"8§;
               this.§76§ = 1;
               this.§7!1§ = _loc2_.§7!1§;
               break;
            case b2Shape.§[X§:
               _loc3_ = param1 as b2PolygonShape;
               this.§;W§ = _loc3_.§;W§;
               this.§76§ = _loc3_.§7K§;
               this.§7!1§ = _loc3_.§7!1§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §5§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§;W§[0].x * param1.x + this.§;W§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§76§)
         {
            if((_loc5_ = this.§;W§[_loc4_].x * param1.x + this.§;W§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §9!E§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§;W§[0].x * param1.x + this.§;W§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§76§)
         {
            if((_loc5_ = this.§;W§[_loc4_].x * param1.x + this.§;W§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§;W§[_loc2_];
      }
      
      public function §3!b§() : int
      {
         return this.§76§;
      }
      
      public function §[!6§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§76§);
         return this.§;W§[param1];
      }
   }
}

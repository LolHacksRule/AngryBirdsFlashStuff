package §'"-§
{
   import §!"3§.*;
   import §,"[§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §["8§:Vector.<b2Vec2>;
      
      public var §=!4§:int;
      
      public var §0!_§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§>!f§())
         {
            case b2Shape.§ "&§:
               _loc2_ = param1 as b2CircleShape;
               this.§["8§ = new Vector.<b2Vec2>(1,true);
               this.§["8§[0] = _loc2_.§2"9§;
               this.§=!4§ = 1;
               this.§0!_§ = _loc2_.§0!_§;
               break;
            case b2Shape.§8x§:
               _loc3_ = param1 as b2PolygonShape;
               this.§["8§ = _loc3_.§["8§;
               this.§=!4§ = _loc3_.§4C§;
               this.§0!_§ = _loc3_.§0!_§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §;"L§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§["8§[0].x * param1.x + this.§["8§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§=!4§)
         {
            if((_loc5_ = this.§["8§[_loc4_].x * param1.x + this.§["8§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §+!v§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§["8§[0].x * param1.x + this.§["8§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§=!4§)
         {
            if((_loc5_ = this.§["8§[_loc4_].x * param1.x + this.§["8§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§["8§[_loc2_];
      }
      
      public function §"R§() : int
      {
         return this.§=!4§;
      }
      
      public function §,"-§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§=!4§);
         return this.§["8§[param1];
      }
   }
}

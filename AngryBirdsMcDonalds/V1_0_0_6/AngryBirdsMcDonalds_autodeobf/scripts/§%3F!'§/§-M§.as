package §?!'§
{
   import §%!h§.b2CircleShape;
   import §%!h§.b2PolygonShape;
   import §%!h§.b2Shape;
   import §8<§.§<!7§;
   import §@![§.b2Vec2;
   
   public class §-M§
   {
      
      public static const §5!I§:int = 0;
      
      public static const §=!?§:int = 1;
      
      public static const §]u§:int = 2;
      
      public static const § ;§:int = 3;
      
      public static const §;![§:int = 4;
      
      public static const §18§:int = 5;
       
      
      public var mName:String;
      
      public var §8!3§:int;
      
      public var §3y§:Number;
      
      public var § 5§:Number;
      
      public var §'X§:Number;
      
      public var §]e§:Array = null;
      
      public function §-M§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§8!3§ = this.§<![§(param2);
         this.§3y§ = param3;
         this.§ 5§ = param4;
         this.§'X§ = param5;
      }
      
      public function §,_§() : int
      {
         return this.§8!3§;
      }
      
      public function §+!J§() : Number
      {
         return this.§3y§;
      }
      
      public function §%!U§() : int
      {
         return this.§ 5§;
      }
      
      private function §<![§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return § ;§;
         }
         if(param1 == "CIRCLE")
         {
            return §;![§;
         }
         if(param1 == "POLYGON")
         {
            return §18§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §5!I§;
         }
         if(param1 == "Image_Polygon")
         {
            return §=!?§;
         }
         if(param1 == "Image_Circle")
         {
            return §]u§;
         }
         §<!7§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return § ;§;
      }
      
      public function §3j§() : Array
      {
         return this.§]e§;
      }
      
      public function §=?§(param1:Array) : void
      {
         this.§]e§ = param1;
      }
      
      public function §%O§() : void
      {
         var _loc1_:Array = this.§%Y§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§3y§ = _loc3_.x - _loc2_.x;
         this.§ 5§ = _loc3_.y - _loc2_.y;
      }
      
      public function §%Y§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§]e§)
         {
            if(_loc5_)
            {
               _loc1_ = _loc3_ = _loc6_.x;
               _loc2_ = _loc4_ = _loc6_.y;
               _loc5_ = false;
            }
            else
            {
               if(_loc6_.x < _loc1_)
               {
                  _loc1_ = _loc6_.x;
               }
               if(_loc6_.x > _loc3_)
               {
                  _loc3_ = _loc6_.x;
               }
               if(_loc6_.y < _loc2_)
               {
                  _loc2_ = _loc6_.y;
               }
               if(_loc6_.y > _loc4_)
               {
                  _loc4_ = _loc6_.y;
               }
            }
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function § !J§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§8!3§)
         {
            case §;![§:
               _loc2_ = new b2CircleShape();
               _loc2_.§5O§(this.§3y§ * param1);
               return _loc2_;
            case §18§:
               _loc3_ = this.§3j§();
               (_loc4_ = new b2PolygonShape()).§5!d§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§5Q§();
               for each(_loc6_ in _loc5_)
               {
                  _loc6_.x *= param1;
                  _loc6_.y *= param1;
               }
               return _loc4_;
            default:
               return null;
         }
      }
   }
}

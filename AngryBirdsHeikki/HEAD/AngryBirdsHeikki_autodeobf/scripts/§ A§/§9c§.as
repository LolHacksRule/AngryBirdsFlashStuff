package § A§
{
   import §&!b§.§ c§;
   import §8`§.b2CircleShape;
   import §8`§.b2PolygonShape;
   import §8`§.b2Shape;
   import §`!^§.b2Vec2;
   
   public class §9c§
   {
      
      public static const §`!D§:int = 0;
      
      public static const §]!,§:int = 1;
      
      public static const §@]§:int = 2;
      
      public static const §!q§:int = 3;
      
      public static const §+!%§:int = 4;
      
      public static const §@!0§:int = 5;
       
      
      public var mName:String;
      
      public var §87§:int;
      
      public var §@S§:Number;
      
      public var §1!U§:Number;
      
      public var §5!4§:Number;
      
      public var §3d§:Array = null;
      
      public function §9c§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§87§ = this.§4h§(param2);
         this.§@S§ = param3;
         this.§1!U§ = param4;
         this.§5!4§ = param5;
      }
      
      public function §40§() : int
      {
         return this.§87§;
      }
      
      public function §%T§() : Number
      {
         return this.§@S§;
      }
      
      public function §@!a§() : int
      {
         return this.§1!U§;
      }
      
      private function §4h§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §!q§;
         }
         if(param1 == "CIRCLE")
         {
            return §+!%§;
         }
         if(param1 == "POLYGON")
         {
            return §@!0§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §`!D§;
         }
         if(param1 == "Image_Polygon")
         {
            return §]!,§;
         }
         if(param1 == "Image_Circle")
         {
            return §@]§;
         }
         § c§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §!q§;
      }
      
      public function §8,§() : Array
      {
         return this.§3d§;
      }
      
      public function § null§(param1:Array) : void
      {
         this.§3d§ = param1;
      }
      
      public function §#C§() : void
      {
         var _loc1_:Array = this.§6! §();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§@S§ = _loc3_.x - _loc2_.x;
         this.§1!U§ = _loc3_.y - _loc2_.y;
      }
      
      public function §6! §() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§3d§)
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
      
      public function §'j§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§87§)
         {
            case §+!%§:
               _loc2_ = new b2CircleShape();
               _loc2_.§#!,§(this.§@S§ * param1);
               return _loc2_;
            case §@!0§:
               _loc3_ = this.§8,§();
               (_loc4_ = new b2PolygonShape()).§8!=§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§3'§();
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

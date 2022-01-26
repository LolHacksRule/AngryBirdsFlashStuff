package §?!H§
{
   import §!4§.§=!Z§;
   import §+,§.b2Vec2;
   import §-!$§.b2CircleShape;
   import §-!$§.b2PolygonShape;
   import §-!$§.b2Shape;
   
   public class §?U§
   {
      
      public static const §-W§:int = 0;
      
      public static const §<T§:int = 1;
      
      public static const §"x§:int = 2;
      
      public static const §9Z§:int = 3;
      
      public static const §"H§:int = 4;
      
      public static const §&u§:int = 5;
       
      
      public var mName:String;
      
      public var §-d§:int;
      
      public var §`!S§:Number;
      
      public var §]n§:Number;
      
      public var §]>§:Number;
      
      public var §-!O§:Array = null;
      
      public function §?U§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§-d§ = this.§"o§(param2);
         this.§`!S§ = param3;
         this.§]n§ = param4;
         this.§]>§ = param5;
      }
      
      public function §<!7§() : int
      {
         return this.§-d§;
      }
      
      public function §73§() : Number
      {
         return this.§`!S§;
      }
      
      public function §=!V§() : int
      {
         return this.§]n§;
      }
      
      private function §"o§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §9Z§;
         }
         if(param1 == "CIRCLE")
         {
            return §"H§;
         }
         if(param1 == "POLYGON")
         {
            return §&u§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §-W§;
         }
         if(param1 == "Image_Polygon")
         {
            return §<T§;
         }
         if(param1 == "Image_Circle")
         {
            return §"x§;
         }
         §=!Z§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §9Z§;
      }
      
      public function §"L§() : Array
      {
         return this.§-!O§;
      }
      
      public function §#!-§(param1:Array) : void
      {
         this.§-!O§ = param1;
      }
      
      public function §!!9§() : void
      {
         var _loc1_:Array = this.§"F§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§`!S§ = _loc3_.x - _loc2_.x;
         this.§]n§ = _loc3_.y - _loc2_.y;
      }
      
      public function §"F§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§-!O§)
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
      
      public function §;@§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§-d§)
         {
            case §"H§:
               _loc2_ = new b2CircleShape();
               _loc2_.§'!W§(this.§`!S§ * param1);
               return _loc2_;
            case §&u§:
               _loc3_ = this.§"L§();
               (_loc4_ = new b2PolygonShape()).§3R§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§&Y§();
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

package §_-H2§
{
   import §_-9z§.b2Vec2;
   import §_-Bt§.b2CircleShape;
   import §_-Bt§.b2PolygonShape;
   import §_-Bt§.b2Shape;
   import §_-RG§.§_-HT§;
   
   public class §_-fm§
   {
      
      public static const §_-HA§:int = 0;
      
      public static const §_-Nn§:int = 1;
      
      public static const §_-sr§:int = 2;
      
      public static const §_-fv§:int = 3;
      
      public static const §_-qq§:int = 4;
      
      public static const §_-fi§:int = 5;
       
      
      public var mName:String;
      
      public var §_-mu§:int;
      
      public var §_-Fy§:Number;
      
      public var §_-XU§:Number;
      
      public var §_-eQ§:Number;
      
      public var §_-U7§:Array = null;
      
      public function §_-fm§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-mu§ = this.§_-wP§(param2);
         this.§_-Fy§ = param3;
         this.§_-XU§ = param4;
         this.§_-eQ§ = param5;
      }
      
      public function §_-6L§() : int
      {
         return this.§_-mu§;
      }
      
      public function §_-4a§() : Number
      {
         return this.§_-Fy§;
      }
      
      public function §_-Ws§() : int
      {
         return this.§_-XU§;
      }
      
      private function §_-wP§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-fv§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-qq§;
         }
         if(param1 == "POLYGON")
         {
            return §_-fi§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-HA§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-Nn§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-sr§;
         }
         §_-HT§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-fv§;
      }
      
      public function §_-Py§() : Array
      {
         return this.§_-U7§;
      }
      
      public function §_-Vx§(param1:Array) : void
      {
         this.§_-U7§ = param1;
      }
      
      public function §_-0L§() : void
      {
         var _loc1_:Array = this.§_-7l§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-Fy§ = _loc3_.x - _loc2_.x;
         this.§_-XU§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-7l§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-U7§)
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
      
      public function §_-ub§() : b2Shape
      {
         var _loc1_:b2CircleShape = null;
         var _loc2_:Array = null;
         var _loc3_:b2PolygonShape = null;
         switch(this.§_-mu§)
         {
            case §_-qq§:
               _loc1_ = new b2CircleShape();
               _loc1_.§_-MS§(this.§_-Fy§);
               return _loc1_;
            case §_-fi§:
               _loc2_ = this.§_-Py§();
               _loc3_ = new b2PolygonShape();
               _loc3_.§_-xQ§(_loc2_,_loc2_.length);
               return _loc3_;
            default:
               return null;
         }
      }
   }
}

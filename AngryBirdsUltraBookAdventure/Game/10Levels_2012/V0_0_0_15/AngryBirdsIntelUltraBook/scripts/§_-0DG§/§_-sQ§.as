package §_-0DG§
{
   import §_-03n§.b2CircleShape;
   import §_-03n§.b2PolygonShape;
   import §_-03n§.b2Shape;
   import §_-0BH§.§_-FK§;
   import §_-Yp§.b2Vec2;
   
   public class §_-sQ§
   {
      
      public static const §_-049§:int = 0;
      
      public static const §_-03-§:int = 1;
      
      public static const §_-1U§:int = 2;
      
      public static const §_-07J§:int = 3;
      
      public static const §_-WD§:int = 4;
      
      public static const §_-2b§:int = 5;
       
      
      public var mName:String;
      
      public var §_-aw§:int;
      
      public var §_-ux§:Number;
      
      public var §_-09f§:Number;
      
      public var §_-ZV§:Number;
      
      public var §_-vS§:Array = null;
      
      public function §_-sQ§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-aw§ = this.§_-JA§(param2);
         this.§_-ux§ = param3;
         this.§_-09f§ = param4;
         this.§_-ZV§ = param5;
      }
      
      public function §_-0AK§() : int
      {
         return this.§_-aw§;
      }
      
      public function §_-FD§() : Number
      {
         return this.§_-ux§;
      }
      
      public function §_-vX§() : int
      {
         return this.§_-09f§;
      }
      
      private function §_-JA§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-07J§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-WD§;
         }
         if(param1 == "POLYGON")
         {
            return §_-2b§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-049§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-03-§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-1U§;
         }
         §_-FK§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-07J§;
      }
      
      public function §_-J2§() : Array
      {
         return this.§_-vS§;
      }
      
      public function §_-MC§(param1:Array) : void
      {
         this.§_-vS§ = param1;
      }
      
      public function §_-UN§() : void
      {
         var _loc1_:Array = this.§super§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-ux§ = _loc3_.x - _loc2_.x;
         this.§_-09f§ = _loc3_.y - _loc2_.y;
      }
      
      public function §super§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-vS§)
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
      
      public function §_-A1§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§_-aw§)
         {
            case §_-WD§:
               _loc2_ = new b2CircleShape();
               _loc2_.§_-Fu§(this.§_-ux§ * param1);
               return _loc2_;
            case §_-2b§:
               _loc3_ = this.§_-J2§();
               (_loc4_ = new b2PolygonShape()).§_-A§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§_-Y2§();
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

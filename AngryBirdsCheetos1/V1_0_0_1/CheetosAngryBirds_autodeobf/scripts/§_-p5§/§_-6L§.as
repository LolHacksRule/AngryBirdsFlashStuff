package §_-p5§
{
   import §_-U0§.§_-tF§;
   import §_-cG§.b2CircleShape;
   import §_-cG§.b2PolygonShape;
   import §_-cG§.b2Shape;
   import §_-cP§.b2Vec2;
   
   public class §_-6L§
   {
      
      public static const §_-X1§:int = 0;
      
      public static const §_-xR§:int = 1;
      
      public static const §_-nB§:int = 2;
      
      public static const §_-Xq§:int = 3;
      
      public static const §_-Xe§:int = 4;
      
      public static const §_-zi§:int = 5;
       
      
      public var mName:String;
      
      public var §_-9-§:int;
      
      public var §_-aC§:Number;
      
      public var §_-3v§:Number;
      
      public var §_-Ns§:Number;
      
      public var §_-D1§:Array = null;
      
      public function §_-6L§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-9-§ = this.§_-by§(param2);
         this.§_-aC§ = param3;
         this.§_-3v§ = param4;
         this.§_-Ns§ = param5;
      }
      
      public function §_-H8§() : int
      {
         return this.§_-9-§;
      }
      
      public function §_-8D§() : Number
      {
         return this.§_-aC§;
      }
      
      public function §_-0r§() : int
      {
         return this.§_-3v§;
      }
      
      private function §_-by§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-Xq§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-Xe§;
         }
         if(param1 == "POLYGON")
         {
            return §_-zi§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-X1§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-xR§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-nB§;
         }
         §_-tF§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-Xq§;
      }
      
      public function §_-Vt§() : Array
      {
         return this.§_-D1§;
      }
      
      public function §_-H2§(param1:Array) : void
      {
         this.§_-D1§ = param1;
      }
      
      public function §_-Kl§() : void
      {
         var _loc1_:Array = this.§_-w8§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-aC§ = _loc3_.x - _loc2_.x;
         this.§_-3v§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-w8§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-D1§)
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
      
      public function §_-YD§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§_-9-§)
         {
            case §_-Xe§:
               _loc2_ = new b2CircleShape();
               _loc2_.§_-CD§(this.§_-aC§ * param1);
               return _loc2_;
            case §_-zi§:
               _loc3_ = this.§_-Vt§();
               (_loc4_ = new b2PolygonShape()).§_-2h§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§_-j-§();
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

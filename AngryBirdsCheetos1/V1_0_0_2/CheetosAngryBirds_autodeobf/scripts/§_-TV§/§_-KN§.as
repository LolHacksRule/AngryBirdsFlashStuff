package §_-TV§
{
   import § if§.b2CircleShape;
   import § if§.b2PolygonShape;
   import § if§.b2Shape;
   import §_-F2§.b2Vec2;
   import §_-aA§.§_-I0§;
   
   public class §_-KN§
   {
      
      public static const §_-jA§:int = 0;
      
      public static const §_-Ec§:int = 1;
      
      public static const §_-Po§:int = 2;
      
      public static const §_-wk§:int = 3;
      
      public static const §_-ul§:int = 4;
      
      public static const §_-60§:int = 5;
       
      
      public var mName:String;
      
      public var §_-Xm§:int;
      
      public var §_-a9§:Number;
      
      public var §_-7y§:Number;
      
      public var §_-LS§:Number;
      
      public var §_-na§:Array = null;
      
      public function §_-KN§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-Xm§ = this.§_-iV§(param2);
         this.§_-a9§ = param3;
         this.§_-7y§ = param4;
         this.§_-LS§ = param5;
      }
      
      public function §_-NS§() : int
      {
         return this.§_-Xm§;
      }
      
      public function §_-Ut§() : Number
      {
         return this.§_-a9§;
      }
      
      public function §_-qy§() : int
      {
         return this.§_-7y§;
      }
      
      private function §_-iV§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-wk§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-ul§;
         }
         if(param1 == "POLYGON")
         {
            return §_-60§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-jA§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-Ec§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-Po§;
         }
         §_-I0§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-wk§;
      }
      
      public function §_-QD§() : Array
      {
         return this.§_-na§;
      }
      
      public function §_-K8§(param1:Array) : void
      {
         this.§_-na§ = param1;
      }
      
      public function §_-Jw§() : void
      {
         var _loc1_:Array = this.§_-xB§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-a9§ = _loc3_.x - _loc2_.x;
         this.§_-7y§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-xB§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-na§)
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
      
      public function §_-qA§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§_-Xm§)
         {
            case §_-ul§:
               _loc2_ = new b2CircleShape();
               _loc2_.§_-Ik§(this.§_-a9§ * param1);
               return _loc2_;
            case §_-60§:
               _loc3_ = this.§_-QD§();
               (_loc4_ = new b2PolygonShape()).§_-gZ§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§_-ut§();
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

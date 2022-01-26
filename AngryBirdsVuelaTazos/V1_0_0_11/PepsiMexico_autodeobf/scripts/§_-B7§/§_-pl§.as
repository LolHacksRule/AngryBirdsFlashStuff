package §_-B7§
{
   import §_-26§.b2CircleShape;
   import §_-26§.b2PolygonShape;
   import §_-26§.b2Shape;
   import §_-ZG§.§_-Ne§;
   import §_-dx§.b2Vec2;
   
   public class §_-pl§
   {
      
      public static const §_-aY§:int = 0;
      
      public static const §_-n9§:int = 1;
      
      public static const §_-Pz§:int = 2;
      
      public static const §_-GK§:int = 3;
      
      public static const §_-gb§:int = 4;
      
      public static const §_-Fj§:int = 5;
       
      
      public var mName:String;
      
      public var §_-qU§:int;
      
      public var §_-x9§:Number;
      
      public var §_-Ql§:Number;
      
      public var §_-pS§:Number;
      
      public var §_-IW§:Array = null;
      
      public function §_-pl§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-qU§ = this.§_-Vi§(param2);
         this.§_-x9§ = param3;
         this.§_-Ql§ = param4;
         this.§_-pS§ = param5;
      }
      
      public function §_-pN§() : int
      {
         return this.§_-qU§;
      }
      
      public function §_-F9§() : Number
      {
         return this.§_-x9§;
      }
      
      public function §_-dO§() : int
      {
         return this.§_-Ql§;
      }
      
      private function §_-Vi§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-GK§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-gb§;
         }
         if(param1 == "POLYGON")
         {
            return §_-Fj§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-aY§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-n9§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-Pz§;
         }
         §_-Ne§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-GK§;
      }
      
      public function §_-Nr§() : Array
      {
         return this.§_-IW§;
      }
      
      public function §_-Mi§(param1:Array) : void
      {
         this.§_-IW§ = param1;
      }
      
      public function §_-Xg§() : void
      {
         var _loc1_:Array = this.§_-aE§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-x9§ = _loc3_.x - _loc2_.x;
         this.§_-Ql§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-aE§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-IW§)
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
      
      public function §_-D4§() : b2Shape
      {
         var _loc1_:b2CircleShape = null;
         var _loc2_:Array = null;
         var _loc3_:b2PolygonShape = null;
         switch(this.§_-qU§)
         {
            case §_-gb§:
               _loc1_ = new b2CircleShape();
               _loc1_.§_-uH§(this.§_-x9§);
               return _loc1_;
            case §_-Fj§:
               _loc2_ = this.§_-Nr§();
               _loc3_ = new b2PolygonShape();
               _loc3_.§_-ap§(_loc2_,_loc2_.length);
               return _loc3_;
            default:
               return null;
         }
      }
   }
}

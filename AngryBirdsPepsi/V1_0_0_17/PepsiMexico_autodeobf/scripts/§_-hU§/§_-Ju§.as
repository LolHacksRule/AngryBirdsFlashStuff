package §_-HU§
{
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2CircleShape;
   import §_-Kt§.b2PolygonShape;
   import §_-Kt§.b2Shape;
   import §_-e3§.§_-54§;
   
   public class §_-Ju§
   {
      
      public static const §_-Gp§:int = 0;
      
      public static const §_-VB§:int = 1;
      
      public static const §_-g-§:int = 2;
      
      public static const §_-4b§:int = 3;
      
      public static const §_-d9§:int = 4;
      
      public static const §_-K9§:int = 5;
       
      
      public var mName:String;
      
      public var §_-zU§:int;
      
      public var §_-sa§:Number;
      
      public var §_-cr§:Number;
      
      public var §_-3o§:Number;
      
      public var §_-0p§:Array = null;
      
      public function §_-Ju§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-zU§ = this.§_-EH§(param2);
         this.§_-sa§ = param3;
         this.§_-cr§ = param4;
         this.§_-3o§ = param5;
      }
      
      public function §_-9B§() : int
      {
         return this.§_-zU§;
      }
      
      public function §while§() : Number
      {
         return this.§_-sa§;
      }
      
      public function §_-YY§() : int
      {
         return this.§_-cr§;
      }
      
      private function §_-EH§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-4b§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-d9§;
         }
         if(param1 == "POLYGON")
         {
            return §_-K9§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-Gp§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-VB§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-g-§;
         }
         §_-54§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-4b§;
      }
      
      public function §_-mW§() : Array
      {
         return this.§_-0p§;
      }
      
      public function §_-E5§(param1:Array) : void
      {
         this.§_-0p§ = param1;
      }
      
      public function §_-Ej§() : void
      {
         var _loc1_:Array = this.§_-gi§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-sa§ = _loc3_.x - _loc2_.x;
         this.§_-cr§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-gi§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-0p§)
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
      
      public function §_-3O§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§_-zU§)
         {
            case §_-d9§:
               _loc2_ = new b2CircleShape();
               _loc2_.§_-fZ§(this.§_-sa§ * param1);
               return _loc2_;
            case §_-K9§:
               _loc3_ = this.§_-mW§();
               (_loc4_ = new b2PolygonShape()).§_-tU§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§_-JC§();
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

package §with§
{
   import §_-8i§.b2CircleShape;
   import §_-8i§.b2PolygonShape;
   import §_-8i§.b2Shape;
   import §_-ex§.§_-mR§;
   import §var§.b2Vec2;
   
   public class §_-fn§
   {
      
      public static const §_-Nv§:int = 0;
      
      public static const §_-Zv§:int = 1;
      
      public static const §_-O-§:int = 2;
      
      public static const §_-SP§:int = 3;
      
      public static const §_-ms§:int = 4;
      
      public static const §_-ul§:int = 5;
       
      
      public var mName:String;
      
      public var §_-Ts§:int;
      
      public var §_-NR§:Number;
      
      public var §_-gD§:Number;
      
      public var §_-SA§:Number;
      
      public var §_-2i§:Array = null;
      
      public function §_-fn§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-Ts§ = this.§_-hr§(param2);
         this.§_-NR§ = param3;
         this.§_-gD§ = param4;
         this.§_-SA§ = param5;
      }
      
      public function §do§() : int
      {
         return this.§_-Ts§;
      }
      
      public function §_-Gl§() : Number
      {
         return this.§_-NR§;
      }
      
      public function §_-6p§() : int
      {
         return this.§_-gD§;
      }
      
      private function §_-hr§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-SP§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-ms§;
         }
         if(param1 == "POLYGON")
         {
            return §_-ul§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-Nv§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-Zv§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-O-§;
         }
         §_-mR§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-SP§;
      }
      
      public function §_-Tu§() : Array
      {
         return this.§_-2i§;
      }
      
      public function §_-Bm§(param1:Array) : void
      {
         this.§_-2i§ = param1;
      }
      
      public function §_-Dh§() : void
      {
         var _loc1_:Array = this.§_-dv§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-NR§ = _loc3_.x - _loc2_.x;
         this.§_-gD§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-dv§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-2i§)
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
      
      public function §_-NV§() : b2Shape
      {
         var _loc1_:b2CircleShape = null;
         var _loc2_:Array = null;
         var _loc3_:b2PolygonShape = null;
         switch(this.§_-Ts§)
         {
            case §_-ms§:
               _loc1_ = new b2CircleShape();
               _loc1_.§_-Mn§(this.§_-NR§);
               return _loc1_;
            case §_-ul§:
               _loc2_ = this.§_-Tu§();
               _loc3_ = new b2PolygonShape();
               _loc3_.§_-61§(_loc2_,_loc2_.length);
               return _loc3_;
            default:
               return null;
         }
      }
   }
}

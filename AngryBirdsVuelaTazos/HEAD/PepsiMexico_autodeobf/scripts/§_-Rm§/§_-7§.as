package §_-Rm§
{
   import §_-Pu§.b2CircleShape;
   import §_-Pu§.b2PolygonShape;
   import §_-Pu§.b2Shape;
   import §_-bA§.b2Vec2;
   import §_-gM§.§_-yj§;
   
   public class §_-7§
   {
      
      public static const §_-r7§:int = 0;
      
      public static const §_-Sp§:int = 1;
      
      public static const §_-F7§:int = 2;
      
      public static const §_-ia§:int = 3;
      
      public static const §_-DK§:int = 4;
      
      public static const §_-YM§:int = 5;
       
      
      public var mName:String;
      
      public var §_-mC§:int;
      
      public var §_-3Y§:Number;
      
      public var §_-cy§:Number;
      
      public var §_-6m§:Number;
      
      public var §_-bM§:Array = null;
      
      public function §_-7§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-mC§ = this.§_-hT§(param2);
         this.§_-3Y§ = param3;
         this.§_-cy§ = param4;
         this.§_-6m§ = param5;
      }
      
      public function §_-6e§() : int
      {
         return this.§_-mC§;
      }
      
      public function §_-YQ§() : Number
      {
         return this.§_-3Y§;
      }
      
      public function §_-Cy§() : int
      {
         return this.§_-cy§;
      }
      
      private function §_-hT§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-ia§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-DK§;
         }
         if(param1 == "POLYGON")
         {
            return §_-YM§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-r7§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-Sp§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-F7§;
         }
         §_-yj§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-ia§;
      }
      
      public function §_-pH§() : Array
      {
         return this.§_-bM§;
      }
      
      public function §_-YY§(param1:Array) : void
      {
         this.§_-bM§ = param1;
      }
      
      public function §_-CG§() : void
      {
         var _loc1_:Array = this.§_-aC§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-3Y§ = _loc3_.x - _loc2_.x;
         this.§_-cy§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-aC§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-bM§)
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
      
      public function §_-Uj§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§_-mC§)
         {
            case §_-DK§:
               _loc2_ = new b2CircleShape();
               _loc2_.§_-qh§(this.§_-3Y§ * param1);
               return _loc2_;
            case §_-YM§:
               _loc3_ = this.§_-pH§();
               (_loc4_ = new b2PolygonShape()).§_-qU§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§_-xu§();
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

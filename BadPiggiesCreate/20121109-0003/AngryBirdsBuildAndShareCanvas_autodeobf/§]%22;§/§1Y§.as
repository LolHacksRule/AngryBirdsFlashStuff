package §]";§
{
   import §2k§.b2CircleShape;
   import §2k§.b2PolygonShape;
   import §2k§.b2Shape;
   import §6]§.§,"0§;
   import §<!a§.b2Vec2;
   
   public class §1Y§
   {
      
      public static const §=K§:int = 0;
      
      public static const §"!z§:int = 1;
      
      public static const §,!5§:int = 2;
      
      public static const §<2§:int = 3;
      
      public static const §;&§:int = 4;
      
      public static const §0R§:int = 5;
       
      
      public var mName:String;
      
      public var §^!^§:int;
      
      public var §",§:Number;
      
      public var §%"0§:Number;
      
      public var §?T§:Number;
      
      public var §1>§:Array = null;
      
      public function §1Y§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§^!^§ = this.§%W§(param2);
         this.§",§ = param3;
         this.§%"0§ = param4;
         this.§?T§ = param5;
      }
      
      public function §0! §() : int
      {
         return this.§^!^§;
      }
      
      public function §;,§() : Number
      {
         return this.§",§;
      }
      
      public function §=7§() : int
      {
         return this.§%"0§;
      }
      
      private function §%W§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §<2§;
         }
         if(param1 == "CIRCLE")
         {
            return §;&§;
         }
         if(param1 == "POLYGON")
         {
            return §0R§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §=K§;
         }
         if(param1 == "Image_Polygon")
         {
            return §"!z§;
         }
         if(param1 == "Image_Circle")
         {
            return §,!5§;
         }
         §,"0§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §<2§;
      }
      
      public function §=`§() : Array
      {
         return this.§1>§;
      }
      
      public function §<-§(param1:Array) : void
      {
         this.§1>§ = param1;
      }
      
      public function §1!W§() : void
      {
         var _loc1_:Array = this.§&8§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§",§ = _loc3_.x - _loc2_.x;
         this.§%"0§ = _loc3_.y - _loc2_.y;
      }
      
      public function §&8§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§1>§)
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
      
      public function §!Q§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§^!^§)
         {
            case §;&§:
               _loc2_ = new b2CircleShape();
               _loc2_.§`^§(this.§",§ * param1);
               return _loc2_;
            case §0R§:
               _loc3_ = this.§=`§();
               (_loc4_ = new b2PolygonShape()).§?!!§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§`"3§();
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

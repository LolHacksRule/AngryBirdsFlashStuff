package §<!1§
{
   import §2!+§.b2CircleShape;
   import §2!+§.b2PolygonShape;
   import §2!+§.b2Shape;
   import §>H§.b2Vec2;
   import §^_§.§!>§;
   
   public class §2!W§
   {
      
      public static const §5!,§:int = 0;
      
      public static const §%!i§:int = 1;
      
      public static const §,]§:int = 2;
      
      public static const §,%§:int = 3;
      
      public static const §=!i§:int = 4;
      
      public static const §"d§:int = 5;
       
      
      public var mName:String;
      
      public var §6r§:int;
      
      public var §'O§:Number;
      
      public var §!!A§:Number;
      
      public var §]!x§:Number;
      
      public var §9R§:Array = null;
      
      public function §2!W§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§6r§ = this.§=9§(param2);
         this.§'O§ = param3;
         this.§!!A§ = param4;
         this.§]!x§ = param5;
      }
      
      public function §@!P§() : int
      {
         return this.§6r§;
      }
      
      public function §#g§() : Number
      {
         return this.§'O§;
      }
      
      public function §=!q§() : int
      {
         return this.§!!A§;
      }
      
      private function §=9§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §,%§;
         }
         if(param1 == "CIRCLE")
         {
            return §=!i§;
         }
         if(param1 == "POLYGON")
         {
            return §"d§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §5!,§;
         }
         if(param1 == "Image_Polygon")
         {
            return §%!i§;
         }
         if(param1 == "Image_Circle")
         {
            return §,]§;
         }
         §!>§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §,%§;
      }
      
      public function §!M§() : Array
      {
         return this.§9R§;
      }
      
      public function §]!H§(param1:Array) : void
      {
         this.§9R§ = param1;
      }
      
      public function §#!9§() : void
      {
         var _loc1_:Array = this.§%!x§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§'O§ = _loc3_.x - _loc2_.x;
         this.§!!A§ = _loc3_.y - _loc2_.y;
      }
      
      public function §%!x§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§9R§)
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
      
      public function §>!D§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§6r§)
         {
            case §=!i§:
               _loc2_ = new b2CircleShape();
               _loc2_.§[!x§(this.§'O§ * param1);
               return _loc2_;
            case §"d§:
               _loc3_ = this.§!M§();
               (_loc4_ = new b2PolygonShape()).§2`§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§ A§();
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

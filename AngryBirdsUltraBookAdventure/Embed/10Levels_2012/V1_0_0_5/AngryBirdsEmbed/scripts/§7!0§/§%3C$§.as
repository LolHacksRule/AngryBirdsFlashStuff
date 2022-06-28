package §7!0§
{
   import §+!"§.§5!<§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §<$§
   {
      
      public static const §@6§:int = 0;
      
      public static const § ]§:int = 1;
      
      public static const § Q§:int = 2;
      
      public static const §2O§:int = 3;
      
      public static const §]M§:int = 4;
      
      public static const §[!"§:int = 5;
       
      
      public var mName:String;
      
      public var §2! §:int;
      
      public var § l§:Number;
      
      public var §4N§:Number;
      
      public var §]Q§:Number;
      
      public var §!D§:Array = null;
      
      public function §<$§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§2! § = this.§8$§(param2);
         this.§ l§ = param3;
         this.§4N§ = param4;
         this.§]Q§ = param5;
      }
      
      public function § r§() : int
      {
         return this.§2! §;
      }
      
      public function §"!1§() : Number
      {
         return this.§ l§;
      }
      
      public function §,!%§() : int
      {
         return this.§4N§;
      }
      
      private function §8$§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §2O§;
         }
         if(param1 == "CIRCLE")
         {
            return §]M§;
         }
         if(param1 == "POLYGON")
         {
            return §[!"§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §@6§;
         }
         if(param1 == "Image_Polygon")
         {
            return § ]§;
         }
         if(param1 == "Image_Circle")
         {
            return § Q§;
         }
         §5!<§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §2O§;
      }
      
      public function §]X§() : Array
      {
         return this.§!D§;
      }
      
      public function §<+§(param1:Array) : void
      {
         this.§!D§ = param1;
      }
      
      public function §"g§() : void
      {
         var _loc1_:Array = this.§&R§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§ l§ = _loc3_.x - _loc2_.x;
         this.§4N§ = _loc3_.y - _loc2_.y;
      }
      
      public function §&R§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§!D§)
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
      
      public function §,8§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§2! §)
         {
            case §]M§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§ l§ * param1);
               return _loc2_;
            case §[!"§:
               _loc3_ = this.§]X§();
               (_loc4_ = new b2PolygonShape()).SetAsArray(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.GetVertices();
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

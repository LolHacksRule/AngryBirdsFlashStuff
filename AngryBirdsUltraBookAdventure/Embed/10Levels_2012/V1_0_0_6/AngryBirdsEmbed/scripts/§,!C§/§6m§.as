package §,!C§
{
   import §>K§.§9X§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §6m§
   {
      
      public static const §=R§:int = 0;
      
      public static const §]b§:int = 1;
      
      public static const §5Q§:int = 2;
      
      public static const §%e§:int = 3;
      
      public static const §#a§:int = 4;
      
      public static const §8-§:int = 5;
       
      
      public var mName:String;
      
      public var §#!+§:int;
      
      public var §5;§:Number;
      
      public var §>!'§:Number;
      
      public var §,7§:Number;
      
      public var §6!0§:Array = null;
      
      public function §6m§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§#!+§ = this.§;b§(param2);
         this.§5;§ = param3;
         this.§>!'§ = param4;
         this.§,7§ = param5;
      }
      
      public function §,W§() : int
      {
         return this.§#!+§;
      }
      
      public function §9$§() : Number
      {
         return this.§5;§;
      }
      
      public function §8'§() : int
      {
         return this.§>!'§;
      }
      
      private function §;b§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §%e§;
         }
         if(param1 == "CIRCLE")
         {
            return §#a§;
         }
         if(param1 == "POLYGON")
         {
            return §8-§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §=R§;
         }
         if(param1 == "Image_Polygon")
         {
            return §]b§;
         }
         if(param1 == "Image_Circle")
         {
            return §5Q§;
         }
         §9X§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §%e§;
      }
      
      public function §&!-§() : Array
      {
         return this.§6!0§;
      }
      
      public function §4m§(param1:Array) : void
      {
         this.§6!0§ = param1;
      }
      
      public function §-Z§() : void
      {
         var _loc1_:Array = this.§0%§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§5;§ = _loc3_.x - _loc2_.x;
         this.§>!'§ = _loc3_.y - _loc2_.y;
      }
      
      public function §0%§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§6!0§)
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
      
      public function §@I§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§#!+§)
         {
            case §#a§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§5;§ * param1);
               return _loc2_;
            case §8-§:
               _loc3_ = this.§&!-§();
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

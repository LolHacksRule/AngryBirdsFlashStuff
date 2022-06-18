package §!T§
{
   import §9H§.§@M§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §'2§
   {
      
      public static const §7j§:int = 0;
      
      public static const §5!%§:int = 1;
      
      public static const §?!4§:int = 2;
      
      public static const §+o§:int = 3;
      
      public static const §?O§:int = 4;
      
      public static const §#!2§:int = 5;
       
      
      public var mName:String;
      
      public var §]!3§:int;
      
      public var §!0§:Number;
      
      public var §+K§:Number;
      
      public var §=B§:Number;
      
      public var §]o§:Array = null;
      
      public function §'2§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§]!3§ = this.§6!B§(param2);
         this.§!0§ = param3;
         this.§+K§ = param4;
         this.§=B§ = param5;
      }
      
      public function §7b§() : int
      {
         return this.§]!3§;
      }
      
      public function §;K§() : Number
      {
         return this.§!0§;
      }
      
      public function §=^§() : int
      {
         return this.§+K§;
      }
      
      private function §6!B§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §+o§;
         }
         if(param1 == "CIRCLE")
         {
            return §?O§;
         }
         if(param1 == "POLYGON")
         {
            return §#!2§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §7j§;
         }
         if(param1 == "Image_Polygon")
         {
            return §5!%§;
         }
         if(param1 == "Image_Circle")
         {
            return §?!4§;
         }
         §@M§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §+o§;
      }
      
      public function § !?§() : Array
      {
         return this.§]o§;
      }
      
      public function §0q§(param1:Array) : void
      {
         this.§]o§ = param1;
      }
      
      public function §4+§() : void
      {
         var _loc1_:Array = this.§?z§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§!0§ = _loc3_.x - _loc2_.x;
         this.§+K§ = _loc3_.y - _loc2_.y;
      }
      
      public function §?z§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§]o§)
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
      
      public function §&n§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§]!3§)
         {
            case §?O§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§!0§ * param1);
               return _loc2_;
            case §#!2§:
               _loc3_ = this.§ !?§();
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

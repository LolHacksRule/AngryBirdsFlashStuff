package §,Y§
{
   import §2x§.§'!@§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §^!1§
   {
      
      public static const §'"§:int = 0;
      
      public static const §7!+§:int = 1;
      
      public static const §&#§:int = 2;
      
      public static const §`%§:int = 3;
      
      public static const §>V§:int = 4;
      
      public static const §5!D§:int = 5;
       
      
      public var mName:String;
      
      public var § 5§:int;
      
      public var § !;§:Number;
      
      public var §[&§:Number;
      
      public var §1O§:Number;
      
      public var §,@§:Array = null;
      
      public function §^!1§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§ 5§ = this.§]+§(param2);
         this.§ !;§ = param3;
         this.§[&§ = param4;
         this.§1O§ = param5;
      }
      
      public function §^u§() : int
      {
         return this.§ 5§;
      }
      
      public function §#!C§() : Number
      {
         return this.§ !;§;
      }
      
      public function §"R§() : int
      {
         return this.§[&§;
      }
      
      private function §]+§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §`%§;
         }
         if(param1 == "CIRCLE")
         {
            return §>V§;
         }
         if(param1 == "POLYGON")
         {
            return §5!D§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §'"§;
         }
         if(param1 == "Image_Polygon")
         {
            return §7!+§;
         }
         if(param1 == "Image_Circle")
         {
            return §&#§;
         }
         §'!@§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §`%§;
      }
      
      public function §9>§() : Array
      {
         return this.§,@§;
      }
      
      public function §2y§(param1:Array) : void
      {
         this.§,@§ = param1;
      }
      
      public function §@b§() : void
      {
         var _loc1_:Array = this.§4w§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§ !;§ = _loc3_.x - _loc2_.x;
         this.§[&§ = _loc3_.y - _loc2_.y;
      }
      
      public function §4w§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§,@§)
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
      
      public function § S§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§ 5§)
         {
            case §>V§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§ !;§ * param1);
               return _loc2_;
            case §5!D§:
               _loc3_ = this.§9>§();
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

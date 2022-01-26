package §2!"§
{
   import §'m§.§^S§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §;,§
   {
      
      public static const §3!=§:int = 0;
      
      public static const §+_§:int = 1;
      
      public static const §<!9§:int = 2;
      
      public static const §6P§:int = 3;
      
      public static const §,G§:int = 4;
      
      public static const §!k§:int = 5;
       
      
      public var mName:String;
      
      public var §>K§:int;
      
      public var §6#§:Number;
      
      public var §5m§:Number;
      
      public var §-t§:Number;
      
      public var §'6§:Array = null;
      
      public function §;,§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§>K§ = this.§#H§(param2);
         this.§6#§ = param3;
         this.§5m§ = param4;
         this.§-t§ = param5;
      }
      
      public function §28§() : int
      {
         return this.§>K§;
      }
      
      public function §'1§() : Number
      {
         return this.§6#§;
      }
      
      public function §0!>§() : int
      {
         return this.§5m§;
      }
      
      private function §#H§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §6P§;
         }
         if(param1 == "CIRCLE")
         {
            return §,G§;
         }
         if(param1 == "POLYGON")
         {
            return §!k§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §3!=§;
         }
         if(param1 == "Image_Polygon")
         {
            return §+_§;
         }
         if(param1 == "Image_Circle")
         {
            return §<!9§;
         }
         §^S§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §6P§;
      }
      
      public function §'!C§() : Array
      {
         return this.§'6§;
      }
      
      public function §86§(param1:Array) : void
      {
         this.§'6§ = param1;
      }
      
      public function §'H§() : void
      {
         var _loc1_:Array = this.§6U§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§6#§ = _loc3_.x - _loc2_.x;
         this.§5m§ = _loc3_.y - _loc2_.y;
      }
      
      public function §6U§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§'6§)
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
      
      public function §>§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§>K§)
         {
            case §,G§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§6#§ * param1);
               return _loc2_;
            case §!k§:
               _loc3_ = this.§'!C§();
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

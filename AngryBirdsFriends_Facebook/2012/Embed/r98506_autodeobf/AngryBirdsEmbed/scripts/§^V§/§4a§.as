package §^V§
{
   import §-p§.§&2§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §4a§
   {
      
      public static const §<6§:int = 0;
      
      public static const §3!8§:int = 1;
      
      public static const §%B§:int = 2;
      
      public static const §>!D§:int = 3;
      
      public static const §7!6§:int = 4;
      
      public static const §9!C§:int = 5;
       
      
      public var mName:String;
      
      public var §=k§:int;
      
      public var §<!3§:Number;
      
      public var §5u§:Number;
      
      public var §?!F§:Number;
      
      public var §2T§:Array = null;
      
      public function §4a§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§=k§ = this.§0D§(param2);
         this.§<!3§ = param3;
         this.§5u§ = param4;
         this.§?!F§ = param5;
      }
      
      public function §2m§() : int
      {
         return this.§=k§;
      }
      
      public function §;!J§() : Number
      {
         return this.§<!3§;
      }
      
      public function §9O§() : int
      {
         return this.§5u§;
      }
      
      private function §0D§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §>!D§;
         }
         if(param1 == "CIRCLE")
         {
            return §7!6§;
         }
         if(param1 == "POLYGON")
         {
            return §9!C§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §<6§;
         }
         if(param1 == "Image_Polygon")
         {
            return §3!8§;
         }
         if(param1 == "Image_Circle")
         {
            return §%B§;
         }
         §&2§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §>!D§;
      }
      
      public function §3!§() : Array
      {
         return this.§2T§;
      }
      
      public function §;@§(param1:Array) : void
      {
         this.§2T§ = param1;
      }
      
      public function §[O§() : void
      {
         var _loc1_:Array = this.§%&§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§<!3§ = _loc3_.x - _loc2_.x;
         this.§5u§ = _loc3_.y - _loc2_.y;
      }
      
      public function §%&§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§2T§)
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
      
      public function §?r§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§=k§)
         {
            case §7!6§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§<!3§ * param1);
               return _loc2_;
            case §9!C§:
               _loc3_ = this.§3!§();
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

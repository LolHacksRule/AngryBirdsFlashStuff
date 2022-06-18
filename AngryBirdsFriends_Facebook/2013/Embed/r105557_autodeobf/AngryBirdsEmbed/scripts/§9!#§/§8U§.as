package §9!#§
{
   import §?!8§.§2>§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §8U§
   {
      
      public static const §-C§:int = 0;
      
      public static const §>g§:int = 1;
      
      public static const §+v§:int = 2;
      
      public static const §`y§:int = 3;
      
      public static const §?!A§:int = 4;
      
      public static const §8!N§:int = 5;
       
      
      public var mName:String;
      
      public var §^!H§:int;
      
      public var §<w§:Number;
      
      public var §"!?§:Number;
      
      public var §!<§:Number;
      
      public var §^!4§:Array = null;
      
      public function §8U§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§^!H§ = this.§+!§(param2);
         this.§<w§ = param3;
         this.§"!?§ = param4;
         this.§!<§ = param5;
      }
      
      public function §9!6§() : int
      {
         return this.§^!H§;
      }
      
      public function §[!3§() : Number
      {
         return this.§<w§;
      }
      
      public function §>S§() : int
      {
         return this.§"!?§;
      }
      
      private function §+!§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §`y§;
         }
         if(param1 == "CIRCLE")
         {
            return §?!A§;
         }
         if(param1 == "POLYGON")
         {
            return §8!N§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §-C§;
         }
         if(param1 == "Image_Polygon")
         {
            return §>g§;
         }
         if(param1 == "Image_Circle")
         {
            return §+v§;
         }
         §2>§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §`y§;
      }
      
      public function §null §() : Array
      {
         return this.§^!4§;
      }
      
      public function §,_§(param1:Array) : void
      {
         this.§^!4§ = param1;
      }
      
      public function §&-§() : void
      {
         var _loc1_:Array = this.§[k§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§<w§ = _loc3_.x - _loc2_.x;
         this.§"!?§ = _loc3_.y - _loc2_.y;
      }
      
      public function §[k§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§^!4§)
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
      
      public function §']§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§^!H§)
         {
            case §?!A§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§<w§ * param1);
               return _loc2_;
            case §8!N§:
               _loc3_ = this.§null §();
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

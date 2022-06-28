package §^!L§
{
   import §3a§.§7!+§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §"c§
   {
      
      public static const §=!,§:int = 0;
      
      public static const §7%§:int = 1;
      
      public static const §7D§:int = 2;
      
      public static const §3!C§:int = 3;
      
      public static const §,p§:int = 4;
      
      public static const §"!K§:int = 5;
       
      
      public var mName:String;
      
      public var §3<§:int;
      
      public var §[s§:Number;
      
      public var §8!&§:Number;
      
      public var §%!L§:Number;
      
      public var §&!#§:Array = null;
      
      public function §"c§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§3<§ = this.§#!'§(param2);
         this.§[s§ = param3;
         this.§8!&§ = param4;
         this.§%!L§ = param5;
      }
      
      public function §3@§() : int
      {
         return this.§3<§;
      }
      
      public function §&1§() : Number
      {
         return this.§[s§;
      }
      
      public function §'6§() : int
      {
         return this.§8!&§;
      }
      
      private function §#!'§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §3!C§;
         }
         if(param1 == "CIRCLE")
         {
            return §,p§;
         }
         if(param1 == "POLYGON")
         {
            return §"!K§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §=!,§;
         }
         if(param1 == "Image_Polygon")
         {
            return §7%§;
         }
         if(param1 == "Image_Circle")
         {
            return §7D§;
         }
         §7!+§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §3!C§;
      }
      
      public function §&v§() : Array
      {
         return this.§&!#§;
      }
      
      public function §[[§(param1:Array) : void
      {
         this.§&!#§ = param1;
      }
      
      public function §9%§() : void
      {
         var _loc1_:Array = this.§+#§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§[s§ = _loc3_.x - _loc2_.x;
         this.§8!&§ = _loc3_.y - _loc2_.y;
      }
      
      public function §+#§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§&!#§)
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
      
      public function §?d§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§3<§)
         {
            case §,p§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§[s§ * param1);
               return _loc2_;
            case §"!K§:
               _loc3_ = this.§&v§();
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

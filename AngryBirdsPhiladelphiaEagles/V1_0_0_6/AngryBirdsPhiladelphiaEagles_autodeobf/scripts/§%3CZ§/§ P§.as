package §<Z§
{
   import §3!O§.§5q§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class § P§
   {
      
      public static const §&!<§:int = 0;
      
      public static const §7&§:int = 1;
      
      public static const §%!!§:int = 2;
      
      public static const §<!D§:int = 3;
      
      public static const §0!+§:int = 4;
      
      public static const §3-§:int = 5;
       
      
      public var mName:String;
      
      public var §!"§:int;
      
      public var §]!E§:Number;
      
      public var §+?§:Number;
      
      public var §6!=§:Number;
      
      public var §6Q§:Array = null;
      
      public function § P§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§!"§ = this.§,#§(param2);
         this.§]!E§ = param3;
         this.§+?§ = param4;
         this.§6!=§ = param5;
      }
      
      public function §!j§() : int
      {
         return this.§!"§;
      }
      
      public function §;O§() : Number
      {
         return this.§]!E§;
      }
      
      public function §-!K§() : int
      {
         return this.§+?§;
      }
      
      private function §,#§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §<!D§;
         }
         if(param1 == "CIRCLE")
         {
            return §0!+§;
         }
         if(param1 == "POLYGON")
         {
            return §3-§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §&!<§;
         }
         if(param1 == "Image_Polygon")
         {
            return §7&§;
         }
         if(param1 == "Image_Circle")
         {
            return §%!!§;
         }
         §5q§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §<!D§;
      }
      
      public function §3%§() : Array
      {
         return this.§6Q§;
      }
      
      public function §>R§(param1:Array) : void
      {
         this.§6Q§ = param1;
      }
      
      public function §,e§() : void
      {
         var _loc1_:Array = this.§!!7§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§]!E§ = _loc3_.x - _loc2_.x;
         this.§+?§ = _loc3_.y - _loc2_.y;
      }
      
      public function §!!7§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§6Q§)
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
      
      public function §#!M§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§!"§)
         {
            case §0!+§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§]!E§ * param1);
               return _loc2_;
            case §3-§:
               _loc3_ = this.§3%§();
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

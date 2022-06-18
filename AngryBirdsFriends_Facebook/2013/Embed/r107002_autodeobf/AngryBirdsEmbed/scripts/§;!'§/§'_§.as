package §;!'§
{
   import §@!;§.§!!=§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §'_§
   {
      
      public static const §"p§:int = 0;
      
      public static const §+8§:int = 1;
      
      public static const §6e§:int = 2;
      
      public static const §1<§:int = 3;
      
      public static const §]!"§:int = 4;
      
      public static const §use §:int = 5;
       
      
      public var mName:String;
      
      public var § D§:int;
      
      public var §'o§:Number;
      
      public var §+L§:Number;
      
      public var §^M§:Number;
      
      public var §9w§:Array = null;
      
      public function §'_§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§ D§ = this.§!^§(param2);
         this.§'o§ = param3;
         this.§+L§ = param4;
         this.§^M§ = param5;
      }
      
      public function §4r§() : int
      {
         return this.§ D§;
      }
      
      public function §6!B§() : Number
      {
         return this.§'o§;
      }
      
      public function § E§() : int
      {
         return this.§+L§;
      }
      
      private function §!^§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §1<§;
         }
         if(param1 == "CIRCLE")
         {
            return §]!"§;
         }
         if(param1 == "POLYGON")
         {
            return §use §;
         }
         if(param1 == "Image_Rectangle")
         {
            return §"p§;
         }
         if(param1 == "Image_Polygon")
         {
            return §+8§;
         }
         if(param1 == "Image_Circle")
         {
            return §6e§;
         }
         §!!=§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §1<§;
      }
      
      public function §1p§() : Array
      {
         return this.§9w§;
      }
      
      public function §06§(param1:Array) : void
      {
         this.§9w§ = param1;
      }
      
      public function §=<§() : void
      {
         var _loc1_:Array = this.§]!<§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§'o§ = _loc3_.x - _loc2_.x;
         this.§+L§ = _loc3_.y - _loc2_.y;
      }
      
      public function §]!<§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§9w§)
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
      
      public function §@C§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§ D§)
         {
            case §]!"§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§'o§ * param1);
               return _loc2_;
            case §use §:
               _loc3_ = this.§1p§();
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

package §!c§
{
   import §2§.§0!<§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §<q§
   {
      
      public static const §8Z§:int = 0;
      
      public static const §2!E§:int = 1;
      
      public static const §38§:int = 2;
      
      public static const §?!§:int = 3;
      
      public static const §8!3§:int = 4;
      
      public static const §,j§:int = 5;
       
      
      public var mName:String;
      
      public var § !B§:int;
      
      public var §9Q§:Number;
      
      public var §9p§:Number;
      
      public var §2z§:Number;
      
      public var §<[§:Array = null;
      
      public function §<q§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§ !B§ = this.§26§(param2);
         this.§9Q§ = param3;
         this.§9p§ = param4;
         this.§2z§ = param5;
      }
      
      public function §@!H§() : int
      {
         return this.§ !B§;
      }
      
      public function §`2§() : Number
      {
         return this.§9Q§;
      }
      
      public function §[h§() : int
      {
         return this.§9p§;
      }
      
      private function §26§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §?!§;
         }
         if(param1 == "CIRCLE")
         {
            return §8!3§;
         }
         if(param1 == "POLYGON")
         {
            return §,j§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §8Z§;
         }
         if(param1 == "Image_Polygon")
         {
            return §2!E§;
         }
         if(param1 == "Image_Circle")
         {
            return §38§;
         }
         §0!<§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §?!§;
      }
      
      public function §6! §() : Array
      {
         return this.§<[§;
      }
      
      public function §!!H§(param1:Array) : void
      {
         this.§<[§ = param1;
      }
      
      public function §+!@§() : void
      {
         var _loc1_:Array = this.§'C§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§9Q§ = _loc3_.x - _loc2_.x;
         this.§9p§ = _loc3_.y - _loc2_.y;
      }
      
      public function §'C§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§<[§)
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
      
      public function §#F§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§ !B§)
         {
            case §8!3§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§9Q§ * param1);
               return _loc2_;
            case §,j§:
               _loc3_ = this.§6! §();
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

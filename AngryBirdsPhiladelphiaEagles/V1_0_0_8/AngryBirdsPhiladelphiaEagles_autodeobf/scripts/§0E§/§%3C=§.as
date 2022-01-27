package §0E§
{
   import §"1§.§3'§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §<=§
   {
      
      public static const §"§:int = 0;
      
      public static const §1F§:int = 1;
      
      public static const §=f§:int = 2;
      
      public static const §71§:int = 3;
      
      public static const §=R§:int = 4;
      
      public static const §[g§:int = 5;
       
      
      public var mName:String;
      
      public var §[i§:int;
      
      public var §0!A§:Number;
      
      public var §3>§:Number;
      
      public var §,!2§:Number;
      
      public var §-d§:Array = null;
      
      public function §<=§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§[i§ = this.§>E§(param2);
         this.§0!A§ = param3;
         this.§3>§ = param4;
         this.§,!2§ = param5;
      }
      
      public function § K§() : int
      {
         return this.§[i§;
      }
      
      public function §8!;§() : Number
      {
         return this.§0!A§;
      }
      
      public function §`!B§() : int
      {
         return this.§3>§;
      }
      
      private function §>E§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §71§;
         }
         if(param1 == "CIRCLE")
         {
            return §=R§;
         }
         if(param1 == "POLYGON")
         {
            return §[g§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §"§;
         }
         if(param1 == "Image_Polygon")
         {
            return §1F§;
         }
         if(param1 == "Image_Circle")
         {
            return §=f§;
         }
         §3'§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §71§;
      }
      
      public function §]!=§() : Array
      {
         return this.§-d§;
      }
      
      public function §^!6§(param1:Array) : void
      {
         this.§-d§ = param1;
      }
      
      public function §@3§() : void
      {
         var _loc1_:Array = this.§3W§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§0!A§ = _loc3_.x - _loc2_.x;
         this.§3>§ = _loc3_.y - _loc2_.y;
      }
      
      public function §3W§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§-d§)
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
      
      public function §&?§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§[i§)
         {
            case §=R§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§0!A§ * param1);
               return _loc2_;
            case §[g§:
               _loc3_ = this.§]!=§();
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

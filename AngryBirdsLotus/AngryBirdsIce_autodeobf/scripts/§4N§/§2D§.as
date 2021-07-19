package §4N§
{
   import §;8§.§3f§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §2D§
   {
      
      public static const §#!$§:int = 0;
      
      public static const §`#§:int = 1;
      
      public static const §@i§:int = 2;
      
      public static const §+X§:int = 3;
      
      public static const §>!$§:int = 4;
      
      public static const §&W§:int = 5;
       
      
      public var mName:String;
      
      public var §-'§:int;
      
      public var §?!#§:Number;
      
      public var §26§:Number;
      
      public var §6!D§:Number;
      
      public var §+@§:Array = null;
      
      public function §2D§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§-'§ = this.§7A§(param2);
         this.§?!#§ = param3;
         this.§26§ = param4;
         this.§6!D§ = param5;
      }
      
      public function §0V§() : int
      {
         return this.§-'§;
      }
      
      public function §5!E§() : Number
      {
         return this.§?!#§;
      }
      
      public function §^C§() : int
      {
         return this.§26§;
      }
      
      private function §7A§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §+X§;
         }
         if(param1 == "CIRCLE")
         {
            return §>!$§;
         }
         if(param1 == "POLYGON")
         {
            return §&W§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §#!$§;
         }
         if(param1 == "Image_Polygon")
         {
            return §`#§;
         }
         if(param1 == "Image_Circle")
         {
            return §@i§;
         }
         §3f§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §+X§;
      }
      
      public function §9H§() : Array
      {
         return this.§+@§;
      }
      
      public function §[7§(param1:Array) : void
      {
         this.§+@§ = param1;
      }
      
      public function §<!,§() : void
      {
         var _loc1_:Array = this.§>! §();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§?!#§ = _loc3_.x - _loc2_.x;
         this.§26§ = _loc3_.y - _loc2_.y;
      }
      
      public function §>! §() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§+@§)
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
      
      public function §7!;§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§-'§)
         {
            case §>!$§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§?!#§ * param1);
               return _loc2_;
            case §&W§:
               _loc3_ = this.§9H§();
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

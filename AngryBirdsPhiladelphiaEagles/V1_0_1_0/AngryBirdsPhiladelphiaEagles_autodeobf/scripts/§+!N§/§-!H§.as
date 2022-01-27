package §+!N§
{
   import §-!5§.§5s§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §-!H§
   {
      
      public static const §>Y§:int = 0;
      
      public static const §#m§:int = 1;
      
      public static const §2u§:int = 2;
      
      public static const §"G§:int = 3;
      
      public static const §;!2§:int = 4;
      
      public static const §&!$§:int = 5;
       
      
      public var mName:String;
      
      public var §9o§:int;
      
      public var §#!6§:Number;
      
      public var §&r§:Number;
      
      public var §9f§:Number;
      
      public var §=#§:Array = null;
      
      public function §-!H§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§9o§ = this.§+b§(param2);
         this.§#!6§ = param3;
         this.§&r§ = param4;
         this.§9f§ = param5;
      }
      
      public function §?x§() : int
      {
         return this.§9o§;
      }
      
      public function §+!P§() : Number
      {
         return this.§#!6§;
      }
      
      public function §[m§() : int
      {
         return this.§&r§;
      }
      
      private function §+b§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §"G§;
         }
         if(param1 == "CIRCLE")
         {
            return §;!2§;
         }
         if(param1 == "POLYGON")
         {
            return §&!$§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §>Y§;
         }
         if(param1 == "Image_Polygon")
         {
            return §#m§;
         }
         if(param1 == "Image_Circle")
         {
            return §2u§;
         }
         §5s§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §"G§;
      }
      
      public function § S§() : Array
      {
         return this.§=#§;
      }
      
      public function §1!K§(param1:Array) : void
      {
         this.§=#§ = param1;
      }
      
      public function §'K§() : void
      {
         var _loc1_:Array = this.§6x§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§#!6§ = _loc3_.x - _loc2_.x;
         this.§&r§ = _loc3_.y - _loc2_.y;
      }
      
      public function §6x§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§=#§)
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
      
      public function §-"§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§9o§)
         {
            case §;!2§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§#!6§ * param1);
               return _loc2_;
            case §&!$§:
               _loc3_ = this.§ S§();
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

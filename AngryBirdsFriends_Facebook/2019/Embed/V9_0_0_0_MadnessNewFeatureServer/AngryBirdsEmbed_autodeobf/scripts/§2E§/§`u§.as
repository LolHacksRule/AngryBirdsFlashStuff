package §2E§
{
   import §'6§.§?!L§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §`u§
   {
      
      public static const §<s§:int = 0;
      
      public static const §'!@§:int = 1;
      
      public static const §@$§:int = 2;
      
      public static const §4!&§:int = 3;
      
      public static const § q§:int = 4;
      
      public static const §&!+§:int = 5;
       
      
      public var mName:String;
      
      public var §?!I§:int;
      
      public var §?U§:Number;
      
      public var §continue§:Number;
      
      public var §&d§:Number;
      
      public var §>z§:Array = null;
      
      public function §`u§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§?!I§ = this.§`O§(param2);
         this.§?U§ = param3;
         this.§continue§ = param4;
         this.§&d§ = param5;
      }
      
      public function §@Y§() : int
      {
         return this.§?!I§;
      }
      
      public function §&!<§() : Number
      {
         return this.§?U§;
      }
      
      public function §13§() : int
      {
         return this.§continue§;
      }
      
      private function §`O§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §4!&§;
         }
         if(param1 == "CIRCLE")
         {
            return § q§;
         }
         if(param1 == "POLYGON")
         {
            return §&!+§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §<s§;
         }
         if(param1 == "Image_Polygon")
         {
            return §'!@§;
         }
         if(param1 == "Image_Circle")
         {
            return §@$§;
         }
         §?!L§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §4!&§;
      }
      
      public function §##§() : Array
      {
         return this.§>z§;
      }
      
      public function §8!D§(param1:Array) : void
      {
         this.§>z§ = param1;
      }
      
      public function §9Y§() : void
      {
         var _loc1_:Array = this.§9;§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§?U§ = _loc3_.x - _loc2_.x;
         this.§continue§ = _loc3_.y - _loc2_.y;
      }
      
      public function §9;§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§>z§)
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
      
      public function §67§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§?!I§)
         {
            case § q§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§?U§ * param1);
               return _loc2_;
            case §&!+§:
               _loc3_ = this.§##§();
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

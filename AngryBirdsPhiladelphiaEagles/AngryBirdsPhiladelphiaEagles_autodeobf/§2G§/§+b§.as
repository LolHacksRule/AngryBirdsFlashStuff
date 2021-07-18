package §2G§
{
   import §`K§.§ L§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §+b§
   {
      
      public static const §2k§:int = 0;
      
      public static const §^!=§:int = 1;
      
      public static const §'j§:int = 2;
      
      public static const § do§:int = 3;
      
      public static const §%<§:int = 4;
      
      public static const §'J§:int = 5;
       
      
      public var mName:String;
      
      public var §6H§:int;
      
      public var §6! §:Number;
      
      public var §@g§:Number;
      
      public var §]4§:Number;
      
      public var §'$§:Array = null;
      
      public function §+b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§6H§ = this.§`w§(param2);
         this.§6! § = param3;
         this.§@g§ = param4;
         this.§]4§ = param5;
      }
      
      public function §5L§() : int
      {
         return this.§6H§;
      }
      
      public function §[k§() : Number
      {
         return this.§6! §;
      }
      
      public function §-I§() : int
      {
         return this.§@g§;
      }
      
      private function §`w§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return § do§;
         }
         if(param1 == "CIRCLE")
         {
            return §%<§;
         }
         if(param1 == "POLYGON")
         {
            return §'J§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §2k§;
         }
         if(param1 == "Image_Polygon")
         {
            return §^!=§;
         }
         if(param1 == "Image_Circle")
         {
            return §'j§;
         }
         § L§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return § do§;
      }
      
      public function §'! §() : Array
      {
         return this.§'$§;
      }
      
      public function §]6§(param1:Array) : void
      {
         this.§'$§ = param1;
      }
      
      public function §,p§() : void
      {
         var _loc1_:Array = this.§`!#§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§6! § = _loc3_.x - _loc2_.x;
         this.§@g§ = _loc3_.y - _loc2_.y;
      }
      
      public function §`!#§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§'$§)
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
      
      public function §3@§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§6H§)
         {
            case §%<§:
               _loc2_ = new b2CircleShape();
               _loc2_.SetRadius(this.§6! § * param1);
               return _loc2_;
            case §'J§:
               _loc3_ = this.§'! §();
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

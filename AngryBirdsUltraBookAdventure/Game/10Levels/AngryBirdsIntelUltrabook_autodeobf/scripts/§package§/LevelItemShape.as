package §package§
{
   import §0!3§.b2CircleShape;
   import §0!3§.b2PolygonShape;
   import §0!3§.b2Shape;
   import §<u§.Log;
   import §>!8§.b2Vec2;
   
   public class LevelItemShape
   {
      
      public static const §@!h§:int = 0;
      
      public static const §5b§:int = 1;
      
      public static const §?"§:int = 2;
      
      public static const §7!7§:int = 3;
      
      public static const §1<§:int = 4;
      
      public static const §!!&§:int = 5;
       
      
      public var mName:String;
      
      public var §&! §:int;
      
      public var §,<§:Number;
      
      public var §5,§:Number;
      
      public var §0!H§:Number;
      
      public var §^!M§:Array = null;
      
      public function LevelItemShape(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§&! § = this.§ !]§(param2);
         this.§,<§ = param3;
         this.§5,§ = param4;
         this.§0!H§ = param5;
      }
      
      public function §1]§() : int
      {
         return this.§&! §;
      }
      
      public function §,?§() : Number
      {
         return this.§,<§;
      }
      
      public function §<!g§() : int
      {
         return this.§5,§;
      }
      
      private function § !]§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §7!7§;
         }
         if(param1 == "CIRCLE")
         {
            return §1<§;
         }
         if(param1 == "POLYGON")
         {
            return §!!&§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §@!h§;
         }
         if(param1 == "Image_Polygon")
         {
            return §5b§;
         }
         if(param1 == "Image_Circle")
         {
            return §?"§;
         }
         Log.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §7!7§;
      }
      
      public function §?!0§() : Array
      {
         return this.§^!M§;
      }
      
      public function § !A§(param1:Array) : void
      {
         this.§^!M§ = param1;
      }
      
      public function §;$§() : void
      {
         var _loc1_:Array = this.§7P§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§,<§ = _loc3_.x - _loc2_.x;
         this.§5,§ = _loc3_.y - _loc2_.y;
      }
      
      public function §7P§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§^!M§)
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
      
      public function §=p§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§&! §)
         {
            case §1<§:
               _loc2_ = new b2CircleShape();
               _loc2_.§2!Y§(this.§,<§ * param1);
               return _loc2_;
            case §!!&§:
               _loc3_ = this.§?!0§();
               _loc4_ = new b2PolygonShape();
               _loc4_.§@s§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§64§();
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

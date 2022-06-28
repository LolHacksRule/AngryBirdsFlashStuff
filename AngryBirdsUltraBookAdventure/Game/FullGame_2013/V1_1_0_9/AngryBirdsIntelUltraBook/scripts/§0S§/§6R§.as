package §0S§
{
   import §&H§.b2Vec2;
   import §1!B§.§<m§;
   import §3b§.b2CircleShape;
   import §3b§.b2PolygonShape;
   import §3b§.b2Shape;
   
   public class §6R§
   {
      
      public static const §6m§:int = 0;
      
      public static const §,R§:int = 1;
      
      public static const §[!a§:int = 2;
      
      public static const §&!'§:int = 3;
      
      public static const §9!Z§:int = 4;
      
      public static const §#""§:int = 5;
       
      
      public var mName:String;
      
      public var §0>§:int;
      
      public var §3!8§:Number;
      
      public var §0!Q§:Number;
      
      public var §8!M§:Number;
      
      public var §[!u§:Array = null;
      
      public function §6R§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§0>§ = this.§`!1§(param2);
         this.§3!8§ = param3;
         this.§0!Q§ = param4;
         this.§8!M§ = param5;
      }
      
      public function §%!>§() : int
      {
         return this.§0>§;
      }
      
      public function §]k§() : Number
      {
         return this.§3!8§;
      }
      
      public function §%"#§() : int
      {
         return this.§0!Q§;
      }
      
      private function §`!1§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §&!'§;
         }
         if(param1 == "CIRCLE")
         {
            return §9!Z§;
         }
         if(param1 == "POLYGON")
         {
            return §#""§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §6m§;
         }
         if(param1 == "Image_Polygon")
         {
            return §,R§;
         }
         if(param1 == "Image_Circle")
         {
            return §[!a§;
         }
         §<m§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §&!'§;
      }
      
      public function §!!>§() : Array
      {
         return this.§[!u§;
      }
      
      public function §6!O§(param1:Array) : void
      {
         this.§[!u§ = param1;
      }
      
      public function §+!k§() : void
      {
         var _loc1_:Array = this.§4!6§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§3!8§ = _loc3_.x - _loc2_.x;
         this.§0!Q§ = _loc3_.y - _loc2_.y;
      }
      
      public function §4!6§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§[!u§)
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
      
      public function §'!k§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§0>§)
         {
            case §9!Z§:
               _loc2_ = new b2CircleShape();
               _loc2_.§8&§(this.§3!8§ * param1);
               return _loc2_;
            case §#""§:
               _loc3_ = this.§!!>§();
               (_loc4_ = new b2PolygonShape()).§<,§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§1!l§();
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

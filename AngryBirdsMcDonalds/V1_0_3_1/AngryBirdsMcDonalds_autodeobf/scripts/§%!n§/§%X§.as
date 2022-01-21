package §%!n§
{
   import §0,§.b2Vec2;
   import §5K§.§[C§;
   import §8!b§.b2CircleShape;
   import §8!b§.b2PolygonShape;
   import §8!b§.b2Shape;
   
   public class §%X§
   {
      
      public static const §+!f§:int = 0;
      
      public static const §>8§:int = 1;
      
      public static const §use§:int = 2;
      
      public static const §[z§:int = 3;
      
      public static const §<!F§:int = 4;
      
      public static const §@Q§:int = 5;
       
      
      public var mName:String;
      
      public var §2!&§:int;
      
      public var §+![§:Number;
      
      public var §]d§:Number;
      
      public var §'h§:Number;
      
      public var §&`§:Array = null;
      
      public function §%X§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§2!&§ = this.§@!Z§(param2);
         this.§+![§ = param3;
         this.§]d§ = param4;
         this.§'h§ = param5;
      }
      
      public function § !`§() : int
      {
         return this.§2!&§;
      }
      
      public function §``§() : Number
      {
         return this.§+![§;
      }
      
      public function §^!h§() : int
      {
         return this.§]d§;
      }
      
      private function §@!Z§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §[z§;
         }
         if(param1 == "CIRCLE")
         {
            return §<!F§;
         }
         if(param1 == "POLYGON")
         {
            return §@Q§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §+!f§;
         }
         if(param1 == "Image_Polygon")
         {
            return §>8§;
         }
         if(param1 == "Image_Circle")
         {
            return §use§;
         }
         §[C§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §[z§;
      }
      
      public function §&!a§() : Array
      {
         return this.§&`§;
      }
      
      public function §=f§(param1:Array) : void
      {
         this.§&`§ = param1;
      }
      
      public function §%!Z§() : void
      {
         var _loc1_:Array = this.§&!S§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§+![§ = _loc3_.x - _loc2_.x;
         this.§]d§ = _loc3_.y - _loc2_.y;
      }
      
      public function §&!S§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§&`§)
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
      
      public function §`!§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§2!&§)
         {
            case §<!F§:
               _loc2_ = new b2CircleShape();
               _loc2_.§`!Y§(this.§+![§ * param1);
               return _loc2_;
            case §@Q§:
               _loc3_ = this.§&!a§();
               (_loc4_ = new b2PolygonShape()).§6j§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§^P§();
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

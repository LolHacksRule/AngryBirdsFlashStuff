package §=%§
{
   import §+!d§.b2CircleShape;
   import §+!d§.b2PolygonShape;
   import §+!d§.b2Shape;
   import §7F§.b2Vec2;
   import §[x§.§%3§;
   
   public class §&-§
   {
      
      public static const §3!D§:int = 0;
      
      public static const §=!+§:int = 1;
      
      public static const §^"1§:int = 2;
      
      public static const §@!Y§:int = 3;
      
      public static const §9!m§:int = 4;
      
      public static const §`!Z§:int = 5;
       
      
      public var mName:String;
      
      public var §79§:int;
      
      public var §=!c§:Number;
      
      public var §+B§:Number;
      
      public var §#!#§:Number;
      
      public var §]z§:Array = null;
      
      public function §&-§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§79§ = this.§1A§(param2);
         this.§=!c§ = param3;
         this.§+B§ = param4;
         this.§#!#§ = param5;
      }
      
      public function §<L§() : int
      {
         return this.§79§;
      }
      
      public function §9!T§() : Number
      {
         return this.§=!c§;
      }
      
      public function §`n§() : int
      {
         return this.§+B§;
      }
      
      private function §1A§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §@!Y§;
         }
         if(param1 == "CIRCLE")
         {
            return §9!m§;
         }
         if(param1 == "POLYGON")
         {
            return §`!Z§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §3!D§;
         }
         if(param1 == "Image_Polygon")
         {
            return §=!+§;
         }
         if(param1 == "Image_Circle")
         {
            return §^"1§;
         }
         §%3§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §@!Y§;
      }
      
      public function §-!r§() : Array
      {
         return this.§]z§;
      }
      
      public function §6![§(param1:Array) : void
      {
         this.§]z§ = param1;
      }
      
      public function §][§() : void
      {
         var _loc1_:Array = this.§@!Z§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§=!c§ = _loc3_.x - _loc2_.x;
         this.§+B§ = _loc3_.y - _loc2_.y;
      }
      
      public function §@!Z§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§]z§)
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
      
      public function §else §(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§79§)
         {
            case §9!m§:
               _loc2_ = new b2CircleShape();
               _loc2_.§8!U§(this.§=!c§ * param1);
               return _loc2_;
            case §`!Z§:
               _loc3_ = this.§-!r§();
               (_loc4_ = new b2PolygonShape()).§5!Z§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§`"7§();
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

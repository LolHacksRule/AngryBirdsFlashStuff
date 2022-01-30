package §%!<§
{
   import §2!Q§.b2CircleShape;
   import §2!Q§.b2PolygonShape;
   import §2!Q§.b2Shape;
   import §4u§.§<!L§;
   import §9v§.b2Vec2;
   
   public class §`f§
   {
      
      public static const §@V§:int = 0;
      
      public static const §"K§:int = 1;
      
      public static const §get §:int = 2;
      
      public static const §@!0§:int = 3;
      
      public static const §`,§:int = 4;
      
      public static const §7" §:int = 5;
       
      
      public var mName:String;
      
      public var §?X§:int;
      
      public var §=_§:Number;
      
      public var §!,§:Number;
      
      public var §-&§:Number;
      
      public var §3!^§:Array = null;
      
      public function §`f§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§?X§ = this.§1N§(param2);
         this.§=_§ = param3;
         this.§!,§ = param4;
         this.§-&§ = param5;
      }
      
      public function §9,§() : int
      {
         return this.§?X§;
      }
      
      public function §%!Y§() : Number
      {
         return this.§=_§;
      }
      
      public function §0!R§() : int
      {
         return this.§!,§;
      }
      
      private function §1N§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §@!0§;
         }
         if(param1 == "CIRCLE")
         {
            return §`,§;
         }
         if(param1 == "POLYGON")
         {
            return §7" §;
         }
         if(param1 == "Image_Rectangle")
         {
            return §@V§;
         }
         if(param1 == "Image_Polygon")
         {
            return §"K§;
         }
         if(param1 == "Image_Circle")
         {
            return §get §;
         }
         §<!L§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §@!0§;
      }
      
      public function §?!a§() : Array
      {
         return this.§3!^§;
      }
      
      public function §&4§(param1:Array) : void
      {
         this.§3!^§ = param1;
      }
      
      public function §>M§() : void
      {
         var _loc1_:Array = this.§>!Q§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§=_§ = _loc3_.x - _loc2_.x;
         this.§!,§ = _loc3_.y - _loc2_.y;
      }
      
      public function §>!Q§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§3!^§)
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
      
      public function §"!`§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§?X§)
         {
            case §`,§:
               _loc2_ = new b2CircleShape();
               _loc2_.§2!c§(this.§=_§ * param1);
               return _loc2_;
            case §7" §:
               _loc3_ = this.§?!a§();
               (_loc4_ = new b2PolygonShape()).§#B§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§4-§();
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

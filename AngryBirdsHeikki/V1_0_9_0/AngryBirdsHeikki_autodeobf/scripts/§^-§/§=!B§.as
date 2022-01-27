package §^-§
{
   import § !_§.b2Vec2;
   import §-!!§.b2CircleShape;
   import §-!!§.b2PolygonShape;
   import §-!!§.b2Shape;
   import §0i§.§]_§;
   
   public class §=!B§
   {
      
      public static const §^!Y§:int = 0;
      
      public static const §@!Z§:int = 1;
      
      public static const §4x§:int = 2;
      
      public static const §"!d§:int = 3;
      
      public static const §5!W§:int = 4;
      
      public static const §6[§:int = 5;
       
      
      public var mName:String;
      
      public var §=!_§:int;
      
      public var §>5§:Number;
      
      public var §`!I§:Number;
      
      public var §1=§:Number;
      
      public var §'s§:Array = null;
      
      public function §=!B§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§=!_§ = this.§%!Z§(param2);
         this.§>5§ = param3;
         this.§`!I§ = param4;
         this.§1=§ = param5;
      }
      
      public function §<!D§() : int
      {
         return this.§=!_§;
      }
      
      public function §^3§() : Number
      {
         return this.§>5§;
      }
      
      public function §57§() : int
      {
         return this.§`!I§;
      }
      
      private function §%!Z§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §"!d§;
         }
         if(param1 == "CIRCLE")
         {
            return §5!W§;
         }
         if(param1 == "POLYGON")
         {
            return §6[§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §^!Y§;
         }
         if(param1 == "Image_Polygon")
         {
            return §@!Z§;
         }
         if(param1 == "Image_Circle")
         {
            return §4x§;
         }
         §]_§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §"!d§;
      }
      
      public function §&R§() : Array
      {
         return this.§'s§;
      }
      
      public function §'9§(param1:Array) : void
      {
         this.§'s§ = param1;
      }
      
      public function §^>§() : void
      {
         var _loc1_:Array = this.§?E§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§>5§ = _loc3_.x - _loc2_.x;
         this.§`!I§ = _loc3_.y - _loc2_.y;
      }
      
      public function §?E§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§'s§)
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
      
      public function §'a§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§=!_§)
         {
            case §5!W§:
               _loc2_ = new b2CircleShape();
               _loc2_.§8!K§(this.§>5§ * param1);
               return _loc2_;
            case §6[§:
               _loc3_ = this.§&R§();
               (_loc4_ = new b2PolygonShape()).§ !4§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§[!=§();
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

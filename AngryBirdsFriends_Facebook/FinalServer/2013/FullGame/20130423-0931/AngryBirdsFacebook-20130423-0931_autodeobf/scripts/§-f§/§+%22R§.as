package §-f§
{
   import §!"3§.b2CircleShape;
   import §!"3§.b2PolygonShape;
   import §!"3§.b2Shape;
   import §+!c§.§;!=§;
   import §6!^§.b2Vec2;
   
   public class §+"R§
   {
      
      public static const §`i§:int = 0;
      
      public static const §"!N§:int = 1;
      
      public static const §7!@§:int = 2;
      
      public static const §[=§:int = 3;
      
      public static const §"c§:int = 4;
      
      public static const §[!>§:int = 5;
       
      
      public var mName:String;
      
      public var §]!k§:int;
      
      public var §,>§:Number;
      
      public var §`;§:Number;
      
      public var §if§:Number;
      
      public var §5!C§:Array = null;
      
      public function §+"R§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§]!k§ = this.§2"-§(param2);
         this.§,>§ = param3;
         this.§`;§ = param4;
         this.§if§ = param5;
      }
      
      public function §&"A§() : int
      {
         return this.§]!k§;
      }
      
      public function §`"V§() : Number
      {
         return this.§,>§;
      }
      
      public function §0a§() : int
      {
         return this.§`;§;
      }
      
      private function §2"-§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §[=§;
         }
         if(param1 == "CIRCLE")
         {
            return §"c§;
         }
         if(param1 == "POLYGON")
         {
            return §[!>§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §`i§;
         }
         if(param1 == "Image_Polygon")
         {
            return §"!N§;
         }
         if(param1 == "Image_Circle")
         {
            return §7!@§;
         }
         §;!=§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §[=§;
      }
      
      public function §3V§() : Array
      {
         return this.§5!C§;
      }
      
      public function §9! §(param1:Array) : void
      {
         this.§5!C§ = param1;
      }
      
      public function §>! §() : void
      {
         var _loc1_:Array = this.§4!1§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§,>§ = _loc3_.x - _loc2_.x;
         this.§`;§ = _loc3_.y - _loc2_.y;
      }
      
      public function §4!1§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§5!C§)
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
      
      public function §<7§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§]!k§)
         {
            case §"c§:
               _loc2_ = new b2CircleShape();
               _loc2_.§;#§(this.§,>§ * param1);
               return _loc2_;
            case §[!>§:
               _loc3_ = this.§3V§();
               (_loc4_ = new b2PolygonShape()).§?"E§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§,!N§();
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

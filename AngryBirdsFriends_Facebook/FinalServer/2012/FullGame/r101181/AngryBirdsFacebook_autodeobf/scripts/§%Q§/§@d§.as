package §%Q§
{
   import §#]§.b2Vec2;
   import §6o§.§+!k§;
   import §<!`§.b2CircleShape;
   import §<!`§.b2PolygonShape;
   import §<!`§.b2Shape;
   
   public class §@d§
   {
      
      public static const §=K§:int = 0;
      
      public static const §<n§:int = 1;
      
      public static const §@"B§:int = 2;
      
      public static const §>"2§:int = 3;
      
      public static const §88§:int = 4;
      
      public static const §4"B§:int = 5;
       
      
      public var mName:String;
      
      public var §&1§:int;
      
      public var §`w§:Number;
      
      public var §%m§:Number;
      
      public var §%>§:Number;
      
      public var §3! §:Array = null;
      
      public function §@d§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§&1§ = this.§^%§(param2);
         this.§`w§ = param3;
         this.§%m§ = param4;
         this.§%>§ = param5;
      }
      
      public function §4"1§() : int
      {
         return this.§&1§;
      }
      
      public function §<j§() : Number
      {
         return this.§`w§;
      }
      
      public function §`G§() : int
      {
         return this.§%m§;
      }
      
      private function §^%§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §>"2§;
         }
         if(param1 == "CIRCLE")
         {
            return §88§;
         }
         if(param1 == "POLYGON")
         {
            return §4"B§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §=K§;
         }
         if(param1 == "Image_Polygon")
         {
            return §<n§;
         }
         if(param1 == "Image_Circle")
         {
            return §@"B§;
         }
         §+!k§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §>"2§;
      }
      
      public function §'!;§() : Array
      {
         return this.§3! §;
      }
      
      public function §@Q§(param1:Array) : void
      {
         this.§3! § = param1;
      }
      
      public function §;!G§() : void
      {
         var _loc1_:Array = this.§8!b§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§`w§ = _loc3_.x - _loc2_.x;
         this.§%m§ = _loc3_.y - _loc2_.y;
      }
      
      public function §8!b§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§3! §)
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
      
      public function §2"B§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§&1§)
         {
            case §88§:
               _loc2_ = new b2CircleShape();
               _loc2_.§^!i§(this.§`w§ * param1);
               return _loc2_;
            case §4"B§:
               _loc3_ = this.§'!;§();
               (_loc4_ = new b2PolygonShape()).§'b§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§9y§();
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

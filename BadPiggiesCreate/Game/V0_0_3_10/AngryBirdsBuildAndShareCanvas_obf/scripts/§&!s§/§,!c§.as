package §&!s§
{
   import §6U§.b2CircleShape;
   import §6U§.b2PolygonShape;
   import §6U§.b2Shape;
   import §9!G§.§]!e§;
   import §?!h§.b2Vec2;
   
   public class §,!c§
   {
      
      public static const §"!J§:int = 0;
      
      public static const §4;§:int = 1;
      
      public static const §]`§:int = 2;
      
      public static const §^!c§:int = 3;
      
      public static const §6!+§:int = 4;
      
      public static const §'!'§:int = 5;
       
      
      public var mName:String;
      
      public var §3X§:int;
      
      public var §4!z§:Number;
      
      public var §@R§:Number;
      
      public var §`p§:Number;
      
      public var §?",§:Array = null;
      
      public function §,!c§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§3X§ = this.§#"1§(param2);
         this.§4!z§ = param3;
         this.§@R§ = param4;
         this.§`p§ = param5;
      }
      
      public function §>!!§() : int
      {
         return this.§3X§;
      }
      
      public function §>"#§() : Number
      {
         return this.§4!z§;
      }
      
      public function §,Z§() : int
      {
         return this.§@R§;
      }
      
      private function §#"1§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §^!c§;
         }
         if(param1 == "CIRCLE")
         {
            return §6!+§;
         }
         if(param1 == "POLYGON")
         {
            return §'!'§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §"!J§;
         }
         if(param1 == "Image_Polygon")
         {
            return §4;§;
         }
         if(param1 == "Image_Circle")
         {
            return §]`§;
         }
         §]!e§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §^!c§;
      }
      
      public function §8R§() : Array
      {
         return this.§?",§;
      }
      
      public function §=!]§(param1:Array) : void
      {
         this.§?",§ = param1;
      }
      
      public function §=!s§() : void
      {
         var _loc1_:Array = this.§^g§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§4!z§ = _loc3_.x - _loc2_.x;
         this.§@R§ = _loc3_.y - _loc2_.y;
      }
      
      public function §^g§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§?",§)
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
      
      public function §@!2§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§3X§)
         {
            case §6!+§:
               _loc2_ = new b2CircleShape();
               _loc2_.§7!O§(this.§4!z§ * param1);
               return _loc2_;
            case §'!'§:
               _loc3_ = this.§8R§();
               (_loc4_ = new b2PolygonShape()).§=[§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§>4§();
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

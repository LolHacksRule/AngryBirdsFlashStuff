package §-d§
{
   import §"x§.§-8§;
   import §,C§.b2CircleShape;
   import §,C§.b2PolygonShape;
   import §,C§.b2Shape;
   import §;%§.b2Vec2;
   
   public class §7]§
   {
      
      public static const §<!`§:int = 0;
      
      public static const §>4§:int = 1;
      
      public static const §8P§:int = 2;
      
      public static const §?!S§:int = 3;
      
      public static const §"!D§:int = 4;
      
      public static const §&&§:int = 5;
       
      
      public var mName:String;
      
      public var §]n§:int;
      
      public var §2!d§:Number;
      
      public var §@@§:Number;
      
      public var §#§:Number;
      
      public var §+!Y§:Array = null;
      
      public function §7]§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§]n§ = this.§0!8§(param2);
         this.§2!d§ = param3;
         this.§@@§ = param4;
         this.§#§ = param5;
      }
      
      public function §8X§() : int
      {
         return this.§]n§;
      }
      
      public function §2p§() : Number
      {
         return this.§2!d§;
      }
      
      public function §#!L§() : int
      {
         return this.§@@§;
      }
      
      private function §0!8§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §?!S§;
         }
         if(param1 == "CIRCLE")
         {
            return §"!D§;
         }
         if(param1 == "POLYGON")
         {
            return §&&§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §<!`§;
         }
         if(param1 == "Image_Polygon")
         {
            return §>4§;
         }
         if(param1 == "Image_Circle")
         {
            return §8P§;
         }
         §-8§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §?!S§;
      }
      
      public function §&o§() : Array
      {
         return this.§+!Y§;
      }
      
      public function §"!=§(param1:Array) : void
      {
         this.§+!Y§ = param1;
      }
      
      public function §'!G§() : void
      {
         var _loc1_:Array = this.§5l§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§2!d§ = _loc3_.x - _loc2_.x;
         this.§@@§ = _loc3_.y - _loc2_.y;
      }
      
      public function §5l§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§+!Y§)
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
      
      public function §7!H§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§]n§)
         {
            case §"!D§:
               _loc2_ = new b2CircleShape();
               _loc2_.§>w§(this.§2!d§ * param1);
               return _loc2_;
            case §&&§:
               _loc3_ = this.§&o§();
               (_loc4_ = new b2PolygonShape()).§?g§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§^3§();
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

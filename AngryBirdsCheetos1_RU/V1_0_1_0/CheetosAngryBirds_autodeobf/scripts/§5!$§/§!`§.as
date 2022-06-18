package §5!$§
{
   import §#b§.b2CircleShape;
   import §#b§.b2PolygonShape;
   import §#b§.b2Shape;
   import §%t§.§@!%§;
   import §&!B§.b2Vec2;
   
   public class §!`§
   {
      
      public static const §1s§:int = 0;
      
      public static const §6u§:int = 1;
      
      public static const §2!M§:int = 2;
      
      public static const §#Z§:int = 3;
      
      public static const §7q§:int = 4;
      
      public static const §65§:int = 5;
       
      
      public var mName:String;
      
      public var § <§:int;
      
      public var §'n§:Number;
      
      public var §+!#§:Number;
      
      public var § !B§:Number;
      
      public var §4Z§:Array = null;
      
      public function §!`§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§ <§ = this.§,o§(param2);
         this.§'n§ = param3;
         this.§+!#§ = param4;
         this.§ !B§ = param5;
      }
      
      public function §4!0§() : int
      {
         return this.§ <§;
      }
      
      public function §"e§() : Number
      {
         return this.§'n§;
      }
      
      public function §'1§() : int
      {
         return this.§+!#§;
      }
      
      private function §,o§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §#Z§;
         }
         if(param1 == "CIRCLE")
         {
            return §7q§;
         }
         if(param1 == "POLYGON")
         {
            return §65§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §1s§;
         }
         if(param1 == "Image_Polygon")
         {
            return §6u§;
         }
         if(param1 == "Image_Circle")
         {
            return §2!M§;
         }
         §@!%§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §#Z§;
      }
      
      public function §^D§() : Array
      {
         return this.§4Z§;
      }
      
      public function §6!&§(param1:Array) : void
      {
         this.§4Z§ = param1;
      }
      
      public function §>!1§() : void
      {
         var _loc1_:Array = this.§9F§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§'n§ = _loc3_.x - _loc2_.x;
         this.§+!#§ = _loc3_.y - _loc2_.y;
      }
      
      public function §9F§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§4Z§)
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
      
      public function §[a§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§ <§)
         {
            case §7q§:
               _loc2_ = new b2CircleShape();
               _loc2_.§'8§(this.§'n§ * param1);
               return _loc2_;
            case §65§:
               _loc3_ = this.§^D§();
               (_loc4_ = new b2PolygonShape()).§+^§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§^%§();
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

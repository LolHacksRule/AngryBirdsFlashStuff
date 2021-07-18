package §,a§
{
   import §"!9§.b2CircleShape;
   import §"!9§.b2PolygonShape;
   import §"!9§.b2Shape;
   import §2"=§.b2Vec2;
   import §=!M§.§9!P§;
   
   public class §^7§
   {
      
      public static const §6!l§:int = 0;
      
      public static const §0S§:int = 1;
      
      public static const §2!M§:int = 2;
      
      public static const §8K§:int = 3;
      
      public static const §+!h§:int = 4;
      
      public static const §<!g§:int = 5;
       
      
      public var mName:String;
      
      public var §#z§:int;
      
      public var §7!T§:Number;
      
      public var §>w§:Number;
      
      public var §=",§:Number;
      
      public var §=!@§:Array = null;
      
      public function §^7§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§#z§ = this.§'!?§(param2);
         this.§7!T§ = param3;
         this.§>w§ = param4;
         this.§=",§ = param5;
      }
      
      public function §7!U§() : int
      {
         return this.§#z§;
      }
      
      public function §=y§() : Number
      {
         return this.§7!T§;
      }
      
      public function §-p§() : int
      {
         return this.§>w§;
      }
      
      private function §'!?§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §8K§;
         }
         if(param1 == "CIRCLE")
         {
            return §+!h§;
         }
         if(param1 == "POLYGON")
         {
            return §<!g§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §6!l§;
         }
         if(param1 == "Image_Polygon")
         {
            return §0S§;
         }
         if(param1 == "Image_Circle")
         {
            return §2!M§;
         }
         §9!P§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §8K§;
      }
      
      public function §#!g§() : Array
      {
         return this.§=!@§;
      }
      
      public function §"!m§(param1:Array) : void
      {
         this.§=!@§ = param1;
      }
      
      public function §%!f§() : void
      {
         var _loc1_:Array = this.§]!&§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§7!T§ = _loc3_.x - _loc2_.x;
         this.§>w§ = _loc3_.y - _loc2_.y;
      }
      
      public function §]!&§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§=!@§)
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
      
      public function §#!o§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§#z§)
         {
            case §+!h§:
               _loc2_ = new b2CircleShape();
               _loc2_.§7s§(this.§7!T§ * param1);
               return _loc2_;
            case §<!g§:
               _loc3_ = this.§#!g§();
               (_loc4_ = new b2PolygonShape()).§7o§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§-"=§();
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

package §%!a§
{
   import § Y§.b2CircleShape;
   import § Y§.b2PolygonShape;
   import § Y§.b2Shape;
   import §6V§.b2Vec2;
   import §^=§.§8!6§;
   
   public class §0m§
   {
      
      public static const §>!J§:int = 0;
      
      public static const §-v§:int = 1;
      
      public static const §,!§:int = 2;
      
      public static const §=4§:int = 3;
      
      public static const §+!8§:int = 4;
      
      public static const §;U§:int = 5;
       
      
      public var mName:String;
      
      public var §=5§:int;
      
      public var §"!R§:Number;
      
      public var §0[§:Number;
      
      public var §'!P§:Number;
      
      public var §7!Q§:Array = null;
      
      public function §0m§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§=5§ = this.§2$§(param2);
         this.§"!R§ = param3;
         this.§0[§ = param4;
         this.§'!P§ = param5;
      }
      
      public function §2!`§() : int
      {
         return this.§=5§;
      }
      
      public function §6<§() : Number
      {
         return this.§"!R§;
      }
      
      public function §'!M§() : int
      {
         return this.§0[§;
      }
      
      private function §2$§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §=4§;
         }
         if(param1 == "CIRCLE")
         {
            return §+!8§;
         }
         if(param1 == "POLYGON")
         {
            return §;U§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §>!J§;
         }
         if(param1 == "Image_Polygon")
         {
            return §-v§;
         }
         if(param1 == "Image_Circle")
         {
            return §,!§;
         }
         §8!6§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §=4§;
      }
      
      public function §[8§() : Array
      {
         return this.§7!Q§;
      }
      
      public function §76§(param1:Array) : void
      {
         this.§7!Q§ = param1;
      }
      
      public function §%2§() : void
      {
         var _loc1_:Array = this.§'T§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§"!R§ = _loc3_.x - _loc2_.x;
         this.§0[§ = _loc3_.y - _loc2_.y;
      }
      
      public function §'T§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§7!Q§)
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
      
      public function §0!7§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§=5§)
         {
            case §+!8§:
               _loc2_ = new b2CircleShape();
               _loc2_.§ !G§(this.§"!R§ * param1);
               return _loc2_;
            case §;U§:
               _loc3_ = this.§[8§();
               (_loc4_ = new b2PolygonShape()).§]H§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§>!8§();
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

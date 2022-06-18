package §9!%§
{
   import §-!6§.§>I§;
   import §5p§.b2CircleShape;
   import §5p§.b2PolygonShape;
   import §5p§.b2Shape;
   import §;U§.b2Vec2;
   
   public class §0!B§
   {
      
      public static const §0!-§:int = 0;
      
      public static const §]D§:int = 1;
      
      public static const §>!`§:int = 2;
      
      public static const §04§:int = 3;
      
      public static const §3$§:int = 4;
      
      public static const §?!>§:int = 5;
       
      
      public var mName:String;
      
      public var §8<§:int;
      
      public var §5I§:Number;
      
      public var §1Q§:Number;
      
      public var §&G§:Number;
      
      public var §'!V§:Array = null;
      
      public function §0!B§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§8<§ = this.§-!W§(param2);
         this.§5I§ = param3;
         this.§1Q§ = param4;
         this.§&G§ = param5;
      }
      
      public function §^9§() : int
      {
         return this.§8<§;
      }
      
      public function §#f§() : Number
      {
         return this.§5I§;
      }
      
      public function §"!-§() : int
      {
         return this.§1Q§;
      }
      
      private function §-!W§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §04§;
         }
         if(param1 == "CIRCLE")
         {
            return §3$§;
         }
         if(param1 == "POLYGON")
         {
            return §?!>§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §0!-§;
         }
         if(param1 == "Image_Polygon")
         {
            return §]D§;
         }
         if(param1 == "Image_Circle")
         {
            return §>!`§;
         }
         §>I§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §04§;
      }
      
      public function §@!-§() : Array
      {
         return this.§'!V§;
      }
      
      public function §9x§(param1:Array) : void
      {
         this.§'!V§ = param1;
      }
      
      public function §?!@§() : void
      {
         var _loc1_:Array = this.§!!F§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§5I§ = _loc3_.x - _loc2_.x;
         this.§1Q§ = _loc3_.y - _loc2_.y;
      }
      
      public function §!!F§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§'!V§)
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
      
      public function §@!7§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§8<§)
         {
            case §3$§:
               _loc2_ = new b2CircleShape();
               _loc2_.§=P§(this.§5I§ * param1);
               return _loc2_;
            case §?!>§:
               _loc3_ = this.§@!-§();
               (_loc4_ = new b2PolygonShape()).§#6§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§!!6§();
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

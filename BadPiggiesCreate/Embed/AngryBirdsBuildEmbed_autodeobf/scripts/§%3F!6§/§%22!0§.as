package §?!6§
{
   import § !r§.§`![§;
   import §#b§.b2CircleShape;
   import §#b§.b2PolygonShape;
   import §#b§.b2Shape;
   import §<!B§.b2Vec2;
   
   public class §"!0§
   {
      
      public static const §9!H§:int = 0;
      
      public static const §`!j§:int = 1;
      
      public static const §^!M§:int = 2;
      
      public static const §'5§:int = 3;
      
      public static const §3I§:int = 4;
      
      public static const §`C§:int = 5;
       
      
      public var mName:String;
      
      public var §71§:int;
      
      public var §4!L§:Number;
      
      public var §"!C§:Number;
      
      public var §5M§:Number;
      
      public var §5I§:Array = null;
      
      public function §"!0§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§71§ = this.§?V§(param2);
         this.§4!L§ = param3;
         this.§"!C§ = param4;
         this.§5M§ = param5;
      }
      
      public function §?p§() : int
      {
         return this.§71§;
      }
      
      public function §&<§() : Number
      {
         return this.§4!L§;
      }
      
      public function §=$§() : int
      {
         return this.§"!C§;
      }
      
      private function §?V§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §'5§;
         }
         if(param1 == "CIRCLE")
         {
            return §3I§;
         }
         if(param1 == "POLYGON")
         {
            return §`C§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §9!H§;
         }
         if(param1 == "Image_Polygon")
         {
            return §`!j§;
         }
         if(param1 == "Image_Circle")
         {
            return §^!M§;
         }
         §`![§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §'5§;
      }
      
      public function §#5§() : Array
      {
         return this.§5I§;
      }
      
      public function §@!@§(param1:Array) : void
      {
         this.§5I§ = param1;
      }
      
      public function §]3§() : void
      {
         var _loc1_:Array = this.§]!5§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§4!L§ = _loc3_.x - _loc2_.x;
         this.§"!C§ = _loc3_.y - _loc2_.y;
      }
      
      public function §]!5§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§5I§)
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
      
      public function §8!8§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§71§)
         {
            case §3I§:
               _loc2_ = new b2CircleShape();
               _loc2_.§'!p§(this.§4!L§ * param1);
               return _loc2_;
            case §`C§:
               _loc3_ = this.§#5§();
               (_loc4_ = new b2PolygonShape()).§!Y§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§+F§();
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

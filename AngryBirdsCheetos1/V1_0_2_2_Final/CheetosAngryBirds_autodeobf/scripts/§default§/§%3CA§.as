package §default§
{
   import § !G§.§ #§;
   import §&U§.b2CircleShape;
   import §&U§.b2PolygonShape;
   import §&U§.b2Shape;
   import §0!G§.b2Vec2;
   
   public class §<A§
   {
      
      public static const §5!R§:int = 0;
      
      public static const §+6§:int = 1;
      
      public static const §=H§:int = 2;
      
      public static const §?b§:int = 3;
      
      public static const §4!S§:int = 4;
      
      public static const §%E§:int = 5;
       
      
      public var mName:String;
      
      public var § !+§:int;
      
      public var §^!I§:Number;
      
      public var §,!X§:Number;
      
      public var §2F§:Number;
      
      public var §5T§:Array = null;
      
      public function §<A§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§ !+§ = this.§@!§(param2);
         this.§^!I§ = param3;
         this.§,!X§ = param4;
         this.§2F§ = param5;
      }
      
      public function §<!"§() : int
      {
         return this.§ !+§;
      }
      
      public function §"@§() : Number
      {
         return this.§^!I§;
      }
      
      public function §,7§() : int
      {
         return this.§,!X§;
      }
      
      private function §@!§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §?b§;
         }
         if(param1 == "CIRCLE")
         {
            return §4!S§;
         }
         if(param1 == "POLYGON")
         {
            return §%E§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §5!R§;
         }
         if(param1 == "Image_Polygon")
         {
            return §+6§;
         }
         if(param1 == "Image_Circle")
         {
            return §=H§;
         }
         § #§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §?b§;
      }
      
      public function §1,§() : Array
      {
         return this.§5T§;
      }
      
      public function §?!B§(param1:Array) : void
      {
         this.§5T§ = param1;
      }
      
      public function §]!'§() : void
      {
         var _loc1_:Array = this.§%!8§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§^!I§ = _loc3_.x - _loc2_.x;
         this.§,!X§ = _loc3_.y - _loc2_.y;
      }
      
      public function §%!8§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§5T§)
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
      
      public function §!H§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§ !+§)
         {
            case §4!S§:
               _loc2_ = new b2CircleShape();
               _loc2_.§%!4§(this.§^!I§ * param1);
               return _loc2_;
            case §%E§:
               _loc3_ = this.§1,§();
               (_loc4_ = new b2PolygonShape()).§[U§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§;D§();
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

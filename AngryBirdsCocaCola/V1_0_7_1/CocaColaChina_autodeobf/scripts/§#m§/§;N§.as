package §#m§
{
   import §<!8§.b2Vec2;
   import §>![§.b2CircleShape;
   import §>![§.b2PolygonShape;
   import §>![§.b2Shape;
   import §?@§.§"]§;
   
   public class §;N§
   {
      
      public static const §,!9§:int = 0;
      
      public static const §@!!§:int = 1;
      
      public static const §continue§:int = 2;
      
      public static const §3!R§:int = 3;
      
      public static const §,o§:int = 4;
      
      public static const §4!,§:int = 5;
       
      
      public var mName:String;
      
      public var §[w§:int;
      
      public var §8a§:Number;
      
      public var §[K§:Number;
      
      public var §#!R§:Number;
      
      public var §8!$§:Array = null;
      
      public function §;N§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§[w§ = this.§=![§(param2);
         this.§8a§ = param3;
         this.§[K§ = param4;
         this.§#!R§ = param5;
      }
      
      public function §<!>§() : int
      {
         return this.§[w§;
      }
      
      public function §4I§() : Number
      {
         return this.§8a§;
      }
      
      public function §#q§() : int
      {
         return this.§[K§;
      }
      
      private function §=![§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §3!R§;
         }
         if(param1 == "CIRCLE")
         {
            return §,o§;
         }
         if(param1 == "POLYGON")
         {
            return §4!,§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §,!9§;
         }
         if(param1 == "Image_Polygon")
         {
            return §@!!§;
         }
         if(param1 == "Image_Circle")
         {
            return §continue§;
         }
         §"]§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §3!R§;
      }
      
      public function §+!!§() : Array
      {
         return this.§8!$§;
      }
      
      public function §5!c§(param1:Array) : void
      {
         this.§8!$§ = param1;
      }
      
      public function §!!U§() : void
      {
         var _loc1_:Array = this.§]!J§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§8a§ = _loc3_.x - _loc2_.x;
         this.§[K§ = _loc3_.y - _loc2_.y;
      }
      
      public function §]!J§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§8!$§)
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
      
      public function §;!M§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§[w§)
         {
            case §,o§:
               _loc2_ = new b2CircleShape();
               _loc2_.§^G§(this.§8a§ * param1);
               return _loc2_;
            case §4!,§:
               _loc3_ = this.§+!!§();
               (_loc4_ = new b2PolygonShape()).§`F§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§?!Y§();
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

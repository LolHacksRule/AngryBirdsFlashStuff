package §'G§
{
   import §"x§.b2CircleShape;
   import §"x§.b2PolygonShape;
   import §"x§.b2Shape;
   import §7!P§.§-3§;
   import §[R§.b2Vec2;
   
   public class §2!]§
   {
      
      public static const § !%§:int = 0;
      
      public static const §6!'§:int = 1;
      
      public static const §;7§:int = 2;
      
      public static const §79§:int = 3;
      
      public static const §[r§:int = 4;
      
      public static const §6!$§:int = 5;
       
      
      public var mName:String;
      
      public var §[I§:int;
      
      public var §!!V§:Number;
      
      public var §!`§:Number;
      
      public var §;!^§:Number;
      
      public var §;M§:Array = null;
      
      public function §2!]§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§[I§ = this.§@]§(param2);
         this.§!!V§ = param3;
         this.§!`§ = param4;
         this.§;!^§ = param5;
      }
      
      public function §8+§() : int
      {
         return this.§[I§;
      }
      
      public function §'?§() : Number
      {
         return this.§!!V§;
      }
      
      public function §0K§() : int
      {
         return this.§!`§;
      }
      
      private function §@]§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §79§;
         }
         if(param1 == "CIRCLE")
         {
            return §[r§;
         }
         if(param1 == "POLYGON")
         {
            return §6!$§;
         }
         if(param1 == "Image_Rectangle")
         {
            return § !%§;
         }
         if(param1 == "Image_Polygon")
         {
            return §6!'§;
         }
         if(param1 == "Image_Circle")
         {
            return §;7§;
         }
         §-3§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §79§;
      }
      
      public function §?<§() : Array
      {
         return this.§;M§;
      }
      
      public function §%%§(param1:Array) : void
      {
         this.§;M§ = param1;
      }
      
      public function §5T§() : void
      {
         var _loc1_:Array = this.§#b§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§!!V§ = _loc3_.x - _loc2_.x;
         this.§!`§ = _loc3_.y - _loc2_.y;
      }
      
      public function §#b§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§;M§)
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
      
      public function §4g§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§[I§)
         {
            case §[r§:
               _loc2_ = new b2CircleShape();
               _loc2_.§`c§(this.§!!V§ * param1);
               return _loc2_;
            case §6!$§:
               _loc3_ = this.§?<§();
               (_loc4_ = new b2PolygonShape()).§2O§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§!1§();
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

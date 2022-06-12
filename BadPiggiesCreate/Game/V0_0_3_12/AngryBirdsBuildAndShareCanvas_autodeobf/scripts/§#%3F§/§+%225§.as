package §#?§
{
   import §"p§.§@8§;
   import §,Y§.b2CircleShape;
   import §,Y§.b2PolygonShape;
   import §,Y§.b2Shape;
   import §3!t§.b2Vec2;
   
   public class §+"5§
   {
      
      public static const §[O§:int = 0;
      
      public static const §9>§:int = 1;
      
      public static const §!!!§:int = 2;
      
      public static const §?!]§:int = 3;
      
      public static const §%!I§:int = 4;
      
      public static const §<!^§:int = 5;
       
      
      public var mName:String;
      
      public var §-5§:int;
      
      public var §%w§:Number;
      
      public var §-N§:Number;
      
      public var §>""§:Number;
      
      public var §"]§:Array = null;
      
      public function §+"5§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§-5§ = this.§&B§(param2);
         this.§%w§ = param3;
         this.§-N§ = param4;
         this.§>""§ = param5;
      }
      
      public function §4@§() : int
      {
         return this.§-5§;
      }
      
      public function §,!w§() : Number
      {
         return this.§%w§;
      }
      
      public function §'1§() : int
      {
         return this.§-N§;
      }
      
      private function §&B§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §?!]§;
         }
         if(param1 == "CIRCLE")
         {
            return §%!I§;
         }
         if(param1 == "POLYGON")
         {
            return §<!^§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §[O§;
         }
         if(param1 == "Image_Polygon")
         {
            return §9>§;
         }
         if(param1 == "Image_Circle")
         {
            return §!!!§;
         }
         §@8§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §?!]§;
      }
      
      public function §-7§() : Array
      {
         return this.§"]§;
      }
      
      public function §#w§(param1:Array) : void
      {
         this.§"]§ = param1;
      }
      
      public function §=">§() : void
      {
         var _loc1_:Array = this.§#1§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§%w§ = _loc3_.x - _loc2_.x;
         this.§-N§ = _loc3_.y - _loc2_.y;
      }
      
      public function §#1§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§"]§)
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
      
      public function §3!H§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§-5§)
         {
            case §%!I§:
               _loc2_ = new b2CircleShape();
               _loc2_.§9!'§(this.§%w§ * param1);
               return _loc2_;
            case §<!^§:
               _loc3_ = this.§-7§();
               (_loc4_ = new b2PolygonShape()).§`"$§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§5""§();
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

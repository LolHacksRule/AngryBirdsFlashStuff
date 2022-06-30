package §8!I§
{
   import §,!3§.b2Vec2;
   import §1!K§.§>!<§;
   import §=u§.b2CircleShape;
   import §=u§.b2PolygonShape;
   import §=u§.b2Shape;
   
   public class §0!^§
   {
      
      public static const §8Q§:int = 0;
      
      public static const §8!$§:int = 1;
      
      public static const §3§:int = 2;
      
      public static const §-b§:int = 3;
      
      public static const §>!,§:int = 4;
      
      public static const §-!J§:int = 5;
       
      
      public var mName:String;
      
      public var §89§:int;
      
      public var §,d§:Number;
      
      public var §"q§:Number;
      
      public var §return§:Number;
      
      public var §#!Q§:Array = null;
      
      public function §0!^§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§89§ = this.§[T§(param2);
         this.§,d§ = param3;
         this.§"q§ = param4;
         this.§return§ = param5;
      }
      
      public function §'m§() : int
      {
         return this.§89§;
      }
      
      public function §'1§() : Number
      {
         return this.§,d§;
      }
      
      public function §<!^§() : int
      {
         return this.§"q§;
      }
      
      private function §[T§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §-b§;
         }
         if(param1 == "CIRCLE")
         {
            return §>!,§;
         }
         if(param1 == "POLYGON")
         {
            return §-!J§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §8Q§;
         }
         if(param1 == "Image_Polygon")
         {
            return §8!$§;
         }
         if(param1 == "Image_Circle")
         {
            return §3§;
         }
         §>!<§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §-b§;
      }
      
      public function §'%§() : Array
      {
         return this.§#!Q§;
      }
      
      public function §4!R§(param1:Array) : void
      {
         this.§#!Q§ = param1;
      }
      
      public function §%!4§() : void
      {
         var _loc1_:Array = this.§>!N§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§,d§ = _loc3_.x - _loc2_.x;
         this.§"q§ = _loc3_.y - _loc2_.y;
      }
      
      public function §>!N§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§#!Q§)
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
      
      public function §5K§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§89§)
         {
            case §>!,§:
               _loc2_ = new b2CircleShape();
               _loc2_.§>3§(this.§,d§ * param1);
               return _loc2_;
            case §-!J§:
               _loc3_ = this.§'%§();
               (_loc4_ = new b2PolygonShape()).§]!`§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§7]§();
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

package §&C§
{
   import § N§.§]M§;
   import §[!E§.b2CircleShape;
   import §[!E§.b2PolygonShape;
   import §[!E§.b2Shape;
   import §^q§.b2Vec2;
   
   public class §![§
   {
      
      public static const §`t§:int = 0;
      
      public static const §#!O§:int = 1;
      
      public static const §4!4§:int = 2;
      
      public static const §[!W§:int = 3;
      
      public static const §"M§:int = 4;
      
      public static const §<!6§:int = 5;
       
      
      public var mName:String;
      
      public var §>B§:int;
      
      public var §=!T§:Number;
      
      public var §&n§:Number;
      
      public var §`<§:Number;
      
      public var §0!Z§:Array = null;
      
      public function §![§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§>B§ = this.§2c§(param2);
         this.§=!T§ = param3;
         this.§&n§ = param4;
         this.§`<§ = param5;
      }
      
      public function §1_§() : int
      {
         return this.§>B§;
      }
      
      public function §else §() : Number
      {
         return this.§=!T§;
      }
      
      public function §"P§() : int
      {
         return this.§&n§;
      }
      
      private function §2c§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §[!W§;
         }
         if(param1 == "CIRCLE")
         {
            return §"M§;
         }
         if(param1 == "POLYGON")
         {
            return §<!6§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §`t§;
         }
         if(param1 == "Image_Polygon")
         {
            return §#!O§;
         }
         if(param1 == "Image_Circle")
         {
            return §4!4§;
         }
         §]M§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §[!W§;
      }
      
      public function §=<§() : Array
      {
         return this.§0!Z§;
      }
      
      public function §7!Z§(param1:Array) : void
      {
         this.§0!Z§ = param1;
      }
      
      public function §`U§() : void
      {
         var _loc1_:Array = this.§'K§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§=!T§ = _loc3_.x - _loc2_.x;
         this.§&n§ = _loc3_.y - _loc2_.y;
      }
      
      public function §'K§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§0!Z§)
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
      
      public function §1R§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§>B§)
         {
            case §"M§:
               _loc2_ = new b2CircleShape();
               _loc2_.§^n§(this.§=!T§ * param1);
               return _loc2_;
            case §<!6§:
               _loc3_ = this.§=<§();
               (_loc4_ = new b2PolygonShape()).§!! §(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§4!'§();
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

package §3>§
{
   import §-!G§.b2Vec2;
   import §<!j§.b2CircleShape;
   import §<!j§.b2PolygonShape;
   import §<!j§.b2Shape;
   import §@!;§.§&F§;
   
   public class §4D§
   {
      
      public static const §+2§:int = 0;
      
      public static const §@!0§:int = 1;
      
      public static const §]"1§:int = 2;
      
      public static const §&",§:int = 3;
      
      public static const § !G§:int = 4;
      
      public static const §>v§:int = 5;
       
      
      public var mName:String;
      
      public var §7!6§:int;
      
      public var §5!T§:Number;
      
      public var §7X§:Number;
      
      public var §`n§:Number;
      
      public var §;O§:Array = null;
      
      public function §4D§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§7!6§ = this.§9X§(param2);
         this.§5!T§ = param3;
         this.§7X§ = param4;
         this.§`n§ = param5;
      }
      
      public function §6i§() : int
      {
         return this.§7!6§;
      }
      
      public function §4!d§() : Number
      {
         return this.§5!T§;
      }
      
      public function §4!<§() : int
      {
         return this.§7X§;
      }
      
      private function §9X§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §&",§;
         }
         if(param1 == "CIRCLE")
         {
            return § !G§;
         }
         if(param1 == "POLYGON")
         {
            return §>v§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §+2§;
         }
         if(param1 == "Image_Polygon")
         {
            return §@!0§;
         }
         if(param1 == "Image_Circle")
         {
            return §]"1§;
         }
         §&F§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §&",§;
      }
      
      public function §9>§() : Array
      {
         return this.§;O§;
      }
      
      public function §0R§(param1:Array) : void
      {
         this.§;O§ = param1;
      }
      
      public function §0,§() : void
      {
         var _loc1_:Array = this.§7n§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§5!T§ = _loc3_.x - _loc2_.x;
         this.§7X§ = _loc3_.y - _loc2_.y;
      }
      
      public function §7n§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§;O§)
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
      
      public function § !§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§7!6§)
         {
            case § !G§:
               _loc2_ = new b2CircleShape();
               _loc2_.§<!J§(this.§5!T§ * param1);
               return _loc2_;
            case §>v§:
               _loc3_ = this.§9>§();
               (_loc4_ = new b2PolygonShape()).§^§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§>#§();
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

package §%n§
{
   import §'D§.§8e§;
   import §3q§.b2Vec2;
   import §@,§.b2CircleShape;
   import §@,§.b2PolygonShape;
   import §@,§.b2Shape;
   
   public class §"!;§
   {
      
      public static const §9!R§:int = 0;
      
      public static const §1!C§:int = 1;
      
      public static const §%!-§:int = 2;
      
      public static const §4x§:int = 3;
      
      public static const §+H§:int = 4;
      
      public static const §6!§:int = 5;
       
      
      public var mName:String;
      
      public var §3F§:int;
      
      public var §<!&§:Number;
      
      public var §@!Y§:Number;
      
      public var §4!,§:Number;
      
      public var §1O§:Array = null;
      
      public function §"!;§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§3F§ = this.§'!^§(param2);
         this.§<!&§ = param3;
         this.§@!Y§ = param4;
         this.§4!,§ = param5;
      }
      
      public function §"!-§() : int
      {
         return this.§3F§;
      }
      
      public function §-6§() : Number
      {
         return this.§<!&§;
      }
      
      public function §>!2§() : int
      {
         return this.§@!Y§;
      }
      
      private function §'!^§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §4x§;
         }
         if(param1 == "CIRCLE")
         {
            return §+H§;
         }
         if(param1 == "POLYGON")
         {
            return §6!§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §9!R§;
         }
         if(param1 == "Image_Polygon")
         {
            return §1!C§;
         }
         if(param1 == "Image_Circle")
         {
            return §%!-§;
         }
         §8e§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §4x§;
      }
      
      public function §4<§() : Array
      {
         return this.§1O§;
      }
      
      public function §"!7§(param1:Array) : void
      {
         this.§1O§ = param1;
      }
      
      public function §`C§() : void
      {
         var _loc1_:Array = this.§7!H§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§<!&§ = _loc3_.x - _loc2_.x;
         this.§@!Y§ = _loc3_.y - _loc2_.y;
      }
      
      public function §7!H§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§1O§)
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
      
      public function §'! §(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§3F§)
         {
            case §+H§:
               _loc2_ = new b2CircleShape();
               _loc2_.§6!F§(this.§<!&§ * param1);
               return _loc2_;
            case §6!§:
               _loc3_ = this.§4<§();
               (_loc4_ = new b2PolygonShape()).§ ![§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§ if§();
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

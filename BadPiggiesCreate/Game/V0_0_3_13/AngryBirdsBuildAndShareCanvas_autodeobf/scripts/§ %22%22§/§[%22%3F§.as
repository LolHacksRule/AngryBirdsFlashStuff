package § ""§
{
   import §&W§.§7L§;
   import §1!z§.b2Vec2;
   import §5!]§.b2CircleShape;
   import §5!]§.b2PolygonShape;
   import §5!]§.b2Shape;
   
   public class §["?§
   {
      
      public static const §-m§:int = 0;
      
      public static const §5A§:int = 1;
      
      public static const §!!c§:int = 2;
      
      public static const §@!%§:int = 3;
      
      public static const §2!`§:int = 4;
      
      public static const §;E§:int = 5;
       
      
      public var mName:String;
      
      public var §;"3§:int;
      
      public var §+!C§:Number;
      
      public var §1z§:Number;
      
      public var §0k§:Number;
      
      public var §4!§:Array = null;
      
      public function §["?§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§;"3§ = this.§`#§(param2);
         this.§+!C§ = param3;
         this.§1z§ = param4;
         this.§0k§ = param5;
      }
      
      public function §%!N§() : int
      {
         return this.§;"3§;
      }
      
      public function § "=§() : Number
      {
         return this.§+!C§;
      }
      
      public function §>!F§() : int
      {
         return this.§1z§;
      }
      
      private function §`#§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §@!%§;
         }
         if(param1 == "CIRCLE")
         {
            return §2!`§;
         }
         if(param1 == "POLYGON")
         {
            return §;E§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §-m§;
         }
         if(param1 == "Image_Polygon")
         {
            return §5A§;
         }
         if(param1 == "Image_Circle")
         {
            return §!!c§;
         }
         §7L§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §@!%§;
      }
      
      public function §&%§() : Array
      {
         return this.§4!§;
      }
      
      public function §4j§(param1:Array) : void
      {
         this.§4!§ = param1;
      }
      
      public function §2l§() : void
      {
         var _loc1_:Array = this.§5!3§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§+!C§ = _loc3_.x - _loc2_.x;
         this.§1z§ = _loc3_.y - _loc2_.y;
      }
      
      public function §5!3§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§4!§)
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
      
      public function §,!9§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§;"3§)
         {
            case §2!`§:
               _loc2_ = new b2CircleShape();
               _loc2_.§^!F§(this.§+!C§ * param1);
               return _loc2_;
            case §;E§:
               _loc3_ = this.§&%§();
               (_loc4_ = new b2PolygonShape()).§!!Q§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§9"2§();
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

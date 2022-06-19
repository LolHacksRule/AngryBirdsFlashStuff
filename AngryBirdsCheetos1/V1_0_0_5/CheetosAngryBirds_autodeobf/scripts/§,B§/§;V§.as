package §,B§
{
   import §&N§.§@,§;
   import §1!H§.b2CircleShape;
   import §1!H§.b2PolygonShape;
   import §1!H§.b2Shape;
   import §=E§.b2Vec2;
   
   public class §;V§
   {
      
      public static const §-x§:int = 0;
      
      public static const §]!2§:int = 1;
      
      public static const §<4§:int = 2;
      
      public static const §,i§:int = 3;
      
      public static const §;A§:int = 4;
      
      public static const §=§:int = 5;
       
      
      public var mName:String;
      
      public var §8!X§:int;
      
      public var §6!>§:Number;
      
      public var §?l§:Number;
      
      public var §!S§:Number;
      
      public var §5!L§:Array = null;
      
      public function §;V§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§8!X§ = this.§`e§(param2);
         this.§6!>§ = param3;
         this.§?l§ = param4;
         this.§!S§ = param5;
      }
      
      public function §^@§() : int
      {
         return this.§8!X§;
      }
      
      public function §6>§() : Number
      {
         return this.§6!>§;
      }
      
      public function §7!A§() : int
      {
         return this.§?l§;
      }
      
      private function §`e§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §,i§;
         }
         if(param1 == "CIRCLE")
         {
            return §;A§;
         }
         if(param1 == "POLYGON")
         {
            return §=§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §-x§;
         }
         if(param1 == "Image_Polygon")
         {
            return §]!2§;
         }
         if(param1 == "Image_Circle")
         {
            return §<4§;
         }
         §@,§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §,i§;
      }
      
      public function §5G§() : Array
      {
         return this.§5!L§;
      }
      
      public function §-w§(param1:Array) : void
      {
         this.§5!L§ = param1;
      }
      
      public function §7!§() : void
      {
         var _loc1_:Array = this.§`6§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§6!>§ = _loc3_.x - _loc2_.x;
         this.§?l§ = _loc3_.y - _loc2_.y;
      }
      
      public function §`6§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§5!L§)
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
      
      public function §!!<§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§8!X§)
         {
            case §;A§:
               _loc2_ = new b2CircleShape();
               _loc2_.§2@§(this.§6!>§ * param1);
               return _loc2_;
            case §=§:
               _loc3_ = this.§5G§();
               (_loc4_ = new b2PolygonShape()).§8J§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§>!2§();
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

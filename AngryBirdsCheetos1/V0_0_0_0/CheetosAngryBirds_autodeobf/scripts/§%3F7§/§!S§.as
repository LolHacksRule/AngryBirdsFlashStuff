package §?7§
{
   import §-!C§.b2CircleShape;
   import §-!C§.b2PolygonShape;
   import §-!C§.b2Shape;
   import §9"§.b2Vec2;
   import §@,§.§4h§;
   
   public class §!S§
   {
      
      public static const §]!2§:int = 0;
      
      public static const §<4§:int = 1;
      
      public static const §,i§:int = 2;
      
      public static const §;A§:int = 3;
      
      public static const §=§:int = 4;
      
      public static const §1F§:int = 5;
       
      
      public var mName:String;
      
      public var §>!B§:int;
      
      public var §?l§:Number;
      
      public var §+G§:Number;
      
      public var §5!L§:Number;
      
      public var §`e§:Array = null;
      
      public function §!S§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§>!B§ = this.§5G§(param2);
         this.§?l§ = param3;
         this.§+G§ = param4;
         this.§5!L§ = param5;
      }
      
      public function §^6§() : int
      {
         return this.§>!B§;
      }
      
      public function §7!A§() : Number
      {
         return this.§?l§;
      }
      
      public function §]$§() : int
      {
         return this.§+G§;
      }
      
      private function §5G§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §;A§;
         }
         if(param1 == "CIRCLE")
         {
            return §=§;
         }
         if(param1 == "POLYGON")
         {
            return §1F§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §]!2§;
         }
         if(param1 == "Image_Polygon")
         {
            return §<4§;
         }
         if(param1 == "Image_Circle")
         {
            return §,i§;
         }
         §4h§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §;A§;
      }
      
      public function §-w§() : Array
      {
         return this.§`e§;
      }
      
      public function §7!§(param1:Array) : void
      {
         this.§`e§ = param1;
      }
      
      public function §`6§() : void
      {
         var _loc1_:Array = this.§!!<§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§?l§ = _loc3_.x - _loc2_.x;
         this.§+G§ = _loc3_.y - _loc2_.y;
      }
      
      public function §!!<§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§`e§)
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
      
      public function §-x§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§>!B§)
         {
            case §=§:
               _loc2_ = new b2CircleShape();
               _loc2_.§>w§(this.§?l§ * param1);
               return _loc2_;
            case §1F§:
               _loc3_ = this.§-w§();
               (_loc4_ = new b2PolygonShape()).§1#§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§,n§();
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

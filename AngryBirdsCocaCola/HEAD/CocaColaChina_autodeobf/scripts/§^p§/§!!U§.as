package §^p§
{
   import §&!L§.b2Vec2;
   import §'!G§.§1C§;
   import §-!<§.b2CircleShape;
   import §-!<§.b2PolygonShape;
   import §-!<§.b2Shape;
   
   public class §!!U§
   {
      
      public static const §`5§:int = 0;
      
      public static const §+z§:int = 1;
      
      public static const §"X§:int = 2;
      
      public static const §?H§:int = 3;
      
      public static const §<7§:int = 4;
      
      public static const §1r§:int = 5;
       
      
      public var mName:String;
      
      public var §2!'§:int;
      
      public var §3§:Number;
      
      public var §=!=§:Number;
      
      public var §]!J§:Number;
      
      public var §;!M§:Array = null;
      
      public function §!!U§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§2!'§ = this.§,!9§(param2);
         this.§3§ = param3;
         this.§=!=§ = param4;
         this.§]!J§ = param5;
      }
      
      public function §;N§() : int
      {
         return this.§2!'§;
      }
      
      public function §+o§() : Number
      {
         return this.§3§;
      }
      
      public function §!o§() : int
      {
         return this.§=!=§;
      }
      
      private function §,!9§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §?H§;
         }
         if(param1 == "CIRCLE")
         {
            return §<7§;
         }
         if(param1 == "POLYGON")
         {
            return §1r§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §`5§;
         }
         if(param1 == "Image_Polygon")
         {
            return §+z§;
         }
         if(param1 == "Image_Circle")
         {
            return §"X§;
         }
         §1C§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §?H§;
      }
      
      public function §@!!§() : Array
      {
         return this.§;!M§;
      }
      
      public function §continue§(param1:Array) : void
      {
         this.§;!M§ = param1;
      }
      
      public function §3!R§() : void
      {
         var _loc1_:Array = this.§,o§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§3§ = _loc3_.x - _loc2_.x;
         this.§=!=§ = _loc3_.y - _loc2_.y;
      }
      
      public function §,o§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§;!M§)
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
      
      public function §4!,§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§2!'§)
         {
            case §<7§:
               _loc2_ = new b2CircleShape();
               _loc2_.§%H§(this.§3§ * param1);
               return _loc2_;
            case §1r§:
               _loc3_ = this.§@!!§();
               (_loc4_ = new b2PolygonShape()).§?!Y§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§"b§();
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

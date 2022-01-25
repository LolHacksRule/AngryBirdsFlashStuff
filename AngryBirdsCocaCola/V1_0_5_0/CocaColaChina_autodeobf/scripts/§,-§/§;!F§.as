package §,-§
{
   import §;h§.b2Vec2;
   import §<!!§.§-"§;
   import §]!7§.b2CircleShape;
   import §]!7§.b2PolygonShape;
   import §]!7§.b2Shape;
   
   public class §;!F§
   {
      
      public static const §+!S§:int = 0;
      
      public static const §5y§:int = 1;
      
      public static const §^H§:int = 2;
      
      public static const §>,§:int = 3;
      
      public static const §"!"§:int = 4;
      
      public static const §#s§:int = 5;
       
      
      public var mName:String;
      
      public var §]!,§:int;
      
      public var §,E§:Number;
      
      public var §4X§:Number;
      
      public var §3s§:Number;
      
      public var §&N§:Array = null;
      
      public function §;!F§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§]!,§ = this.§!H§(param2);
         this.§,E§ = param3;
         this.§4X§ = param4;
         this.§3s§ = param5;
      }
      
      public function §57§() : int
      {
         return this.§]!,§;
      }
      
      public function §&#§() : Number
      {
         return this.§,E§;
      }
      
      public function §!O§() : int
      {
         return this.§4X§;
      }
      
      private function §!H§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §>,§;
         }
         if(param1 == "CIRCLE")
         {
            return §"!"§;
         }
         if(param1 == "POLYGON")
         {
            return §#s§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §+!S§;
         }
         if(param1 == "Image_Polygon")
         {
            return §5y§;
         }
         if(param1 == "Image_Circle")
         {
            return §^H§;
         }
         §-"§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §>,§;
      }
      
      public function §7N§() : Array
      {
         return this.§&N§;
      }
      
      public function §3!F§(param1:Array) : void
      {
         this.§&N§ = param1;
      }
      
      public function §;_§() : void
      {
         var _loc1_:Array = this.§=A§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§,E§ = _loc3_.x - _loc2_.x;
         this.§4X§ = _loc3_.y - _loc2_.y;
      }
      
      public function §=A§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§&N§)
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
      
      public function §-!#§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§]!,§)
         {
            case §"!"§:
               _loc2_ = new b2CircleShape();
               _loc2_.§`!"§(this.§,E§ * param1);
               return _loc2_;
            case §#s§:
               _loc3_ = this.§7N§();
               (_loc4_ = new b2PolygonShape()).§1!M§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§,!X§();
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

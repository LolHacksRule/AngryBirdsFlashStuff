package §3G§
{
   import §+!o§.b2CircleShape;
   import §+!o§.b2PolygonShape;
   import §+!o§.b2Shape;
   import §0i§.§4!%§;
   import §^!%§.b2Vec2;
   
   public class §9!g§
   {
      
      public static const §>z§:int = 0;
      
      public static const §%!#§:int = 1;
      
      public static const §8!>§:int = 2;
      
      public static const §^!<§:int = 3;
      
      public static const §]!6§:int = 4;
      
      public static const §,d§:int = 5;
       
      
      public var mName:String;
      
      public var §9c§:int;
      
      public var §"§:Number;
      
      public var §&'§:Number;
      
      public var §59§:Number;
      
      public var §>!d§:Array = null;
      
      public function §9!g§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§9c§ = this.§<!W§(param2);
         this.§"§ = param3;
         this.§&'§ = param4;
         this.§59§ = param5;
      }
      
      public function §4E§() : int
      {
         return this.§9c§;
      }
      
      public function §6!%§() : Number
      {
         return this.§"§;
      }
      
      public function §[V§() : int
      {
         return this.§&'§;
      }
      
      private function §<!W§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §^!<§;
         }
         if(param1 == "CIRCLE")
         {
            return §]!6§;
         }
         if(param1 == "POLYGON")
         {
            return §,d§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §>z§;
         }
         if(param1 == "Image_Polygon")
         {
            return §%!#§;
         }
         if(param1 == "Image_Circle")
         {
            return §8!>§;
         }
         §4!%§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §^!<§;
      }
      
      public function §'!2§() : Array
      {
         return this.§>!d§;
      }
      
      public function §'c§(param1:Array) : void
      {
         this.§>!d§ = param1;
      }
      
      public function §?y§() : void
      {
         var _loc1_:Array = this.§4H§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§"§ = _loc3_.x - _loc2_.x;
         this.§&'§ = _loc3_.y - _loc2_.y;
      }
      
      public function §4H§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§>!d§)
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
      
      public function §'!!§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§9c§)
         {
            case §]!6§:
               _loc2_ = new b2CircleShape();
               _loc2_.§0P§(this.§"§ * param1);
               return _loc2_;
            case §,d§:
               _loc3_ = this.§'!2§();
               (_loc4_ = new b2PolygonShape()).§"!2§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§1!3§();
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

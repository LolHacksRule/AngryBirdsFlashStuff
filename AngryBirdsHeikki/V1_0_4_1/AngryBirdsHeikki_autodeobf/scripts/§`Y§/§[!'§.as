package §`Y§
{
   import §%!$§.§[Z§;
   import §+!b§.b2CircleShape;
   import §+!b§.b2PolygonShape;
   import §+!b§.b2Shape;
   import §=i§.b2Vec2;
   
   public class §[!'§
   {
      
      public static const §^n§:int = 0;
      
      public static const §7#§:int = 1;
      
      public static const §%!#§:int = 2;
      
      public static const §%!&§:int = 3;
      
      public static const §@![§:int = 4;
      
      public static const §>1§:int = 5;
       
      
      public var mName:String;
      
      public var §[R§:int;
      
      public var §]2§:Number;
      
      public var §?R§:Number;
      
      public var §1!7§:Number;
      
      public var §'F§:Array = null;
      
      public function §[!'§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§[R§ = this.§"B§(param2);
         this.§]2§ = param3;
         this.§?R§ = param4;
         this.§1!7§ = param5;
      }
      
      public function §&!`§() : int
      {
         return this.§[R§;
      }
      
      public function §%Y§() : Number
      {
         return this.§]2§;
      }
      
      public function §%=§() : int
      {
         return this.§?R§;
      }
      
      private function §"B§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §%!&§;
         }
         if(param1 == "CIRCLE")
         {
            return §@![§;
         }
         if(param1 == "POLYGON")
         {
            return §>1§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §^n§;
         }
         if(param1 == "Image_Polygon")
         {
            return §7#§;
         }
         if(param1 == "Image_Circle")
         {
            return §%!#§;
         }
         §[Z§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §%!&§;
      }
      
      public function §+w§() : Array
      {
         return this.§'F§;
      }
      
      public function §0t§(param1:Array) : void
      {
         this.§'F§ = param1;
      }
      
      public function §"!W§() : void
      {
         var _loc1_:Array = this.§@t§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§]2§ = _loc3_.x - _loc2_.x;
         this.§?R§ = _loc3_.y - _loc2_.y;
      }
      
      public function §@t§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§'F§)
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
      
      public function §`=§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§[R§)
         {
            case §@![§:
               _loc2_ = new b2CircleShape();
               _loc2_.§-G§(this.§]2§ * param1);
               return _loc2_;
            case §>1§:
               _loc3_ = this.§+w§();
               (_loc4_ = new b2PolygonShape()).§3R§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§=3§();
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

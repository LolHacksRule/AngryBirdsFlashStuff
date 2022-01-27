package §4!e§
{
   import § !3§.§!X§;
   import §!O§.b2CircleShape;
   import §!O§.b2PolygonShape;
   import §!O§.b2Shape;
   import §0!=§.b2Vec2;
   
   public class §[l§
   {
      
      public static const §?t§:int = 0;
      
      public static const §74§:int = 1;
      
      public static const §=m§:int = 2;
      
      public static const §[!C§:int = 3;
      
      public static const §[!U§:int = 4;
      
      public static const §#M§:int = 5;
       
      
      public var mName:String;
      
      public var § !&§:int;
      
      public var §+L§:Number;
      
      public var §<!@§:Number;
      
      public var §`!5§:Number;
      
      public var §[!3§:Array = null;
      
      public function §[l§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§ !&§ = this.§0o§(param2);
         this.§+L§ = param3;
         this.§<!@§ = param4;
         this.§`!5§ = param5;
      }
      
      public function §81§() : int
      {
         return this.§ !&§;
      }
      
      public function §%Y§() : Number
      {
         return this.§+L§;
      }
      
      public function §2!O§() : int
      {
         return this.§<!@§;
      }
      
      private function §0o§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §[!C§;
         }
         if(param1 == "CIRCLE")
         {
            return §[!U§;
         }
         if(param1 == "POLYGON")
         {
            return §#M§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §?t§;
         }
         if(param1 == "Image_Polygon")
         {
            return §74§;
         }
         if(param1 == "Image_Circle")
         {
            return §=m§;
         }
         §!X§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §[!C§;
      }
      
      public function §+!A§() : Array
      {
         return this.§[!3§;
      }
      
      public function §!!d§(param1:Array) : void
      {
         this.§[!3§ = param1;
      }
      
      public function §+g§() : void
      {
         var _loc1_:Array = this.§!!?§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§+L§ = _loc3_.x - _loc2_.x;
         this.§<!@§ = _loc3_.y - _loc2_.y;
      }
      
      public function §!!?§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§[!3§)
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
      
      public function §<!T§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§ !&§)
         {
            case §[!U§:
               _loc2_ = new b2CircleShape();
               _loc2_.§-f§(this.§+L§ * param1);
               return _loc2_;
            case §#M§:
               _loc3_ = this.§+!A§();
               (_loc4_ = new b2PolygonShape()).§%8§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§^!%§();
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

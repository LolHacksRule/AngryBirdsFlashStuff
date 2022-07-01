package §8q§
{
   import §+L§.b2Vec2;
   import §1!3§.b2CircleShape;
   import §1!3§.b2PolygonShape;
   import §1!3§.b2Shape;
   import §;X§.§ do§;
   
   public class §!g§
   {
      
      public static const §;!`§:int = 0;
      
      public static const § $§:int = 1;
      
      public static const §@!h§:int = 2;
      
      public static const §<!@§:int = 3;
      
      public static const §&!U§:int = 4;
      
      public static const §<!t§:int = 5;
       
      
      public var mName:String;
      
      public var §'m§:int;
      
      public var §1§:Number;
      
      public var §+!4§:Number;
      
      public var §06§:Number;
      
      public var §'"'§:Array = null;
      
      public function §!g§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§'m§ = this.§#"8§(param2);
         this.§1§ = param3;
         this.§+!4§ = param4;
         this.§06§ = param5;
      }
      
      public function §&r§() : int
      {
         return this.§'m§;
      }
      
      public function §1!§() : Number
      {
         return this.§1§;
      }
      
      public function §[S§() : int
      {
         return this.§+!4§;
      }
      
      private function §#"8§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §<!@§;
         }
         if(param1 == "CIRCLE")
         {
            return §&!U§;
         }
         if(param1 == "POLYGON")
         {
            return §<!t§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §;!`§;
         }
         if(param1 == "Image_Polygon")
         {
            return § $§;
         }
         if(param1 == "Image_Circle")
         {
            return §@!h§;
         }
         § do§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §<!@§;
      }
      
      public function §<&§() : Array
      {
         return this.§'"'§;
      }
      
      public function §#!b§(param1:Array) : void
      {
         this.§'"'§ = param1;
      }
      
      public function §%!b§() : void
      {
         var _loc1_:Array = this.§[!V§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§1§ = _loc3_.x - _loc2_.x;
         this.§+!4§ = _loc3_.y - _loc2_.y;
      }
      
      public function §[!V§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§'"'§)
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
      
      public function §^!T§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§'m§)
         {
            case §&!U§:
               _loc2_ = new b2CircleShape();
               _loc2_.§"",§(this.§1§ * param1);
               return _loc2_;
            case §<!t§:
               _loc3_ = this.§<&§();
               (_loc4_ = new b2PolygonShape()).§5!a§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§9!D§();
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

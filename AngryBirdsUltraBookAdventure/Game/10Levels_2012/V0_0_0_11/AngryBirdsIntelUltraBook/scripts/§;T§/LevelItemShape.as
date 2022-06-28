package §;T§
{
   import §#!"§.b2CircleShape;
   import §#!"§.b2PolygonShape;
   import §#!"§.b2Shape;
   import §&L§.b2Vec2;
   import §6b§.Log;
   
   public class LevelItemShape
   {
      
      public static const §0!O§:int = 0;
      
      public static const §!c§:int = 1;
      
      public static const §]F§:int = 2;
      
      public static const §@Z§:int = 3;
      
      public static const §,!4§:int = 4;
      
      public static const § h§:int = 5;
       
      
      public var mName:String;
      
      public var §"!5§:int;
      
      public var §[v§:Number;
      
      public var §5%§:Number;
      
      public var §+!;§:Number;
      
      public var §?W§:Array = null;
      
      public function LevelItemShape(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§"!5§ = this.§'!-§(param2);
         this.§[v§ = param3;
         this.§5%§ = param4;
         this.§+!;§ = param5;
      }
      
      public function §^c§() : int
      {
         return this.§"!5§;
      }
      
      public function §%!?§() : Number
      {
         return this.§[v§;
      }
      
      public function §==§() : int
      {
         return this.§5%§;
      }
      
      private function §'!-§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §@Z§;
         }
         if(param1 == "CIRCLE")
         {
            return §,!4§;
         }
         if(param1 == "POLYGON")
         {
            return § h§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §0!O§;
         }
         if(param1 == "Image_Polygon")
         {
            return §!c§;
         }
         if(param1 == "Image_Circle")
         {
            return §]F§;
         }
         Log.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §@Z§;
      }
      
      public function §6!^§() : Array
      {
         return this.§?W§;
      }
      
      public function §`!§(param1:Array) : void
      {
         this.§?W§ = param1;
      }
      
      public function §2l§() : void
      {
         var _loc1_:Array = this.§%!S§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§[v§ = _loc3_.x - _loc2_.x;
         this.§5%§ = _loc3_.y - _loc2_.y;
      }
      
      public function §%!S§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§?W§)
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
      
      public function §5!C§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§"!5§)
         {
            case §,!4§:
               _loc2_ = new b2CircleShape();
               _loc2_.§;B§(this.§[v§ * param1);
               return _loc2_;
            case § h§:
               _loc3_ = this.§6!^§();
               _loc4_ = new b2PolygonShape();
               _loc4_.§9[§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§;Y§();
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

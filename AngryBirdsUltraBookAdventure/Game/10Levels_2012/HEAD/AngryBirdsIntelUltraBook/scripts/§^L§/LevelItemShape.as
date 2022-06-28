package §^L§
{
   import §'N§.Log;
   import §,X§.b2CircleShape;
   import §,X§.b2PolygonShape;
   import §,X§.b2Shape;
   import §?!&§.b2Vec2;
   
   public class LevelItemShape
   {
      
      public static const §2x§:int = 0;
      
      public static const §[!,§:int = 1;
      
      public static const §>U§:int = 2;
      
      public static const §?m§:int = 3;
      
      public static const §"c§:int = 4;
      
      public static const §0!+§:int = 5;
       
      
      public var mName:String;
      
      public var §>!V§:int;
      
      public var §^B§:Number;
      
      public var §+!d§:Number;
      
      public var §=!^§:Number;
      
      public var §&P§:Array = null;
      
      public function LevelItemShape(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§>!V§ = this.§>g§(param2);
         this.§^B§ = param3;
         this.§+!d§ = param4;
         this.§=!^§ = param5;
      }
      
      public function §'!,§() : int
      {
         return this.§>!V§;
      }
      
      public function §=!a§() : Number
      {
         return this.§^B§;
      }
      
      public function §6w§() : int
      {
         return this.§+!d§;
      }
      
      private function §>g§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §?m§;
         }
         if(param1 == "CIRCLE")
         {
            return §"c§;
         }
         if(param1 == "POLYGON")
         {
            return §0!+§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §2x§;
         }
         if(param1 == "Image_Polygon")
         {
            return §[!,§;
         }
         if(param1 == "Image_Circle")
         {
            return §>U§;
         }
         Log.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §?m§;
      }
      
      public function §?[§() : Array
      {
         return this.§&P§;
      }
      
      public function §,t§(param1:Array) : void
      {
         this.§&P§ = param1;
      }
      
      public function § D§() : void
      {
         var _loc1_:Array = this.§?L§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§^B§ = _loc3_.x - _loc2_.x;
         this.§+!d§ = _loc3_.y - _loc2_.y;
      }
      
      public function §?L§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§&P§)
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
      
      public function §-!C§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§>!V§)
         {
            case §"c§:
               _loc2_ = new b2CircleShape();
               _loc2_.§%!j§(this.§^B§ * param1);
               return _loc2_;
            case §0!+§:
               _loc3_ = this.§?[§();
               _loc4_ = new b2PolygonShape();
               _loc4_.§ !B§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§6!_§();
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

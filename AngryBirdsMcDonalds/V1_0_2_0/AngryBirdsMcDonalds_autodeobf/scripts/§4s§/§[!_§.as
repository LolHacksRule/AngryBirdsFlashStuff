package §4s§
{
   import §"U§.b2Vec2;
   import §,7§.b2CircleShape;
   import §,7§.b2PolygonShape;
   import §,7§.b2Shape;
   import §=<§.§1+§;
   
   public class §[!_§
   {
      
      public static const §'!n§:int = 0;
      
      public static const final:int = 1;
      
      public static const §[W§:int = 2;
      
      public static const §8y§:int = 3;
      
      public static const §!!H§:int = 4;
      
      public static const §1!1§:int = 5;
       
      
      public var mName:String;
      
      public var §<!J§:int;
      
      public var §;a§:Number;
      
      public var §"[§:Number;
      
      public var §"!@§:Number;
      
      public var §2Q§:Array = null;
      
      public function §[!_§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§<!J§ = this.§,u§(param2);
         this.§;a§ = param3;
         this.§"[§ = param4;
         this.§"!@§ = param5;
      }
      
      public function §3!!§() : int
      {
         return this.§<!J§;
      }
      
      public function §&!3§() : Number
      {
         return this.§;a§;
      }
      
      public function §9-§() : int
      {
         return this.§"[§;
      }
      
      private function §,u§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §8y§;
         }
         if(param1 == "CIRCLE")
         {
            return §!!H§;
         }
         if(param1 == "POLYGON")
         {
            return §1!1§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §'!n§;
         }
         if(param1 == "Image_Polygon")
         {
            return final;
         }
         if(param1 == "Image_Circle")
         {
            return §[W§;
         }
         §1+§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §8y§;
      }
      
      public function §-q§() : Array
      {
         return this.§2Q§;
      }
      
      public function §#T§(param1:Array) : void
      {
         this.§2Q§ = param1;
      }
      
      public function §#h§() : void
      {
         var _loc1_:Array = this.§<n§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§;a§ = _loc3_.x - _loc2_.x;
         this.§"[§ = _loc3_.y - _loc2_.y;
      }
      
      public function §<n§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§2Q§)
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
      
      public function §5!-§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§<!J§)
         {
            case §!!H§:
               _loc2_ = new b2CircleShape();
               _loc2_.§-Q§(this.§;a§ * param1);
               return _loc2_;
            case §1!1§:
               _loc3_ = this.§-q§();
               (_loc4_ = new b2PolygonShape()).§?@§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§[N§();
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

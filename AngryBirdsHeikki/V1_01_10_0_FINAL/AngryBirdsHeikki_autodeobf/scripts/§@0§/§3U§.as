package §@0§
{
   import §6A§.b2Vec2;
   import §7q§.b2CircleShape;
   import §7q§.b2PolygonShape;
   import §7q§.b2Shape;
   import §@R§.§4,§;
   
   public class §3U§
   {
      
      public static const §1E§:int = 0;
      
      public static const §!!9§:int = 1;
      
      public static const §2o§:int = 2;
      
      public static const §1!7§:int = 3;
      
      public static const §=P§:int = 4;
      
      public static const §?t§:int = 5;
       
      
      public var mName:String;
      
      public var §&!>§:int;
      
      public var §@!-§:Number;
      
      public var §3S§:Number;
      
      public var §7a§:Number;
      
      public var §1@§:Array = null;
      
      public function §3U§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§&!>§ = this.§"!+§(param2);
         this.§@!-§ = param3;
         this.§3S§ = param4;
         this.§7a§ = param5;
      }
      
      public function §7!P§() : int
      {
         return this.§&!>§;
      }
      
      public function §[3§() : Number
      {
         return this.§@!-§;
      }
      
      public function § !7§() : int
      {
         return this.§3S§;
      }
      
      private function §"!+§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §1!7§;
         }
         if(param1 == "CIRCLE")
         {
            return §=P§;
         }
         if(param1 == "POLYGON")
         {
            return §?t§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §1E§;
         }
         if(param1 == "Image_Polygon")
         {
            return §!!9§;
         }
         if(param1 == "Image_Circle")
         {
            return §2o§;
         }
         §4,§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §1!7§;
      }
      
      public function §^!;§() : Array
      {
         return this.§1@§;
      }
      
      public function §[!X§(param1:Array) : void
      {
         this.§1@§ = param1;
      }
      
      public function §^q§() : void
      {
         var _loc1_:Array = this.§6p§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§@!-§ = _loc3_.x - _loc2_.x;
         this.§3S§ = _loc3_.y - _loc2_.y;
      }
      
      public function §6p§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§1@§)
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
      
      public function §7!O§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§&!>§)
         {
            case §=P§:
               _loc2_ = new b2CircleShape();
               _loc2_.§6!!§(this.§@!-§ * param1);
               return _loc2_;
            case §?t§:
               _loc3_ = this.§^!;§();
               (_loc4_ = new b2PolygonShape()).§-!e§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§<Q§();
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

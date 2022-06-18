package §"P§
{
   import § y§.b2CircleShape;
   import § y§.b2PolygonShape;
   import § y§.b2Shape;
   import §&!+§.b2Vec2;
   import §=g§.§@!L§;
   
   public class §^s§
   {
      
      public static const §>!X§:int = 0;
      
      public static const §>! §:int = 1;
      
      public static const §`J§:int = 2;
      
      public static const §0O§:int = 3;
      
      public static const §=4§:int = 4;
      
      public static const §2K§:int = 5;
       
      
      public var mName:String;
      
      public var §!T§:int;
      
      public var §,!E§:Number;
      
      public var §''§:Number;
      
      public var §&!,§:Number;
      
      public var §-h§:Array = null;
      
      public function §^s§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§!T§ = this.§#!_§(param2);
         this.§,!E§ = param3;
         this.§''§ = param4;
         this.§&!,§ = param5;
      }
      
      public function §&U§() : int
      {
         return this.§!T§;
      }
      
      public function §'?§() : Number
      {
         return this.§,!E§;
      }
      
      public function §"7§() : int
      {
         return this.§''§;
      }
      
      private function §#!_§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §0O§;
         }
         if(param1 == "CIRCLE")
         {
            return §=4§;
         }
         if(param1 == "POLYGON")
         {
            return §2K§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §>!X§;
         }
         if(param1 == "Image_Polygon")
         {
            return §>! §;
         }
         if(param1 == "Image_Circle")
         {
            return §`J§;
         }
         §@!L§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §0O§;
      }
      
      public function §7z§() : Array
      {
         return this.§-h§;
      }
      
      public function §1!Z§(param1:Array) : void
      {
         this.§-h§ = param1;
      }
      
      public function §4!6§() : void
      {
         var _loc1_:Array = this.§%N§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§,!E§ = _loc3_.x - _loc2_.x;
         this.§''§ = _loc3_.y - _loc2_.y;
      }
      
      public function §%N§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§-h§)
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
      
      public function §@m§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§!T§)
         {
            case §=4§:
               _loc2_ = new b2CircleShape();
               _loc2_.§9_§(this.§,!E§ * param1);
               return _loc2_;
            case §2K§:
               _loc3_ = this.§7z§();
               (_loc4_ = new b2PolygonShape()).§4+§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§@!"§();
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

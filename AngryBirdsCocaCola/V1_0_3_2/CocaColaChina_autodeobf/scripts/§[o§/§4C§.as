package §[o§
{
   import §'&§.b2CircleShape;
   import §'&§.b2PolygonShape;
   import §'&§.b2Shape;
   import §6!Q§.§7!7§;
   import §implements§.b2Vec2;
   
   public class §4C§
   {
      
      public static const §@!0§:int = 0;
      
      public static const §1@§:int = 1;
      
      public static const §+!Q§:int = 2;
      
      public static const §8!P§:int = 3;
      
      public static const §7!3§:int = 4;
      
      public static const §=m§:int = 5;
       
      
      public var mName:String;
      
      public var §class§:int;
      
      public var §=$§:Number;
      
      public var §1T§:Number;
      
      public var §]c§:Number;
      
      public var §;!O§:Array = null;
      
      public function §4C§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§class§ = this.§<f§(param2);
         this.§=$§ = param3;
         this.§1T§ = param4;
         this.§]c§ = param5;
      }
      
      public function §7M§() : int
      {
         return this.§class§;
      }
      
      public function §'g§() : Number
      {
         return this.§=$§;
      }
      
      public function §#O§() : int
      {
         return this.§1T§;
      }
      
      private function §<f§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §8!P§;
         }
         if(param1 == "CIRCLE")
         {
            return §7!3§;
         }
         if(param1 == "POLYGON")
         {
            return §=m§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §@!0§;
         }
         if(param1 == "Image_Polygon")
         {
            return §1@§;
         }
         if(param1 == "Image_Circle")
         {
            return §+!Q§;
         }
         §7!7§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §8!P§;
      }
      
      public function §^!K§() : Array
      {
         return this.§;!O§;
      }
      
      public function §#M§(param1:Array) : void
      {
         this.§;!O§ = param1;
      }
      
      public function §+r§() : void
      {
         var _loc1_:Array = this.§ a§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§=$§ = _loc3_.x - _loc2_.x;
         this.§1T§ = _loc3_.y - _loc2_.y;
      }
      
      public function § a§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§;!O§)
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
      
      public function § Y§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§class§)
         {
            case §7!3§:
               _loc2_ = new b2CircleShape();
               _loc2_.§'j§(this.§=$§ * param1);
               return _loc2_;
            case §=m§:
               _loc3_ = this.§^!K§();
               (_loc4_ = new b2PolygonShape()).§,;§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§@!`§();
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

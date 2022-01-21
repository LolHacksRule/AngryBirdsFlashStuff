package §!!e§
{
   import §!R§.b2Vec2;
   import §]q§.b2CircleShape;
   import §]q§.b2PolygonShape;
   import §]q§.b2Shape;
   import §`!W§.§2v§;
   
   public class §5!%§
   {
      
      public static const §6!`§:int = 0;
      
      public static const §7N§:int = 1;
      
      public static const §6!;§:int = 2;
      
      public static const §!z§:int = 3;
      
      public static const §6!X§:int = 4;
      
      public static const §;!8§:int = 5;
       
      
      public var mName:String;
      
      public var §68§:int;
      
      public var §0F§:Number;
      
      public var §;;§:Number;
      
      public var §;!J§:Number;
      
      public var §'n§:Array = null;
      
      public function §5!%§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§68§ = this.§=D§(param2);
         this.§0F§ = param3;
         this.§;;§ = param4;
         this.§;!J§ = param5;
      }
      
      public function §;!&§() : int
      {
         return this.§68§;
      }
      
      public function §2!B§() : Number
      {
         return this.§0F§;
      }
      
      public function §@!N§() : int
      {
         return this.§;;§;
      }
      
      private function §=D§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §!z§;
         }
         if(param1 == "CIRCLE")
         {
            return §6!X§;
         }
         if(param1 == "POLYGON")
         {
            return §;!8§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §6!`§;
         }
         if(param1 == "Image_Polygon")
         {
            return §7N§;
         }
         if(param1 == "Image_Circle")
         {
            return §6!;§;
         }
         §2v§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §!z§;
      }
      
      public function §3!k§() : Array
      {
         return this.§'n§;
      }
      
      public function §-!_§(param1:Array) : void
      {
         this.§'n§ = param1;
      }
      
      public function §&!+§() : void
      {
         var _loc1_:Array = this.§1!$§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§0F§ = _loc3_.x - _loc2_.x;
         this.§;;§ = _loc3_.y - _loc2_.y;
      }
      
      public function §1!$§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§'n§)
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
      
      public function §9b§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§68§)
         {
            case §6!X§:
               _loc2_ = new b2CircleShape();
               _loc2_.§9!b§(this.§0F§ * param1);
               return _loc2_;
            case §;!8§:
               _loc3_ = this.§3!k§();
               (_loc4_ = new b2PolygonShape()).§#!i§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§,!P§();
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

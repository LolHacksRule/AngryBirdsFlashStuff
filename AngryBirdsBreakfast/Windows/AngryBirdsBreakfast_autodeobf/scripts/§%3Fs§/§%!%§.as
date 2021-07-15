package §?s§
{
   import §+C§.b2DistanceJointDef;
   import §+C§.b2JointDef;
   import §+C§.b2PrismaticJointDef;
   import §+C§.b2RevoluteJointDef;
   import §+C§.b2WeldJointDef;
   import §,z§.§<!r§;
   import §6Z§.b2Vec2;
   import flash.geom.Point;
   
   public class §%!%§
   {
      
      public static const §<!C§:uint = 1;
      
      public static const §9"§:uint = 2;
      
      public static const §!!C§:uint = 3;
      
      public static const §^§:uint = 4;
      
      public static const §`!b§:uint = 5;
       
      
      private var §^"'§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §%!0§:Boolean;
      
      private var §#v§:Number;
      
      private var §+!&§:Number;
      
      private var §<!z§:Boolean;
      
      private var §6!g§:Number;
      
      private var §^!"§:Boolean;
      
      private var §^g§:Boolean;
      
      private var §`!$§:Boolean;
      
      private var §@!=§:Number;
      
      private var §7!<§:Number;
      
      private var §+!O§:Number;
      
      private var §@!U§:int = 0;
      
      private var §4!I§:Number = 0.0;
      
      private var §;!O§:Number = 0.0;
      
      private var §"" §:Number;
      
      private var §-!G§:Boolean;
      
      private var §4!"§:Number;
      
      public function §%!%§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§^"'§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§%!0§ = param7;
         this.§#v§ = param8;
         this.§+!&§ = param9;
         this.§<!z§ = param10;
         this.§6!g§ = param11;
         this.§^!"§ = param12;
         this.§`!$§ = param6;
         this.§@!=§ = param13;
         this.§-!G§ = param14;
         this.§4!"§ = param15;
         this.§^g§ = param16;
      }
      
      public function get type() : int
      {
         return this.§^"'§;
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get § ]§() : Boolean
      {
         return this.§%!0§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#v§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§+!&§;
      }
      
      public function get §'"&§() : Boolean
      {
         return this.§<!z§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§6!g§;
      }
      
      public function get §=!f§() : Boolean
      {
         return this.§^!"§;
      }
      
      public function get §2!&§() : Boolean
      {
         return this.§`!$§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§@!=§;
      }
      
      public function get §&!5§() : Boolean
      {
         return this.§-!G§;
      }
      
      public function set §&!5§(param1:Boolean) : void
      {
         this.§-!G§ = param1;
      }
      
      public function get §"!d§() : Number
      {
         return this.§4!"§;
      }
      
      public function set §"!d§(param1:Number) : void
      {
         this.§4!"§ = param1;
      }
      
      public function get §!e§() : Boolean
      {
         return this.§^g§;
      }
      
      public function set §!e§(param1:Boolean) : void
      {
         this.§^g§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§7!<§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§7!<§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§+!O§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§+!O§ = param1;
      }
      
      public function get §03§() : Number
      {
         return this.§"" §;
      }
      
      public function set §03§(param1:Number) : void
      {
         this.§"" § = param1;
      }
      
      public function get § U§() : int
      {
         return this.§@!U§;
      }
      
      public function set § U§(param1:int) : void
      {
         this.§@!U§ = param1;
      }
      
      public function get §,8§() : Number
      {
         return this.§4!I§;
      }
      
      public function set §,8§(param1:Number) : void
      {
         this.§4!I§ = param1;
      }
      
      public function get §^!_§() : Number
      {
         return this.§;!O§;
      }
      
      public function set §^!_§(param1:Number) : void
      {
         this.§;!O§ = param1;
      }
      
      private function § !d§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§`!$§;
         _loc3_.§;l§ = this.§;!O§;
         _loc3_.§,8§ = this.§4!I§;
         if(this.§@!U§ == 0)
         {
            _loc3_.§0O§.x = 0;
            _loc3_.§0O§.y = 0;
            _loc3_.§ @§.x = 0;
            _loc3_.§ @§.y = 0;
         }
         else
         {
            if(this.§@!U§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§@!U§ == 2)
            {
               _loc3_.§0O§.x = this.mPoint1.x;
               _loc3_.§0O§.y = this.mPoint1.y;
               _loc3_.§ @§.x = this.mPoint2.x;
               _loc3_.§ @§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§^`§().GetWorldPoint(_loc3_.§0O§);
         var _loc5_:b2Vec2 = param2.§^`§().GetWorldPoint(_loc3_.§ @§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§'!n§ = param1.§^`§();
         _loc3_.§ 5§ = param2.§^`§();
         return _loc3_;
      }
      
      private function §6W§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§`!$§;
         var _loc4_:b2Vec2 = param1.§^`§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§^`§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§",§(param1.§^`§(),param2.§^`§(),_loc6_);
         return _loc3_;
      }
      
      private function §-h§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§`!$§;
         _loc3_.§",§(param1.§^`§(),param2.§^`§(),param1.§^`§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§+!<§ = this.§%!0§;
         _loc3_.§[!W§ = this.§<!z§;
         _loc3_.motorSpeed = this.§6!g§;
         _loc3_.§,!n§ = this.§+!&§;
         _loc3_.§ +§ = this.§#v§;
         _loc3_.§1&§ = this.§@!=§;
         return _loc3_;
      }
      
      private function § !b§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§`!$§;
         _loc3_.§",§(param1.§^`§(),param2.§^`§(),param1.§^`§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§7!<§,this.§+!O§));
         _loc3_.§+!<§ = this.§%!0§;
         _loc3_.§9"'§ = this.§#v§;
         _loc3_.§<"%§ = this.§+!&§;
         _loc3_.§[!W§ = this.§<!z§;
         _loc3_.§8!B§ = this.§@!=§;
         _loc3_.motorSpeed = this.§6!g§;
         return _loc3_;
      }
      
      public function §0^§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         switch(this.§^"'§)
         {
            case §<!C§:
               return this.§ !d§(param1,param2);
            case §9"§:
               return this.§6W§(param1,param2);
            case §!!C§:
               return this.§-h§(param1,param2);
            case §^§:
               return this.§ !b§(param1,param2);
            default:
               return null;
         }
      }
   }
}

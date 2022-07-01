package §<!A§
{
   import §"!-§.§@!4§;
   import §,!k§.b2Vec2;
   import §>H§.b2DistanceJointDef;
   import §>H§.b2JointDef;
   import §>H§.b2PrismaticJointDef;
   import §>H§.b2RevoluteJointDef;
   import §>H§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §=!s§
   {
      
      public static const §-L§:uint = 1;
      
      public static const §["#§:uint = 2;
      
      public static const §set §:uint = 3;
      
      public static const §#!T§:uint = 4;
      
      public static const §]"0§:uint = 5;
       
      
      private var §`u§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §2"+§:Boolean;
      
      private var §04§:Number;
      
      private var §1!u§:Number;
      
      private var §!!;§:Boolean;
      
      private var §++§:Number;
      
      private var §]!8§:Boolean;
      
      private var §^!-§:Boolean;
      
      private var §2!v§:Number;
      
      private var §6!D§:Number;
      
      private var §#!7§:Number;
      
      private var §@!S§:int = 0;
      
      private var §&Z§:Number = 0.0;
      
      private var §%M§:Number = 0.0;
      
      private var §`b§:Number;
      
      public function §=!s§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§`u§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§2"+§ = param7;
         this.§04§ = param8;
         this.§1!u§ = param9;
         this.§!!;§ = param10;
         this.§++§ = param11;
         this.§]!8§ = param12;
         this.§^!-§ = param6;
         this.§2!v§ = param13;
      }
      
      public function get type() : int
      {
         return this.§`u§;
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
      
      public function get §#"4§() : Boolean
      {
         return this.§2"+§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§04§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§1!u§;
      }
      
      public function get §,![§() : Boolean
      {
         return this.§!!;§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§++§;
      }
      
      public function get §?"'§() : Boolean
      {
         return this.§]!8§;
      }
      
      public function get §#!;§() : Boolean
      {
         return this.§^!-§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§2!v§;
      }
      
      public function get axisX() : Number
      {
         return this.§6!D§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§6!D§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§#!7§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§#!7§ = param1;
      }
      
      public function get §%g§() : Number
      {
         return this.§`b§;
      }
      
      public function set §%g§(param1:Number) : void
      {
         this.§`b§ = param1;
      }
      
      public function get §!!V§() : int
      {
         return this.§@!S§;
      }
      
      public function set §!!V§(param1:int) : void
      {
         this.§@!S§ = param1;
      }
      
      public function get §]^§() : Number
      {
         return this.§&Z§;
      }
      
      public function set §]^§(param1:Number) : void
      {
         this.§&Z§ = param1;
      }
      
      public function get §86§() : Number
      {
         return this.§%M§;
      }
      
      public function set §86§(param1:Number) : void
      {
         this.§%M§ = param1;
      }
      
      private function §=9§(param1:§@!4§, param2:§@!4§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§^!-§;
         _loc3_.§;!3§ = this.§%M§;
         _loc3_.§]^§ = this.§&Z§;
         if(this.§@!S§ == 0)
         {
            _loc3_.§`!>§.x = 0;
            _loc3_.§`!>§.y = 0;
            _loc3_.§0l§.x = 0;
            _loc3_.§0l§.y = 0;
         }
         else
         {
            if(this.§@!S§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§@!S§ == 2)
            {
               _loc3_.§`!>§.x = this.mPoint1.x;
               _loc3_.§`!>§.y = this.mPoint1.y;
               _loc3_.§0l§.x = this.mPoint2.x;
               _loc3_.§0l§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§9l§().GetWorldPoint(_loc3_.§`!>§);
         var _loc5_:b2Vec2 = param2.§9l§().GetWorldPoint(_loc3_.§0l§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§>q§ = param1.§9l§();
         _loc3_.§6!,§ = param2.§9l§();
         return _loc3_;
      }
      
      private function §8"4§(param1:§@!4§, param2:§@!4§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§^!-§;
         var _loc4_:b2Vec2 = param1.§9l§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§9l§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§2f§(param1.§9l§(),param2.§9l§(),_loc6_);
         return _loc3_;
      }
      
      private function §'h§(param1:§@!4§, param2:§@!4§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§^!-§;
         _loc3_.§2f§(param1.§9l§(),param2.§9l§(),param1.§9l§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§^j§ = this.§2"+§;
         _loc3_.§,u§ = this.§!!;§;
         _loc3_.motorSpeed = this.§++§;
         _loc3_.§!!O§ = this.§1!u§;
         _loc3_.§8Q§ = this.§04§;
         _loc3_.§9!X§ = this.§2!v§;
         return _loc3_;
      }
      
      private function §@!3§(param1:§@!4§, param2:§@!4§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§^!-§;
         _loc3_.§2f§(param1.§9l§(),param2.§9l§(),param1.§9l§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§6!D§,this.§#!7§));
         _loc3_.§^j§ = this.§2"+§;
         _loc3_.§%",§ = this.§04§;
         _loc3_.§>!o§ = this.§1!u§;
         _loc3_.§,u§ = this.§!!;§;
         _loc3_.§"]§ = this.§2!v§;
         _loc3_.motorSpeed = this.§++§;
         return _loc3_;
      }
      
      public function §[!H§(param1:§@!4§, param2:§@!4§) : b2JointDef
      {
         switch(this.§`u§)
         {
            case §-L§:
               return this.§=9§(param1,param2);
            case §["#§:
               return this.§8"4§(param1,param2);
            case §set §:
               return this.§'h§(param1,param2);
            case §#!T§:
               return this.§@!3§(param1,param2);
            default:
               return null;
         }
      }
   }
}

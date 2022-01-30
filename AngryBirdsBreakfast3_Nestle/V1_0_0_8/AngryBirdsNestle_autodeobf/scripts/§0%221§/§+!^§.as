package §0"1§
{
   import §"P§.§,Y§;
   import §"s§.b2DistanceJointDef;
   import §"s§.b2JointDef;
   import §"s§.b2PrismaticJointDef;
   import §"s§.b2RevoluteJointDef;
   import §"s§.b2WeldJointDef;
   import §[K§.b2Vec2;
   import flash.geom.Point;
   
   public class §+!^§
   {
      
      public static const §]?§:uint = 1;
      
      public static const §?"4§:uint = 2;
      
      public static const §"!>§:uint = 3;
      
      public static const §>5§:uint = 4;
      
      public static const §6!w§:uint = 5;
       
      
      private var §2E§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §>m§:Boolean;
      
      private var §;!!§:Number;
      
      private var §9!+§:Number;
      
      private var §-",§:Boolean;
      
      private var §3!e§:Number;
      
      private var §;!U§:Boolean;
      
      private var §=!l§:Boolean;
      
      private var §^!#§:Boolean;
      
      private var §]!O§:Number;
      
      private var §"!c§:Number;
      
      private var §]!;§:Number;
      
      private var §5!d§:int = 0;
      
      private var § _§:Number = 0.0;
      
      private var §1G§:Number = 0.0;
      
      private var §,`§:Number;
      
      private var §=?§:Boolean;
      
      private var §@!!§:Number;
      
      public function §+!^§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§2E§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§>m§ = param7;
         this.§;!!§ = param8;
         this.§9!+§ = param9;
         this.§-",§ = param10;
         this.§3!e§ = param11;
         this.§;!U§ = param12;
         this.§^!#§ = param6;
         this.§]!O§ = param13;
         this.§=?§ = param14;
         this.§@!!§ = param15;
         this.§=!l§ = param16;
      }
      
      public function get type() : int
      {
         return this.§2E§;
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
      
      public function get §0c§() : Boolean
      {
         return this.§>m§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§;!!§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§9!+§;
      }
      
      public function get §4^§() : Boolean
      {
         return this.§-",§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3!e§;
      }
      
      public function get §<!H§() : Boolean
      {
         return this.§;!U§;
      }
      
      public function get §-g§() : Boolean
      {
         return this.§^!#§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§]!O§;
      }
      
      public function get §2!`§() : Boolean
      {
         return this.§=?§;
      }
      
      public function set §2!`§(param1:Boolean) : void
      {
         this.§=?§ = param1;
      }
      
      public function get §>!A§() : Number
      {
         return this.§@!!§;
      }
      
      public function set §>!A§(param1:Number) : void
      {
         this.§@!!§ = param1;
      }
      
      public function get §+!u§() : Boolean
      {
         return this.§=!l§;
      }
      
      public function set §+!u§(param1:Boolean) : void
      {
         this.§=!l§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§"!c§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§"!c§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§]!;§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§]!;§ = param1;
      }
      
      public function get §'!p§() : Number
      {
         return this.§,`§;
      }
      
      public function set §'!p§(param1:Number) : void
      {
         this.§,`§ = param1;
      }
      
      public function get §5!Q§() : int
      {
         return this.§5!d§;
      }
      
      public function set §5!Q§(param1:int) : void
      {
         this.§5!d§ = param1;
      }
      
      public function get §"!%§() : Number
      {
         return this.§ _§;
      }
      
      public function set §"!%§(param1:Number) : void
      {
         this.§ _§ = param1;
      }
      
      public function get §7M§() : Number
      {
         return this.§1G§;
      }
      
      public function set §7M§(param1:Number) : void
      {
         this.§1G§ = param1;
      }
      
      private function §@"#§(param1:§,Y§, param2:§,Y§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§^!#§;
         _loc3_.§2!Z§ = this.§1G§;
         _loc3_.§"!%§ = this.§ _§;
         if(this.§5!d§ == 0)
         {
            _loc3_.§#J§.x = 0;
            _loc3_.§#J§.y = 0;
            _loc3_.§7!A§.x = 0;
            _loc3_.§7!A§.y = 0;
         }
         else
         {
            if(this.§5!d§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§5!d§ == 2)
            {
               _loc3_.§#J§.x = this.mPoint1.x;
               _loc3_.§#J§.y = this.mPoint1.y;
               _loc3_.§7!A§.x = this.mPoint2.x;
               _loc3_.§7!A§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§7J§().GetWorldPoint(_loc3_.§#J§);
         var _loc5_:b2Vec2 = param2.§7J§().GetWorldPoint(_loc3_.§7!A§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§%!T§ = param1.§7J§();
         _loc3_.§,d§ = param2.§7J§();
         return _loc3_;
      }
      
      private function §3!B§(param1:§,Y§, param2:§,Y§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§^!#§;
         var _loc4_:b2Vec2 = param1.§7J§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§7J§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§3!,§(param1.§7J§(),param2.§7J§(),_loc6_);
         return _loc3_;
      }
      
      private function §&!f§(param1:§,Y§, param2:§,Y§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§^!#§;
         _loc3_.§3!,§(param1.§7J§(),param2.§7J§(),param1.§7J§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§ b§ = this.§>m§;
         _loc3_.§-!W§ = this.§-",§;
         _loc3_.motorSpeed = this.§3!e§;
         _loc3_.§'I§ = this.§9!+§;
         _loc3_.§,$§ = this.§;!!§;
         _loc3_.§9"$§ = this.§]!O§;
         return _loc3_;
      }
      
      private function §#5§(param1:§,Y§, param2:§,Y§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§^!#§;
         _loc3_.§3!,§(param1.§7J§(),param2.§7J§(),param1.§7J§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§"!c§,this.§]!;§));
         _loc3_.§ b§ = this.§>m§;
         _loc3_.§<""§ = this.§;!!§;
         _loc3_.§^!H§ = this.§9!+§;
         _loc3_.§-!W§ = this.§-",§;
         _loc3_.§="&§ = this.§]!O§;
         _loc3_.motorSpeed = this.§3!e§;
         return _loc3_;
      }
      
      public function §`$§(param1:§,Y§, param2:§,Y§) : b2JointDef
      {
         switch(this.§2E§)
         {
            case §]?§:
               return this.§@"#§(param1,param2);
            case §?"4§:
               return this.§3!B§(param1,param2);
            case §"!>§:
               return this.§&!f§(param1,param2);
            case §>5§:
               return this.§#5§(param1,param2);
            default:
               return null;
         }
      }
   }
}

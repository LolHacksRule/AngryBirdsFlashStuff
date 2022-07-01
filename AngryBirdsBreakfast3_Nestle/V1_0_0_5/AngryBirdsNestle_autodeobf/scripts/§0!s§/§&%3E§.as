package §0!s§
{
   import §-!A§.b2Vec2;
   import §;!r§.b2DistanceJointDef;
   import §;!r§.b2JointDef;
   import §;!r§.b2PrismaticJointDef;
   import §;!r§.b2RevoluteJointDef;
   import §;!r§.b2WeldJointDef;
   import §=!`§.§=6§;
   import flash.geom.Point;
   
   public class §&>§
   {
      
      public static const §-!3§:uint = 1;
      
      public static const §8!2§:uint = 2;
      
      public static const §^h§:uint = 3;
      
      public static const §]!a§:uint = 4;
      
      public static const §7h§:uint = 5;
       
      
      private var §]" §:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §0w§:Boolean;
      
      private var §"!E§:Number;
      
      private var §?!A§:Number;
      
      private var §="2§:Boolean;
      
      private var §[!o§:Number;
      
      private var §4!e§:Boolean;
      
      private var §6!p§:Boolean;
      
      private var §#!w§:Number;
      
      private var §1!?§:Number;
      
      private var §5!o§:Number;
      
      private var §26§:int = 0;
      
      private var §,"6§:Number = 0.0;
      
      private var §+!<§:Number = 0.0;
      
      private var §,!!§:Number;
      
      public function §&>§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§]" § = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§0w§ = param7;
         this.§"!E§ = param8;
         this.§?!A§ = param9;
         this.§="2§ = param10;
         this.§[!o§ = param11;
         this.§4!e§ = param12;
         this.§6!p§ = param6;
         this.§#!w§ = param13;
      }
      
      public function get type() : int
      {
         return this.§]" §;
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
      
      public function get §,t§() : Boolean
      {
         return this.§0w§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§"!E§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§?!A§;
      }
      
      public function get §1N§() : Boolean
      {
         return this.§="2§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§[!o§;
      }
      
      public function get §?!7§() : Boolean
      {
         return this.§4!e§;
      }
      
      public function get §3=§() : Boolean
      {
         return this.§6!p§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§#!w§;
      }
      
      public function get axisX() : Number
      {
         return this.§1!?§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§1!?§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§5!o§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§5!o§ = param1;
      }
      
      public function get §9" §() : Number
      {
         return this.§,!!§;
      }
      
      public function set §9" §(param1:Number) : void
      {
         this.§,!!§ = param1;
      }
      
      public function get §9!v§() : int
      {
         return this.§26§;
      }
      
      public function set §9!v§(param1:int) : void
      {
         this.§26§ = param1;
      }
      
      public function get §9@§() : Number
      {
         return this.§,"6§;
      }
      
      public function set §9@§(param1:Number) : void
      {
         this.§,"6§ = param1;
      }
      
      public function get §+7§() : Number
      {
         return this.§+!<§;
      }
      
      public function set §+7§(param1:Number) : void
      {
         this.§+!<§ = param1;
      }
      
      private function §#",§(param1:§=6§, param2:§=6§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§6!p§;
         _loc3_.§?!O§ = this.§+!<§;
         _loc3_.§9@§ = this.§,"6§;
         if(this.§26§ == 0)
         {
            _loc3_.§5S§.x = 0;
            _loc3_.§5S§.y = 0;
            _loc3_.§-!9§.x = 0;
            _loc3_.§-!9§.y = 0;
         }
         else
         {
            if(this.§26§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§26§ == 2)
            {
               _loc3_.§5S§.x = this.mPoint1.x;
               _loc3_.§5S§.y = this.mPoint1.y;
               _loc3_.§-!9§.x = this.mPoint2.x;
               _loc3_.§-!9§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§^",§().GetWorldPoint(_loc3_.§5S§);
         var _loc5_:b2Vec2 = param2.§^",§().GetWorldPoint(_loc3_.§-!9§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§@!`§ = param1.§^",§();
         _loc3_.§@$§ = param2.§^",§();
         return _loc3_;
      }
      
      private function §47§(param1:§=6§, param2:§=6§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§6!p§;
         var _loc4_:b2Vec2 = param1.§^",§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§^",§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§"!o§(param1.§^",§(),param2.§^",§(),_loc6_);
         return _loc3_;
      }
      
      private function §,"%§(param1:§=6§, param2:§=6§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§6!p§;
         _loc3_.§"!o§(param1.§^",§(),param2.§^",§(),param1.§^",§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§%"5§ = this.§0w§;
         _loc3_.§0z§ = this.§="2§;
         _loc3_.motorSpeed = this.§[!o§;
         _loc3_.§%![§ = this.§?!A§;
         _loc3_.§7#§ = this.§"!E§;
         _loc3_.§4r§ = this.§#!w§;
         return _loc3_;
      }
      
      private function §%"1§(param1:§=6§, param2:§=6§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§6!p§;
         _loc3_.§"!o§(param1.§^",§(),param2.§^",§(),param1.§^",§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§1!?§,this.§5!o§));
         _loc3_.§%"5§ = this.§0w§;
         _loc3_.§]1§ = this.§"!E§;
         _loc3_.§=!$§ = this.§?!A§;
         _loc3_.§0z§ = this.§="2§;
         _loc3_.§@M§ = this.§#!w§;
         _loc3_.motorSpeed = this.§[!o§;
         return _loc3_;
      }
      
      public function §'!q§(param1:§=6§, param2:§=6§) : b2JointDef
      {
         switch(this.§]" §)
         {
            case §-!3§:
               return this.§#",§(param1,param2);
            case §8!2§:
               return this.§47§(param1,param2);
            case §^h§:
               return this.§,"%§(param1,param2);
            case §]!a§:
               return this.§%"1§(param1,param2);
            default:
               return null;
         }
      }
   }
}

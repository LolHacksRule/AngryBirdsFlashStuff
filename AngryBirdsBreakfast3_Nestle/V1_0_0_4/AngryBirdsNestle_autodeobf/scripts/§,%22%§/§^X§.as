package §,"%§
{
   import §+!0§.b2DistanceJointDef;
   import §+!0§.b2JointDef;
   import §+!0§.b2PrismaticJointDef;
   import §+!0§.b2RevoluteJointDef;
   import §+!0§.b2WeldJointDef;
   import §-%§.b2Vec2;
   import §]!q§.§;!4§;
   import flash.geom.Point;
   
   public class §^X§
   {
      
      public static const §;!'§:uint = 1;
      
      public static const §9"3§:uint = 2;
      
      public static const §""!§:uint = 3;
      
      public static const §2I§:uint = 4;
      
      public static const §6!e§:uint = 5;
       
      
      private var §1!p§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §;!r§:Boolean;
      
      private var §08§:Number;
      
      private var §!U§:Number;
      
      private var §!!S§:Boolean;
      
      private var §@A§:Number;
      
      private var §?!c§:Boolean;
      
      private var §?n§:Boolean;
      
      private var §]"+§:Number;
      
      private var §6u§:Number;
      
      private var §1![§:Number;
      
      private var §6y§:int = 0;
      
      private var §+p§:Number = 0.0;
      
      private var §9!d§:Number = 0.0;
      
      private var §2! §:Number;
      
      public function §^X§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§1!p§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§;!r§ = param7;
         this.§08§ = param8;
         this.§!U§ = param9;
         this.§!!S§ = param10;
         this.§@A§ = param11;
         this.§?!c§ = param12;
         this.§?n§ = param6;
         this.§]"+§ = param13;
      }
      
      public function get type() : int
      {
         return this.§1!p§;
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
      
      public function get §8X§() : Boolean
      {
         return this.§;!r§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§08§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§!U§;
      }
      
      public function get §@!u§() : Boolean
      {
         return this.§!!S§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§@A§;
      }
      
      public function get §7!8§() : Boolean
      {
         return this.§?!c§;
      }
      
      public function get §0!J§() : Boolean
      {
         return this.§?n§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§]"+§;
      }
      
      public function get axisX() : Number
      {
         return this.§6u§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§6u§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§1![§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§1![§ = param1;
      }
      
      public function get §0r§() : Number
      {
         return this.§2! §;
      }
      
      public function set §0r§(param1:Number) : void
      {
         this.§2! § = param1;
      }
      
      public function get §,!H§() : int
      {
         return this.§6y§;
      }
      
      public function set §,!H§(param1:int) : void
      {
         this.§6y§ = param1;
      }
      
      public function get §<!P§() : Number
      {
         return this.§+p§;
      }
      
      public function set §<!P§(param1:Number) : void
      {
         this.§+p§ = param1;
      }
      
      public function get §3C§() : Number
      {
         return this.§9!d§;
      }
      
      public function set §3C§(param1:Number) : void
      {
         this.§9!d§ = param1;
      }
      
      private function §`"&§(param1:§;!4§, param2:§;!4§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§?n§;
         _loc3_.§?X§ = this.§9!d§;
         _loc3_.§<!P§ = this.§+p§;
         if(this.§6y§ == 0)
         {
            _loc3_.§1"&§.x = 0;
            _loc3_.§1"&§.y = 0;
            _loc3_.§-m§.x = 0;
            _loc3_.§-m§.y = 0;
         }
         else
         {
            if(this.§6y§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§6y§ == 2)
            {
               _loc3_.§1"&§.x = this.mPoint1.x;
               _loc3_.§1"&§.y = this.mPoint1.y;
               _loc3_.§-m§.x = this.mPoint2.x;
               _loc3_.§-m§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§4!7§().GetWorldPoint(_loc3_.§1"&§);
         var _loc5_:b2Vec2 = param2.§4!7§().GetWorldPoint(_loc3_.§-m§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§6z§ = param1.§4!7§();
         _loc3_.§@! § = param2.§4!7§();
         return _loc3_;
      }
      
      private function §=!h§(param1:§;!4§, param2:§;!4§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§?n§;
         var _loc4_:b2Vec2 = param1.§4!7§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§4!7§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§,n§(param1.§4!7§(),param2.§4!7§(),_loc6_);
         return _loc3_;
      }
      
      private function §-q§(param1:§;!4§, param2:§;!4§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§?n§;
         _loc3_.§,n§(param1.§4!7§(),param2.§4!7§(),param1.§4!7§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§1[§ = this.§;!r§;
         _loc3_.§!!Q§ = this.§!!S§;
         _loc3_.motorSpeed = this.§@A§;
         _loc3_.§76§ = this.§!U§;
         _loc3_.§[1§ = this.§08§;
         _loc3_.§8z§ = this.§]"+§;
         return _loc3_;
      }
      
      private function §`z§(param1:§;!4§, param2:§;!4§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§?n§;
         _loc3_.§,n§(param1.§4!7§(),param2.§4!7§(),param1.§4!7§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§6u§,this.§1![§));
         _loc3_.§1[§ = this.§;!r§;
         _loc3_.§35§ = this.§08§;
         _loc3_.§8;§ = this.§!U§;
         _loc3_.§!!Q§ = this.§!!S§;
         _loc3_.§;9§ = this.§]"+§;
         _loc3_.motorSpeed = this.§@A§;
         return _loc3_;
      }
      
      public function §3A§(param1:§;!4§, param2:§;!4§) : b2JointDef
      {
         switch(this.§1!p§)
         {
            case §;!'§:
               return this.§`"&§(param1,param2);
            case §9"3§:
               return this.§=!h§(param1,param2);
            case §""!§:
               return this.§-q§(param1,param2);
            case §2I§:
               return this.§`z§(param1,param2);
            default:
               return null;
         }
      }
   }
}

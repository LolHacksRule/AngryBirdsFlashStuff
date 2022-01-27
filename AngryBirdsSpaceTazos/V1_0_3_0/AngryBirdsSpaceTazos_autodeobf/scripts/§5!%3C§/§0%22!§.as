package §5!<§
{
   import §5"D§.§>q§;
   import §?"#§.b2DistanceJointDef;
   import §?"#§.b2JointDef;
   import §?"#§.b2PrismaticJointDef;
   import §?"#§.b2RevoluteJointDef;
   import §?"#§.b2WeldJointDef;
   import §[!f§.b2Vec2;
   import flash.geom.Point;
   
   public class §0"!§
   {
      
      public static const §4"A§:uint = 1;
      
      public static const §3O§:uint = 2;
      
      public static const §3!'§:uint = 3;
      
      public static const §2J§:uint = 4;
      
      public static const §3!]§:uint = 5;
       
      
      private var § !b§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §!"E§:Boolean;
      
      private var §+!§:Number;
      
      private var §;"E§:Number;
      
      private var §5!i§:Boolean;
      
      private var §1O§:Number;
      
      private var §3!e§:Boolean;
      
      private var §>o§:Boolean;
      
      private var §<!"§:Number;
      
      private var §'!b§:Number;
      
      private var § "6§:Number;
      
      private var §?!_§:int = 0;
      
      private var §7!`§:Number = 0.0;
      
      private var § !7§:Number = 0.0;
      
      private var §8"F§:Number;
      
      public function §0"!§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§ !b§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§!"E§ = param7;
         this.§+!§ = param8;
         this.§;"E§ = param9;
         this.§5!i§ = param10;
         this.§1O§ = param11;
         this.§3!e§ = param12;
         this.§>o§ = param6;
         this.§<!"§ = param13;
      }
      
      public function get type() : int
      {
         return this.§ !b§;
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
      
      public function get §3"8§() : Boolean
      {
         return this.§!"E§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§+!§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§;"E§;
      }
      
      public function get §<n§() : Boolean
      {
         return this.§5!i§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§1O§;
      }
      
      public function get §%!Y§() : Boolean
      {
         return this.§3!e§;
      }
      
      public function get §?O§() : Boolean
      {
         return this.§>o§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§<!"§;
      }
      
      public function get axisX() : Number
      {
         return this.§'!b§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§'!b§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§ "6§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§ "6§ = param1;
      }
      
      public function get §4!N§() : Number
      {
         return this.§8"F§;
      }
      
      public function set §4!N§(param1:Number) : void
      {
         this.§8"F§ = param1;
      }
      
      public function get §9!m§() : int
      {
         return this.§?!_§;
      }
      
      public function set §9!m§(param1:int) : void
      {
         this.§?!_§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§7!`§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§7!`§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§ !7§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§ !7§ = param1;
      }
      
      private function §""0§(param1:§>q§, param2:§>q§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§>o§;
         _loc3_.§#!X§ = this.§ !7§;
         _loc3_.dampingRatio = this.§7!`§;
         if(this.§?!_§ == 0)
         {
            _loc3_.§5";§.x = 0;
            _loc3_.§5";§.y = 0;
            _loc3_.§["%§.x = 0;
            _loc3_.§["%§.y = 0;
         }
         else
         {
            if(this.§?!_§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§?!_§ == 2)
            {
               _loc3_.§5";§.x = this.mPoint1.x;
               _loc3_.§5";§.y = this.mPoint1.y;
               _loc3_.§["%§.x = this.mPoint2.x;
               _loc3_.§["%§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§9B§().GetWorldPoint(_loc3_.§5";§);
         var _loc5_:b2Vec2 = param2.§9B§().GetWorldPoint(_loc3_.§["%§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§>!&§ = param1.§9B§();
         _loc3_.§^!r§ = param2.§9B§();
         return _loc3_;
      }
      
      private function §#h§(param1:§>q§, param2:§>q§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§>o§;
         var _loc4_:b2Vec2 = param1.§9B§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§9B§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§'m§(param1.§9B§(),param2.§9B§(),_loc6_);
         return _loc3_;
      }
      
      private function §&!8§(param1:§>q§, param2:§>q§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§>o§;
         _loc3_.§'m§(param1.§9B§(),param2.§9B§(),param1.§9B§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§?!h§ = this.§!"E§;
         _loc3_.§9!"§ = this.§5!i§;
         _loc3_.motorSpeed = this.§1O§;
         _loc3_.§]"E§ = this.§;"E§;
         _loc3_.§&"§ = this.§+!§;
         _loc3_.§]]§ = this.§<!"§;
         return _loc3_;
      }
      
      private function §^"5§(param1:§>q§, param2:§>q§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§>o§;
         _loc3_.§'m§(param1.§9B§(),param2.§9B§(),param1.§9B§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§'!b§,this.§ "6§));
         _loc3_.§?!h§ = this.§!"E§;
         _loc3_.§9"?§ = this.§+!§;
         _loc3_.§'!g§ = this.§;"E§;
         _loc3_.§9!"§ = this.§5!i§;
         _loc3_.§3"#§ = this.§<!"§;
         _loc3_.motorSpeed = this.§1O§;
         return _loc3_;
      }
      
      public function §]"?§(param1:§>q§, param2:§>q§) : b2JointDef
      {
         switch(this.§ !b§)
         {
            case §4"A§:
               return this.§""0§(param1,param2);
            case §3O§:
               return this.§#h§(param1,param2);
            case §3!'§:
               return this.§&!8§(param1,param2);
            case §2J§:
               return this.§^"5§(param1,param2);
            default:
               return null;
         }
      }
   }
}

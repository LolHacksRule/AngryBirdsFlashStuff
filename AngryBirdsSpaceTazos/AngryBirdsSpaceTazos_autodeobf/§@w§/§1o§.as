package §@w§
{
   import §9t§.b2Vec2;
   import §]">§.§<!=§;
   import §`X§.b2DistanceJointDef;
   import §`X§.b2JointDef;
   import §`X§.b2PrismaticJointDef;
   import §`X§.b2RevoluteJointDef;
   import §`X§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §1o§
   {
      
      public static const §[&§:uint = 1;
      
      public static const § !z§:uint = 2;
      
      public static const §4<§:uint = 3;
      
      public static const §="'§:uint = 4;
      
      public static const §`!T§:uint = 5;
       
      
      private var §!k§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §<2§:Boolean;
      
      private var §""2§:Number;
      
      private var §,r§:Number;
      
      private var §>p§:Boolean;
      
      private var § $§:Number;
      
      private var §'"§:Boolean;
      
      private var §1n§:Boolean;
      
      private var §5s§:Number;
      
      private var §?!L§:Number;
      
      private var §!!S§:Number;
      
      private var §>!P§:int = 0;
      
      private var §"k§:Number = 0.0;
      
      private var §"!Z§:Number = 0.0;
      
      private var §?!0§:Number;
      
      public function §1o§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§!k§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§<2§ = param7;
         this.§""2§ = param8;
         this.§,r§ = param9;
         this.§>p§ = param10;
         this.§ $§ = param11;
         this.§'"§ = param12;
         this.§1n§ = param6;
         this.§5s§ = param13;
      }
      
      public function get type() : int
      {
         return this.§!k§;
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
      
      public function get §8D§() : Boolean
      {
         return this.§<2§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§""2§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§,r§;
      }
      
      public function get §2"+§() : Boolean
      {
         return this.§>p§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ $§;
      }
      
      public function get §'=§() : Boolean
      {
         return this.§'"§;
      }
      
      public function get §=4§() : Boolean
      {
         return this.§1n§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§5s§;
      }
      
      public function get axisX() : Number
      {
         return this.§?!L§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§?!L§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§!!S§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§!!S§ = param1;
      }
      
      public function get §%?§() : Number
      {
         return this.§?!0§;
      }
      
      public function set §%?§(param1:Number) : void
      {
         this.§?!0§ = param1;
      }
      
      public function get §!S§() : int
      {
         return this.§>!P§;
      }
      
      public function set §!S§(param1:int) : void
      {
         this.§>!P§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§"k§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§"k§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§"!Z§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§"!Z§ = param1;
      }
      
      private function §?]§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§1n§;
         _loc3_.§^J§ = this.§"!Z§;
         _loc3_.dampingRatio = this.§"k§;
         if(this.§>!P§ == 0)
         {
            _loc3_.§!8§.x = 0;
            _loc3_.§!8§.y = 0;
            _loc3_.§@W§.x = 0;
            _loc3_.§@W§.y = 0;
         }
         else
         {
            if(this.§>!P§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§>!P§ == 2)
            {
               _loc3_.§!8§.x = this.mPoint1.x;
               _loc3_.§!8§.y = this.mPoint1.y;
               _loc3_.§@W§.x = this.mPoint2.x;
               _loc3_.§@W§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§^!z§().GetWorldPoint(_loc3_.§!8§);
         var _loc5_:b2Vec2 = param2.§^!z§().GetWorldPoint(_loc3_.§@W§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§+,§ = param1.§^!z§();
         _loc3_.§"R§ = param2.§^!z§();
         return _loc3_;
      }
      
      private function §4!s§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§1n§;
         var _loc4_:b2Vec2 = param1.§^!z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§^!z§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§>`§(param1.§^!z§(),param2.§^!z§(),_loc6_);
         return _loc3_;
      }
      
      private function §5!g§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§1n§;
         _loc3_.§>`§(param1.§^!z§(),param2.§^!z§(),param1.§^!z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§+"!§ = this.§<2§;
         _loc3_.§+!b§ = this.§>p§;
         _loc3_.motorSpeed = this.§ $§;
         _loc3_.§ !n§ = this.§,r§;
         _loc3_.§'!P§ = this.§""2§;
         _loc3_.§?u§ = this.§5s§;
         return _loc3_;
      }
      
      private function §7,§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§1n§;
         _loc3_.§>`§(param1.§^!z§(),param2.§^!z§(),param1.§^!z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§?!L§,this.§!!S§));
         _loc3_.§+"!§ = this.§<2§;
         _loc3_.§-!L§ = this.§""2§;
         _loc3_.§ !W§ = this.§,r§;
         _loc3_.§+!b§ = this.§>p§;
         _loc3_.§7!;§ = this.§5s§;
         _loc3_.motorSpeed = this.§ $§;
         return _loc3_;
      }
      
      public function §;"<§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         switch(this.§!k§)
         {
            case §[&§:
               return this.§?]§(param1,param2);
            case § !z§:
               return this.§4!s§(param1,param2);
            case §4<§:
               return this.§5!g§(param1,param2);
            case §="'§:
               return this.§7,§(param1,param2);
            default:
               return null;
         }
      }
   }
}

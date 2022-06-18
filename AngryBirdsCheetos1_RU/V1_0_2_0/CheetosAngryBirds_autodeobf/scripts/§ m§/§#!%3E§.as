package § m§
{
   import §&!+§.b2Vec2;
   import §-A§.§%9§;
   import §7C§.b2DistanceJointDef;
   import §7C§.b2JointDef;
   import §7C§.b2PrismaticJointDef;
   import §7C§.b2RevoluteJointDef;
   import §7C§.b2WeldJointDef;
   import §;z§.§!+§;
   import flash.geom.Point;
   
   public class §#!>§
   {
      
      public static const §21§:uint = 1;
      
      public static const §!>§:uint = 2;
      
      public static const §#A§:uint = 3;
      
      public static const §,w§:uint = 4;
      
      public static const § o§:uint = 5;
       
      
      private var §%!J§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §5!Q§:Boolean;
      
      private var §4!^§:Number;
      
      private var §-B§:Number;
      
      private var §8L§:Boolean;
      
      private var §]!L§:Number;
      
      private var §,!R§:Boolean;
      
      private var §?U§:Boolean;
      
      private var §%!M§:Number;
      
      private var § =§:Number;
      
      private var §7Z§:Number;
      
      private var §`h§:Number;
      
      public function §#!>§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§%!J§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§5!Q§ = param7;
         this.§4!^§ = param8;
         this.§-B§ = param9;
         this.§8L§ = param10;
         this.§]!L§ = param11;
         this.§,!R§ = param12;
         this.§?U§ = param6;
         this.§%!M§ = param13;
      }
      
      public function get type() : int
      {
         return this.§%!J§;
      }
      
      public function get index1() : int
      {
         return this.mIndex1;
      }
      
      public function get index2() : int
      {
         return this.mIndex2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §%T§() : Boolean
      {
         return this.§5!Q§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§4!^§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§-B§;
      }
      
      public function get §<!?§() : Boolean
      {
         return this.§8L§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§]!L§;
      }
      
      public function get §]p§() : Boolean
      {
         return this.§,!R§;
      }
      
      public function get §"u§() : Boolean
      {
         return this.§?U§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§%!M§;
      }
      
      public function get axisX() : Number
      {
         return this.§ =§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§ =§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§7Z§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§7Z§ = param1;
      }
      
      public function get §&e§() : Number
      {
         return this.§`h§;
      }
      
      public function set §&e§(param1:Number) : void
      {
         this.§`h§ = param1;
      }
      
      public function §?!K§(param1:§!+§, param2:§!+§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§%!J§)
         {
            case §21§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§?U§;
               _loc3_.§5!0§ = 4;
               _loc3_.§,!=§ = 0.5;
               _loc3_.length = §%9§.§<Q§(param1,param2);
               _loc3_.§1U§(param1.§^!V§(),param2.§^!V§(),param1.§^!V§().GetPosition(),param2.§^!V§().GetPosition());
               return _loc3_;
            case §!>§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§?U§;
               _loc4_.§1U§(param1.§^!V§(),param2.§^!V§(),param1.§^!V§().§^!&§());
               return _loc4_;
            case §#A§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§?U§;
               _loc5_.§1U§(param1.§^!V§(),param2.§^!V§(),param1.§^!V§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§2!'§ = this.§5!Q§;
               _loc5_.§&!>§ = this.§8L§;
               _loc5_.motorSpeed = this.§]!L§;
               _loc5_.§,v§ = this.§-B§;
               _loc5_.§!g§ = this.§4!^§;
               _loc5_.§]f§ = this.§%!M§;
               return _loc5_;
            case §,w§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§?U§;
               _loc6_.§1U§(param1.§^!V§(),param2.§^!V§(),param1.§^!V§().§^!&§(),new b2Vec2(this.§ =§,this.§7Z§));
               _loc6_.§2!'§ = !!this.§,!R§ ? false : Boolean(this.§5!Q§);
               _loc6_.§!!G§ = this.§4!^§;
               _loc6_.§4!_§ = this.§-B§;
               _loc6_.§&!>§ = this.§8L§;
               _loc6_.§8! § = this.§%!M§;
               _loc6_.motorSpeed = this.§]!L§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

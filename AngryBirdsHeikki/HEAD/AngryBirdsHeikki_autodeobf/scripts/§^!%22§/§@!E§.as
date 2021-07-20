package §^!"§
{
   import § !$§.§>C§;
   import §7!3§.b2DistanceJointDef;
   import §7!3§.b2JointDef;
   import §7!3§.b2PrismaticJointDef;
   import §7!3§.b2RevoluteJointDef;
   import §7!3§.b2WeldJointDef;
   import §9!'§.§0!%§;
   import §`!^§.b2Vec2;
   import flash.geom.Point;
   
   public class §@!E§
   {
      
      public static const §51§:uint = 1;
      
      public static const §<!8§:uint = 2;
      
      public static const §@g§:uint = 3;
      
      public static const §,5§:uint = 4;
      
      public static const §'x§:uint = 5;
       
      
      private var §1@§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §]!V§:Boolean;
      
      private var §4!§:Number;
      
      private var §'O§:Number;
      
      private var §+!?§:Boolean;
      
      private var §-X§:Number;
      
      private var §+!g§:Boolean;
      
      private var §&!T§:Boolean;
      
      private var §>!@§:Number;
      
      private var §>h§:Number;
      
      private var §^V§:Number;
      
      private var §]_§:Number;
      
      public function §@!E§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§1@§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§]!V§ = param7;
         this.§4!§ = param8;
         this.§'O§ = param9;
         this.§+!?§ = param10;
         this.§-X§ = param11;
         this.§+!g§ = param12;
         this.§&!T§ = param6;
         this.§>!@§ = param13;
      }
      
      public function get type() : int
      {
         return this.§1@§;
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
      
      public function get §6l§() : Boolean
      {
         return this.§]!V§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§4!§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§'O§;
      }
      
      public function get §@!@§() : Boolean
      {
         return this.§+!?§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§-X§;
      }
      
      public function get §=!M§() : Boolean
      {
         return this.§+!g§;
      }
      
      public function get §4V§() : Boolean
      {
         return this.§&!T§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§>!@§;
      }
      
      public function get axisX() : Number
      {
         return this.§>h§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§>h§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§^V§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§^V§ = param1;
      }
      
      public function get §=!4§() : Number
      {
         return this.§]_§;
      }
      
      public function set §=!4§(param1:Number) : void
      {
         this.§]_§ = param1;
      }
      
      public function §<C§(param1:§>C§, param2:§>C§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§1@§)
         {
            case §51§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§&!T§;
               _loc3_.§^!e§ = 4;
               _loc3_.§4!G§ = 0.5;
               _loc3_.length = §0!%§.§&_§(param1,param2);
               _loc3_.§9!M§(param1.§]!2§(),param2.§]!2§(),param1.§]!2§().GetPosition(),param2.§]!2§().GetPosition());
               return _loc3_;
            case §<!8§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§&!T§;
               _loc4_.§9!M§(param1.§]!2§(),param2.§]!2§(),param1.§]!2§().§-!Q§());
               return _loc4_;
            case §@g§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§&!T§;
               _loc5_.§9!M§(param1.§]!2§(),param2.§]!2§(),param1.§]!2§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§5;§ = !!this.§+!g§ ? false : Boolean(this.§]!V§);
               _loc5_.§`[§ = this.§+!?§;
               _loc5_.motorSpeed = this.§-X§;
               _loc5_.§@!D§ = this.§'O§;
               _loc5_.§82§ = this.§4!§;
               _loc5_.§ i§ = this.§>!@§;
               return _loc5_;
            case §,5§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§&!T§;
               _loc6_.§9!M§(param1.§]!2§(),param2.§]!2§(),param1.§]!2§().§-!Q§(),new b2Vec2(this.§>h§,this.§^V§));
               _loc6_.§5;§ = !!this.§+!g§ ? false : Boolean(this.§]!V§);
               _loc6_.§ M§ = this.§4!§;
               _loc6_.§;9§ = this.§'O§;
               _loc6_.§`[§ = this.§+!?§;
               _loc6_.§2=§ = this.§>!@§;
               _loc6_.motorSpeed = this.§-X§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

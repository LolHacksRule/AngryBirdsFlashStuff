package §,N§
{
   import §4!O§.§&+§;
   import §4N§.b2DistanceJointDef;
   import §4N§.b2JointDef;
   import §4N§.b2PrismaticJointDef;
   import §4N§.b2RevoluteJointDef;
   import §4N§.b2WeldJointDef;
   import §5!?§.§>"§;
   import flash.geom.Point;
   import §implements§.b2Vec2;
   
   public class §&;§
   {
      
      public static const §;!P§:uint = 1;
      
      public static const §1P§:uint = 2;
      
      public static const §"W§:uint = 3;
      
      public static const §]D§:uint = 4;
      
      public static const §<v§:uint = 5;
       
      
      private var §^;§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var § M§:Boolean;
      
      private var §3z§:Number;
      
      private var §+D§:Number;
      
      private var §&&§:Boolean;
      
      private var §"!T§:Number;
      
      private var §=!G§:Boolean;
      
      private var §2!N§:Boolean;
      
      private var §0$§:Number;
      
      private var §3^§:Number;
      
      private var §<b§:Number;
      
      private var §?!b§:Number;
      
      public function §&;§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§^;§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§ M§ = param7;
         this.§3z§ = param8;
         this.§+D§ = param9;
         this.§&&§ = param10;
         this.§"!T§ = param11;
         this.§=!G§ = param12;
         this.§2!N§ = param6;
         this.§0$§ = param13;
      }
      
      public function get type() : int
      {
         return this.§^;§;
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
      
      public function get §#i§() : Boolean
      {
         return this.§ M§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§3z§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§+D§;
      }
      
      public function get §],§() : Boolean
      {
         return this.§&&§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§"!T§;
      }
      
      public function get §#!=§() : Boolean
      {
         return this.§=!G§;
      }
      
      public function get §!%§() : Boolean
      {
         return this.§2!N§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§0$§;
      }
      
      public function get axisX() : Number
      {
         return this.§3^§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§3^§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§<b§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§<b§ = param1;
      }
      
      public function get §?G§() : Number
      {
         return this.§?!b§;
      }
      
      public function set §?G§(param1:Number) : void
      {
         this.§?!b§ = param1;
      }
      
      public function §9!V§(param1:§&+§, param2:§&+§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§^;§)
         {
            case §;!P§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§2!N§;
               _loc3_.§3!_§ = 4;
               _loc3_.§-f§ = 0.5;
               _loc3_.length = §>"§.§!!d§(param1,param2);
               _loc3_.§4$§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().GetPosition(),param2.§?!7§().GetPosition());
               return _loc3_;
            case §1P§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§2!N§;
               _loc4_.§4$§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().GetWorldCenter());
               return _loc4_;
            case §"W§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§2!N§;
               _loc5_.§4$§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§&!8§ = this.§ M§;
               _loc5_.§>&§ = this.§&&§;
               _loc5_.motorSpeed = this.§"!T§;
               _loc5_.§!!G§ = this.§+D§;
               _loc5_.§'%§ = this.§3z§;
               _loc5_.§1L§ = this.§0$§;
               return _loc5_;
            case §]D§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§2!N§;
               _loc6_.§4$§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().GetWorldCenter(),new b2Vec2(this.§3^§,this.§<b§));
               _loc6_.§&!8§ = !!this.§=!G§ ? false : Boolean(this.§ M§);
               _loc6_.§%$§ = this.§3z§;
               _loc6_.§-u§ = this.§+D§;
               _loc6_.§>&§ = this.§&&§;
               _loc6_.§]!L§ = this.§0$§;
               _loc6_.motorSpeed = this.§"!T§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

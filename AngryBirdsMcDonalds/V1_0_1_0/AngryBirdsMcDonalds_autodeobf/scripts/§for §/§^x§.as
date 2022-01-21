package §for §
{
   import §!R§.b2Vec2;
   import §5!G§.§6!Y§;
   import §;N§.b2DistanceJointDef;
   import §;N§.b2JointDef;
   import §;N§.b2PrismaticJointDef;
   import §;N§.b2RevoluteJointDef;
   import §;N§.b2WeldJointDef;
   import §@!b§.§@!k§;
   import flash.geom.Point;
   
   public class §^x§
   {
      
      public static const §^"§:uint = 1;
      
      public static const §-S§:uint = 2;
      
      public static const §@!C§:uint = 3;
      
      public static const §,!h§:uint = 4;
      
      public static const §^U§:uint = 5;
       
      
      private var §'&§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §-!D§:Boolean;
      
      private var §%,§:Number;
      
      private var §'!f§:Number;
      
      private var §!!U§:Boolean;
      
      private var §;!]§:Number;
      
      private var §#R§:Boolean;
      
      private var §+t§:Boolean;
      
      private var §>!J§:Number;
      
      private var §7Q§:Number;
      
      private var §6!'§:Number;
      
      private var §5"§:Number;
      
      public function §^x§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§'&§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§-!D§ = param7;
         this.§%,§ = param8;
         this.§'!f§ = param9;
         this.§!!U§ = param10;
         this.§;!]§ = param11;
         this.§#R§ = param12;
         this.§+t§ = param6;
         this.§>!J§ = param13;
      }
      
      public function get type() : int
      {
         return this.§'&§;
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
      
      public function get §#^§() : Boolean
      {
         return this.§-!D§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§%,§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§'!f§;
      }
      
      public function get §+!e§() : Boolean
      {
         return this.§!!U§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§;!]§;
      }
      
      public function get §[c§() : Boolean
      {
         return this.§#R§;
      }
      
      public function get §3^§() : Boolean
      {
         return this.§+t§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§>!J§;
      }
      
      public function get axisX() : Number
      {
         return this.§7Q§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§7Q§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§6!'§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§6!'§ = param1;
      }
      
      public function get §>'§() : Number
      {
         return this.§5"§;
      }
      
      public function set §>'§(param1:Number) : void
      {
         this.§5"§ = param1;
      }
      
      public function §#!e§(param1:§6!Y§, param2:§6!Y§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§'&§)
         {
            case §^"§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§+t§;
               _loc3_.§'!X§ = 4;
               _loc3_.§7a§ = 0.5;
               _loc3_.length = §@!k§.§>v§(param1,param2);
               _loc3_.§4G§(param1.§>j§(),param2.§>j§(),param1.§>j§().GetPosition(),param2.§>j§().GetPosition());
               return _loc3_;
            case §-S§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§+t§;
               _loc4_.§4G§(param1.§>j§(),param2.§>j§(),param1.§>j§().GetWorldCenter());
               return _loc4_;
            case §@!C§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§+t§;
               _loc5_.§4G§(param1.§>j§(),param2.§>j§(),param1.§>j§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§'#§ = this.§-!D§;
               _loc5_.§8%§ = this.§!!U§;
               _loc5_.motorSpeed = this.§;!]§;
               _loc5_.§3e§ = this.§'!f§;
               _loc5_.§5+§ = this.§%,§;
               _loc5_.§ X§ = this.§>!J§;
               return _loc5_;
            case §,!h§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§+t§;
               _loc6_.§4G§(param1.§>j§(),param2.§>j§(),param1.§>j§().GetWorldCenter(),new b2Vec2(this.§7Q§,this.§6!'§));
               _loc6_.§'#§ = !!this.§#R§ ? false : Boolean(this.§-!D§);
               _loc6_.§^!C§ = this.§%,§;
               _loc6_.§-$§ = this.§'!f§;
               _loc6_.§8%§ = this.§!!U§;
               _loc6_.§';§ = this.§>!J§;
               _loc6_.motorSpeed = this.§;!]§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

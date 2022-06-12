package §?",§
{
   import §3!t§.b2Vec2;
   import §4!#§.§60§;
   import §4"$§.b2DistanceJointDef;
   import §4"$§.b2JointDef;
   import §4"$§.b2PrismaticJointDef;
   import §4"$§.b2RevoluteJointDef;
   import §4"$§.b2WeldJointDef;
   import §[B§.§"d§;
   import flash.geom.Point;
   
   public class §>!l§
   {
      
      public static const §2!9§:uint = 1;
      
      public static const §34§:uint = 2;
      
      public static const §!^§:uint = 3;
      
      public static const §&!#§:uint = 4;
      
      public static const §3>§:uint = 5;
       
      
      private var §`"=§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §<"0§:Boolean;
      
      private var §7<§:Number;
      
      private var §?!r§:Number;
      
      private var §>n§:Boolean;
      
      private var §,"'§:Number;
      
      private var §-6§:Boolean;
      
      private var §^!9§:Boolean;
      
      private var §7",§:Number;
      
      private var §6M§:Number;
      
      private var §03§:Number;
      
      private var §%K§:Number;
      
      public function §>!l§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§`"=§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§<"0§ = param7;
         this.§7<§ = param8;
         this.§?!r§ = param9;
         this.§>n§ = param10;
         this.§,"'§ = param11;
         this.§-6§ = param12;
         this.§^!9§ = param6;
         this.§7",§ = param13;
      }
      
      public function get type() : int
      {
         return this.§`"=§;
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
      
      public function get §]R§() : Boolean
      {
         return this.§<"0§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§7<§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§?!r§;
      }
      
      public function get §2"9§() : Boolean
      {
         return this.§>n§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§,"'§;
      }
      
      public function get §%A§() : Boolean
      {
         return this.§-6§;
      }
      
      public function get §;!#§() : Boolean
      {
         return this.§^!9§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§7",§;
      }
      
      public function get axisX() : Number
      {
         return this.§6M§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§6M§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§03§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§03§ = param1;
      }
      
      public function get §3Z§() : Number
      {
         return this.§%K§;
      }
      
      public function set §3Z§(param1:Number) : void
      {
         this.§%K§ = param1;
      }
      
      public function §`>§(param1:§60§, param2:§60§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§`"=§)
         {
            case §2!9§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§^!9§;
               _loc3_.§&s§ = 4;
               _loc3_.§9!]§ = 0.5;
               _loc3_.length = §"d§.§<!'§(param1,param2);
               _loc3_.§[z§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §34§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§^!9§;
               _loc4_.§[z§(param1.getBody(),param2.getBody(),param1.getBody().§5G§());
               return _loc4_;
            case §!^§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§^!9§;
               _loc5_.§[z§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§%"9§ = this.§<"0§;
               _loc5_.§^g§ = this.§>n§;
               _loc5_.motorSpeed = this.§,"'§;
               _loc5_.§>!8§ = this.§?!r§;
               _loc5_.§2!H§ = this.§7<§;
               _loc5_.§>A§ = this.§7",§;
               return _loc5_;
            case §&!#§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§^!9§;
               _loc6_.§[z§(param1.getBody(),param2.getBody(),param1.getBody().§5G§(),new b2Vec2(this.§6M§,this.§03§));
               _loc6_.§%"9§ = !!this.§-6§ ? false : Boolean(this.§<"0§);
               _loc6_.§0"4§ = this.§7<§;
               _loc6_.§@!B§ = this.§?!r§;
               _loc6_.§^g§ = this.§>n§;
               _loc6_.§3c§ = this.§7",§;
               _loc6_.motorSpeed = this.§,"'§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

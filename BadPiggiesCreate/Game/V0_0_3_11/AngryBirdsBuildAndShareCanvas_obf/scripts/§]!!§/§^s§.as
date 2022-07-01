package §]!!§
{
   import § ""§.§%,§;
   import § q§.b2DistanceJointDef;
   import § q§.b2JointDef;
   import § q§.b2PrismaticJointDef;
   import § q§.b2RevoluteJointDef;
   import § q§.b2WeldJointDef;
   import §+L§.b2Vec2;
   import §1!v§.§@%§;
   import flash.geom.Point;
   
   public class §^s§
   {
      
      public static const §#r§:uint = 1;
      
      public static const §'k§:uint = 2;
      
      public static const §=4§:uint = 3;
      
      public static const §7!b§:uint = 4;
      
      public static const §6Y§:uint = 5;
       
      
      private var §;!<§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §+"9§:Boolean;
      
      private var §with§:Number;
      
      private var §<n§:Number;
      
      private var §'`§:Boolean;
      
      private var §7q§:Number;
      
      private var §,!x§:Boolean;
      
      private var §]]§:Boolean;
      
      private var §9!u§:Number;
      
      private var §^P§:Number;
      
      private var §8_§:Number;
      
      private var § !Z§:Number;
      
      public function §^s§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§;!<§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§+"9§ = param7;
         this.§with§ = param8;
         this.§<n§ = param9;
         this.§'`§ = param10;
         this.§7q§ = param11;
         this.§,!x§ = param12;
         this.§]]§ = param6;
         this.§9!u§ = param13;
      }
      
      public function get type() : int
      {
         return this.§;!<§;
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
      
      public function get §6!3§() : Boolean
      {
         return this.§+"9§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§with§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§<n§;
      }
      
      public function get §6!c§() : Boolean
      {
         return this.§'`§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§7q§;
      }
      
      public function get §#!W§() : Boolean
      {
         return this.§,!x§;
      }
      
      public function get §'J§() : Boolean
      {
         return this.§]]§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§9!u§;
      }
      
      public function get axisX() : Number
      {
         return this.§^P§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§^P§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§8_§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§8_§ = param1;
      }
      
      public function get §8!R§() : Number
      {
         return this.§ !Z§;
      }
      
      public function set §8!R§(param1:Number) : void
      {
         this.§ !Z§ = param1;
      }
      
      public function §8!;§(param1:§%,§, param2:§%,§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§;!<§)
         {
            case §#r§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§]]§;
               _loc3_.§>!J§ = 4;
               _loc3_.§5!y§ = 0.5;
               _loc3_.length = §@%§.§#j§(param1,param2);
               _loc3_.§5$§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §'k§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§]]§;
               _loc4_.§5$§(param1.getBody(),param2.getBody(),param1.getBody().§&A§());
               return _loc4_;
            case §=4§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§]]§;
               _loc5_.§5$§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§[!g§ = this.§+"9§;
               _loc5_.§,!d§ = this.§'`§;
               _loc5_.motorSpeed = this.§7q§;
               _loc5_.§^"3§ = this.§<n§;
               _loc5_.§+_§ = this.§with§;
               _loc5_.§?C§ = this.§9!u§;
               return _loc5_;
            case §7!b§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§]]§;
               _loc6_.§5$§(param1.getBody(),param2.getBody(),param1.getBody().§&A§(),new b2Vec2(this.§^P§,this.§8_§));
               _loc6_.§[!g§ = !!this.§,!x§ ? false : Boolean(this.§+"9§);
               _loc6_.§%B§ = this.§with§;
               _loc6_.§7^§ = this.§<n§;
               _loc6_.§,!d§ = this.§'`§;
               _loc6_.§6!t§ = this.§9!u§;
               _loc6_.motorSpeed = this.§7q§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

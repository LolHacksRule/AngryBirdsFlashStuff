package §"$§
{
   import §!4§.b2DistanceJointDef;
   import §!4§.b2JointDef;
   import §!4§.b2PrismaticJointDef;
   import §!4§.b2RevoluteJointDef;
   import §!4§.b2WeldJointDef;
   import §0,§.b2Vec2;
   import §3!@§.§ s§;
   import §?!§.§%o§;
   import flash.geom.Point;
   
   public class §!t§
   {
      
      public static const §;!;§:uint = 1;
      
      public static const §][§:uint = 2;
      
      public static const §-'§:uint = 3;
      
      public static const §!J§:uint = 4;
      
      public static const §;!H§:uint = 5;
       
      
      private var §,?§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`=§:Boolean;
      
      private var §<`§:Number;
      
      private var §=p§:Number;
      
      private var §'!a§:Boolean;
      
      private var §1!^§:Number;
      
      private var §&L§:Boolean;
      
      private var §"!C§:Boolean;
      
      private var §2!o§:Number;
      
      private var §<!;§:Number;
      
      private var §7!5§:Number;
      
      private var §<n§:Number;
      
      public function §!t§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§,?§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§`=§ = param7;
         this.§<`§ = param8;
         this.§=p§ = param9;
         this.§'!a§ = param10;
         this.§1!^§ = param11;
         this.§&L§ = param12;
         this.§"!C§ = param6;
         this.§2!o§ = param13;
      }
      
      public function get type() : int
      {
         return this.§,?§;
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
      
      public function get §0X§() : Boolean
      {
         return this.§`=§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§<`§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§=p§;
      }
      
      public function get §3!k§() : Boolean
      {
         return this.§'!a§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§1!^§;
      }
      
      public function get §=+§() : Boolean
      {
         return this.§&L§;
      }
      
      public function get §"9§() : Boolean
      {
         return this.§"!C§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§2!o§;
      }
      
      public function get axisX() : Number
      {
         return this.§<!;§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§<!;§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§7!5§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§7!5§ = param1;
      }
      
      public function get §5m§() : Number
      {
         return this.§<n§;
      }
      
      public function set §5m§(param1:Number) : void
      {
         this.§<n§ = param1;
      }
      
      public function §4!B§(param1:§%o§, param2:§%o§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§,?§)
         {
            case §;!;§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§"!C§;
               _loc3_.§+m§ = 4;
               _loc3_.§3Q§ = 0.5;
               _loc3_.length = § s§.§]!m§(param1,param2);
               _loc3_.§,!p§(param1.§2!!§(),param2.§2!!§(),param1.§2!!§().GetPosition(),param2.§2!!§().GetPosition());
               return _loc3_;
            case §][§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§"!C§;
               _loc4_.§,!p§(param1.§2!!§(),param2.§2!!§(),param1.§2!!§().GetWorldCenter());
               return _loc4_;
            case §-'§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§"!C§;
               _loc5_.§,!p§(param1.§2!!§(),param2.§2!!§(),param1.§2!!§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§'! § = this.§`=§;
               _loc5_.§'!+§ = this.§'!a§;
               _loc5_.motorSpeed = this.§1!^§;
               _loc5_.§<6§ = this.§=p§;
               _loc5_.§ !9§ = this.§<`§;
               _loc5_.§ !m§ = this.§2!o§;
               return _loc5_;
            case §!J§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§"!C§;
               _loc6_.§,!p§(param1.§2!!§(),param2.§2!!§(),param1.§2!!§().GetWorldCenter(),new b2Vec2(this.§<!;§,this.§7!5§));
               _loc6_.§'! § = !!this.§&L§ ? false : Boolean(this.§`=§);
               _loc6_.§4!k§ = this.§<`§;
               _loc6_.§4!6§ = this.§=p§;
               _loc6_.§'!+§ = this.§'!a§;
               _loc6_.§3d§ = this.§2!o§;
               _loc6_.motorSpeed = this.§1!^§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

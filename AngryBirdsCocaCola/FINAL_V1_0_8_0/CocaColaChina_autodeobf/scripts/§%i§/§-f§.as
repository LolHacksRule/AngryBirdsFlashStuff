package §%i§
{
   import §&F§.§>!2§;
   import §4!J§.b2DistanceJointDef;
   import §4!J§.b2JointDef;
   import §4!J§.b2PrismaticJointDef;
   import §4!J§.b2RevoluteJointDef;
   import §4!J§.b2WeldJointDef;
   import §6V§.b2Vec2;
   import §^!$§.§?![§;
   import flash.geom.Point;
   
   public class §-f§
   {
      
      public static const §<o§:uint = 1;
      
      public static const §7X§:uint = 2;
      
      public static const §2=§:uint = 3;
      
      public static const §'![§:uint = 4;
      
      public static const §+J§:uint = 5;
       
      
      private var §;6§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §;b§:Boolean;
      
      private var §[!8§:Number;
      
      private var §6!$§:Number;
      
      private var §!!a§:Boolean;
      
      private var §[C§:Number;
      
      private var §5?§:Boolean;
      
      private var §;n§:Boolean;
      
      private var §9R§:Number;
      
      private var §9@§:Number;
      
      private var §+!_§:Number;
      
      private var §#!-§:Number;
      
      public function §-f§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§;6§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§;b§ = param7;
         this.§[!8§ = param8;
         this.§6!$§ = param9;
         this.§!!a§ = param10;
         this.§[C§ = param11;
         this.§5?§ = param12;
         this.§;n§ = param6;
         this.§9R§ = param13;
      }
      
      public function get type() : int
      {
         return this.§;6§;
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
      
      public function get §,3§() : Boolean
      {
         return this.§;b§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§[!8§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§6!$§;
      }
      
      public function get §;3§() : Boolean
      {
         return this.§!!a§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§[C§;
      }
      
      public function get §%!#§() : Boolean
      {
         return this.§5?§;
      }
      
      public function get §?!I§() : Boolean
      {
         return this.§;n§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§9R§;
      }
      
      public function get axisX() : Number
      {
         return this.§9@§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§9@§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§+!_§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§+!_§ = param1;
      }
      
      public function get §2A§() : Number
      {
         return this.§#!-§;
      }
      
      public function set §2A§(param1:Number) : void
      {
         this.§#!-§ = param1;
      }
      
      public function §2!0§(param1:§?![§, param2:§?![§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§;6§)
         {
            case §<o§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§;n§;
               _loc3_.§-!c§ = 4;
               _loc3_.§if § = 0.5;
               _loc3_.length = §>!2§.§-!3§(param1,param2);
               _loc3_.§2#§(param1.§#!!§(),param2.§#!!§(),param1.§#!!§().GetPosition(),param2.§#!!§().GetPosition());
               return _loc3_;
            case §7X§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§;n§;
               _loc4_.§2#§(param1.§#!!§(),param2.§#!!§(),param1.§#!!§().GetWorldCenter());
               return _loc4_;
            case §2=§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§;n§;
               _loc5_.§2#§(param1.§#!!§(),param2.§#!!§(),param1.§#!!§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§7!6§ = this.§;b§;
               _loc5_.§&2§ = this.§!!a§;
               _loc5_.motorSpeed = this.§[C§;
               _loc5_.§3z§ = this.§6!$§;
               _loc5_.§3!E§ = this.§[!8§;
               _loc5_.§>s§ = this.§9R§;
               return _loc5_;
            case §'![§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§;n§;
               _loc6_.§2#§(param1.§#!!§(),param2.§#!!§(),param1.§#!!§().GetWorldCenter(),new b2Vec2(this.§9@§,this.§+!_§));
               _loc6_.§7!6§ = !!this.§5?§ ? false : Boolean(this.§;b§);
               _loc6_.§=!4§ = this.§[!8§;
               _loc6_.§8!G§ = this.§6!$§;
               _loc6_.§&2§ = this.§!!a§;
               _loc6_.§5M§ = this.§9R§;
               _loc6_.motorSpeed = this.§[C§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

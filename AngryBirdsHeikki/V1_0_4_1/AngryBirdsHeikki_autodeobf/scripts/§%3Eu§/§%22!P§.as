package §>u§
{
   import §6>§.b2DistanceJointDef;
   import §6>§.b2JointDef;
   import §6>§.b2PrismaticJointDef;
   import §6>§.b2RevoluteJointDef;
   import §6>§.b2WeldJointDef;
   import §=i§.b2Vec2;
   import §^!7§.§^A§;
   import §`!X§.§5&§;
   import flash.geom.Point;
   
   public class §"!P§
   {
      
      public static const §6!%§:uint = 1;
      
      public static const §6A§:uint = 2;
      
      public static const §?1§:uint = 3;
      
      public static const §7K§:uint = 4;
      
      public static const §8n§:uint = 5;
       
      
      private var §<]§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §7;§:Boolean;
      
      private var §2w§:Number;
      
      private var §%!O§:Number;
      
      private var §@!P§:Boolean;
      
      private var §<F§:Number;
      
      private var §'!W§:Boolean;
      
      private var §'m§:Boolean;
      
      private var §"!3§:Number;
      
      private var §6&§:Number;
      
      private var §"z§:Number;
      
      private var §!!7§:Number;
      
      public function §"!P§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§<]§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§7;§ = param7;
         this.§2w§ = param8;
         this.§%!O§ = param9;
         this.§@!P§ = param10;
         this.§<F§ = param11;
         this.§'!W§ = param12;
         this.§'m§ = param6;
         this.§"!3§ = param13;
      }
      
      public function get type() : int
      {
         return this.§<]§;
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
      
      public function get §"D§() : Boolean
      {
         return this.§7;§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§2w§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§%!O§;
      }
      
      public function get §8!@§() : Boolean
      {
         return this.§@!P§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§<F§;
      }
      
      public function get §9T§() : Boolean
      {
         return this.§'!W§;
      }
      
      public function get §6!N§() : Boolean
      {
         return this.§'m§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§"!3§;
      }
      
      public function get axisX() : Number
      {
         return this.§6&§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§6&§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§"z§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§"z§ = param1;
      }
      
      public function get §6!Z§() : Number
      {
         return this.§!!7§;
      }
      
      public function set §6!Z§(param1:Number) : void
      {
         this.§!!7§ = param1;
      }
      
      public function §@f§(param1:§5&§, param2:§5&§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§<]§)
         {
            case §6!%§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§'m§;
               _loc3_.§<!F§ = 4;
               _loc3_.§%z§ = 0.5;
               _loc3_.length = §^A§.§try §(param1,param2);
               _loc3_.§;!%§(param1.§1!E§(),param2.§1!E§(),param1.§1!E§().GetPosition(),param2.§1!E§().GetPosition());
               return _loc3_;
            case §6A§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§'m§;
               _loc4_.§;!%§(param1.§1!E§(),param2.§1!E§(),param1.§1!E§().§3e§());
               return _loc4_;
            case §?1§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§'m§;
               _loc5_.§;!%§(param1.§1!E§(),param2.§1!E§(),param1.§1!E§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§^a§ = this.§7;§;
               _loc5_.§;r§ = this.§@!P§;
               _loc5_.motorSpeed = this.§<F§;
               _loc5_.§"!Q§ = this.§%!O§;
               _loc5_.§-h§ = this.§2w§;
               _loc5_.§]R§ = this.§"!3§;
               return _loc5_;
            case §7K§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§'m§;
               _loc6_.§;!%§(param1.§1!E§(),param2.§1!E§(),param1.§1!E§().§3e§(),new b2Vec2(this.§6&§,this.§"z§));
               _loc6_.§^a§ = !!this.§'!W§ ? false : Boolean(this.§7;§);
               _loc6_.§1^§ = this.§2w§;
               _loc6_.§??§ = this.§%!O§;
               _loc6_.§;r§ = this.§@!P§;
               _loc6_.§#`§ = this.§"!3§;
               _loc6_.motorSpeed = this.§<F§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

package §4!O§
{
   import §&a§.b2DistanceJointDef;
   import §&a§.b2JointDef;
   import §&a§.b2PrismaticJointDef;
   import §&a§.b2RevoluteJointDef;
   import §&a§.b2WeldJointDef;
   import §2_§.§'u§;
   import §;%§.b2Vec2;
   import §=b§.§`!_§;
   import flash.geom.Point;
   
   public class §0!Q§
   {
      
      public static const §1!O§:uint = 1;
      
      public static const §@,§:uint = 2;
      
      public static const §'E§:uint = 3;
      
      public static const §7Z§:uint = 4;
      
      public static const §,?§:uint = 5;
       
      
      private var §4g§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §^!V§:Boolean;
      
      private var §-3§:Number;
      
      private var §;c§:Number;
      
      private var §!g§:Boolean;
      
      private var §4c§:Number;
      
      private var §%!&§:Boolean;
      
      private var §1<§:Boolean;
      
      private var §4J§:Number;
      
      private var §[A§:Number;
      
      private var §!!8§:Number;
      
      private var §<F§:Number;
      
      public function §0!Q§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§4g§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§^!V§ = param7;
         this.§-3§ = param8;
         this.§;c§ = param9;
         this.§!g§ = param10;
         this.§4c§ = param11;
         this.§%!&§ = param12;
         this.§1<§ = param6;
         this.§4J§ = param13;
      }
      
      public function get type() : int
      {
         return this.§4g§;
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
      
      public function get §;!0§() : Boolean
      {
         return this.§^!V§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§-3§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§;c§;
      }
      
      public function get §`!I§() : Boolean
      {
         return this.§!g§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§4c§;
      }
      
      public function get §9c§() : Boolean
      {
         return this.§%!&§;
      }
      
      public function get §>!a§() : Boolean
      {
         return this.§1<§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§4J§;
      }
      
      public function get axisX() : Number
      {
         return this.§[A§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§[A§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§!!8§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§!!8§ = param1;
      }
      
      public function get §-N§() : Number
      {
         return this.§<F§;
      }
      
      public function set §-N§(param1:Number) : void
      {
         this.§<F§ = param1;
      }
      
      public function §]!R§(param1:§`!_§, param2:§`!_§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§4g§)
         {
            case §1!O§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§1<§;
               _loc3_.§4p§ = 4;
               _loc3_.§2=§ = 0.5;
               _loc3_.length = §'u§.§#$§(param1,param2);
               _loc3_.§'K§(param1.§3J§(),param2.§3J§(),param1.§3J§().GetPosition(),param2.§3J§().GetPosition());
               return _loc3_;
            case §@,§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§1<§;
               _loc4_.§'K§(param1.§3J§(),param2.§3J§(),param1.§3J§().§64§());
               return _loc4_;
            case §'E§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§1<§;
               _loc5_.§'K§(param1.§3J§(),param2.§3J§(),param1.§3J§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§-Q§ = this.§^!V§;
               _loc5_.§2!s§ = this.§!g§;
               _loc5_.motorSpeed = this.§4c§;
               _loc5_.§06§ = this.§;c§;
               _loc5_.§#!I§ = this.§-3§;
               _loc5_.§2I§ = this.§4J§;
               return _loc5_;
            case §7Z§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§1<§;
               _loc6_.§'K§(param1.§3J§(),param2.§3J§(),param1.§3J§().§64§(),new b2Vec2(this.§[A§,this.§!!8§));
               _loc6_.§-Q§ = !!this.§%!&§ ? false : Boolean(this.§^!V§);
               _loc6_.§class§ = this.§-3§;
               _loc6_.§>^§ = this.§;c§;
               _loc6_.§2!s§ = this.§!g§;
               _loc6_.§4!C§ = this.§4J§;
               _loc6_.motorSpeed = this.§4c§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

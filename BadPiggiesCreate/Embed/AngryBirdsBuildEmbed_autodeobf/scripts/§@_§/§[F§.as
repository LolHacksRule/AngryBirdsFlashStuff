package §@_§
{
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   import §>!'§.§<!3§;
   import §[h§.b2DistanceJointDef;
   import §[h§.b2JointDef;
   import §[h§.b2PrismaticJointDef;
   import §[h§.b2RevoluteJointDef;
   import §[h§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §[F§
   {
      
      public static const §>=§:uint = 1;
      
      public static const §"l§:uint = 2;
      
      public static const §&Y§:uint = 3;
      
      public static const §4=§:uint = 4;
      
      public static const §7m§:uint = 5;
       
      
      private var §&"§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §>a§:Boolean;
      
      private var §>!R§:Number;
      
      private var §7o§:Number;
      
      private var §%_§:Boolean;
      
      private var §3s§:Number;
      
      private var §^!_§:Boolean;
      
      private var §1!a§:Boolean;
      
      private var §0`§:Number;
      
      private var §07§:Number;
      
      private var §6!-§:Number;
      
      private var §6!?§:Number;
      
      public function §[F§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§&"§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§>a§ = param7;
         this.§>!R§ = param8;
         this.§7o§ = param9;
         this.§%_§ = param10;
         this.§3s§ = param11;
         this.§^!_§ = param12;
         this.§1!a§ = param6;
         this.§0`§ = param13;
      }
      
      public function get type() : int
      {
         return this.§&"§;
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
      
      public function get §'@§() : Boolean
      {
         return this.§>a§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§>!R§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§7o§;
      }
      
      public function get §'_§() : Boolean
      {
         return this.§%_§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3s§;
      }
      
      public function get §-a§() : Boolean
      {
         return this.§^!_§;
      }
      
      public function get §@!g§() : Boolean
      {
         return this.§1!a§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§0`§;
      }
      
      public function get axisX() : Number
      {
         return this.§07§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§07§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§6!-§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§6!-§ = param1;
      }
      
      public function get §2!l§() : Number
      {
         return this.§6!?§;
      }
      
      public function set §2!l§(param1:Number) : void
      {
         this.§6!?§ = param1;
      }
      
      public function §?!V§(param1:§<!3§, param2:§<!3§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§&"§)
         {
            case §>=§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§1!a§;
               _loc3_.§4,§ = 4;
               _loc3_.§>!k§ = 0.5;
               _loc3_.length = §7E§.§!h§(param1,param2);
               _loc3_.§6!V§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §"l§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§1!a§;
               _loc4_.§6!V§(param1.getBody(),param2.getBody(),param1.getBody().§^I§());
               return _loc4_;
            case §&Y§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§1!a§;
               _loc5_.§6!V§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§'!v§ = this.§>a§;
               _loc5_.§3!J§ = this.§%_§;
               _loc5_.motorSpeed = this.§3s§;
               _loc5_.§+Z§ = this.§7o§;
               _loc5_.§=!1§ = this.§>!R§;
               _loc5_.§=!m§ = this.§0`§;
               return _loc5_;
            case §4=§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§1!a§;
               _loc6_.§6!V§(param1.getBody(),param2.getBody(),param1.getBody().§^I§(),new b2Vec2(this.§07§,this.§6!-§));
               _loc6_.§'!v§ = this.§>a§;
               _loc6_.§7=§ = this.§>!R§;
               _loc6_.§2!q§ = this.§7o§;
               _loc6_.§3!J§ = this.§%_§;
               _loc6_.§=!G§ = this.§0`§;
               _loc6_.motorSpeed = this.§3s§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

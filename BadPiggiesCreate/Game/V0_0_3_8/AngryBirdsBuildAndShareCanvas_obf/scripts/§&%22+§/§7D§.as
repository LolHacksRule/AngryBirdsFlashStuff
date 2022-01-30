package §&"+§
{
   import §!t§.b2DistanceJointDef;
   import §!t§.b2JointDef;
   import §!t§.b2PrismaticJointDef;
   import §!t§.b2RevoluteJointDef;
   import §!t§.b2WeldJointDef;
   import §%!&§.§;!x§;
   import §%h§.§5X§;
   import §9v§.b2Vec2;
   import flash.geom.Point;
   
   public class §7D§
   {
      
      public static const §>!^§:uint = 1;
      
      public static const §4[§:uint = 2;
      
      public static const §&$§:uint = 3;
      
      public static const §#K§:uint = 4;
      
      public static const §]'§:uint = 5;
       
      
      private var §'N§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §#!b§:Boolean;
      
      private var §4!$§:Number;
      
      private var §3E§:Number;
      
      private var §24§:Boolean;
      
      private var § !t§:Number;
      
      private var §`"+§:Boolean;
      
      private var §6!>§:Boolean;
      
      private var § I§:Number;
      
      private var §0b§:Number;
      
      private var §!!3§:Number;
      
      private var §<!J§:Number;
      
      public function §7D§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§'N§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§#!b§ = param7;
         this.§4!$§ = param8;
         this.§3E§ = param9;
         this.§24§ = param10;
         this.§ !t§ = param11;
         this.§`"+§ = param12;
         this.§6!>§ = param6;
         this.§ I§ = param13;
      }
      
      public function get type() : int
      {
         return this.§'N§;
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
      
      public function get §+!Q§() : Boolean
      {
         return this.§#!b§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§4!$§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§3E§;
      }
      
      public function get §""§() : Boolean
      {
         return this.§24§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ !t§;
      }
      
      public function get §1!N§() : Boolean
      {
         return this.§`"+§;
      }
      
      public function get §&m§() : Boolean
      {
         return this.§6!>§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§ I§;
      }
      
      public function get axisX() : Number
      {
         return this.§0b§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§0b§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§!!3§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§!!3§ = param1;
      }
      
      public function get §-l§() : Number
      {
         return this.§<!J§;
      }
      
      public function set §-l§(param1:Number) : void
      {
         this.§<!J§ = param1;
      }
      
      public function §!H§(param1:§;!x§, param2:§;!x§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§'N§)
         {
            case §>!^§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§6!>§;
               _loc3_.§"]§ = 4;
               _loc3_.§2!_§ = 0.5;
               _loc3_.length = §5X§.§`X§(param1,param2);
               _loc3_.§`!&§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §4[§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§6!>§;
               _loc4_.§`!&§(param1.getBody(),param2.getBody(),param1.getBody().§=v§());
               return _loc4_;
            case §&$§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§6!>§;
               _loc5_.§`!&§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§+!6§ = this.§#!b§;
               _loc5_.§-! § = this.§24§;
               _loc5_.motorSpeed = this.§ !t§;
               _loc5_.§@!J§ = this.§3E§;
               _loc5_.§ !H§ = this.§4!$§;
               _loc5_.§!""§ = this.§ I§;
               return _loc5_;
            case §#K§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§6!>§;
               _loc6_.§`!&§(param1.getBody(),param2.getBody(),param1.getBody().§=v§(),new b2Vec2(this.§0b§,this.§!!3§));
               _loc6_.§+!6§ = !!this.§`"+§ ? false : Boolean(this.§#!b§);
               _loc6_.§'m§ = this.§4!$§;
               _loc6_.§#!7§ = this.§3E§;
               _loc6_.§-! § = this.§24§;
               _loc6_.§@!#§ = this.§ I§;
               _loc6_.motorSpeed = this.§ !t§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

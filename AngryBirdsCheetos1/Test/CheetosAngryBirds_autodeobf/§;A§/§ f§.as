package §;A§
{
   import §&!8§.§[g§;
   import §,§.§ p§;
   import §6!H§.b2Vec2;
   import §;!#§.b2DistanceJointDef;
   import §;!#§.b2JointDef;
   import §;!#§.b2PrismaticJointDef;
   import §;!#§.b2RevoluteJointDef;
   import §;!#§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class § f§
   {
      
      public static const §5r§:uint = 1;
      
      public static const §=!%§:uint = 2;
      
      public static const §+!J§:uint = 3;
      
      public static const §?x§:uint = 4;
      
      public static const §+!7§:uint = 5;
       
      
      private var § !H§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §'`§:Boolean;
      
      private var §#O§:Number;
      
      private var §-2§:Number;
      
      private var §@w§:Boolean;
      
      private var §#!e§:Number;
      
      private var §3!§:Boolean;
      
      private var §7O§:Boolean;
      
      private var §[#§:Number;
      
      private var §>8§:Number;
      
      private var §2!A§:Number;
      
      private var §^!B§:Number;
      
      public function § f§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§ !H§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§'`§ = param7;
         this.§#O§ = param8;
         this.§-2§ = param9;
         this.§@w§ = param10;
         this.§#!e§ = param11;
         this.§3!§ = param12;
         this.§7O§ = param6;
         this.§[#§ = param13;
      }
      
      public function get type() : int
      {
         return this.§ !H§;
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
      
      public function get §"P§() : Boolean
      {
         return this.§'`§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#O§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§-2§;
      }
      
      public function get §?!W§() : Boolean
      {
         return this.§@w§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§#!e§;
      }
      
      public function get §4!2§() : Boolean
      {
         return this.§3!§;
      }
      
      public function get §53§() : Boolean
      {
         return this.§7O§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§[#§;
      }
      
      public function get axisX() : Number
      {
         return this.§>8§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§>8§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§2!A§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§2!A§ = param1;
      }
      
      public function get §^`§() : Number
      {
         return this.§^!B§;
      }
      
      public function set §^`§(param1:Number) : void
      {
         this.§^!B§ = param1;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.type = this.type;
         _loc1_.index1 = this.index1;
         _loc1_.index2 = this.index2;
         _loc1_.x1 = this.point1.x;
         _loc1_.x2 = this.point2.y;
         _loc1_.y1 = this.point1.x;
         _loc1_.y2 = this.point2.y;
         _loc1_.limit = this.§"P§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.motor = this.§?!W§;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.backAndForth = this.§4!2§;
         _loc1_.collideConnected = this.§53§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.axisX = this.axisX;
         _loc1_.axisY = this.axisY;
         if(!isNaN(this.§^`§))
         {
            _loc1_.destroyTimer = this.§^`§;
         }
         return _loc1_;
      }
      
      public function §<y§(param1:§[g§, param2:§[g§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§ !H§)
         {
            case §5r§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§7O§;
               _loc3_.§7!=§ = 4;
               _loc3_.§'m§ = 0.5;
               _loc3_.length = § p§.§`8§(param1,param2);
               _loc3_.§#!O§(param1.§`e§(),param2.§`e§(),param1.§`e§().GetPosition(),param2.§`e§().GetPosition());
               return _loc3_;
            case §=!%§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§7O§;
               _loc4_.§#!O§(param1.§`e§(),param2.§`e§(),param1.§`e§().§with§());
               return _loc4_;
            case §+!J§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§7O§;
               _loc5_.§#!O§(param1.§`e§(),param2.§`e§(),param1.§`e§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§ c§ = !!this.§3!§ ? false : Boolean(this.§'`§);
               _loc5_.§32§ = this.§@w§;
               _loc5_.motorSpeed = this.§#!e§;
               _loc5_.§=!9§ = this.§-2§;
               _loc5_.§<!B§ = this.§#O§;
               _loc5_.§[!+§ = this.§[#§;
               return _loc5_;
            case §?x§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§7O§;
               _loc6_.§#!O§(param1.§`e§(),param2.§`e§(),param1.§`e§().§with§(),new b2Vec2(this.§>8§,this.§2!A§));
               _loc6_.§ c§ = !!this.§3!§ ? false : Boolean(this.§'`§);
               _loc6_.§&#§ = this.§#O§;
               _loc6_.§7o§ = this.§-2§;
               _loc6_.§32§ = this.§@w§;
               _loc6_.§&j§ = this.§[#§;
               _loc6_.motorSpeed = this.§#!e§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}

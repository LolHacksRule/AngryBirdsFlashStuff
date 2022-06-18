package §6$"§
{
   import §%!9§.b2Vec2;
   import §3!U§.b2DistanceJointDef;
   import §3!U§.b2JointDef;
   import §3!U§.b2MouseJointDef;
   import §3!U§.b2PrismaticJointDef;
   import §3!U§.b2RevoluteJointDef;
   import §3!U§.b2WeldJointDef;
   import §>!5§.§#-§;
   import flash.geom.Point;
   
   public class § #F§
   {
      
      public static const §0M§:uint = 1;
      
      public static const §]P§:uint = 2;
      
      public static const §+!I§:uint = 3;
      
      public static const §<#4§:uint = 4;
      
      public static const §-#Q§:uint = 5;
      
      public static const §@f§:uint = 6;
       
      
      private var §7#n§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §3$7§:Boolean;
      
      private var §["!§:Number;
      
      private var §0",§:Number;
      
      private var §,!A§:Boolean;
      
      private var §@@§:Number;
      
      private var §!"&§:Boolean;
      
      private var §5"C§:Boolean;
      
      private var §7#c§:Boolean;
      
      private var §,$%§:Number;
      
      private var §," §:Number;
      
      private var §7#-§:Number;
      
      private var §0o§:int = 0;
      
      private var §5"1§:Number = 0.0;
      
      private var §9!C§:Number = 0.0;
      
      private var §^$8§:Number = 0;
      
      private var §=8§:Number = 0;
      
      private var §]$6§:Boolean = false;
      
      private var §=!G§:Boolean = false;
      
      private var §1#A§:Number = 0.0;
      
      public function § #F§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false, param17:int = 0, param18:Number = 0.0, param19:Number = 0.0, param20:Boolean = false, param21:Number = 0, param22:Number = 0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§7#n§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§3$7§ = param7;
         this.§["!§ = param8;
         this.§0",§ = param9;
         this.§,!A§ = param10;
         this.§@@§ = param11;
         this.§!"&§ = param12;
         this.§7#c§ = param6;
         this.§,$%§ = param13;
         this.§]$6§ = param14;
         this.§1#A§ = param15;
         this.§5"C§ = param16;
         this.§0o§ = param17;
         this.§5"1§ = param18;
         this.§9!C§ = param19;
         this.§=!G§ = param20;
         this.§^$8§ = param21;
         this.§=8§ = param22;
      }
      
      public function get type() : int
      {
         return this.§7#n§;
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §;!V§() : Boolean
      {
         return this.§3$7§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§["!§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§0",§;
      }
      
      public function get §""5§() : Boolean
      {
         return this.§,!A§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§@@§;
      }
      
      public function get §`#c§() : Boolean
      {
         return this.§!"&§;
      }
      
      public function get §@#W§() : Boolean
      {
         return this.§7#c§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§,$%§;
      }
      
      public function get breakable() : Boolean
      {
         return this.§]$6§;
      }
      
      public function set breakable(param1:Boolean) : void
      {
         this.§]$6§ = param1;
      }
      
      public function get destroyChild() : Boolean
      {
         return this.§=!G§;
      }
      
      public function set destroyChild(param1:Boolean) : void
      {
         this.§=!G§ = param1;
      }
      
      public function get breakForce() : Number
      {
         return this.§1#A§;
      }
      
      public function set breakForce(param1:Number) : void
      {
         this.§1#A§ = param1;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§5"C§;
      }
      
      public function set isOneWayDestroyed(param1:Boolean) : void
      {
         this.§5"C§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§," §;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§," § = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§7#-§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§7#-§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§^$8§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§^$8§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§=8§;
      }
      
      public function set distanceToDestroyChild(param1:Number) : void
      {
         this.§=8§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§0o§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§0o§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§5"1§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§5"1§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§9!C§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§9!C§ = param1;
      }
      
      private function §do§(param1:§#-§, param2:§#-§) : b2JointDef
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§7#c§;
         _loc3_.§0Y§ = this.§9!C§;
         _loc3_.dampingRatio = this.§5"1§;
         if(this.§0o§ == 0)
         {
            _loc3_.§?#O§.x = 0;
            _loc3_.§?#O§.y = 0;
            _loc3_.§ b§.x = 0;
            _loc3_.§ b§.y = 0;
         }
         else if(this.§0o§ == 1)
         {
            _loc6_ = param1.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc7_ = param2.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc8_ = new b2Vec2(this.mPoint1.x - _loc6_.x,this.mPoint1.y - _loc6_.y);
            _loc9_ = new b2Vec2(this.mPoint2.x - _loc7_.x,this.mPoint2.y - _loc7_.y);
            _loc3_.§?#O§ = _loc8_;
            _loc3_.§ b§ = _loc9_;
         }
         else if(this.§0o§ == 2)
         {
            _loc3_.§?#O§.x = this.mPoint1.x;
            _loc3_.§?#O§.y = this.mPoint1.y;
            _loc3_.§ b§.x = this.mPoint2.x;
            _loc3_.§ b§.y = this.mPoint2.y;
         }
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(_loc3_.§?#O§);
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(_loc3_.§ b§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§0%§ = param1.getBody();
         _loc3_.§%"d§ = param2.getBody();
         return _loc3_;
      }
      
      private function §=v§(param1:§#-§, param2:§#-§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§7#c§;
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§6#Y§(param1.getBody(),param2.getBody(),_loc6_);
         return _loc3_;
      }
      
      private function §81§(param1:§#-§, param2:§#-§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§7#c§;
         _loc3_.§6#Y§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§8!L§ = this.§3$7§;
         _loc3_.§2#8§ = this.§,!A§;
         _loc3_.motorSpeed = this.§@@§;
         _loc3_.§;![§ = this.§0",§;
         _loc3_.§9V§ = this.§["!§;
         _loc3_.§#$;§ = this.§,$%§;
         return _loc3_;
      }
      
      private function §+#'§(param1:§#-§, param2:§#-§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§7#c§;
         var _loc4_:Number = 1;
         var _loc5_:Number = 0;
         if(!isNaN(this.axisX))
         {
            _loc4_ = this.axisX;
         }
         if(!isNaN(this.axisY))
         {
            _loc5_ = this.axisY;
         }
         _loc3_.§6#Y§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(_loc4_,_loc5_));
         _loc3_.§8!L§ = this.§3$7§;
         _loc3_.§3"&§ = this.§["!§;
         _loc3_.§-"o§ = this.§0",§;
         _loc3_.§2#8§ = this.§,!A§;
         _loc3_.§^"a§ = this.§,$%§;
         _loc3_.motorSpeed = this.§@@§;
         return _loc3_;
      }
      
      private function §]!D§(param1:§#-§, param2:§#-§) : b2JointDef
      {
         var _loc3_:b2MouseJointDef = new b2MouseJointDef();
         _loc3_.§0%§ = param2.getBody().§<!T§().§-V§();
         _loc3_.§%"d§ = param2.getBody();
         _loc3_.target.Set(param2.getBody().GetPosition().x,param2.getBody().GetPosition().y);
         _loc3_.collideConnected = this.§7#c§;
         _loc3_.§;#L§ = 1000000;
         return _loc3_;
      }
      
      public function §3!J§(param1:§#-§, param2:§#-§) : b2JointDef
      {
         switch(this.§7#n§)
         {
            case §0M§:
               return this.§do§(param1,param2);
            case §]P§:
               return this.§=v§(param1,param2);
            case §+!I§:
               return this.§81§(param1,param2);
            case §<#4§:
               return this.§+#'§(param1,param2);
            case §@f§:
               return this.§]!D§(param1,param2);
            default:
               return null;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.x1 = this.point1.x;
         _loc1_.y1 = this.point1.y;
         _loc1_.x2 = this.point2.x;
         _loc1_.y2 = this.point2.y;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.limit = this.§;!V§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§""5§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§`#c§;
         _loc1_.collideConnected = this.§@#W§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.index1 = this.id1;
         _loc1_.index2 = this.id2;
         _loc1_.isOneWayDestroyed = this.isOneWayDestroyed;
         _loc1_.coordinateType = this.coordinateType;
         _loc1_.dampingRatio = this.dampingRatio;
         _loc1_.frequency = this.frequency;
         _loc1_.breakable = this.breakable;
         _loc1_.destroyChild = this.destroyChild;
         if(!isNaN(this.annihilationTime))
         {
            _loc1_.annihilationTime = this.annihilationTime;
         }
         if(!isNaN(this.distanceToDestroyChild))
         {
            _loc1_.distanceToDestroyChild = this.distanceToDestroyChild;
         }
         if(!isNaN(this.breakForce))
         {
            _loc1_.breakForce = this.breakForce;
         }
         if(!isNaN(this.axisX))
         {
            _loc1_.axisX = this.axisX;
         }
         if(!isNaN(this.axisY))
         {
            _loc1_.axisY = this.axisY;
         }
         return _loc1_;
      }
   }
}

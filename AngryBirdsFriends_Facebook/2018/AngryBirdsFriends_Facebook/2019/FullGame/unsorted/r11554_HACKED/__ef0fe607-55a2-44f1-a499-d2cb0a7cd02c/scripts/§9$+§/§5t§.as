package §9$+§
{
   import §-!!§.§1#B§;
   import §0"=§.b2DistanceJointDef;
   import §0"=§.b2JointDef;
   import §0"=§.b2MouseJointDef;
   import §0"=§.b2PrismaticJointDef;
   import §0"=§.b2RevoluteJointDef;
   import §0"=§.b2WeldJointDef;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §5t§
   {
      
      public static const §@?§:uint = 1;
      
      public static const §`O§:uint = 2;
      
      public static const §0#i§:uint = 3;
      
      public static const §<#b§:uint = 4;
      
      public static const §;!H§:uint = 5;
      
      public static const §7"0§:uint = 6;
       
      
      private var §=$?§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §,h§:Boolean;
      
      private var §@C§:Number;
      
      private var §<#C§:Number;
      
      private var §5$E§:Boolean;
      
      private var § #l§:Number;
      
      private var §8#;§:Boolean;
      
      private var §7$,§:Boolean;
      
      private var §"#"§:Boolean;
      
      private var §"!`§:Number;
      
      private var §'#"§:Number;
      
      private var §8#8§:Number;
      
      private var §6!b§:int = 0;
      
      private var §@<§:Number = 0.0;
      
      private var §[!$§:Number = 0.0;
      
      private var §@"o§:Number = 0;
      
      private var §@9§:Number = 0;
      
      private var §2!j§:Boolean = false;
      
      private var §>!S§:Boolean = false;
      
      private var §&!m§:Number = 0.0;
      
      private var §]!k§:Boolean = false;
      
      public function §5t§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false, param17:int = 0, param18:Number = 0.0, param19:Number = 0.0, param20:Boolean = false, param21:Number = 0, param22:Number = 0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§=$?§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§,h§ = param7;
         this.§@C§ = param8;
         this.§<#C§ = param9;
         this.§5$E§ = param10;
         this.§ #l§ = param11;
         this.§8#;§ = param12;
         this.§"#"§ = param6;
         this.§"!`§ = param13;
         this.§2!j§ = param14;
         this.§&!m§ = param15;
         this.§7$,§ = param16;
         this.§6!b§ = param17;
         this.§@<§ = param18;
         this.§[!$§ = param19;
         this.§>!S§ = param20;
         this.§@"o§ = param21;
         this.§@9§ = param22;
      }
      
      public function get type() : int
      {
         return this.§=$?§;
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
      
      public function get §1!^§() : Boolean
      {
         return this.§,h§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§@C§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§<#C§;
      }
      
      public function get §##3§() : Boolean
      {
         return this.§5$E§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ #l§;
      }
      
      public function get §@q§() : Boolean
      {
         return this.§8#;§;
      }
      
      public function get §,$7§() : Boolean
      {
         return this.§"#"§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§"!`§;
      }
      
      public function get breakable() : Boolean
      {
         return this.§2!j§;
      }
      
      public function set breakable(param1:Boolean) : void
      {
         this.§2!j§ = param1;
      }
      
      public function get destroyChild() : Boolean
      {
         return this.§>!S§;
      }
      
      public function set destroyChild(param1:Boolean) : void
      {
         this.§>!S§ = param1;
      }
      
      public function get breakForce() : Number
      {
         return this.§&!m§;
      }
      
      public function set breakForce(param1:Number) : void
      {
         this.§&!m§ = param1;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§7$,§;
      }
      
      public function set isOneWayDestroyed(param1:Boolean) : void
      {
         this.§7$,§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§'#"§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§'#"§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§8#8§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§8#8§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§@"o§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§@"o§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§@9§;
      }
      
      public function set distanceToDestroyChild(param1:Number) : void
      {
         this.§@9§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§6!b§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§6!b§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§@<§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§@<§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§[!$§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§[!$§ = param1;
      }
      
      public function get §"Q§() : Boolean
      {
         return this.§]!k§;
      }
      
      public function set §"Q§(param1:Boolean) : void
      {
         this.§]!k§ = param1;
      }
      
      private function § "W§(param1:§1#B§, param2:§1#B§) : b2JointDef
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§"#"§;
         _loc3_.§;$4§ = this.§[!$§;
         _loc3_.dampingRatio = this.§@<§;
         if(this.§6!b§ == 0)
         {
            _loc3_.§ "2§.x = 0;
            _loc3_.§ "2§.y = 0;
            _loc3_.§8!U§.x = 0;
            _loc3_.§8!U§.y = 0;
         }
         else if(this.§6!b§ == 1)
         {
            _loc6_ = param1.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc7_ = param2.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc8_ = new b2Vec2(this.mPoint1.x - _loc6_.x,this.mPoint1.y - _loc6_.y);
            _loc9_ = new b2Vec2(this.mPoint2.x - _loc7_.x,this.mPoint2.y - _loc7_.y);
            _loc3_.§ "2§ = _loc8_;
            _loc3_.§8!U§ = _loc9_;
         }
         else if(this.§6!b§ == 2)
         {
            _loc3_.§ "2§.x = this.mPoint1.x;
            _loc3_.§ "2§.y = this.mPoint1.y;
            _loc3_.§8!U§.x = this.mPoint2.x;
            _loc3_.§8!U§.y = this.mPoint2.y;
         }
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(_loc3_.§ "2§);
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(_loc3_.§8!U§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§%#&§ = param1.getBody();
         _loc3_.§8V§ = param2.getBody();
         return _loc3_;
      }
      
      private function §,M§(param1:§1#B§, param2:§1#B§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§"#"§;
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§7##§(param1.getBody(),param2.getBody(),_loc6_);
         return _loc3_;
      }
      
      private function § T§(param1:§1#B§, param2:§1#B§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§"#"§;
         _loc3_.§7##§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§9!8§ = this.§,h§;
         _loc3_.§4#L§ = this.§5$E§;
         _loc3_.motorSpeed = this.§ #l§;
         _loc3_.§4"Z§ = this.§<#C§;
         _loc3_.§3!o§ = this.§@C§;
         _loc3_.§="6§ = this.§"!`§;
         return _loc3_;
      }
      
      private function § 5§(param1:§1#B§, param2:§1#B§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§"#"§;
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
         _loc3_.§7##§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(_loc4_,_loc5_));
         _loc3_.§9!8§ = this.§,h§;
         _loc3_.§1#i§ = this.§@C§;
         _loc3_.§5#!§ = this.§<#C§;
         _loc3_.§4#L§ = this.§5$E§;
         _loc3_.§"#;§ = this.§"!`§;
         _loc3_.motorSpeed = this.§ #l§;
         return _loc3_;
      }
      
      private function §2"k§(param1:§1#B§, param2:§1#B§) : b2JointDef
      {
         var _loc3_:b2MouseJointDef = new b2MouseJointDef();
         _loc3_.§%#&§ = param2.getBody().GetWorld().§#"d§();
         _loc3_.§8V§ = param2.getBody();
         _loc3_.target.Set(param2.getBody().GetPosition().x,param2.getBody().GetPosition().y);
         _loc3_.collideConnected = this.§"#"§;
         _loc3_.§5$8§ = 1000000;
         return _loc3_;
      }
      
      public function §;<§(param1:§1#B§, param2:§1#B§) : b2JointDef
      {
         switch(this.§=$?§)
         {
            case §@?§:
               return this.§ "W§(param1,param2);
            case §`O§:
               return this.§,M§(param1,param2);
            case §0#i§:
               return this.§ T§(param1,param2);
            case §<#b§:
               return this.§ 5§(param1,param2);
            case §7"0§:
               return this.§2"k§(param1,param2);
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
         _loc1_.limit = this.§1!^§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§##3§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§@q§;
         _loc1_.collideConnected = this.§,$7§;
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

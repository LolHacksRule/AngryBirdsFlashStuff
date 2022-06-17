package §@"v§
{
   import §5v§.b2DistanceJointDef;
   import §5v§.b2JointDef;
   import §5v§.b2MouseJointDef;
   import §5v§.b2PrismaticJointDef;
   import §5v§.b2RevoluteJointDef;
   import §5v§.b2WeldJointDef;
   import §6!R§.b2Vec2;
   import §^0§.§4!t§;
   import flash.geom.Point;
   
   public class §0$=§
   {
      
      public static const §`$5§:uint = 1;
      
      public static const §="s§:uint = 2;
      
      public static const §%!A§:uint = 3;
      
      public static const §<"'§:uint = 4;
      
      public static const §6$7§:uint = 5;
      
      public static const §7!^§:uint = 6;
       
      
      private var §4!$§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §9$5§:Boolean;
      
      private var §9"M§:Number;
      
      private var §"$'§:Number;
      
      private var §8J§:Boolean;
      
      private var §>7§:Number;
      
      private var §<#`§:Boolean;
      
      private var §=#t§:Boolean;
      
      private var §<"2§:Boolean;
      
      private var §[#f§:Number;
      
      private var §>$$§:Number = 0;
      
      private var §;"b§:Number = 0;
      
      private var §-5§:int = 0;
      
      private var §0#v§:Number = 0.0;
      
      private var §'#`§:Number = 0.0;
      
      private var §@!<§:Number = 0;
      
      private var §7#X§:Number = 0;
      
      private var §2#M§:Boolean = false;
      
      private var §`!h§:Boolean = false;
      
      private var §7#;§:Number = 0.0;
      
      private var §+?§:Boolean = false;
      
      public function §0$=§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false, param17:int = 0, param18:Number = 0.0, param19:Number = 0.0, param20:Boolean = false, param21:Number = 0, param22:Number = 0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§4!$§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§9$5§ = param7;
         this.§9"M§ = param8;
         this.§"$'§ = param9;
         this.§8J§ = param10;
         this.§>7§ = param11;
         this.§<#`§ = param12;
         this.§<"2§ = param6;
         this.§[#f§ = param13;
         this.§2#M§ = param14;
         this.§7#;§ = param15;
         this.§=#t§ = param16;
         this.§-5§ = param17;
         this.§0#v§ = param18;
         this.§'#`§ = param19;
         this.§`!h§ = param20;
         this.§@!<§ = param21;
         this.§7#X§ = param22;
      }
      
      public function get type() : int
      {
         return this.§4!$§;
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
      
      public function get §4"H§() : Boolean
      {
         return this.§9$5§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§9"M§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§"$'§;
      }
      
      public function get §`#`§() : Boolean
      {
         return this.§8J§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§>7§;
      }
      
      public function get §1#y§() : Boolean
      {
         return this.§<#`§;
      }
      
      public function get §1"P§() : Boolean
      {
         return this.§<"2§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§[#f§;
      }
      
      public function get breakable() : Boolean
      {
         return this.§2#M§;
      }
      
      public function set breakable(param1:Boolean) : void
      {
         this.§2#M§ = param1;
      }
      
      public function get destroyChild() : Boolean
      {
         return this.§`!h§;
      }
      
      public function set destroyChild(param1:Boolean) : void
      {
         this.§`!h§ = param1;
      }
      
      public function get breakForce() : Number
      {
         return this.§7#;§;
      }
      
      public function set breakForce(param1:Number) : void
      {
         this.§7#;§ = param1;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§=#t§;
      }
      
      public function set isOneWayDestroyed(param1:Boolean) : void
      {
         this.§=#t§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§>$$§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§>$$§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§;"b§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§;"b§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§@!<§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§@!<§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§7#X§;
      }
      
      public function set distanceToDestroyChild(param1:Number) : void
      {
         this.§7#X§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§-5§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§-5§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§0#v§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§0#v§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§'#`§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§'#`§ = param1;
      }
      
      public function get §+;§() : Boolean
      {
         return this.§+?§;
      }
      
      public function set §+;§(param1:Boolean) : void
      {
         this.§+?§ = param1;
      }
      
      private function §8"§(param1:§4!t§, param2:§4!t§) : b2JointDef
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§<"2§;
         _loc3_.§6"%§ = this.§'#`§;
         _loc3_.dampingRatio = this.§0#v§;
         if(this.§-5§ == 0)
         {
            _loc3_.§"#b§.x = 0;
            _loc3_.§"#b§.y = 0;
            _loc3_.§[#b§.x = 0;
            _loc3_.§[#b§.y = 0;
         }
         else if(this.§-5§ == 1)
         {
            _loc6_ = param1.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc7_ = param2.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc8_ = new b2Vec2(this.mPoint1.x - _loc6_.x,this.mPoint1.y - _loc6_.y);
            _loc9_ = new b2Vec2(this.mPoint2.x - _loc7_.x,this.mPoint2.y - _loc7_.y);
            _loc3_.§"#b§ = _loc8_;
            _loc3_.§[#b§ = _loc9_;
         }
         else if(this.§-5§ == 2)
         {
            _loc3_.§"#b§.x = this.mPoint1.x;
            _loc3_.§"#b§.y = this.mPoint1.y;
            _loc3_.§[#b§.x = this.mPoint2.x;
            _loc3_.§[#b§.y = this.mPoint2.y;
         }
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(_loc3_.§"#b§);
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(_loc3_.§[#b§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§,E§ = param1.getBody();
         _loc3_.§&$7§ = param2.getBody();
         return _loc3_;
      }
      
      private function §^$&§(param1:§4!t§, param2:§4!t§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§<"2§;
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§80§(param1.getBody(),param2.getBody(),_loc6_);
         return _loc3_;
      }
      
      private function §3$4§(param1:§4!t§, param2:§4!t§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§<"2§;
         _loc3_.§80§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§0#[§ = this.§9$5§;
         _loc3_.§["y§ = this.§8J§;
         _loc3_.motorSpeed = this.§>7§;
         _loc3_.§^"v§ = this.§"$'§;
         _loc3_.§^!O§ = this.§9"M§;
         _loc3_.§-#o§ = this.§[#f§;
         return _loc3_;
      }
      
      private function §-#u§(param1:§4!t§, param2:§4!t§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§<"2§;
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
         _loc3_.§80§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(_loc4_,_loc5_));
         _loc3_.§0#[§ = this.§9$5§;
         _loc3_.§6##§ = this.§9"M§;
         _loc3_.§'!4§ = this.§"$'§;
         _loc3_.§["y§ = this.§8J§;
         _loc3_.§^"j§ = this.§[#f§;
         _loc3_.motorSpeed = this.§>7§;
         return _loc3_;
      }
      
      private function §<$C§(param1:§4!t§, param2:§4!t§) : b2JointDef
      {
         var _loc3_:b2MouseJointDef = new b2MouseJointDef();
         _loc3_.§,E§ = param2.getBody().GetWorld().§9"O§();
         _loc3_.§&$7§ = param2.getBody();
         _loc3_.target.Set(param2.getBody().GetPosition().x,param2.getBody().GetPosition().y);
         _loc3_.collideConnected = this.§<"2§;
         _loc3_.§?>§ = 1000000;
         return _loc3_;
      }
      
      public function §'L§(param1:§4!t§, param2:§4!t§) : b2JointDef
      {
         switch(this.§4!$§)
         {
            case §`$5§:
               return this.§8"§(param1,param2);
            case §="s§:
               return this.§^$&§(param1,param2);
            case §%!A§:
               return this.§3$4§(param1,param2);
            case §<"'§:
               return this.§-#u§(param1,param2);
            case §7!^§:
               return this.§<$C§(param1,param2);
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
         _loc1_.limit = this.§4"H§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§`#`§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§1#y§;
         _loc1_.collideConnected = this.§1"P§;
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

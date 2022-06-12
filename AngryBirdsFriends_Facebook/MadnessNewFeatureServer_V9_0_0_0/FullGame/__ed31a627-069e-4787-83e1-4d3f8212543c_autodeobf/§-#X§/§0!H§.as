package §-#X§
{
   import §2_§.b2DistanceJointDef;
   import §2_§.b2JointDef;
   import §2_§.b2MouseJointDef;
   import §2_§.b2PrismaticJointDef;
   import §2_§.b2RevoluteJointDef;
   import §2_§.b2WeldJointDef;
   import §6!3§.§!y§;
   import §?!C§.b2Vec2;
   import flash.geom.Point;
   
   public class §0!H§
   {
      
      public static const §0#8§:uint = 1;
      
      public static const §,"!§:uint = 2;
      
      public static const §9"V§:uint = 3;
      
      public static const §in§:uint = 4;
      
      public static const §7$'§:uint = 5;
      
      public static const §3B§:uint = 6;
       
      
      private var §@4§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §=#x§:Boolean;
      
      private var §-#a§:Number;
      
      private var §@9§:Number;
      
      private var §1!d§:Boolean;
      
      private var §!l§:Number;
      
      private var §'$E§:Boolean;
      
      private var §-$;§:Boolean;
      
      private var §5!e§:Boolean;
      
      private var §@r§:Number;
      
      private var §7$$§:Number = 0;
      
      private var §7$4§:Number = 0;
      
      private var §;$D§:int = 0;
      
      private var §;#F§:Number = 0.0;
      
      private var §>"f§:Number = 0.0;
      
      private var §"!;§:Number = 0;
      
      private var §-$8§:Number = 0;
      
      private var §"#A§:Boolean = false;
      
      private var §1!M§:Boolean = false;
      
      private var §8!t§:Number = 0.0;
      
      private var §##!§:Boolean = false;
      
      public function §0!H§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false, param17:int = 0, param18:Number = 0.0, param19:Number = 0.0, param20:Boolean = false, param21:Number = 0, param22:Number = 0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§@4§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§=#x§ = param7;
         this.§-#a§ = param8;
         this.§@9§ = param9;
         this.§1!d§ = param10;
         this.§!l§ = param11;
         this.§'$E§ = param12;
         this.§5!e§ = param6;
         this.§@r§ = param13;
         this.§"#A§ = param14;
         this.§8!t§ = param15;
         this.§-$;§ = param16;
         this.§;$D§ = param17;
         this.§;#F§ = param18;
         this.§>"f§ = param19;
         this.§1!M§ = param20;
         this.§"!;§ = param21;
         this.§-$8§ = param22;
      }
      
      public function get type() : int
      {
         return this.§@4§;
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
      
      public function get §-$§() : Boolean
      {
         return this.§=#x§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§-#a§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§@9§;
      }
      
      public function get §?"]§() : Boolean
      {
         return this.§1!d§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§!l§;
      }
      
      public function get §<$A§() : Boolean
      {
         return this.§'$E§;
      }
      
      public function get §8w§() : Boolean
      {
         return this.§5!e§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§@r§;
      }
      
      public function get breakable() : Boolean
      {
         return this.§"#A§;
      }
      
      public function set breakable(param1:Boolean) : void
      {
         this.§"#A§ = param1;
      }
      
      public function get destroyChild() : Boolean
      {
         return this.§1!M§;
      }
      
      public function set destroyChild(param1:Boolean) : void
      {
         this.§1!M§ = param1;
      }
      
      public function get breakForce() : Number
      {
         return this.§8!t§;
      }
      
      public function set breakForce(param1:Number) : void
      {
         this.§8!t§ = param1;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§-$;§;
      }
      
      public function set isOneWayDestroyed(param1:Boolean) : void
      {
         this.§-$;§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§7$$§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§7$$§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§7$4§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§7$4§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§"!;§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§"!;§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§-$8§;
      }
      
      public function set distanceToDestroyChild(param1:Number) : void
      {
         this.§-$8§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§;$D§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§;$D§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§;#F§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§;#F§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§>"f§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§>"f§ = param1;
      }
      
      public function get §#&§() : Boolean
      {
         return this.§##!§;
      }
      
      public function set §#&§(param1:Boolean) : void
      {
         this.§##!§ = param1;
      }
      
      private function §7!n§(param1:§!y§, param2:§!y§) : b2JointDef
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§5!e§;
         _loc3_.§,K§ = this.§>"f§;
         _loc3_.dampingRatio = this.§;#F§;
         if(this.§;$D§ == 0)
         {
            _loc3_.§0$&§.x = 0;
            _loc3_.§0$&§.y = 0;
            _loc3_.§=#I§.x = 0;
            _loc3_.§=#I§.y = 0;
         }
         else if(this.§;$D§ == 1)
         {
            _loc6_ = param1.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc7_ = param2.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc8_ = new b2Vec2(this.mPoint1.x - _loc6_.x,this.mPoint1.y - _loc6_.y);
            _loc9_ = new b2Vec2(this.mPoint2.x - _loc7_.x,this.mPoint2.y - _loc7_.y);
            _loc3_.§0$&§ = _loc8_;
            _loc3_.§=#I§ = _loc9_;
         }
         else if(this.§;$D§ == 2)
         {
            _loc3_.§0$&§.x = this.mPoint1.x;
            _loc3_.§0$&§.y = this.mPoint1.y;
            _loc3_.§=#I§.x = this.mPoint2.x;
            _loc3_.§=#I§.y = this.mPoint2.y;
         }
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(_loc3_.§0$&§);
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(_loc3_.§=#I§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§;#X§ = param1.getBody();
         _loc3_.§`7§ = param2.getBody();
         return _loc3_;
      }
      
      private function §2Z§(param1:§!y§, param2:§!y§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§5!e§;
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§1!W§(param1.getBody(),param2.getBody(),_loc6_);
         return _loc3_;
      }
      
      private function §,!S§(param1:§!y§, param2:§!y§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§5!e§;
         _loc3_.§1!W§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§8!R§ = this.§=#x§;
         _loc3_.§2`§ = this.§1!d§;
         _loc3_.motorSpeed = this.§!l§;
         _loc3_.§;"D§ = this.§@9§;
         _loc3_.§`#F§ = this.§-#a§;
         _loc3_.§@!o§ = this.§@r§;
         return _loc3_;
      }
      
      private function §9i§(param1:§!y§, param2:§!y§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§5!e§;
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
         _loc3_.§1!W§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(_loc4_,_loc5_));
         _loc3_.§8!R§ = this.§=#x§;
         _loc3_.§5#8§ = this.§-#a§;
         _loc3_.§'!Q§ = this.§@9§;
         _loc3_.§2`§ = this.§1!d§;
         _loc3_.§;w§ = this.§@r§;
         _loc3_.motorSpeed = this.§!l§;
         return _loc3_;
      }
      
      private function §3"&§(param1:§!y§, param2:§!y§) : b2JointDef
      {
         var _loc3_:b2MouseJointDef = new b2MouseJointDef();
         _loc3_.§;#X§ = param2.getBody().GetWorld().§[O§();
         _loc3_.§`7§ = param2.getBody();
         _loc3_.target.Set(param2.getBody().GetPosition().x,param2.getBody().GetPosition().y);
         _loc3_.collideConnected = this.§5!e§;
         _loc3_.§=!g§ = 1000000;
         return _loc3_;
      }
      
      public function §<$D§(param1:§!y§, param2:§!y§) : b2JointDef
      {
         switch(this.§@4§)
         {
            case §0#8§:
               return this.§7!n§(param1,param2);
            case §,"!§:
               return this.§2Z§(param1,param2);
            case §9"V§:
               return this.§,!S§(param1,param2);
            case §in§:
               return this.§9i§(param1,param2);
            case §3B§:
               return this.§3"&§(param1,param2);
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
         _loc1_.limit = this.§-$§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§?"]§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§<$A§;
         _loc1_.collideConnected = this.§8w§;
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

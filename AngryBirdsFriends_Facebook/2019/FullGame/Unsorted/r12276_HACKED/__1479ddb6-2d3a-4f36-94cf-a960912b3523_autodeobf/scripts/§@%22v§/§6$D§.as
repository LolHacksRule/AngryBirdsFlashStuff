package §@"v§
{
   import §#Z§.§6J§;
   import §5v§.b2Joint;
   import §^0§.§=Q§;
   import flash.geom.Point;
   
   public class §6$D§ extends §0$=§
   {
       
      
      private var §1K§:b2Joint;
      
      public var §;#d§:§6J§;
      
      public var debug_object_1:§=Q§;
      
      public var debug_object_2:§=Q§;
      
      private var §^$A§:Boolean = false;
      
      public function §6$D§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §0#t§(param1:§0$=§) : §6$D§
      {
         var _loc2_:§6$D§ = new §6$D§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§1"P§,param1.§4"H§,param1.lowerLimit,param1.upperLimit,param1.§`#`§,param1.motorSpeed,param1.§1#y§,param1.maxTorque,param1.breakable,param1.breakForce,param1.isOneWayDestroyed);
         _loc2_.annihilationTime = param1.annihilationTime;
         _loc2_.distanceToDestroyChild = param1.distanceToDestroyChild;
         _loc2_.isOneWayDestroyed = param1.isOneWayDestroyed;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.coordinateType = param1.coordinateType;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         _loc2_.breakable = param1.breakable;
         _loc2_.breakForce = param1.breakForce;
         _loc2_.destroyChild = param1.destroyChild;
         _loc2_.§+;§ = param1.§+;§;
         return _loc2_;
      }
      
      public function get §<!"§() : b2Joint
      {
         return this.§1K§;
      }
      
      public function set §<!"§(param1:b2Joint) : void
      {
         this.§1K§ = param1;
      }
      
      public function get §6!c§() : Boolean
      {
         return this.§^$A§;
      }
      
      public function set §6!c§(param1:Boolean) : void
      {
         this.§^$A§ = param1;
      }
   }
}

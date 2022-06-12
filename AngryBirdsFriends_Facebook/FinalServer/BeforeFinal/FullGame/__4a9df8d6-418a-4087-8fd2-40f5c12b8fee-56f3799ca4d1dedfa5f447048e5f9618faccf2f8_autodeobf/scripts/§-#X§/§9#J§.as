package §-#X§
{
   import §2_§.b2Joint;
   import §6!3§.§;!U§;
   import §6#H§.§,"$§;
   import flash.geom.Point;
   
   public class §9#J§ extends §0!H§
   {
       
      
      private var §;!!§:b2Joint;
      
      public var §@#j§:§,"$§;
      
      public var debug_object_1:§;!U§;
      
      public var debug_object_2:§;!U§;
      
      private var §!#x§:Boolean = false;
      
      public function §9#J§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §>""§(param1:§0!H§) : §9#J§
      {
         var _loc2_:§9#J§ = new §9#J§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§8w§,param1.§-$§,param1.lowerLimit,param1.upperLimit,param1.§?"]§,param1.motorSpeed,param1.§<$A§,param1.maxTorque,param1.breakable,param1.breakForce,param1.isOneWayDestroyed);
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
         _loc2_.§#&§ = param1.§#&§;
         return _loc2_;
      }
      
      public function get § !§() : b2Joint
      {
         return this.§;!!§;
      }
      
      public function set § !§(param1:b2Joint) : void
      {
         this.§;!!§ = param1;
      }
      
      public function get §>&§() : Boolean
      {
         return this.§!#x§;
      }
      
      public function set §>&§(param1:Boolean) : void
      {
         this.§!#x§ = param1;
      }
   }
}

package §,#L§
{
   import §9$§.§],§;
   import §@!O§.b2Joint;
   import §[#a§.§="@§;
   import flash.geom.Point;
   
   public class §=#O§ extends §8"y§
   {
       
      
      private var §@"g§:b2Joint;
      
      public var §"#F§:§],§;
      
      public var debug_object_1:§="@§;
      
      public var debug_object_2:§="@§;
      
      public function §=#O§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §;#6§(param1:§8"y§) : §=#O§
      {
         var _loc2_:§=#O§ = new §=#O§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§%"_§,param1.§=I§,param1.lowerLimit,param1.upperLimit,param1.§`$§,param1.motorSpeed,param1.§83§,param1.maxTorque,param1.breakable,param1.breakForce,param1.isOneWayDestroyed);
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
         return _loc2_;
      }
      
      public function get §&#X§() : b2Joint
      {
         return this.§@"g§;
      }
      
      public function set §&#X§(param1:b2Joint) : void
      {
         this.§@"g§ = param1;
      }
   }
}

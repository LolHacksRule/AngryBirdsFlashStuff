package §8+§
{
   import §%Z§.§&!-§;
   import §,H§.b2Joint;
   import §`!B§.§]!J§;
   import flash.geom.Point;
   
   public class §4!c§ extends §2>§
   {
       
      
      private var §@!?§:b2Joint;
      
      public var §`!W§:§]!J§;
      
      public var debug_object_1:§&!-§;
      
      public var debug_object_2:§&!-§;
      
      public function §4!c§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §'!@§(param1:§2>§) : §4!c§
      {
         var _loc2_:§4!c§ = new §4!c§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§?!C§,param1.§&!§,param1.lowerLimit,param1.upperLimit,param1.§,!r§,param1.motorSpeed,param1.§=i§,param1.maxTorque,param1.isBreakable,param1.minBreakForce,param1.§;!O§);
         _loc2_.annihilationTime = param1.annihilationTime;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.coordinateType = param1.coordinateType;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         return _loc2_;
      }
      
      public function get §6"§() : b2Joint
      {
         return this.§@!?§;
      }
      
      public function set §6"§(param1:b2Joint) : void
      {
         this.§@!?§ = param1;
      }
   }
}

package §<"B§
{
   import §!!U§.§2"D§;
   import §1!2§.b2Joint;
   import §7P§.§&#=§;
   import flash.geom.Point;
   
   public class §-!5§ extends §-#'§
   {
       
      
      private var §2"w§:b2Joint;
      
      public var §`"t§:§2"D§;
      
      public var debug_object_1:§&#=§;
      
      public var debug_object_2:§&#=§;
      
      public function §-!5§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §]!3§(param1:§-#'§) : §-!5§
      {
         var _loc2_:§-!5§ = new §-!5§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§4C§,param1.§9"r§,param1.lowerLimit,param1.upperLimit,param1.§?"B§,param1.motorSpeed,param1.§@[§,param1.maxTorque,param1.isBreakable,param1.minBreakForce,param1.§-"A§);
         _loc2_.annihilationTime = param1.annihilationTime;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.coordinateType = param1.coordinateType;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         return _loc2_;
      }
      
      public function get §##>§() : b2Joint
      {
         return this.§2"w§;
      }
      
      public function set §##>§(param1:b2Joint) : void
      {
         this.§2"w§ = param1;
      }
   }
}

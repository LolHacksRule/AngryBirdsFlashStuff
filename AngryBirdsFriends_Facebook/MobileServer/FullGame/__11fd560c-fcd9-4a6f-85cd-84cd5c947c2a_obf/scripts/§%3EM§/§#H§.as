package §>M§
{
   import § ! §.b2Joint;
   import §8§.§4!y§;
   import §^"S§.§'#E§;
   import flash.geom.Point;
   
   public class §#H§ extends §3!1§
   {
       
      
      private var §=S§:b2Joint;
      
      public var §^"N§:§'#E§;
      
      public var debug_object_1:§4!y§;
      
      public var debug_object_2:§4!y§;
      
      public function §#H§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §5#1§(param1:§3!1§) : §#H§
      {
         var _loc2_:§#H§ = new §#H§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§9L§,param1.§%!>§,param1.lowerLimit,param1.upperLimit,param1.§;#S§,param1.motorSpeed,param1.§^v§,param1.maxTorque,param1.breakable,param1.breakForce,param1.isOneWayDestroyed);
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
         _loc2_.§2'§ = param1.§2'§;
         return _loc2_;
      }
      
      public function get §%#Z§() : b2Joint
      {
         return this.§=S§;
      }
      
      public function set §%#Z§(param1:b2Joint) : void
      {
         this.§=S§ = param1;
      }
   }
}

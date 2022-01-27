package §5!<§
{
   import §4"@§.§6p§;
   import §5"D§.§6!!§;
   import §?"#§.b2Joint;
   import flash.geom.Point;
   
   public class §6"?§ extends §0"!§
   {
       
      
      private var §?!N§:b2Joint;
      
      public var §[!N§:§6p§;
      
      public var debug_object_1:§6!!§;
      
      public var debug_object_2:§6!!§;
      
      public function §6"?§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §#"%§(param1:§0"!§) : §6"?§
      {
         var _loc2_:§6"?§ = new §6"?§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§?O§,param1.§3"8§,param1.lowerLimit,param1.upperLimit,param1.§<n§,param1.motorSpeed,param1.§%!Y§,param1.maxTorque);
         _loc2_.§4!N§ = param1.§4!N§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§9!m§ = param1.§9!m§;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         return _loc2_;
      }
      
      public function get §[""§() : b2Joint
      {
         return this.§?!N§;
      }
      
      public function set §[""§(param1:b2Joint) : void
      {
         this.§?!N§ = param1;
      }
   }
}

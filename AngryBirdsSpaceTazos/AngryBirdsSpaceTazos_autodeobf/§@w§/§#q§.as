package §@w§
{
   import §7!8§.§&!D§;
   import §]">§.§1!0§;
   import §`X§.b2Joint;
   import flash.geom.Point;
   
   public class §#q§ extends §1o§
   {
       
      
      private var §6W§:b2Joint;
      
      public var §<!a§:§&!D§;
      
      public var debug_object_1:§1!0§;
      
      public var debug_object_2:§1!0§;
      
      public function §#q§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §@!<§(param1:§1o§) : §#q§
      {
         var _loc2_:§#q§ = new §#q§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§=4§,param1.§8D§,param1.lowerLimit,param1.upperLimit,param1.§2"+§,param1.motorSpeed,param1.§'=§,param1.maxTorque);
         _loc2_.§%?§ = param1.§%?§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§!S§ = param1.§!S§;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         return _loc2_;
      }
      
      public function get §&_§() : b2Joint
      {
         return this.§6W§;
      }
      
      public function set §&_§(param1:b2Joint) : void
      {
         this.§6W§ = param1;
      }
   }
}

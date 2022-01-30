package §<!A§
{
   import §"!-§.§[-§;
   import §0!Y§.§-f§;
   import §>H§.b2Joint;
   import flash.geom.Point;
   
   public class §@!h§ extends §=!s§
   {
       
      
      private var §2!j§:b2Joint;
      
      public var §#!$§:§-f§;
      
      public var debug_object_1:§[-§;
      
      public var debug_object_2:§[-§;
      
      public function §@!h§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §4"4§(param1:§=!s§) : §@!h§
      {
         var _loc2_:§@!h§ = new §@!h§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§#!;§,param1.§#"4§,param1.lowerLimit,param1.upperLimit,param1.§,![§,param1.motorSpeed,param1.§?"'§,param1.maxTorque);
         _loc2_.§%g§ = param1.§%g§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§!!V§ = param1.§!!V§;
         _loc2_.§86§ = param1.§86§;
         _loc2_.§]^§ = param1.§]^§;
         return _loc2_;
      }
      
      public function get §=!<§() : b2Joint
      {
         return this.§2!j§;
      }
      
      public function set §=!<§(param1:b2Joint) : void
      {
         this.§2!j§ = param1;
      }
   }
}

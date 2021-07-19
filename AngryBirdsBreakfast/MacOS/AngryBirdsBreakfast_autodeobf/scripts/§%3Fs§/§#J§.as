package §?s§
{
   import §+C§.b2Joint;
   import §,z§.§"_§;
   import §6![§.§ !f§;
   import flash.geom.Point;
   
   public class §#J§ extends §%!%§
   {
       
      
      private var §9!g§:b2Joint;
      
      public var §6!i§:§ !f§;
      
      public var debug_object_1:§"_§;
      
      public var debug_object_2:§"_§;
      
      public function §#J§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §while§(param1:§%!%§) : §#J§
      {
         var _loc2_:§#J§ = new §#J§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§2!&§,param1.§ ]§,param1.lowerLimit,param1.upperLimit,param1.§'"&§,param1.motorSpeed,param1.§=!f§,param1.maxTorque,param1.§&!5§,param1.§"!d§,param1.§!e§);
         _loc2_.§03§ = param1.§03§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§ U§ = param1.§ U§;
         _loc2_.§^!_§ = param1.§^!_§;
         _loc2_.§,8§ = param1.§,8§;
         return _loc2_;
      }
      
      public function get §%E§() : b2Joint
      {
         return this.§9!g§;
      }
      
      public function set §%E§(param1:b2Joint) : void
      {
         this.§9!g§ = param1;
      }
   }
}

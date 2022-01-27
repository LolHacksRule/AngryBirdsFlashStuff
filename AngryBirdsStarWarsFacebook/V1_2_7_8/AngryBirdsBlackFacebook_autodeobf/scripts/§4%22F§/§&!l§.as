package §4"F§
{
   import §1"s§.§#"b§;
   import §2",§.b2Joint;
   import §6"R§.§4!w§;
   import flash.geom.Point;
   
   public class §&!l§ extends §["N§
   {
       
      
      private var §>_§:b2Joint;
      
      public var §<#3§:§#"b§;
      
      public var debug_object_1:§4!w§;
      
      public var debug_object_2:§4!w§;
      
      public function §&!l§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §`"A§(param1:§["N§) : §&!l§
      {
         var _loc2_:§&!l§ = new §&!l§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§^Q§,param1.§8#,§,param1.lowerLimit,param1.upperLimit,param1.§?o§,param1.motorSpeed,param1.§=q§,param1.maxTorque,param1.isBreakable,param1.minBreakForce,param1.§7!n§);
         _loc2_.annihilationTime = param1.annihilationTime;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.coordinateType = param1.coordinateType;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         return _loc2_;
      }
      
      public function get § "A§() : b2Joint
      {
         return this.§>_§;
      }
      
      public function set § "A§(param1:b2Joint) : void
      {
         this.§>_§ = param1;
      }
   }
}

package §9!H§
{
   import §&g§.b2Joint;
   import flash.geom.Point;
   
   public class §else§ extends §,;§
   {
       
      
      private var §?[§:b2Joint;
      
      public function §else§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §]!Y§(param1:§,;§) : §else§
      {
         var _loc2_:§else§ = new §else§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§^'§,param1.§,]§,param1.lowerLimit,param1.upperLimit,param1.§'"3§,param1.motorSpeed,param1.§>!f§,param1.maxTorque);
         _loc2_.§2o§ = param1.§2o§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         return _loc2_;
      }
      
      public function get §["2§() : b2Joint
      {
         return this.§?[§;
      }
      
      public function set §["2§(param1:b2Joint) : void
      {
         this.§?[§ = param1;
      }
      
      public function set index1(param1:int) : void
      {
         mIndex1 = param1;
      }
      
      public function set index2(param1:int) : void
      {
         mIndex2 = param1;
      }
   }
}

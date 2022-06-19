package §;A§
{
   import §;!#§.b2Joint;
   import flash.geom.Point;
   
   public class §=y§ extends § f§
   {
       
      
      private var §"j§:b2Joint;
      
      public function §=y§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §^b§(param1:§ f§) : §=y§
      {
         var _loc2_:§=y§ = new §=y§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§53§,param1.§"P§,param1.lowerLimit,param1.upperLimit,param1.§?!W§,param1.motorSpeed,param1.§4!2§,param1.maxTorque);
         _loc2_.§^`§ = param1.§^`§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         return _loc2_;
      }
      
      public function get §@!&§() : b2Joint
      {
         return this.§"j§;
      }
      
      public function set §@!&§(param1:b2Joint) : void
      {
         this.§"j§ = param1;
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

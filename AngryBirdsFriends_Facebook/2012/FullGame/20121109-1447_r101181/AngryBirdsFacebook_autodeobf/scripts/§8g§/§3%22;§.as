package §8g§
{
   import §8k§.b2Joint;
   import flash.geom.Point;
   
   public class §3";§ extends §?!V§
   {
       
      
      private var §-!R§:b2Joint;
      
      public function §3";§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §<N§(param1:§?!V§) : §3";§
      {
         var _loc2_:§3";§ = new §3";§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§;i§,param1.§2!&§,param1.lowerLimit,param1.upperLimit,param1.§!!F§,param1.motorSpeed,param1.§3U§,param1.maxTorque);
         _loc2_.§]A§ = param1.§]A§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         return _loc2_;
      }
      
      public function get §0!i§() : b2Joint
      {
         return this.§-!R§;
      }
      
      public function set §0!i§(param1:b2Joint) : void
      {
         this.§-!R§ = param1;
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

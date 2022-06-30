package § "§
{
   import §"d§.b2Joint;
   import flash.geom.Point;
   
   public class §'9§ extends §'s§
   {
       
      
      private var §1%§:b2Joint;
      
      public function §'9§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §]%§(param1:§'s§) : §'9§
      {
         var _loc2_:§'9§ = new §'9§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§>!S§,param1.§2!;§,param1.lowerLimit,param1.upperLimit,param1.§[z§,param1.motorSpeed,param1.§%0§,param1.maxTorque);
         _loc2_.§07§ = param1.§07§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         return _loc2_;
      }
      
      public function get §5!O§() : b2Joint
      {
         return this.§1%§;
      }
      
      public function set §5!O§(param1:b2Joint) : void
      {
         this.§1%§ = param1;
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

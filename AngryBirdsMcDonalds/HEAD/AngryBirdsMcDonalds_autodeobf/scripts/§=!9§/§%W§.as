package §=!9§
{
   import §!!M§.b2Joint;
   import flash.geom.Point;
   
   public class §%W§ extends §=g§
   {
       
      
      private var §9!b§:b2Joint;
      
      public function §%W§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §%q§(param1:§=g§) : §%W§
      {
         var _loc2_:§%W§ = new §%W§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§]!V§,param1.§!0§,param1.lowerLimit,param1.upperLimit,param1.§6L§,param1.motorSpeed,param1.§=M§,param1.maxTorque);
         _loc2_.§>!B§ = param1.§>!B§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         return _loc2_;
      }
      
      public function get §#%§() : b2Joint
      {
         return this.§9!b§;
      }
      
      public function set §#%§(param1:b2Joint) : void
      {
         this.§9!b§ = param1;
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

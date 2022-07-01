package §7!<§
{
   import § !=§.§break§;
   import §2!k§.§;;§;
   import §<!?§.b2Joint;
   import flash.geom.Point;
   
   public class §<6§ extends §"k§
   {
       
      
      private var §@?§:b2Joint;
      
      public var §>l§:§break§;
      
      public var debug_object_1:§;;§;
      
      public var debug_object_2:§;;§;
      
      public function §<6§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §]!q§(param1:§"k§) : §<6§
      {
         var _loc2_:§<6§ = new §<6§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§4J§,param1.§]!3§,param1.lowerLimit,param1.upperLimit,param1.§0!m§,param1.motorSpeed,param1.§7#§,param1.maxTorque);
         _loc2_.§?!k§ = param1.§?!k§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§[!r§ = param1.§[!r§;
         _loc2_.§%w§ = param1.§%w§;
         _loc2_.§#0§ = param1.§#0§;
         return _loc2_;
      }
      
      public function get §-!9§() : b2Joint
      {
         return this.§@?§;
      }
      
      public function set §-!9§(param1:b2Joint) : void
      {
         this.§@?§ = param1;
      }
   }
}

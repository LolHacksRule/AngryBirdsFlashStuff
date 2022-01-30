package §0!s§
{
   import §,!q§.§#!H§;
   import §;!r§.b2Joint;
   import §=!`§.§^^§;
   import flash.geom.Point;
   
   public class §1!;§ extends §&>§
   {
       
      
      private var §!u§:b2Joint;
      
      public var §4!b§:§#!H§;
      
      public var debug_object_1:§^^§;
      
      public var debug_object_2:§^^§;
      
      public function §1!;§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §#!J§(param1:§&>§) : §1!;§
      {
         var _loc2_:§1!;§ = new §1!;§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§3=§,param1.§,t§,param1.lowerLimit,param1.upperLimit,param1.§1N§,param1.motorSpeed,param1.§?!7§,param1.maxTorque);
         _loc2_.§9" § = param1.§9" §;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§9!v§ = param1.§9!v§;
         _loc2_.§+7§ = param1.§+7§;
         _loc2_.§9@§ = param1.§9@§;
         return _loc2_;
      }
      
      public function get §7m§() : b2Joint
      {
         return this.§!u§;
      }
      
      public function set §7m§(param1:b2Joint) : void
      {
         this.§!u§ = param1;
      }
   }
}

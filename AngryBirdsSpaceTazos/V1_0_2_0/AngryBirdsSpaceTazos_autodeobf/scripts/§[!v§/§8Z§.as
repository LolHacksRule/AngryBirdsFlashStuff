package §[!v§
{
   import §'!&§.§ "E§;
   import §+D§.b2Joint;
   import §[,§.§5,§;
   import flash.geom.Point;
   
   public class §8Z§ extends §5!-§
   {
       
      
      private var §,@§:b2Joint;
      
      public var § "?§:§ "E§;
      
      public var debug_object_1:§5,§;
      
      public var debug_object_2:§5,§;
      
      public function §8Z§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §%b§(param1:§5!-§) : §8Z§
      {
         var _loc2_:§8Z§ = new §8Z§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§@p§,param1.§9!u§,param1.lowerLimit,param1.upperLimit,param1.§1"'§,param1.motorSpeed,param1.§'!o§,param1.maxTorque);
         _loc2_.§?!=§ = param1.§?!=§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§ T§ = param1.§ T§;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         return _loc2_;
      }
      
      public function get §6G§() : b2Joint
      {
         return this.§,@§;
      }
      
      public function set §6G§(param1:b2Joint) : void
      {
         this.§,@§ = param1;
      }
   }
}

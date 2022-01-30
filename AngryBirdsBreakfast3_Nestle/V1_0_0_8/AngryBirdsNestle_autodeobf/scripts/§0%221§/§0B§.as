package §0"1§
{
   import §"P§.§^!x§;
   import §"s§.b2Joint;
   import §-![§.§5!<§;
   import flash.geom.Point;
   
   public class §0B§ extends §+!^§
   {
       
      
      private var §,%§:b2Joint;
      
      public var §^!]§:§5!<§;
      
      public var debug_object_1:§^!x§;
      
      public var debug_object_2:§^!x§;
      
      public function §0B§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public static function §!]§(param1:§+!^§) : §0B§
      {
         var _loc2_:§0B§ = new §0B§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§-g§,param1.§0c§,param1.lowerLimit,param1.upperLimit,param1.§4^§,param1.motorSpeed,param1.§<!H§,param1.maxTorque,param1.§2!`§,param1.§>!A§,param1.§+!u§);
         _loc2_.§'!p§ = param1.§'!p§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§5!Q§ = param1.§5!Q§;
         _loc2_.§7M§ = param1.§7M§;
         _loc2_.§"!%§ = param1.§"!%§;
         return _loc2_;
      }
      
      public function get §5v§() : b2Joint
      {
         return this.§,%§;
      }
      
      public function set §5v§(param1:b2Joint) : void
      {
         this.§,%§ = param1;
      }
   }
}

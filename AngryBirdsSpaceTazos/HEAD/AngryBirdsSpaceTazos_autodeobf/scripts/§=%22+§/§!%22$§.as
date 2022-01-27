package §="+§
{
   import §&!]§.§7!J§;
   import §9"!§.§^"3§;
   import §[9§.b2Joint;
   import flash.geom.Point;
   
   public class §!"$§ extends §0E§
   {
       
      
      private var §'h§:b2Joint;
      
      public var §3a§:§7!J§;
      
      public var debug_object_1:§^"3§;
      
      public var debug_object_2:§^"3§;
      
      public function §!"$§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §#!T§(param1:§0E§) : §!"$§
      {
         var _loc2_:§!"$§ = new §!"$§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§2N§,param1.§?!H§,param1.lowerLimit,param1.upperLimit,param1.§ !,§,param1.motorSpeed,param1.§^!V§,param1.maxTorque);
         _loc2_.§#!#§ = param1.§#!#§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         _loc2_.§`"'§ = param1.§`"'§;
         _loc2_.frequency = param1.frequency;
         _loc2_.dampingRatio = param1.dampingRatio;
         return _loc2_;
      }
      
      public function get §"n§() : b2Joint
      {
         return this.§'h§;
      }
      
      public function set §"n§(param1:b2Joint) : void
      {
         this.§'h§ = param1;
      }
   }
}

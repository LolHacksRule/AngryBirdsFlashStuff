package §&K§
{
   import com.rovio.Box2D.Dynamics.Joints.b2Joint;
   import flash.geom.Point;
   
   public class §3r§ extends set
   {
       
      
      private var §2i§:b2Joint;
      
      public function §3r§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §0C§(param1:set) : §3r§
      {
         var _loc2_:§3r§ = new §3r§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§!%§,param1.§3s§,param1.lowerLimit,param1.upperLimit,param1.§6M§,param1.motorSpeed,param1.§!M§,param1.maxTorque);
         _loc2_.§63§ = param1.§63§;
         _loc2_.axisX = param1.axisX;
         _loc2_.axisY = param1.axisY;
         return _loc2_;
      }
      
      public function get §"3§() : b2Joint
      {
         return this.§2i§;
      }
      
      public function set §"3§(param1:b2Joint) : void
      {
         this.§2i§ = param1;
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

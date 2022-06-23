package §^G§
{
   import com.rovio.Box2D.Dynamics.Joints.b2Joint;
   import flash.geom.Point;
   
   public class §4c§ extends §`8§
   {
       
      
      private var §3s§:b2Joint;
      
      public function §4c§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §+^§(param1:§`8§) : §4c§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4c§ = new §4c§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§@=§,param1.§1D§,param1.lowerLimit,param1.upperLimit,param1.§8l§,param1.motorSpeed,param1.§',§,param1.maxTorque);
         if(!_loc4_)
         {
            _loc2_.§=e§ = param1.§=e§;
            if(_loc3_)
            {
               §§goto(addr74);
            }
            §§goto(addr80);
         }
         addr74:
         _loc2_.axisX = param1.axisX;
         if(_loc3_)
         {
            addr80:
            _loc2_.axisY = param1.axisY;
         }
         return _loc2_;
      }
      
      public function get §<,§() : b2Joint
      {
         return this.§3s§;
      }
      
      public function set §<,§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3s§ = param1;
         }
      }
      
      public function set index1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mIndex1 = param1;
         }
      }
      
      public function set index2(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mIndex2 = param1;
         }
      }
   }
}

package §3"5§
{
   import § !V§.b2Joint;
   import flash.geom.Point;
   
   public class § !,§ extends §6O§
   {
       
      
      private var §>!1§:b2Joint;
      
      public function § !,§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §8!A§(param1:§6O§) : § !,§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ !,§ = new § !,§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§8![§,param1.§<"3§,param1.lowerLimit,param1.upperLimit,param1.§1!j§,param1.motorSpeed,param1.§1!e§,param1.maxTorque);
         if(!_loc3_)
         {
            _loc2_.§1!Q§ = param1.§1!Q§;
         }
         while(true)
         {
            _loc2_.axisX = param1.axisX;
            while(_loc4_)
            {
               _loc2_.axisY = param1.axisY;
               if(!(_loc3_ && param1))
               {
                  return _loc2_;
               }
            }
         }
      }
      
      public function get §5""§() : b2Joint
      {
         return this.§>!1§;
      }
      
      public function set §5""§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>!1§ = param1;
         }
      }
      
      public function set index1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mIndex1 = param1;
         }
      }
      
      public function set index2(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            mIndex2 = param1;
         }
      }
   }
}

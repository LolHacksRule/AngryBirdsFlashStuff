package §[!P§
{
   import §,!0§.b2Joint;
   import flash.geom.Point;
   
   public class §@R§ extends §8!z§
   {
       
      
      private var §%!=§:b2Joint;
      
      public function §@R§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §2"6§(param1:§8!z§) : §@R§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@R§ = new §@R§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§=Z§,param1.§!z§,param1.lowerLimit,param1.upperLimit,param1.§=@§,param1.motorSpeed,param1.§!!H§,param1.maxTorque);
         if(_loc4_)
         {
            _loc2_.§%!B§ = param1.§%!B§;
            while(true)
            {
               _loc2_.axisX = param1.axisX;
               §§goto(addr95);
            }
         }
         addr95:
         while(true)
         {
            _loc2_.axisY = param1.axisY;
            if(_loc4_)
            {
               if(!(_loc3_ && §@R§))
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc2_;
      }
      
      public function get §=!%§() : b2Joint
      {
         return this.§%!=§;
      }
      
      public function set §=!%§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%!=§ = param1;
         }
      }
      
      public function set index1(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mIndex1 = param1;
         }
      }
      
      public function set index2(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mIndex2 = param1;
         }
      }
   }
}

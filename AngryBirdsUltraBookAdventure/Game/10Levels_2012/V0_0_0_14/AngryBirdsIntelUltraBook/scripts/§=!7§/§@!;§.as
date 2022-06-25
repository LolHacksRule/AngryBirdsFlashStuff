package §=!7§
{
   import §[!N§.b2Joint;
   import flash.geom.Point;
   
   public class §@!;§ extends §-!`§
   {
       
      
      private var §5!T§:b2Joint;
      
      public function §@!;§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §+1§(param1:§-!`§) : §@!;§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@!;§ = new §@!;§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§2!Q§,param1.§]!L§,param1.lowerLimit,param1.upperLimit,param1.§0w§,param1.motorSpeed,param1.§8!A§,param1.maxTorque);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.§;!4§ = param1.§;!4§;
            while(true)
            {
               _loc2_.axisX = param1.axisX;
               loop1:
               while(_loc3_ || §@!;§)
               {
                  while(true)
                  {
                     _loc2_.axisY = param1.axisY;
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc2_;
               }
            }
         }
         §§goto(addr99);
      }
      
      public function get § E§() : b2Joint
      {
         return this.§5!T§;
      }
      
      public function set § E§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!T§ = param1;
         }
      }
      
      public function set index1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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

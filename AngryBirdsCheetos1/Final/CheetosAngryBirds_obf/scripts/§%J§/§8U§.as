package §%J§
{
   import §[!8§.b2Joint;
   import flash.geom.Point;
   
   public class §8U§ extends §8C§
   {
       
      
      private var §#!^§:b2Joint;
      
      public function §8U§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §0l§(param1:§8C§) : §8U§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8U§ = new §8U§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§]!,§,param1.§ h§,param1.lowerLimit,param1.upperLimit,param1.§5Q§,param1.motorSpeed,param1.§6!'§,param1.maxTorque);
         if(_loc4_ || _loc3_)
         {
            _loc2_.§-7§ = param1.§-7§;
         }
         do
         {
            _loc2_.axisX = param1.axisX;
            do
            {
               _loc2_.axisY = param1.axisY;
            }
            while(_loc3_ && §8U§);
            
         }
         while(_loc3_ && §8U§);
         
         return _loc2_;
      }
      
      public function get §2B§() : b2Joint
      {
         return this.§#!^§;
      }
      
      public function set §2B§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#!^§ = param1;
         }
      }
      
      public function set index1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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

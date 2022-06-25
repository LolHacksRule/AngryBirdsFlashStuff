package §&V§
{
   import §%t§.b2Joint;
   import flash.geom.Point;
   
   public class §>!G§ extends §3V§
   {
       
      
      private var §,N§:b2Joint;
      
      public function §>!G§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §8!j§(param1:§3V§) : §>!G§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>!G§ = new §>!G§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§>!H§,param1.§in §,param1.lowerLimit,param1.upperLimit,param1.§3-§,param1.motorSpeed,param1.§=!h§,param1.maxTorque);
         if(!_loc4_)
         {
            _loc2_.§]!f§ = param1.§]!f§;
         }
         do
         {
            _loc2_.axisX = param1.axisX;
            do
            {
               _loc2_.axisY = param1.axisY;
            }
            while(!(_loc3_ || _loc2_));
            
         }
         while(_loc4_ && §>!G§);
         
         return _loc2_;
      }
      
      public function get §7#§() : b2Joint
      {
         return this.§,N§;
      }
      
      public function set §7#§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,N§ = param1;
         }
      }
      
      public function set index1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            mIndex1 = param1;
         }
      }
      
      public function set index2(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            mIndex2 = param1;
         }
      }
   }
}

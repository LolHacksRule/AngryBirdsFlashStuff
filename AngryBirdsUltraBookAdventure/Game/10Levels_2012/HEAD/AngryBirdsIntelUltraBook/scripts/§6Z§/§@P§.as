package §6Z§
{
   import §5!_§.b2Joint;
   import flash.geom.Point;
   
   public class §@P§ extends §&D§
   {
       
      
      private var §^R§:b2Joint;
      
      public function §@P§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §98§(param1:§&D§) : §@P§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@P§ = new §@P§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§4!Q§,param1.§5J§,param1.lowerLimit,param1.upperLimit,param1.§=E§,param1.motorSpeed,param1.§8!&§,param1.maxTorque);
         if(!_loc4_)
         {
            _loc2_.§1_§ = param1.§1_§;
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
         while(_loc4_ && §@P§);
         
         return _loc2_;
      }
      
      public function get §^!E§() : b2Joint
      {
         return this.§^R§;
      }
      
      public function set §^!E§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^R§ = param1;
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

package §@_§
{
   import §[h§.b2Joint;
   import flash.geom.Point;
   
   public class §1M§ extends §[F§
   {
       
      
      private var §@D§:b2Joint;
      
      public function §1M§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §3H§(param1:§[F§) : §1M§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1M§ = new §1M§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§@!g§,param1.§'@§,param1.lowerLimit,param1.upperLimit,param1.§'_§,param1.motorSpeed,param1.§-a§,param1.maxTorque);
         if(!(_loc4_ && param1))
         {
            _loc2_.§2!l§ = param1.§2!l§;
            if(_loc3_)
            {
               §§goto(addr79);
            }
            §§goto(addr85);
         }
         addr79:
         _loc2_.axisX = param1.axisX;
         if(!_loc4_)
         {
            addr85:
            _loc2_.axisY = param1.axisY;
         }
         return _loc2_;
      }
      
      public function get §0i§() : b2Joint
      {
         return this.§@D§;
      }
      
      public function set §0i§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@D§ = param1;
         }
      }
      
      public function set index1(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mIndex1 = param1;
         }
      }
      
      public function set index2(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mIndex2 = param1;
         }
      }
   }
}

package §4!O§
{
   import §&a§.b2Joint;
   import flash.geom.Point;
   
   public class §5b§ extends §0!Q§
   {
       
      
      private var §`!X§:b2Joint;
      
      public function §5b§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §4!Q§(param1:§0!Q§) : §5b§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5b§ = new §5b§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§>!a§,param1.§;!0§,param1.lowerLimit,param1.upperLimit,param1.§`!I§,param1.motorSpeed,param1.§9c§,param1.maxTorque);
         if(_loc3_)
         {
            _loc2_.§-N§ = param1.§-N§;
         }
         do
         {
            _loc2_.axisX = param1.axisX;
            do
            {
               _loc2_.axisY = param1.axisY;
            }
            while(_loc4_);
            
         }
         while(!(_loc3_ || §5b§));
         
         return _loc2_;
      }
      
      public function get §^^§() : b2Joint
      {
         return this.§`!X§;
      }
      
      public function set §^^§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`!X§ = param1;
         }
      }
      
      public function set index1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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

package §_-by§
{
   import §_-09-§.b2Joint;
   import flash.geom.Point;
   
   public class §_-06y§ extends §_-fi§
   {
       
      
      private var §_-0q§:b2Joint;
      
      public function §_-06y§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §_-kk§(param1:§_-fi§) : §_-06y§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-06y§ = new §_-06y§(param1.type,param1.index1,param1.index2,param1.point1,param1.point2,param1.§_-v7§,param1.§_-Wm§,param1.lowerLimit,param1.upperLimit,param1.§_-5R§,param1.motorSpeed,param1.§_-01R§,param1.maxTorque);
         if(!_loc3_)
         {
            _loc2_.§_-0e§ = param1.§_-0e§;
         }
         do
         {
            _loc2_.axisX = param1.axisX;
            do
            {
               _loc2_.axisY = param1.axisY;
            }
            while(_loc3_ && _loc2_);
            
         }
         while(!(_loc4_ || _loc3_));
         
         return _loc2_;
      }
      
      public function get §_-0C3§() : b2Joint
      {
         return this.§_-0q§;
      }
      
      public function set §_-0C3§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-0q§ = param1;
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            mIndex2 = param1;
         }
      }
   }
}

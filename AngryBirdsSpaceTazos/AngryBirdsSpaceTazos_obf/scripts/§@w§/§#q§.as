package §@w§
{
   import §7!8§.§&!D§;
   import §]">§.§1!0§;
   import §`X§.b2Joint;
   import flash.geom.Point;
   
   public class §#q§ extends §1o§
   {
       
      
      private var §6W§:b2Joint;
      
      public var §<!a§:§&!D§;
      
      public var debug_object_1:§1!0§;
      
      public var debug_object_2:§1!0§;
      
      public function §#q§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §@!<§(param1:§1o§) : §#q§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#q§ = new §#q§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§=4§,param1.§8D§,param1.lowerLimit,param1.upperLimit,param1.§2"+§,param1.motorSpeed,param1.§'=§,param1.maxTorque);
         if(_loc3_ || _loc3_)
         {
            _loc2_.§%?§ = param1.§%?§;
            loop0:
            while(true)
            {
               _loc2_.axisX = param1.axisX;
               loop1:
               while(true)
               {
                  _loc2_.axisY = param1.axisY;
                  while(true)
                  {
                     _loc2_.§!S§ = param1.§!S§;
                     loop3:
                     while(_loc3_ || _loc3_)
                     {
                        while(true)
                        {
                           _loc2_.frequency = param1.frequency;
                           while(_loc3_ || §#q§)
                           {
                              continue loop1;
                              _loc2_.dampingRatio = param1.dampingRatio;
                              if(_loc4_ && param1)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr83);
                           }
                           continue loop3;
                        }
                        return _loc2_;
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function get §&_§() : b2Joint
      {
         return this.§6W§;
      }
      
      public function set §&_§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§6W§ = param1;
         }
      }
   }
}

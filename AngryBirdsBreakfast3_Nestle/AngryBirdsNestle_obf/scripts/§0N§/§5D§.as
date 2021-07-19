package §0N§
{
   import §3!J§.§8!l§;
   import §@!"§.§@_§;
   import §@h§.b2Joint;
   import flash.geom.Point;
   
   public class §5D§ extends §-C§
   {
       
      
      private var §#d§:b2Joint;
      
      public var § !B§:§8!l§;
      
      public var debug_object_1:§@_§;
      
      public var debug_object_2:§@_§;
      
      public function §5D§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         if(_loc17_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         }
      }
      
      public static function §@!t§(param1:§-C§) : §5D§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§5D§ = new §5D§(param1.type,param1.id1,param1.id2,param1.point1,param1.point2,param1.§>!f§,param1.§,i§,param1.lowerLimit,param1.upperLimit,param1.§4!r§,param1.motorSpeed,param1.§`!]§,param1.maxTorque,param1.isBreakable,param1.minBreakForce,param1.§#!j§);
         if(!(_loc3_ && §5D§))
         {
            _loc2_.annihilationTime = param1.annihilationTime;
            while(true)
            {
               _loc2_.axisX = param1.axisX;
               addr116:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               _loc2_.frequency = param1.frequency;
               loop4:
               while(_loc4_)
               {
                  _loc2_.dampingRatio = param1.dampingRatio;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr88:
                     if(!(_loc4_ || _loc2_))
                     {
                        while(true)
                        {
                           _loc2_.axisY = param1.axisY;
                           addr129:
                           while(true)
                           {
                              _loc2_.coordinateType = param1.coordinateType;
                              break loop4;
                           }
                           §§goto(addr88);
                        }
                        addr145:
                     }
                     return _loc2_;
                  }
               }
               while(!(_loc3_ && param1))
               {
                  §§goto(addr116);
               }
               §§goto(addr129);
            }
         }
         §§goto(addr145);
      }
      
      public function get §7!Q§() : b2Joint
      {
         return this.§#d§;
      }
      
      public function set §7!Q§(param1:b2Joint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#d§ = param1;
         }
      }
   }
}

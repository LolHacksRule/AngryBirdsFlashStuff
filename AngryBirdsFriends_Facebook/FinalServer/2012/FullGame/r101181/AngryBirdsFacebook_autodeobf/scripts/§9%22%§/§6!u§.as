package §9"%§
{
   import §9"!§.§4"F§;
   
   public class §6!u§ extends §^!x§
   {
      
      public static const §1"?§:int = 6;
      
      private static var §;q§:§^!x§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1"?§ = 6;
         }
         do
         {
            §;q§ = new §6!u§(0,0,§4"F§.§,!w§,§4"F§.§`C§,§4"F§.§6"A§,§4"F§.§1I§,§1"?§);
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §6!u§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§&!r§> = null)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§&!r§> = null) : §^!x§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§^!x§ = null;
         §§push(param1);
         if(!(_loc8_ && param1))
         {
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               §§push(§1"?§);
               if(_loc7_ || param2)
               {
                  if(§§pop() === _loc6_)
                  {
                     addr65:
                     §§push(0);
                     if(_loc7_ || param1)
                     {
                        addr83:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr89:
                  switch(§§pop())
                  {
                     case 0:
                        _loc5_ = §;q§;
                        return new §^!x§(param2,param3,_loc5_.§2!q§,_loc5_.push,_loc5_.§[!F§,_loc5_.damage,param1,param4);
                     default:
                        return §^!x§.createExplosion(param1,param2,param3,param4);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr65);
         }
         §§goto(addr89);
      }
   }
}

package §^!A§
{
   import §6A§.§#!E§;
   
   public class §]v§ extends §[!N§
   {
      
      public static const §+l§:int = 5;
      
      private static var §&?§:§[!N§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §+l§ = 5;
            if(_loc1_ || _loc2_)
            {
               addr43:
               §&?§ = new §]v§(0,0,§#!E§.§+"§,§#!E§.§"q§,§#!E§.§4!M§,§#!E§.§]!B§,§+l§);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §]v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §[!N§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§[!N§ = null;
         §§push(param1);
         if(_loc7_)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || param1)
            {
               §§push(§+l§);
               if(_loc7_)
               {
                  if(§§pop() === _loc5_)
                  {
                     addr70:
                     §§push(0);
                     if(!_loc7_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               addr79:
               switch(§§pop())
               {
                  case 0:
                     _loc4_ = §&?§;
                     return new §[!N§(param2,param3,_loc4_.§!i§,_loc4_.push,_loc4_.§[!I§,_loc4_.damage,param1);
                  default:
                     return §[!N§.createExplosion(param1,param2,param3);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr79);
      }
   }
}

package §^g§
{
   import §4!r§.§1@§;
   import §4!r§.§;s§;
   import §4!r§.§>!9§;
   import §4!r§.§[!m§;
   
   public class §@!'§
   {
      
      private static var §`%§:Number = 30.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`%§ = 30;
         }
      }
      
      public function §@!'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §6![§(param1:Number = 10.0, param2:Number = NaN) : §[!m§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§findproperty(§1@§));
         §§push(param1);
         if(_loc3_ || param2)
         {
            if(isNaN(param2))
            {
               addr39:
               §§push(§`%§);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr50);
               }
               addr49:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(param2);
               if(!_loc4_)
               {
                  §§goto(addr49);
               }
            }
            addr50:
            return new §§pop().§1@§(§§pop(),§§pop());
         }
         §§goto(addr39);
      }
      
      public static function §7<§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §[!m§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§findproperty(§;s§));
         §§push(param1);
         §§push(param2);
         if(_loc4_ || param1)
         {
            if(isNaN(param3))
            {
               addr40:
               §§push(§`%§);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(_loc5_ && param2)
                  {
                  }
                  §§goto(addr56);
               }
            }
            else
            {
               §§push(param3);
               if(_loc4_)
               {
                  §§goto(addr56);
               }
            }
            addr56:
            return new §§pop().§;s§(§§pop(),§§pop(),Number(§§pop()));
         }
         §§goto(addr40);
      }
      
      public static function set §;!t§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §`%§ = param1;
         }
      }
      
      public static function get §;!t§() : Number
      {
         return §`%§;
      }
      
      public static function §!?§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §[!m§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§findproperty(§>!9§));
         §§push(param2);
         §§push(param1);
         if(_loc5_ || §@!'§)
         {
            if(isNaN(param3))
            {
               addr41:
               §§push(§`%§);
               if(_loc5_ || param3)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                  }
                  §§goto(addr57);
               }
               addr56:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(param3);
               if(_loc5_)
               {
                  §§goto(addr56);
               }
            }
            addr57:
            return new §§pop().§>!9§(§§pop(),§§pop(),§§pop());
         }
         §§goto(addr41);
      }
   }
}

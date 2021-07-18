package §6x§
{
   import §6!@§.§;!%§;
   
   public class §!!Y§
   {
      
      public static const WHITE:uint = 16777215;
      
      public static const §,-§:uint = 12632256;
      
      public static const §@R§:uint = 8421504;
      
      public static const BLACK:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §9!W§:uint = 8388608;
      
      public static const YELLOW:uint = 16776960;
      
      public static const §',§:uint = 8421376;
      
      public static const §^!j§:uint = 65280;
      
      public static const GREEN:uint = 32768;
      
      public static const §4]§:uint = 65535;
      
      public static const §+!=§:uint = 32896;
      
      public static const BLUE:uint = 255;
      
      public static const §-!t§:uint = 128;
      
      public static const §@!c§:uint = 16711935;
      
      public static const §<!6§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            WHITE = 16777215;
            §,-§ = 12632256;
            if(_loc2_ || §!!Y§)
            {
               §@R§ = 8421504;
               if(!_loc1_)
               {
                  BLACK = 0;
                  RED = 16711680;
                  §9!W§ = 8388608;
                  YELLOW = 16776960;
                  if(_loc2_ || _loc2_)
                  {
                     §',§ = 8421376;
                     if(_loc2_ || §!!Y§)
                     {
                        §^!j§ = 65280;
                        if(!(_loc1_ && §!!Y§))
                        {
                           GREEN = 32768;
                           addr99:
                           §4]§ = 65535;
                           if(!(_loc1_ && §!!Y§))
                           {
                              addr109:
                              §+!=§ = 32896;
                           }
                           §§goto(addr115);
                        }
                        BLUE = 255;
                        §§goto(addr115);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr115);
               }
               addr115:
               §-!t§ = 128;
               §@!c§ = 16711935;
               §§goto(addr121);
            }
            addr121:
            §<!6§ = 8388736;
            return;
         }
         §§goto(addr99);
      }
      
      public function §!!Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         throw new §;!%§();
      }
      
      public static function §?!,§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 24);
         if(_loc2_ || _loc2_)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §&!;§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §?!^§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(_loc3_ || param1)
         {
            §§push(§§pop() & 255);
         }
         return §§pop();
      }
      
      public static function §3]§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §;!^§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(16);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() << §§pop());
               if(_loc5_)
               {
                  addr51:
                  §§push(param2);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() << 8);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() | §§pop());
                        if(!_loc4_)
                        {
                           addr72:
                           §§push(§§pop() | param3);
                        }
                     }
                  }
                  §§goto(addr72);
               }
               return §§pop();
            }
            §§goto(addr72);
         }
         §§goto(addr51);
      }
      
      public static function §[A§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(24);
            if(_loc5_ || param1)
            {
               §§push(§§pop() << §§pop());
               if(!_loc6_)
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     §§push(16);
                     if(_loc5_)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_)
                        {
                           §§push(§§pop() | §§pop());
                           if(!_loc6_)
                           {
                              addr62:
                              §§push(param3);
                              if(!_loc6_)
                              {
                                 addr66:
                                 §§push(§§pop() << 8);
                                 if(!(_loc6_ && param3))
                                 {
                                    addr74:
                                    §§push(§§pop() | §§pop());
                                    if(!_loc6_)
                                    {
                                       addr78:
                                       §§push(§§pop() | param4);
                                    }
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr74);
                           }
                           return §§pop();
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr74);
               }
               §§goto(addr62);
            }
            §§goto(addr66);
         }
         §§goto(addr62);
      }
   }
}

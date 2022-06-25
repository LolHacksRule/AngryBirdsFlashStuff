package §2N§
{
   import §`5§.§?g§;
   
   public class §;!u§
   {
      
      public static const §+I§:uint = 16777215;
      
      public static const §,+§:uint = 12632256;
      
      public static const § s§:uint = 8421504;
      
      public static const §<a§:uint = 0;
      
      public static const §%C§:uint = 16711680;
      
      public static const §#!0§:uint = 8388608;
      
      public static const §@!L§:uint = 16776960;
      
      public static const §=!q§:uint = 8421376;
      
      public static const §00§:uint = 65280;
      
      public static const §&n§:uint = 32768;
      
      public static const §6![§:uint = 65535;
      
      public static const §+U§:uint = 32896;
      
      public static const § <§:uint = 255;
      
      public static const §;!`§:uint = 128;
      
      public static const §5!&§:uint = 16711935;
      
      public static const §,C§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+I§ = 16777215;
            while(true)
            {
               §,+§ = 12632256;
               loop1:
               while(true)
               {
                  § s§ = 8421504;
                  while(true)
                  {
                     §<a§ = 0;
                     addr113:
                     while(!(_loc1_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      public function §;!u§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new §?g§();
      }
      
      public static function §0j§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §>W§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_ || _loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §^!Q§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 8);
         if(_loc2_ || param1)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §+!1§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §%!#§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(16);
            if(_loc5_ || param2)
            {
               §§push(§§pop() << §§pop());
               if(!_loc4_)
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(§§pop() << 8);
                     if(!(_loc4_ && param3))
                     {
                        §§goto(addr58);
                     }
                     addr58:
                     §§push(§§pop() | §§pop());
                     if(_loc5_)
                     {
                        addr56:
                        §§push(param3);
                     }
                     return §§pop();
                     §§push(§§pop() | §§pop());
                  }
                  §§goto(addr58);
               }
               §§goto(addr56);
            }
         }
         §§goto(addr58);
      }
      
      public static function §-!g§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!(_loc6_ && param1))
         {
            §§push(24);
            if(_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || param3)
               {
                  addr45:
                  §§push(param2);
                  if(_loc5_)
                  {
                     §§push(16);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_)
                        {
                           addr69:
                           §§push(§§pop() | §§pop());
                           if(_loc5_)
                           {
                              §§push(param3);
                              if(_loc5_ || §;!u§)
                              {
                                 addr80:
                                 §§push(§§pop() << 8);
                                 if(_loc5_)
                                 {
                                    §§goto(addr89);
                                 }
                              }
                              addr89:
                              §§push(§§pop() | §§pop());
                              if(_loc5_)
                              {
                                 addr87:
                                 §§push(param4);
                              }
                              return §§pop();
                              §§push(§§pop() | §§pop());
                           }
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr69);
               }
               §§goto(addr89);
            }
            §§goto(addr80);
         }
         §§goto(addr45);
      }
   }
}

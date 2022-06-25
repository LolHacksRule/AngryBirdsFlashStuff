package §`s§
{
   import § !'§.§[!$§;
   
   public class § z§
   {
      
      public static const §9!s§:uint = 16777215;
      
      public static const §5=§:uint = 12632256;
      
      public static const §3w§:uint = 8421504;
      
      public static const §2!S§:uint = 0;
      
      public static const §=x§:uint = 16711680;
      
      public static const §2!X§:uint = 8388608;
      
      public static const §8k§:uint = 16776960;
      
      public static const § 6§:uint = 8421376;
      
      public static const §+s§:uint = 65280;
      
      public static const §=!t§:uint = 32768;
      
      public static const §@!+§:uint = 65535;
      
      public static const §5R§:uint = 32896;
      
      public static const §["§:uint = 255;
      
      public static const §<!T§:uint = 128;
      
      public static const §,!w§:uint = 16711935;
      
      public static const §&8§:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!s§ = 16777215;
            loop0:
            while(true)
            {
               §5=§ = 12632256;
               loop1:
               while(true)
               {
                  §3w§ = 8421504;
                  loop2:
                  while(true)
                  {
                     §2!S§ = 0;
                     while(true)
                     {
                        §=x§ = 16711680;
                        continue loop1;
                        addr64:
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        §,!w§ = 16711935;
                        loop14:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           addr76:
                           loop12:
                           while(_loc1_ || _loc2_)
                           {
                              §<!T§ = 128;
                              while(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr64);
                              }
                              loop9:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §@!+§ = 65535;
                                    addr122:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          §5R§ = 32896;
                                          break loop14;
                                       }
                                       break;
                                       addr36:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          return;
                                          addr43:
                                       }
                                    }
                                    while(_loc1_ || § z§)
                                    {
                                       §+s§ = 65280;
                                       break loop12;
                                    }
                                    while(true)
                                    {
                                       §8k§ = 16776960;
                                       break loop9;
                                       §§goto(addr122);
                                    }
                                    addr122:
                                    addr160:
                                 }
                                 break;
                                 §§goto(addr57);
                              }
                              addr57:
                              while(!_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §=!t§ = 32768;
                              §§goto(addr110);
                              §§goto(addr76);
                           }
                        }
                        while(true)
                        {
                           §["§ = 255;
                           §§goto(addr76);
                        }
                        §§goto(addr43);
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function § z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         throw new §[!$§();
      }
      
      public static function §<^§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_ || § z§)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §6!q§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(!(_loc3_ && param1))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §"5§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §9!,§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §0d§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(16);
            if(_loc5_ || param1)
            {
               §§push(§§pop() << §§pop());
               if(!_loc4_)
               {
                  §§push(param2);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() << 8);
                     if(_loc5_ || param2)
                     {
                     }
                     §§goto(addr78);
                  }
                  §§push(§§pop() | §§pop());
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr78);
               }
               §§push(param3);
            }
            §§goto(addr78);
         }
         addr78:
         return §§pop() | §§pop();
      }
      
      public static function §0!8§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || § z§)
         {
            §§push(24);
            if(_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(!_loc6_)
               {
                  §§push(param2);
                  if(!(_loc6_ && param1))
                  {
                     §§push(16);
                     if(!_loc6_)
                     {
                        §§push(§§pop() << §§pop());
                        if(!_loc6_)
                        {
                           addr64:
                           §§push(§§pop() | §§pop());
                           if(_loc5_)
                           {
                              §§push(param3);
                              if(_loc5_)
                              {
                                 addr71:
                                 §§push(§§pop() << 8);
                                 if(_loc5_)
                                 {
                                    §§goto(addr84);
                                 }
                                 addr84:
                                 §§push(§§pop() | §§pop());
                                 if(!(_loc6_ && param2))
                                 {
                                    addr82:
                                    §§push(param4);
                                 }
                                 return §§pop();
                                 §§push(§§pop() | §§pop());
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr71);
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr64);
         }
         §§goto(addr84);
      }
   }
}

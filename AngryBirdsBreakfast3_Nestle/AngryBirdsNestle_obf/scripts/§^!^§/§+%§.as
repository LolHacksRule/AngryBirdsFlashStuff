package §^!^§
{
   import §90§.§?!^§;
   
   public class §+%§
   {
      
      public static const §5"&§:uint = 16777215;
      
      public static const §-#§:uint = 12632256;
      
      public static const § 9§:uint = 8421504;
      
      public static const §60§:uint = 0;
      
      public static const §0C§:uint = 16711680;
      
      public static const §'6§:uint = 8388608;
      
      public static const §`!u§:uint = 16776960;
      
      public static const §'"0§:uint = 8421376;
      
      public static const §@§:uint = 65280;
      
      public static const §!2§:uint = 32768;
      
      public static const §&!Y§:uint = 65535;
      
      public static const §'3§:uint = 32896;
      
      public static const §"_§:uint = 255;
      
      public static const §2a§:uint = 128;
      
      public static const §]!q§:uint = 16711935;
      
      public static const § !8§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §+%§))
         {
            §5"&§ = 16777215;
            loop0:
            while(true)
            {
               §-#§ = 12632256;
               while(true)
               {
                  § 9§ = 8421504;
                  loop2:
                  while(true)
                  {
                     §60§ = 0;
                     loop3:
                     while(!_loc1_)
                     {
                        §0C§ = 16711680;
                        while(true)
                        {
                           §'6§ = 8388608;
                           loop5:
                           while(_loc2_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 continue loop3;
                              }
                              §`!u§ = 16776960;
                              loop6:
                              while(true)
                              {
                                 §'"0§ = 8421376;
                                 while(!_loc1_)
                                 {
                                    §@§ = 65280;
                                    loop8:
                                    while(_loc2_)
                                    {
                                       §!2§ = 32768;
                                       while(true)
                                       {
                                          §&!Y§ = 65535;
                                          while(true)
                                          {
                                             §'3§ = 32896;
                                             loop11:
                                             while(true)
                                             {
                                                §"_§ = 255;
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §2a§ = 128;
                                                         continue loop11;
                                                      }
                                                      return;
                                                      addr49:
                                                      addr98:
                                                   }
                                                   break;
                                                   addr40:
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§goto(addr49);
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function §+%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         throw new §?!^§();
      }
      
      public static function §2!4§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(!_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §<#§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_ || _loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §4!V§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(_loc3_ || _loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §7h§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §"!0§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            §§push(16);
            if(_loc4_ || param3)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc5_ && param3))
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§push(§§pop() << 8);
                     if(_loc4_ || §+%§)
                     {
                        §§push(§§pop() | §§pop());
                        if(_loc5_ && param1)
                        {
                        }
                        §§goto(addr82);
                     }
                     addr81:
                     addr82:
                     return §§pop();
                     §§push(§§pop() | §§pop());
                  }
                  §§goto(addr81);
               }
               §§push(param3);
            }
            §§goto(addr81);
         }
         §§goto(addr82);
      }
      
      public static function §?F§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(24);
            if(!_loc6_)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || param1)
               {
                  §§goto(addr30);
               }
               §§goto(addr62);
            }
            §§goto(addr81);
         }
         addr30:
         §§push(param2);
         if(_loc5_ || §+%§)
         {
            §§push(16);
            if(!(_loc6_ && param3))
            {
               §§push(§§pop() << §§pop());
               if(!_loc6_)
               {
                  §§push(§§pop() | §§pop());
                  if(!_loc6_)
                  {
                     addr62:
                     §§push(param3);
                     if(!(_loc6_ && §+%§))
                     {
                        addr81:
                        §§push(§§pop() << 8);
                        if(_loc5_)
                        {
                           §§goto(addr84);
                        }
                     }
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr81);
         }
         addr84:
         §§push(§§pop() | §§pop());
         if(!_loc6_)
         {
            addr88:
            return §§pop() | param4;
         }
      }
   }
}

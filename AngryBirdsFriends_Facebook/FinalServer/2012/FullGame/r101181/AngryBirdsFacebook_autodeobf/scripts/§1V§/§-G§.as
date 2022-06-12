package §1V§
{
   import §&!-§.§+#§;
   
   public class §-G§
   {
      
      public static const §8§:uint = 16777215;
      
      public static const §'s§:uint = 12632256;
      
      public static const §,2§:uint = 8421504;
      
      public static const §0",§:uint = 0;
      
      public static const §,S§:uint = 16711680;
      
      public static const §7"4§:uint = 8388608;
      
      public static const §]e§:uint = 16776960;
      
      public static const §49§:uint = 8421376;
      
      public static const §^"&§:uint = 65280;
      
      public static const §6b§:uint = 32768;
      
      public static const §"!X§:uint = 65535;
      
      public static const §3-§:uint = 32896;
      
      public static const §<!n§:uint = 255;
      
      public static const §?!%§:uint = 128;
      
      public static const §^L§:uint = 16711935;
      
      public static const §39§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8§ = 16777215;
            loop0:
            while(true)
            {
               §'s§ = 12632256;
               loop1:
               while(true)
               {
                  §,2§ = 8421504;
                  loop2:
                  while(true)
                  {
                     §0",§ = 0;
                     loop3:
                     while(!_loc1_)
                     {
                        §,S§ = 16711680;
                        while(true)
                        {
                           §7"4§ = 8388608;
                           loop5:
                           for(; _loc2_ || §-G§; while(!(_loc1_ && _loc1_))
                           {
                              continue loop2;
                              if(!(_loc2_ || §-G§))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 return;
                              }
                              §§goto(addr137);
                           })
                           {
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              §]e§ = 16776960;
                              while(true)
                              {
                                 §49§ = 8421376;
                                 addr137:
                                 while(true)
                                 {
                                    §^"&§ = 65280;
                                    addr132:
                                    while(true)
                                    {
                                       §6b§ = 32768;
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §"!X§ = 65535;
                     loop10:
                     while(true)
                     {
                        §3-§ = 32896;
                        loop11:
                        while(true)
                        {
                           §<!n§ = 255;
                           loop12:
                           while(!(_loc1_ && _loc1_))
                           {
                              §?!%§ = 128;
                              loop13:
                              while(!_loc1_)
                              {
                                 §^L§ = 16711935;
                                 while(true)
                                 {
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop13;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop12;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop10;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr132);
                                    addr69:
                                    §39§ = 8388736;
                                    if(!_loc1_)
                                    {
                                       break loop11;
                                    }
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr142);
                           }
                        }
                        §§goto(addr35);
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function §-G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         throw new §+#§();
      }
      
      public static function § !n§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 24);
         if(!_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §7_§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §9"<§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §8t§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §?!T§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(16);
            if(!(_loc4_ && §-G§))
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || param3)
               {
                  addr46:
                  §§push(param2);
                  if(_loc5_)
                  {
                     addr49:
                     §§push(§§pop() << 8);
                     if(_loc5_)
                     {
                        §§goto(addr58);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               addr58:
               §§push(§§pop() | §§pop());
               if(_loc5_)
               {
                  return param3;
               }
            }
            §§goto(addr49);
         }
         §§goto(addr46);
      }
      
      public static function §%u§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(24);
            if(_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(!_loc6_)
               {
                  §§push(param2);
                  if(!(_loc6_ && param2))
                  {
                     §§push(16);
                     if(!(_loc6_ && §-G§))
                     {
                        §§push(§§pop() << §§pop());
                        if(!_loc6_)
                        {
                           §§push(§§pop() | §§pop());
                           if(!_loc6_)
                           {
                              §§push(param3);
                              if(!(_loc6_ && §-G§))
                              {
                                 addr76:
                                 §§push(§§pop() << 8);
                                 if(!(_loc6_ && §-G§))
                                 {
                                    §§goto(addr89);
                                 }
                              }
                              addr89:
                              §§push(§§pop() | §§pop());
                              if(_loc5_)
                              {
                                 §§push(param4);
                              }
                              return §§pop();
                              §§push(§§pop() | §§pop());
                           }
                        }
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr76);
               }
            }
         }
         §§goto(addr89);
      }
   }
}

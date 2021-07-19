package §!=§
{
   import §`#§.§7!p§;
   
   public class §6$§
   {
      
      public static const §`!1§:uint = 16777215;
      
      public static const §'"0§:uint = 12632256;
      
      public static const §^"3§:uint = 8421504;
      
      public static const §#$§:uint = 0;
      
      public static const §+e§:uint = 16711680;
      
      public static const §"!9§:uint = 8388608;
      
      public static const § "V§:uint = 16776960;
      
      public static const §5z§:uint = 8421376;
      
      public static const §@D§:uint = 65280;
      
      public static const §^>§:uint = 32768;
      
      public static const §`!t§:uint = 65535;
      
      public static const §<!D§:uint = 32896;
      
      public static const §=!F§:uint = 255;
      
      public static const §`!R§:uint = 128;
      
      public static const §%_§:uint = 16711935;
      
      public static const §5!G§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!1§ = 16777215;
            while(true)
            {
               §'"0§ = 12632256;
            }
            addr182:
         }
         loop1:
         while(true)
         {
            §^"3§ = 8421504;
            loop2:
            while(true)
            {
               §#$§ = 0;
               loop3:
               while(true)
               {
                  §+e§ = 16711680;
                  loop4:
                  while(true)
                  {
                     §"!9§ = 8388608;
                     addr156:
                     while(!_loc1_)
                     {
                        § "V§ = 16776960;
                        continue loop2;
                     }
                     addr110:
                     continue loop1;
                     if(!(_loc1_ && §6$§))
                     {
                        §`!t§ = 65535;
                        loop10:
                        while(!_loc1_)
                        {
                           §<!D§ = 32896;
                           while(!(_loc1_ && §6$§))
                           {
                              §=!F§ = 255;
                              loop12:
                              while(true)
                              {
                                 §`!R§ = 128;
                                 addr60:
                                 while(true)
                                 {
                                    if(_loc2_ || §6$§)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §%_§ = 16711935;
                                       while(true)
                                       {
                                          if(!(_loc2_ || _loc1_))
                                          {
                                             continue loop10;
                                          }
                                          if(_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          addr129:
                                          while(true)
                                          {
                                             §@D§ = 65280;
                                             §§goto(addr122);
                                          }
                                       }
                                       continue loop2;
                                       continue loop10;
                                    }
                                    continue loop12;
                                 }
                                 §§goto(addr156);
                              }
                           }
                           loop9:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 §§goto(addr110);
                              }
                              else
                              {
                                 while(!_loc1_)
                                 {
                                    §^>§ = 32768;
                                    continue loop9;
                                 }
                                 §§goto(addr182);
                                 addr122:
                              }
                           }
                           addr89:
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      public function §6$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         throw new §7!p§();
      }
      
      public static function § "N§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 24);
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §3!6§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_ || param1)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §5"B§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(_loc3_ || §6$§)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §="=§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §=h§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param2)
         {
            §§push(16);
            if(!_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc4_ && §6$§))
               {
                  addr56:
                  §§push(param2);
                  if(_loc5_ || §6$§)
                  {
                     addr64:
                     §§push(§§pop() << 8);
                     if(!(_loc4_ && §6$§))
                     {
                        §§goto(addr78);
                     }
                     addr78:
                     §§push(§§pop() | §§pop());
                     if(!_loc4_)
                     {
                        §§push(param3);
                     }
                     return §§pop();
                     §§push(§§pop() | §§pop());
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr64);
         }
         §§goto(addr56);
      }
      
      public static function §&B§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_)
         {
            §§push(24);
            if(!(_loc6_ && param2))
            {
               §§push(§§pop() << §§pop());
               if(_loc5_)
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     §§push(16);
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() | §§pop());
                           if(!(_loc6_ && param3))
                           {
                              §§goto(addr88);
                           }
                           addr87:
                           addr88:
                           §§push(param3);
                           if(!_loc6_)
                           {
                              addr80:
                              §§push(8);
                           }
                           return §§pop() | §§pop();
                           §§push(param4);
                        }
                        §§goto(addr88);
                     }
                     §§push(§§pop() << §§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop() | §§pop());
                        if(_loc5_)
                        {
                           §§goto(addr87);
                        }
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr87);
            }
            §§goto(addr80);
         }
         §§goto(addr88);
      }
   }
}

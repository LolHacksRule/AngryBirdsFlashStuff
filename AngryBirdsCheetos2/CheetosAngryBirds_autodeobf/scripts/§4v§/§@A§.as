package §4v§
{
   import §]u§.§<=§;
   
   public class §@A§
   {
      
      public static const §,[§:uint = 16777215;
      
      public static const §^§:uint = 12632256;
      
      public static const §!b§:uint = 8421504;
      
      public static const §5!a§:uint = 0;
      
      public static const §^!J§:uint = 16711680;
      
      public static const §6!e§:uint = 8388608;
      
      public static const §[e§:uint = 16776960;
      
      public static const §<&§:uint = 8421376;
      
      public static const §''§:uint = 65280;
      
      public static const §=!$§:uint = 32768;
      
      public static const §>!,§:uint = 65535;
      
      public static const §9#§:uint = 32896;
      
      public static const §0!e§:uint = 255;
      
      public static const §0a§:uint = 128;
      
      public static const §<z§:uint = 16711935;
      
      public static const §5!Q§:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,[§ = 16777215;
            loop0:
            while(true)
            {
               §^§ = 12632256;
               loop1:
               while(true)
               {
                  §!b§ = 8421504;
                  loop2:
                  while(true)
                  {
                     §5!a§ = 0;
                     loop3:
                     while(true)
                     {
                        §^!J§ = 16711680;
                        addr75:
                        if(!(_loc2_ && _loc2_))
                        {
                           §0a§ = 128;
                           loop13:
                           while(!_loc2_)
                           {
                              §<z§ = 16711935;
                              while(!_loc2_)
                              {
                                 §5!Q§ = 8388736;
                                 if(!_loc2_)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop13;
                                    }
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop2;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr142);
                                    continue loop13;
                                 }
                              }
                              loop12:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr75);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §9#§ = 32896;
                                       }
                                       addr106:
                                    }
                                 }
                                 loop11:
                                 while(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       §0!e§ = 255;
                                       continue loop12;
                                    }
                                    addr157:
                                    while(true)
                                    {
                                       §6!e§ = 8388608;
                                       break loop11;
                                    }
                                 }
                                 while(true)
                                 {
                                    §[e§ = 16776960;
                                    addr147:
                                    while(true)
                                    {
                                       §<&§ = 8421376;
                                       addr142:
                                       while(true)
                                       {
                                          §''§ = 65280;
                                          break loop13;
                                       }
                                       break loop13;
                                    }
                                 }
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop1;
                              }
                              §§goto(addr147);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      public function §@A§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         throw new §<=§();
      }
      
      public static function §@%§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_ || _loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §2!O§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!(_loc2_ && param1))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §>!Q§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 8);
         if(!(_loc3_ && param1))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §9Z§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §"x§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(16);
            if(!_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || §@A§)
               {
                  §§push(param2);
                  if(_loc5_ || param1)
                  {
                     addr49:
                     §§push(§§pop() << 8);
                     if(_loc5_ || param1)
                     {
                        §§goto(addr73);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               addr73:
               §§push(§§pop() | §§pop());
               if(_loc5_)
               {
                  addr71:
                  return param3;
               }
            }
            §§goto(addr49);
         }
         §§goto(addr71);
      }
      
      public static function §^!S§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_)
         {
            §§push(24);
            if(_loc6_)
            {
               §§push(§§pop() << §§pop());
               if(_loc6_)
               {
                  addr26:
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(16);
                     if(_loc6_ || param3)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc6_ || §@A§)
                        {
                           addr55:
                           §§push(§§pop() | §§pop());
                           if(!(_loc5_ && param1))
                           {
                              §§push(param3);
                              if(_loc5_)
                              {
                              }
                              addr90:
                              return §§pop() | §§pop();
                              addr89:
                           }
                           addr88:
                           §§goto(addr89);
                           §§push(param4);
                        }
                        §§push(8);
                     }
                     §§push(§§pop() << §§pop());
                     if(!(_loc5_ && param3))
                     {
                        §§push(§§pop() | §§pop());
                        if(!_loc5_)
                        {
                           §§goto(addr88);
                        }
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr88);
            }
            §§goto(addr55);
         }
         §§goto(addr26);
      }
   }
}

package §`!=§
{
   import §]!R§.§'3§;
   
   public class §9q§
   {
      
      public static const §]j§:uint = 16777215;
      
      public static const §?+§:uint = 12632256;
      
      public static const §-=§:uint = 8421504;
      
      public static const §#!I§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §+O§:uint = 8388608;
      
      public static const §0d§:uint = 16776960;
      
      public static const § '§:uint = 8421376;
      
      public static const §+4§:uint = 65280;
      
      public static const §>;§:uint = 32768;
      
      public static const §="1§:uint = 65535;
      
      public static const §@!@§:uint = 32896;
      
      public static const §27§:uint = 255;
      
      public static const §=r§:uint = 128;
      
      public static const §;!`§:uint = 16711935;
      
      public static const §`K§:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §9q§))
         {
            §]j§ = 16777215;
            loop0:
            while(true)
            {
               §?+§ = 12632256;
               while(true)
               {
                  §-=§ = 8421504;
                  addr78:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §;!`§ = 16711935;
                  loop14:
                  while(true)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        loop12:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              addr102:
                              if(!(_loc2_ && _loc1_))
                              {
                                 §=r§ = 128;
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr69:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr78);
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §="1§ = 65535;
                                          addr119:
                                          while(!_loc2_)
                                          {
                                             §@!@§ = 32896;
                                          }
                                          addr165:
                                          while(!_loc2_)
                                          {
                                             RED = 16711680;
                                             while(true)
                                             {
                                                §+O§ = 8388608;
                                                break loop12;
                                                addr131:
                                                while(!(_loc2_ && _loc1_))
                                                {
                                                   §>;§ = 32768;
                                                   continue loop9;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §#!I§ = 0;
                                             §§goto(addr165);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §27§ = 255;
                                       continue loop12;
                                    }
                                    continue loop14;
                                 }
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    §+4§ = 65280;
                                    §§goto(addr131);
                                 }
                                 addr62:
                                 addr143:
                              }
                              break;
                           }
                           §§goto(addr131);
                        }
                        while(true)
                        {
                           §0d§ = 16776960;
                           break loop14;
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr62);
                  }
                  while(true)
                  {
                     § '§ = 8421376;
                     §§goto(addr143);
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      public function §9q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         throw new §'3§();
      }
      
      public static function §-!n§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(!_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §@g§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(_loc2_ || _loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §!e§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(_loc3_ || param1)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §6!1§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §]1§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(16);
            if(!(_loc4_ && param3))
            {
               §§push(§§pop() << §§pop());
               if(!(_loc4_ && param1))
               {
                  addr46:
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(§§pop() << 8);
                     if(_loc5_ || param2)
                     {
                     }
                     addr73:
                     return §§pop() | §§pop();
                     addr72:
                  }
                  §§push(§§pop() | §§pop());
                  if(!_loc4_)
                  {
                     addr71:
                     §§goto(addr72);
                     §§push(param3);
                  }
                  §§goto(addr73);
               }
               §§goto(addr71);
            }
            §§goto(addr73);
         }
         §§goto(addr46);
      }
      
      public static function § 6§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param2)
         {
            §§push(24);
            if(!_loc6_)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc6_ && §9q§))
               {
                  addr45:
                  §§push(param2);
                  if(_loc5_)
                  {
                     §§push(16);
                     if(!_loc6_)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc5_)
                        {
                           §§goto(addr54);
                        }
                     }
                  }
                  §§goto(addr60);
               }
               §§goto(addr57);
            }
            addr54:
            §§push(§§pop() | §§pop());
            if(!_loc6_)
            {
               addr57:
               §§push(param3);
               if(_loc5_)
               {
                  addr60:
                  §§push(§§pop() << 8);
                  if(_loc5_)
                  {
                     §§goto(addr79);
                  }
               }
               §§push(§§pop() | §§pop());
            }
            addr79:
            §§push(§§pop() | §§pop());
            if(_loc5_)
            {
               return param4;
            }
         }
         §§goto(addr45);
      }
   }
}

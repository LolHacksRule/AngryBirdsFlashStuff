package §&!Z§
{
   import §=5§.§^T§;
   
   public class §@!a§
   {
      
      public static const §@l§:uint = 16777215;
      
      public static const §+!z§:uint = 12632256;
      
      public static const § !!§:uint = 8421504;
      
      public static const §1u§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §8'§:uint = 8388608;
      
      public static const §55§:uint = 16776960;
      
      public static const §"!T§:uint = 8421376;
      
      public static const §@"F§:uint = 65280;
      
      public static const §-$§:uint = 32768;
      
      public static const §4O§:uint = 65535;
      
      public static const §9d§:uint = 32896;
      
      public static const §,!U§:uint = 255;
      
      public static const §+§:uint = 128;
      
      public static const §'B§:uint = 16711935;
      
      public static const §get §:uint = 8388736;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §@!a§)
         {
            §@l§ = 16777215;
            loop0:
            while(true)
            {
               §+!z§ = 12632256;
               loop1:
               while(true)
               {
                  § !!§ = 8421504;
                  while(true)
                  {
                     §1u§ = 0;
                     continue loop1;
                     addr158:
                     if(!(_loc1_ || §@!a§))
                     {
                        continue;
                     }
                     §55§ = 16776960;
                     while(!(_loc2_ && _loc1_))
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §"!T§ = 8421376;
                           loop7:
                           while(_loc1_ || _loc2_)
                           {
                              §@"F§ = 65280;
                              while(true)
                              {
                                 §-$§ = 32768;
                                 loop9:
                                 while(!_loc2_)
                                 {
                                    §4O§ = 65535;
                                    loop10:
                                    for(; _loc1_; while(_loc1_ || _loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §,!U§ = 255;
                                          continue loop9;
                                       }
                                       continue loop0;
                                    })
                                    {
                                       while(true)
                                       {
                                          §9d§ = 32896;
                                          continue loop10;
                                       }
                                    }
                                    continue loop7;
                                    while(_loc1_ || _loc2_)
                                    {
                                       §+§ = 128;
                                       loop14:
                                       while(_loc1_ || _loc2_)
                                       {
                                          §'B§ = 16711935;
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop14;
                                          }
                                          §§goto(addr77);
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     while(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr158);
                        §§goto(addr132);
                     }
                     addr132:
                     while(true)
                     {
                        §8'§ = 8388608;
                        §§goto(addr151);
                     }
                     addr151:
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public function §@!a§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         throw new §^T§();
      }
      
      public static function §&!5§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(_loc3_ || §@!a§)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §4N§(param1:uint) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1 >> 16);
         if(!_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §"g§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(_loc3_ || _loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §?"7§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §,!a§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || param3)
         {
            §§push(16);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() << §§pop());
               if(!_loc5_)
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     addr48:
                     §§push(§§pop() << 8);
                     if(!(_loc5_ && param1))
                     {
                        §§goto(addr77);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               addr77:
               §§push(§§pop() | §§pop());
               if(_loc4_ || §@!a§)
               {
                  addr75:
                  return param3;
               }
            }
            §§goto(addr48);
         }
         §§goto(addr75);
      }
      
      public static function §^1§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || param2)
         {
            §§push(24);
            if(_loc6_ || param3)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc5_ && param3))
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(16);
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop() << §§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() | §§pop());
                           if(!_loc5_)
                           {
                              §§push(param3);
                              if(_loc6_ || param3)
                              {
                                 addr77:
                                 §§push(§§pop() << 8);
                                 if(!(_loc5_ && param3))
                                 {
                                    addr85:
                                    §§push(§§pop() | §§pop());
                                    if(_loc6_ || param3)
                                    {
                                    }
                                    §§goto(addr105);
                                 }
                                 addr104:
                                 addr105:
                                 return §§pop();
                                 §§push(§§pop() | §§pop());
                              }
                           }
                           §§goto(addr104);
                           §§push(param4);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr77);
         }
         §§goto(addr85);
      }
   }
}

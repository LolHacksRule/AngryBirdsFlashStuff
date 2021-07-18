package §3W§
{
   import §2!F§.§["?§;
   
   public class §`!h§
   {
      
      public static const §!!O§:uint = 16777215;
      
      public static const §4`§:uint = 12632256;
      
      public static const §5t§:uint = 8421504;
      
      public static const §[!2§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §9]§:uint = 8388608;
      
      public static const §-">§:uint = 16776960;
      
      public static const §8!'§:uint = 8421376;
      
      public static const §<!9§:uint = 65280;
      
      public static const §,?§:uint = 32768;
      
      public static const §>u§:uint = 65535;
      
      public static const §96§:uint = 32896;
      
      public static const §+=§:uint = 255;
      
      public static const §;"&§:uint = 128;
      
      public static const §?"=§:uint = 16711935;
      
      public static const §5b§:uint = 8388736;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!!O§ = 16777215;
            loop0:
            while(true)
            {
               §4`§ = 12632256;
               while(true)
               {
                  §5t§ = 8421504;
                  loop2:
                  while(true)
                  {
                     §[!2§ = 0;
                     loop3:
                     while(true)
                     {
                        RED = 16711680;
                        while(true)
                        {
                           §9]§ = 8388608;
                           addr153:
                           while(true)
                           {
                              §-">§ = 16776960;
                              continue loop2;
                           }
                           loop8:
                           while(_loc2_ || _loc2_)
                           {
                              §,?§ = 32768;
                              loop9:
                              while(true)
                              {
                                 §>u§ = 65535;
                                 addr101:
                                 while(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          §96§ = 32896;
                                          continue loop9;
                                       }
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              §+=§ = 255;
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    addr58:
                                    if(_loc1_ && _loc1_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr153);
                                 }
                                 else
                                 {
                                    §§goto(addr72);
                                 }
                              }
                              while(true)
                              {
                                 §<!9§ = 65280;
                                 continue loop8;
                                 §§goto(addr58);
                              }
                           }
                        }
                     }
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §8!'§ = 8421376;
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr129);
      }
      
      public function §`!h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new §["?§();
      }
      
      public static function §&!-§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 24);
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() & 255;
         }
      }
      
      public static function §2!,§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §`"<§(param1:uint) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 8);
         if(!_loc2_)
         {
            return §§pop() & 255;
         }
      }
      
      public static function §]&§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §#!X§(param1:int, param2:int, param3:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(16);
            if(_loc5_ || param1)
            {
               §§push(§§pop() << §§pop());
               if(!_loc4_)
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(§§pop() << 8);
                     if(_loc5_)
                     {
                        §§goto(addr63);
                     }
                     addr63:
                     §§push(§§pop() | §§pop());
                     if(_loc5_)
                     {
                        §§push(param3);
                     }
                     return §§pop();
                     §§push(§§pop() | §§pop());
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public static function §6>§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param2)
         {
            §§push(24);
            if(!(_loc6_ && param2))
            {
               §§push(§§pop() << §§pop());
               if(!_loc6_)
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     addr48:
                     §§push(16);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() << §§pop());
                        if(!_loc6_)
                        {
                           §§push(§§pop() | §§pop());
                           if(_loc5_)
                           {
                              §§push(param3);
                              if(_loc6_)
                              {
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr82);
                        }
                        §§push(8);
                     }
                     §§push(§§pop() << §§pop());
                     if(!_loc6_)
                     {
                        §§goto(addr79);
                     }
                     §§goto(addr82);
                  }
                  addr79:
                  §§push(§§pop() | §§pop());
                  if(!_loc6_)
                  {
                     addr82:
                     return §§pop() | param4;
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr48);
         }
         §§goto(addr82);
      }
   }
}

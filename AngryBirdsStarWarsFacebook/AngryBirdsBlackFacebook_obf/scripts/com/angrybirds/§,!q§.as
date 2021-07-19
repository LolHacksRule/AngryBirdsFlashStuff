package com.angrybirds
{
   import §"a§.§?#&§;
   import §&#H§.§3#J§;
   import §0!=§.§]"3§;
   import §2d§.§3!R§;
   import §5t§.§##?§;
   import §?m§.§8!B§;
   import §^#>§.§#_§;
   import flash.geom.Rectangle;
   
   public class §,!q§
   {
      
      public static var §%N§:int = 0;
      
      public static var §>#O§:int = 0;
      
      public static var §9!,§:§#_§;
      
      public static var §!#=§:§##?§;
      
      public static var §<N§:Boolean = false;
      
      public static var §;"T§:§,!q§ = null;
      
      public static var §>#D§:§]"3§;
      
      public static var §-W§:Boolean = true;
      
      public static var §!6§:Number = 1;
      
      public static var §6G§:Number = 1.0;
      
      public static var §!"N§:Number = 1.0;
      
      private static var §;#=§:§?#&§ = null;
      
      private static var §;"z§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §%N§ = 0;
            loop0:
            while(true)
            {
               §>#O§ = 0;
               loop1:
               while(true)
               {
                  §<N§ = false;
                  loop2:
                  while(true)
                  {
                     §;"T§ = null;
                     while(!_loc2_)
                     {
                        §-W§ = true;
                        while(_loc1_ || §,!q§)
                        {
                           continue loop0;
                           if(_loc1_ || §,!q§)
                           {
                              if(_loc1_)
                              {
                                 return;
                                 addr52:
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §,!q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §0#X§() : Number
      {
         return §%N§ * §6G§;
      }
      
      public static function §[">§() : Number
      {
         return §>#O§ * §!"N§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§;"z§)
            {
               loop0:
               while(true)
               {
                  §;"z§ = true;
                  addr81:
                  while(true)
                  {
                     §§push(§3#J§.§^#A§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           while(!_loc1_)
                           {
                              §§push(§3#J§.§^#A§);
                              while(true)
                              {
                                 §§pop().isPaused = true;
                                 addr75:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           continue loop0;
                           addr59:
                        }
                        while(true)
                        {
                           §§push(§3#J§.§2!C§);
                           if(!_loc1_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                    addr46:
                                    §3#J§.§2!C§.§5J§(false);
                                 }
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr59);
                              }
                              §§goto(addr20);
                           }
                           §§goto(addr46);
                        }
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr73);
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr81);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§;"z§)
            {
               loop0:
               while(true)
               {
                  §;"z§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§3#J§.§^#A§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              if(_loc1_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(§3#J§.§^#A§);
                                 addr83:
                                 while(true)
                                 {
                                    §§pop().isPaused = false;
                                 }
                              }
                           }
                           while(true)
                           {
                              addr37:
                              if(_loc2_)
                              {
                                 addr51:
                                 §3#J§.§2!C§.§5J§(true);
                                 addr53:
                                 if(_loc2_ || _loc1_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           addr85:
                        }
                        while(true)
                        {
                           §§push(§3#J§.§2!C§);
                           if(_loc2_ || §,!q§)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr37);
                                 }
                                 §§goto(addr53);
                              }
                              §§goto(addr20);
                           }
                           break;
                           §§goto(addr85);
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr83);
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr71);
      }
      
      public static function get isPaused() : Boolean
      {
         return §;"z§;
      }
      
      public static function init(param1:§]"3§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §>#D§ = param1;
            while(true)
            {
               §%N§ = param2;
               loop2:
               while(_loc4_ || param2)
               {
                  §!#=§ = new §##?§(true,param1.canvas);
                  if(_loc4_)
                  {
                     addr48:
                     if(!(_loc4_ || param2))
                     {
                        while(true)
                        {
                           §>#O§ = param3;
                           continue loop2;
                           §§goto(addr48);
                        }
                        addr82:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public static function §[#Z§(param1:§3!R§, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §9!,§.§[#Z§(param1,param2);
         }
      }
      
      public static function loadLevel(param1:§8!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9!,§.init(param1);
         }
      }
      
      public static function §3!Q§(param1:§?#&§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §;#=§ = param1;
            do
            {
               §9!,§.§3!Q§(param1);
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public static function get §>k§() : §?#&§
      {
         return §;#=§;
      }
      
      public static function §%Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §,!q§))
         {
            §-W§ = param1;
         }
         do
         {
            §9!,§.background.§%Q§(param1);
         }
         while(!(_loc3_ || param1));
         
      }
      
      public static function §0@§() : Boolean
      {
         return §-W§;
      }
      
      public static function §0!L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            §§push(param4);
            loop0:
            while(true)
            {
               §§push(32);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(32);
                        addr188:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr189:
                           while(true)
                           {
                              param4 = §§pop();
                              addr190:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr187:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!(_loc6_ && param2))
                     {
                        if(_loc5_ || param3)
                        {
                           §§push(32);
                           if(!(_loc5_ || param2))
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(32);
                                 if(_loc6_)
                                 {
                                    break;
                                    addr170:
                                 }
                                 §§push(Number(§§pop()));
                                 while(!_loc6_)
                                 {
                                    param3 = §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       addr122:
                                       while(true)
                                       {
                                          §!6§ = Math.min(param3 / §%N§,param4 / §>#O§);
                                          while(_loc5_ || param1)
                                          {
                                             §§push(§§findproperty(§6G§));
                                             §§push(param3);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() / §%N§);
                                             }
                                             §§pop().§6G§ = §§pop();
                                             loop10:
                                             while(_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop12;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§findproperty(§!"N§));
                                                   §§push(param4);
                                                   if(_loc5_ || §,!q§)
                                                   {
                                                      §§push(§§pop() / §>#O§);
                                                   }
                                                   §§pop().§!"N§ = §§pop();
                                                   while(_loc5_)
                                                   {
                                                      §3#J§.§=#_§ = new Rectangle(param1,param2,param3,param4);
                                                      loop15:
                                                      do
                                                      {
                                                         §3#J§.§+!m§ = §6G§ > §!"N§;
                                                         for(; _loc5_; §9!,§.§!=§(param3,param4,§6G§,§!"N§),if(!(_loc6_ && param2))
                                                         {
                                                            continue loop15;
                                                         })
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         continue loop10;
                                                      }
                                                      while(_loc6_ && param3);
                                                      
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         return;
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          §§goto(addr190);
                                          continue loop12;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr170);
                  }
               }
            }
         }
         §§goto(addr121);
      }
   }
}

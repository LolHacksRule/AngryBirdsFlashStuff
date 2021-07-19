package §?m§
{
   import § !0§.§<O§;
   import § !G§.§%!]§;
   import §!X§.§86§;
   import §-!@§.§<!D§;
   import §@b§.§;M§;
   import §]!F§.§&!]§;
   import §`C§.§9!'§;
   import §default§.§%<§;
   import flash.geom.Rectangle;
   
   public class §7?§
   {
      
      public static var §;#§:int = 0;
      
      public static var §0h§:int = 0;
      
      public static var §4!H§:§86§;
      
      public static var §4J§:§%!]§;
      
      public static var §9h§:Boolean = false;
      
      public static var §@!=§:§7?§ = null;
      
      public static var §>!M§:§<O§;
      
      public static var §!!A§:Boolean = true;
      
      public static var §;!<§:Number = 1;
      
      public static var §&Z§:Number = 1.0;
      
      public static var §1H§:Number = 1.0;
      
      private static var §5!B§:§<!D§ = null;
      
      private static var §@!G§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;#§ = 0;
            loop0:
            while(true)
            {
               §0h§ = 0;
               addr120:
               while(true)
               {
                  §9h§ = false;
                  addr115:
                  while(true)
                  {
                     §@!=§ = null;
                     addr100:
                     while(true)
                     {
                        §!!A§ = true;
                     }
                  }
               }
               while(true)
               {
                  if(_loc1_ || _loc1_)
                  {
                     §&Z§ = 1;
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr120);
            }
         }
         §§goto(addr95);
      }
      
      public function §7?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §for§() : Number
      {
         return §;#§ * §&Z§;
      }
      
      public static function §@,§() : Number
      {
         return §0h§ * §1H§;
      }
      
      public static function §3J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§@!G§)
            {
               loop0:
               while(true)
               {
                  §@!G§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(§9!'§.§`!@§);
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           addr83:
                           while(true)
                           {
                              §§push(§9!'§.§`!@§);
                              addr85:
                              while(true)
                              {
                                 §§pop().isPaused = true;
                                 addr87:
                                 while(true)
                                 {
                                    if(!(_loc1_ || §7?§))
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           addr83:
                        }
                        while(true)
                        {
                           §§push(§9!'§.§7!Z§);
                           if(_loc1_)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr19);
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr38:
                                 §9!'§.§7!Z§.§'!<§(false);
                              }
                              if(!(_loc1_ || §7?§))
                              {
                                 continue;
                              }
                              if(_loc1_ || _loc1_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr38);
                        }
                        continue;
                     }
                     §§goto(addr85);
                  }
               }
            }
            addr19:
            return;
         }
         §§goto(addr83);
      }
      
      public static function §]!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§@!G§)
            {
               loop0:
               while(true)
               {
                  §@!G§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§9!'§.§`!@§);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           continue loop0;
                        }
                        addr62:
                        while(true)
                        {
                           §§push(§9!'§.§7!Z§);
                           if(_loc2_)
                           {
                              if(!§§pop())
                              {
                                 return;
                              }
                              if(_loc2_ || §7?§)
                              {
                                 addr37:
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 addr58:
                                 §9!'§.§7!Z§.§'!<§(true);
                              }
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue;
                              addr20:
                           }
                           §§goto(addr58);
                        }
                        §§goto(addr20);
                        addr24:
                     }
                     else
                     {
                        while(true)
                        {
                           §§pop().isPaused = false;
                        }
                        addr93:
                     }
                     while(true)
                     {
                        §§goto(addr24);
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr62);
      }
      
      public static function get isPaused() : Boolean
      {
         return §@!G§;
      }
      
      public static function init(param1:§<O§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §>!M§ = param1;
            loop0:
            while(true)
            {
               §;#§ = param2;
               while(true)
               {
                  §0h§ = param3;
                  loop2:
                  while(!(_loc5_ && param3))
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §4J§ = new §%!]§(true,param1.canvas);
                           if(_loc4_ || param3)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public static function §;!E§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §%<§.§;!E§(param1,param2);
         }
      }
      
      public static function §9!§(param1:§;M§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §4!H§.§9!§(param1,param2,param3);
         }
      }
      
      public static function §!!@§(param1:§&!]§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §4!H§.init(param1);
         }
      }
      
      public static function §-!P§(param1:§<!D§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §5!B§ = param1;
         }
         do
         {
            §4!H§.§-!P§(param1);
         }
         while(!(_loc3_ || param1));
         
      }
      
      public static function get §75§() : §<!D§
      {
         return §5!B§;
      }
      
      public static function §?B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §!!A§ = param1;
         }
         do
         {
            §4!H§.background.§?B§(param1);
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public static function §`!>§() : Boolean
      {
         return §!!A§;
      }
      
      public static function §6!T§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
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
                        addr187:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr188:
                           while(true)
                           {
                              param4 = §§pop();
                              addr189:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr186:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_ && param1)
                     {
                        continue loop0;
                     }
                     if(!_loc5_)
                     {
                        §§push(32);
                        if(!(_loc6_ || param1))
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§push(§9!'§.§7!Z§);
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§9!'§.§7!Z§);
                                       loop11:
                                       while(true)
                                       {
                                          §§pop().§>!D§ = new Rectangle(param1,param2,param3,param4);
                                          addr139:
                                          while(true)
                                          {
                                             §§push(§9!'§.§7!Z§);
                                             if(_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§pop().setCanvasSize(param3,param4);
                                                while(_loc6_)
                                                {
                                                   if(_loc5_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         return;
                                                         addr47:
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(32);
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         continue loop0;
                                                      }
                                                      addr160:
                                                   }
                                                   §§goto(addr187);
                                                }
                                                continue loop10;
                                             }
                                             continue loop11;
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §;!<§ = Math.min(param3 / §;#§,param4 / §0h§);
                                    while(true)
                                    {
                                       §§push(§§findproperty(§&Z§));
                                       §§push(param3);
                                       if(_loc6_ || §7?§)
                                       {
                                          §§push(§§pop() / §;#§);
                                       }
                                       §§pop().§&Z§ = §§pop();
                                       loop16:
                                       for(; _loc6_; for(; !(_loc5_ && param2); §4!H§.§`D§(param3,param4),if(!_loc6_)
                                       {
                                          continue;
                                       },§§goto(addr31))
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                continue;
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr139);
                                       })
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             while(true)
                                             {
                                                §§push(§§findproperty(§1H§));
                                                §§push(param4);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() / §0h§);
                                                }
                                                §§pop().§1H§ = §§pop();
                                                continue loop16;
                                             }
                                             §§goto(addr47);
                                             addr100:
                                          }
                                          else
                                          {
                                             §§goto(addr189);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr182:
                              while(true)
                              {
                                 continue loop8;
                              }
                           }
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr188);
                  }
               }
            }
         }
         §§goto(addr100);
      }
   }
}

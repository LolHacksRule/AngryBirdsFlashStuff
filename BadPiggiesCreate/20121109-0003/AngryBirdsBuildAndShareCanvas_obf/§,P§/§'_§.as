package §,P§
{
   import §%!0§.§,4§;
   import §%!j§.§%K§;
   import §6!k§.§@!L§;
   import §6]§.§?!N§;
   import §8s§.§=!d§;
   import §<i§.§'!e§;
   import §]";§.§!<§;
   import §]§.§7!K§;
   import flash.geom.Rectangle;
   
   public class §'_§
   {
      
      public static var §["3§:int = 0;
      
      public static var §7$§:int = 0;
      
      public static var §=M§:§,4§;
      
      public static var §5k§:§?!N§;
      
      public static var §^q§:Boolean = false;
      
      public static var §;a§:§'_§ = null;
      
      public static var §+1§:§@!L§;
      
      public static var §2!@§:Boolean = true;
      
      public static var §0!J§:Number = 1;
      
      public static var §=!c§:Number = 1.0;
      
      public static var §<e§:Number = 1.0;
      
      private static var §,p§:§7!K§ = null;
      
      private static var §+!e§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §["3§ = 0;
            while(true)
            {
               §7$§ = 0;
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     §^q§ = false;
                     while(true)
                     {
                        §;a§ = null;
                        loop4:
                        for(; !(_loc2_ && §'_§); loop6:
                        while(_loc1_ || §'_§)
                        {
                           §=!c§ = 1;
                           loop7:
                           while(true)
                           {
                              §<e§ = 1;
                              do
                              {
                                 §,p§ = null;
                                 continue loop7;
                              }
                              while(_loc2_);
                              
                              if(!_loc2_)
                              {
                                 return;
                              }
                              continue loop6;
                           }
                        })
                        {
                           §2!@§ = true;
                           while(true)
                           {
                              §0!J§ = 1;
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §'_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §implements§() : Number
      {
         return §["3§ * §=!c§;
      }
      
      public static function §6l§() : Number
      {
         return §7$§ * §<e§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §'_§)
         {
            if(!§+!e§)
            {
               loop0:
               while(true)
               {
                  §+!e§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(§%K§.§^!d§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§%K§.§^!d§);
                              addr87:
                              while(true)
                              {
                                 §§pop().isPaused = true;
                                 addr89:
                                 while(true)
                                 {
                                 }
                              }
                              addr59:
                              if(_loc1_ || _loc1_)
                              {
                                 addr66:
                                 if(!_loc2_)
                                 {
                                    §§goto(addr24);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§%K§.§`9§);
                           if(_loc1_ || §'_§)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    addr57:
                                    §%K§.§`9§.§1!>§(false);
                                 }
                                 §§goto(addr59);
                              }
                              §§goto(addr24);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr87);
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr89);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§+!e§)
            {
               if(_loc1_)
               {
                  §+!e§ = false;
               }
               loop0:
               while(true)
               {
                  §§push(§%K§.§^!d§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        addr71:
                        while(true)
                        {
                           §§push(§%K§.§^!d§);
                           addr73:
                           while(true)
                           {
                              §§pop().isPaused = false;
                              addr75:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 addr77:
                              }
                           }
                        }
                        addr71:
                     }
                     while(true)
                     {
                        §§push(§%K§.§`9§);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_ || §'_§)
                                 {
                                    addr55:
                                    §%K§.§`9§.§1!>§(true);
                                    addr57:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr71);
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr57);
                           }
                           break loop0;
                        }
                        §§goto(addr55);
                        §§goto(addr77);
                     }
                     continue;
                  }
                  §§goto(addr73);
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      public static function get isPaused() : Boolean
      {
         return §+!e§;
      }
      
      public static function init(param1:§@!L§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §+1§ = param1;
            loop0:
            while(true)
            {
               §["3§ = param2;
               while(true)
               {
                  §7$§ = param3;
                  loop2:
                  while(_loc5_ || param3)
                  {
                     continue loop0;
                     while(true)
                     {
                        §5k§ = new §?!N§(true,param1.canvas);
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function §#R§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §'_§)
         {
            §!<§.§#R§(param1,param2);
         }
      }
      
      public static function §6h§(param1:§=!d§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §=M§.§6h§(param1,param2,param3);
         }
      }
      
      public static function loadLevel(param1:§'!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §=M§.init(param1);
         }
      }
      
      public static function §^`§(param1:§7!K§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §,p§ = param1;
         }
         do
         {
            §=M§.§^`§(param1);
         }
         while(_loc3_);
         
      }
      
      public static function get §=R§() : §7!K§
      {
         return §,p§;
      }
      
      public static function §?R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §2!@§ = param1;
            do
            {
               §=M§.background.§?R§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public static function §&R§() : Boolean
      {
         return §2!@§;
      }
      
      public static function §=!R§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            §§push(param4);
            if(!(_loc6_ && param3))
            {
               §§push(32);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(32);
                        addr201:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr202:
                           while(true)
                           {
                              param4 = §§pop();
                              addr203:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr200:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        §§push(32);
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           while(true)
                           {
                              if(_loc5_ || param3)
                              {
                                 §§push(32);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(Number(§§pop()));
                                    while(!_loc6_)
                                    {
                                       param3 = §§pop();
                                       loop14:
                                       while(true)
                                       {
                                          addr136:
                                          while(true)
                                          {
                                             §§push(§%K§.§`9§);
                                             if(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§%K§.§`9§);
                                                      addr144:
                                                      while(true)
                                                      {
                                                         §§pop().§<!J§ = new Rectangle(param1,param2,param3,param4);
                                                         addr151:
                                                         while(true)
                                                         {
                                                            §§push(§%K§.§`9§);
                                                            if(_loc6_ && param3)
                                                            {
                                                               continue;
                                                            }
                                                            §§pop().setCanvasSize(param3,param4);
                                                            while(_loc6_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            addr135:
                                                            while(true)
                                                            {
                                                               §0!J§ = Math.min(param3 / §["3§,param4 / §7$§);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(§§findproperty(§=!c§));
                                                                  §§push(param3);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() / §["3§);
                                                                  }
                                                                  §§pop().§=!c§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ || param2))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§findproperty(§<e§));
                                                                        §§push(param4);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() / §7$§);
                                                                        }
                                                                        §§pop().§<e§ = §§pop();
                                                                        continue;
                                                                     }
                                                                     §§goto(addr200);
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                            addr133:
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr108);
                                             }
                                             §§goto(addr144);
                                             continue loop14;
                                          }
                                       }
                                    }
                                    §§goto(addr202);
                                    addr176:
                                 }
                                 §§goto(addr201);
                              }
                              break;
                              if(!(_loc6_ && param3))
                              {
                                 return;
                              }
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr176);
                  }
               }
            }
            §§goto(addr202);
         }
         §§goto(addr151);
      }
   }
}

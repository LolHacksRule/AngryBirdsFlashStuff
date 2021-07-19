package §`h§
{
   import § g§.§;!N§;
   import §!r§.§3!!§;
   import §+6§.§7i§;
   import §,§.§ p§;
   import §6;§.§%[§;
   import §>^§.§9!<§;
   import §`![§.§!!K§;
   import flash.geom.Rectangle;
   import §throw§.§3W§;
   
   public class §@!Z§
   {
      
      public static var §?!L§:int = 0;
      
      public static var §"r§:int = 0;
      
      public static var §;!,§:§ p§;
      
      public static var §+!-§:§9!<§;
      
      public static var §1!#§:Boolean = false;
      
      public static var §9!]§:§@!Z§ = null;
      
      public static var §^Y§:§3W§;
      
      public static var §2C§:Boolean = true;
      
      public static var §7!%§:Number = 1;
      
      public static var §<X§:Number = 1.0;
      
      public static var §5I§:Number = 1.0;
      
      private static var §1H§:§;!N§ = null;
      
      private static var §`>§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §?!L§ = 0;
            while(true)
            {
               §"r§ = 0;
               addr121:
               while(true)
               {
                  §1!#§ = false;
                  loop2:
                  while(true)
                  {
                     §9!]§ = null;
                     addr101:
                     while(true)
                     {
                        §2C§ = true;
                        continue loop2;
                     }
                  }
               }
            }
            addr125:
         }
         while(true)
         {
            §5I§ = 1;
            loop8:
            while(!_loc1_)
            {
               if(_loc2_)
               {
                  §1H§ = null;
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr101);
                        }
                        break;
                     }
                     continue loop8;
                  }
                  §§goto(addr84);
               }
               else
               {
                  §§goto(addr125);
               }
            }
            §§goto(addr72);
         }
      }
      
      public function §@!Z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §!!e§() : Number
      {
         return §?!L§ * §<X§;
      }
      
      public static function §11§() : Number
      {
         return §"r§ * §5I§;
      }
      
      public static function §@0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§`>§)
            {
               if(!_loc2_)
               {
                  §`>§ = true;
               }
               while(true)
               {
                  §§push(§%[§.§6+§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        while(_loc1_)
                        {
                           §§push(§%[§.§6+§);
                           while(true)
                           {
                              §§pop().isPaused = true;
                              addr82:
                              while(true)
                              {
                              }
                           }
                        }
                        continue;
                        addr66:
                     }
                     while(true)
                     {
                        §§push(§%[§.§`1§);
                        if(!(_loc2_ && §@!Z§))
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§push(§%[§.§`1§);
                                    break;
                                 }
                                 §§goto(addr66);
                              }
                              addr19:
                              return;
                              addr59:
                           }
                           §§goto(addr19);
                        }
                        break;
                     }
                     §§pop().§8!L§(false);
                     §§goto(addr59);
                  }
                  §§goto(addr70);
               }
            }
         }
         §§goto(addr19);
      }
      
      public static function §,R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§`>§)
            {
               loop0:
               while(true)
               {
                  §`>§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§%[§.§6+§);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§%[§.§6+§);
                              addr85:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr87:
                                 while(true)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr57:
                              if(!(_loc2_ && §@!Z§))
                              {
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§%[§.§`1§);
                           if(_loc1_ || §@!Z§)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr19);
                              }
                              if(_loc1_)
                              {
                                 addr38:
                                 §%[§.§`1§.§8!L§(true);
                              }
                              if(!(_loc2_ && §@!Z§))
                              {
                                 §§goto(addr57);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr38);
                           §§goto(addr104);
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
         §§goto(addr104);
      }
      
      public static function get isPaused() : Boolean
      {
         return §`>§;
      }
      
      public static function init(param1:§3W§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §^Y§ = param1;
         }
         loop0:
         do
         {
            §?!L§ = param2;
            while(true)
            {
               §"r§ = param3;
               while(_loc4_ || §@!Z§)
               {
                  §+!-§ = new §9!<§(true,param1.canvas);
                  if(_loc4_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc4_);
         
      }
      
      public static function §'y§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §3!!§.§'y§(param1,param2);
         }
      }
      
      public static function §9S§(param1:§7i§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §;!,§.§9S§(param1,param2,param3);
         }
      }
      
      public static function §2Q§(param1:§!!K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §;!,§.init(param1);
         }
      }
      
      public static function §=!2§(param1:§;!N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §1H§ = param1;
         }
         do
         {
            §;!,§.§=!2§(param1);
         }
         while(!(_loc2_ || §@!Z§));
         
      }
      
      public static function get §^&§() : §;!N§
      {
         return §1H§;
      }
      
      public static function §1L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §2C§ = param1;
            do
            {
               §;!,§.background.§1L§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      public static function §4!X§() : Boolean
      {
         return §2C§;
      }
      
      public static function §"u§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param4);
            loop0:
            while(true)
            {
               §§push(32);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(32);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr170:
                           while(true)
                           {
                              param4 = §§pop();
                           }
                        }
                        addr169:
                     }
                     while(true)
                     {
                     }
                     addr171:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc6_)
                     {
                        if(_loc5_)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(32);
                           if(_loc6_ && §@!Z§)
                           {
                              continue loop1;
                           }
                           if(§§pop() < §§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(32);
                                 if(!_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       param3 = §§pop();
                                       addr152:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr151:
                                 }
                                 else
                                 {
                                    §§goto(addr169);
                                 }
                                 addr68:
                                 if(_loc5_ || §@!Z§)
                                 {
                                    §%[§.§%!=§ = true;
                                    loop14:
                                    while(true)
                                    {
                                       §;!,§.§9!0§(param3,param4);
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && param3))
                                             {
                                                break;
                                             }
                                             addr129:
                                             while(true)
                                             {
                                                §§push(§§findproperty(§<X§));
                                                §§push(param3);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop() / §?!L§);
                                                }
                                                §§pop().§<X§ = §§pop();
                                                while(_loc5_ || param1)
                                                {
                                                   §§push(§§findproperty(§5I§));
                                                   §§push(param4);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() / §"r§);
                                                   }
                                                   §§pop().§5I§ = §§pop();
                                                   while(!(_loc6_ && §@!Z§))
                                                   {
                                                      §§goto(addr68);
                                                      continue loop14;
                                                   }
                                                }
                                                §§goto(addr152);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                break loop6;
                                             }
                                             §%[§.§^'§ = new Rectangle(param1,param2,param3,param4);
                                          }
                                       }
                                       §§goto(addr61);
                                    }
                                    return;
                                    addr51:
                                 }
                              }
                              §§goto(addr171);
                           }
                           while(true)
                           {
                              §7!%§ = Math.min(param3 / §?!L§,param4 / §"r§);
                              §§goto(addr129);
                              §§goto(addr152);
                           }
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr151);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr51);
      }
   }
}

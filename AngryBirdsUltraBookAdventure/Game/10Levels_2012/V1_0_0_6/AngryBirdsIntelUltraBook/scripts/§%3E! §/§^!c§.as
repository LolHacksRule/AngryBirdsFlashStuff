package §>! §
{
   import §!!K§.§else§;
   import §"x§.§2w§;
   import §-%§.§#!J§;
   import §-d§.§%d§;
   import §2_§.§'u§;
   import §3!G§.§ y§;
   import §]2§.§[!O§;
   import §]o§.§"!Z§;
   import flash.geom.Rectangle;
   
   public class §^!c§
   {
      
      public static var §"!c§:int = 0;
      
      public static var §%g§:int = 0;
      
      public static var §5!Y§:§'u§;
      
      public static var §"!k§:§2w§;
      
      public static var §@a§:Boolean = false;
      
      public static var §,!D§:§^!c§ = null;
      
      public static var §2!w§:§[!O§;
      
      public static var §^!O§:Boolean = true;
      
      public static var § v§:Number = 1;
      
      public static var §#!M§:Number = 1.0;
      
      public static var §6W§:Number = 1.0;
      
      private static var §,!h§:§#!J§ = null;
      
      private static var §`!&§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §"!c§ = 0;
            loop0:
            while(true)
            {
               §%g§ = 0;
               loop1:
               while(true)
               {
                  §@a§ = false;
                  loop2:
                  while(true)
                  {
                     §,!D§ = null;
                     loop3:
                     while(true)
                     {
                        §^!O§ = true;
                        loop4:
                        while(true)
                        {
                           § v§ = 1;
                           while(true)
                           {
                              §#!M§ = 1;
                              loop6:
                              while(_loc1_ || §^!c§)
                              {
                                 §6W§ = 1;
                                 while(!_loc2_)
                                 {
                                    continue loop2;
                                    while(_loc1_ || §^!c§)
                                    {
                                       continue loop6;
                                       §`!&§ = false;
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr69);
                                       if(_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                return;
                                                addr38:
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §,!h§ = null;
            §§goto(addr43);
         }
         §§goto(addr38);
      }
      
      public function §^!c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §`!F§() : Number
      {
         return §"!c§ * §#!M§;
      }
      
      public static function §8&§() : Number
      {
         return §%g§ * §6W§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§`!&§)
            {
               loop0:
               while(true)
               {
                  §`!&§ = true;
                  while(true)
                  {
                     §§push(§else§.§]!#§);
                     if(_loc1_ && _loc1_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        addr110:
                        while(true)
                        {
                        }
                        addr110:
                     }
                     while(true)
                     {
                        §§push(§else§.§^!A§);
                        if(_loc2_ || §^!c§)
                        {
                           if(!§§pop())
                           {
                              return;
                           }
                           if(_loc2_ || _loc1_)
                           {
                              addr54:
                              §else§.§^!A§.§``§(false);
                           }
                           if(!(_loc1_ && _loc2_))
                           {
                              break;
                           }
                           continue;
                           addr20:
                        }
                        §§goto(addr54);
                     }
                  }
                  addr108:
                  §§pop().isPaused = true;
                  §§goto(addr110);
               }
            }
            §§goto(addr20);
         }
         §§goto(addr63);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§`!&§)
            {
               loop0:
               while(true)
               {
                  §`!&§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§else§.§]!#§);
                     if(!(_loc1_ && §^!c§))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§else§.§]!#§);
                              addr96:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr98:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    addr100:
                                 }
                              }
                           }
                           addr94:
                        }
                        while(true)
                        {
                           §§push(§else§.§^!A§);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr20);
                              }
                              if(!(_loc2_ || §^!c§))
                              {
                                 continue loop0;
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    §§push(§else§.§^!A§);
                                    break;
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr98);
                           }
                           break;
                           §§goto(addr100);
                        }
                        §§pop().§``§(true);
                        continue loop0;
                     }
                     §§goto(addr96);
                  }
               }
               addr103:
            }
            addr20:
            return;
         }
         §§goto(addr103);
      }
      
      public static function get isPaused() : Boolean
      {
         return §`!&§;
      }
      
      public static function init(param1:§[!O§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §2!w§ = param1;
         }
         while(true)
         {
            §"!c§ = param2;
            while(!_loc4_)
            {
               §%g§ = param3;
               do
               {
                  §"!k§ = new §2w§(true,param1.canvas);
               }
               while(!_loc5_);
               
               if(!_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §-#§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §%d§.§-#§(param1,param2);
         }
      }
      
      public static function §-f§(param1:§"!Z§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §5!Y§.§-f§(param1,param2,param3);
         }
      }
      
      public static function §@3§(param1:§ y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §5!Y§.init(param1);
         }
      }
      
      public static function setController(param1:§#!J§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §,!h§ = param1;
         }
         do
         {
            §5!Y§.setController(param1);
         }
         while(_loc3_);
         
      }
      
      public static function get §-U§() : §#!J§
      {
         return §,!h§;
      }
      
      public static function §9!p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §^!O§ = param1;
         }
         do
         {
            §5!Y§.background.§9!p§(param1);
         }
         while(_loc3_ && param1);
         
      }
      
      public static function § !?§() : Boolean
      {
         return §^!O§;
      }
      
      public static function §<!B§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
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
                     if(_loc5_)
                     {
                        §§push(32);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr197:
                           while(true)
                           {
                              param4 = §§pop();
                           }
                           addr177:
                           while(true)
                           {
                              §§push(32);
                              if(_loc5_ || §^!c§)
                              {
                                 §§push(Number(§§pop()));
                                 while(!_loc6_)
                                 {
                                    param3 = §§pop();
                                    while(true)
                                    {
                                       §§goto(addr126);
                                    }
                                 }
                                 continue loop0;
                                 addr186:
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              addr147:
                              while(true)
                              {
                                 §§push(param3);
                                 if(!(_loc6_ && param3))
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(32);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          §§goto(addr177);
                                       }
                                       addr126:
                                       while(true)
                                       {
                                          §§push(§else§.§^!A§);
                                          if(!(_loc6_ && param3))
                                          {
                                             if(§§pop())
                                             {
                                                addr137:
                                                while(true)
                                                {
                                                   §§push(§else§.§^!A§);
                                                   addr139:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop().§3S§ = new Rectangle(param1,param2,param3,param4);
                                                      addr146:
                                                      while(true)
                                                      {
                                                         §§push(§else§.§^!A§);
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop13;
                                                      }
                                                      addr125:
                                                      §§pop().setCanvasSize(param3,param4);
                                                   }
                                                }
                                                addr137:
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                § v§ = Math.min(param3 / §"!c§,param4 / §%g§);
                                                loop9:
                                                while(_loc5_ || param1)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§push(§§findproperty(§#!M§));
                                                   §§push(param3);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() / §"!c§);
                                                   }
                                                   §§pop().§#!M§ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc5_ || §^!c§)
                                                      {
                                                         if(!(_loc5_ || param2))
                                                         {
                                                            break loop6;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr146);
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr139);
                                          continue loop15;
                                       }
                                       return;
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr186);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr147);
               }
            }
         }
         §§goto(addr137);
      }
   }
}

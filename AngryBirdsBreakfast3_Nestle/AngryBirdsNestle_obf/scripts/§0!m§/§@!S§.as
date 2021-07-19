package §0!m§
{
   import §!!!§.§6!l§;
   import §#!`§.§1V§;
   import §%!B§.§5L§;
   import §,!'§.§5O§;
   import §24§.§,!N§;
   import §8! §.§+C§;
   import §@V§.§#=§;
   import flash.geom.Rectangle;
   
   public class §@!S§
   {
      
      public static var §3z§:int = 0;
      
      public static var §`!,§:int = 0;
      
      public static var §2A§:§#=§;
      
      public static var §["4§:§,!N§;
      
      public static var §!L§:Boolean = false;
      
      public static var §^7§:§@!S§ = null;
      
      public static var §[!%§:§5O§;
      
      public static var §3t§:Boolean = true;
      
      public static var §8!L§:Number = 1;
      
      public static var §5!e§:Number = 1.0;
      
      public static var §+!q§:Number = 1.0;
      
      private static var §&!f§:§1V§ = null;
      
      private static var §'"+§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3z§ = 0;
            while(true)
            {
               §`!,§ = 0;
               loop1:
               while(true)
               {
                  §!L§ = false;
                  loop2:
                  while(true)
                  {
                     §^7§ = null;
                     loop3:
                     while(true)
                     {
                        §3t§ = true;
                        while(true)
                        {
                           §8!L§ = 1;
                           continue loop2;
                           loop8:
                           while(_loc1_ || §@!S§)
                           {
                              §'"+§ = false;
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          return;
                                          addr40:
                                       }
                                       continue loop2;
                                    }
                                    addr74:
                                    while(!_loc2_)
                                    {
                                       §+!q§ = 1;
                                    }
                                    continue loop3;
                                 }
                                 while(_loc1_)
                                 {
                                    §&!f§ = null;
                                    continue loop8;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §5!e§ = 1;
               §§goto(addr74);
            }
         }
         §§goto(addr40);
      }
      
      public function §@!S§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §^!q§() : Number
      {
         return §3z§ * §5!e§;
      }
      
      public static function §]!s§() : Number
      {
         return §`!,§ * §+!q§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§'"+§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr97:
                  §'"+§ = true;
               }
               loop0:
               while(true)
               {
                  §§push(§6!l§.§-f§);
                  if(_loc1_ || §@!S§)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§6!l§.§-f§);
                           addr73:
                           while(true)
                           {
                              §§pop().isPaused = true;
                              addr75:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           addr41:
                           if(!_loc2_)
                           {
                              addr55:
                              §6!l§.§+J§.§36§(false);
                              addr57:
                              if(_loc2_)
                              {
                                 §§goto(addr75);
                              }
                              break loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§6!l§.§+J§);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr41);
                              }
                              §§goto(addr57);
                           }
                           break loop0;
                        }
                        §§goto(addr55);
                        §§goto(addr75);
                     }
                     continue;
                  }
                  §§goto(addr73);
               }
            }
            return;
         }
         §§goto(addr97);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§'"+§)
            {
               loop0:
               while(true)
               {
                  §'"+§ = false;
                  addr105:
                  loop1:
                  while(true)
                  {
                     §§push(§6!l§.§-f§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              addr97:
                              §6!l§.§-f§.isPaused = false;
                           }
                           while(true)
                           {
                              addr41:
                              if(_loc1_ || §@!S§)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                           addr99:
                        }
                        while(true)
                        {
                           §§push(§6!l§.§+J§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 addr24:
                                 return;
                                 addr71:
                              }
                              §§goto(addr41);
                           }
                           §§goto(addr24);
                           §§goto(addr99);
                        }
                        addr69:
                        §§pop().§36§(true);
                        §§goto(addr71);
                     }
                     §§goto(addr97);
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr105);
      }
      
      public static function get isPaused() : Boolean
      {
         return §'"+§;
      }
      
      public static function init(param1:§5O§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §@!S§))
         {
            §[!%§ = param1;
            loop0:
            while(true)
            {
               §3z§ = param2;
               loop1:
               do
               {
                  §`!,§ = param3;
                  while(_loc4_)
                  {
                     §["4§ = new §,!N§(true,param1.canvas);
                     if(_loc4_ || param1)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc4_ || param3));
               
            }
         }
      }
      
      public static function §>!J§(param1:§+C§, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §2A§.§>!J§(param1,param2);
         }
      }
      
      public static function loadLevel(param1:§5L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §2A§.init(param1);
         }
      }
      
      public static function setController(param1:§1V§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §&!f§ = param1;
            do
            {
               §2A§.setController(param1);
            }
            while(!(_loc2_ || §@!S§));
            
         }
      }
      
      public static function get controller() : §1V§
      {
         return §&!f§;
      }
      
      public static function §'"%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §3t§ = param1;
            do
            {
               §2A§.background.§'"%§(param1);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public static function §^"&§() : Boolean
      {
         return §3t§;
      }
      
      public static function §1!§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
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
                     while(true)
                     {
                        §§push(32);
                        addr184:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr185:
                           while(true)
                           {
                              param4 = §§pop();
                              addr186:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr183:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc6_ || §@!S§)
                     {
                        if(_loc6_ || param1)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(32);
                           if(!(_loc6_ || param1))
                           {
                              continue loop1;
                           }
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(32);
                                    if(_loc5_ && §@!S§)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       param3 = §§pop();
                                       addr179:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr183);
                                 }
                                 addr110:
                                 if(_loc5_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(§§findproperty(§+!q§));
                                 §§push(param4);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() / §`!,§);
                                 }
                                 §§pop().§+!q§ = §§pop();
                                 loop11:
                                 while(!_loc5_)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §6!l§.§7!w§ = new Rectangle(param1,param2,param3,param4);
                                       loop15:
                                       while(!_loc5_)
                                       {
                                          §6!l§.§#N§ = §5!e§ > §+!q§;
                                          while(!(_loc5_ && §@!S§))
                                          {
                                             §2A§.§7<§(param3,param4,§5!e§,§+!q§);
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop15;
                                             }
                                             if(_loc6_ || param2)
                                             {
                                                break loop14;
                                             }
                                             §§goto(addr186);
                                          }
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                §§goto(addr110);
                                             }
                                             else
                                             {
                                                §§goto(addr179);
                                             }
                                          }
                                          addr54:
                                          §§goto(addr186);
                                       }
                                       continue loop11;
                                    }
                                    return;
                                 }
                                 while(true)
                                 {
                                    §§push(§§findproperty(§5!e§));
                                    §§push(param3);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() / §3z§);
                                    }
                                    §§pop().§5!e§ = §§pop();
                                    §§goto(addr103);
                                 }
                                 addr129:
                              }
                              §§goto(addr184);
                           }
                           while(true)
                           {
                              §8!L§ = Math.min(param3 / §3z§,param4 / §`!,§);
                              §§goto(addr129);
                              §§goto(addr179);
                           }
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr178);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr84);
      }
   }
}

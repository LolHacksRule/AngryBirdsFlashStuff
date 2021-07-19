package com.angrybirds
{
   import §'!l§.§5A§;
   import §8!K§.§5!0§;
   import §?""§.§6!A§;
   import §@L§.§?!'§;
   import §^!3§.§6!z§;
   import §`!a§.§1"&§;
   import each.§@!&§;
   import flash.geom.Rectangle;
   
   public class §&!"§
   {
      
      public static var §8#§:int = 0;
      
      public static var §'+§:int = 0;
      
      public static var §1!D§:§?!'§;
      
      public static var §!!D§:§@!&§;
      
      public static var §7!2§:Boolean = false;
      
      public static var §7!o§:§&!"§ = null;
      
      public static var §=!X§:§6!A§;
      
      public static var §1Y§:Boolean = true;
      
      public static var §<7§:Number = 1;
      
      public static var §,!C§:Number = 1.0;
      
      public static var §3H§:Number = 1.0;
      
      private static var §+!=§:§6!z§ = null;
      
      private static var §!§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8#§ = 0;
            loop0:
            while(true)
            {
               §'+§ = 0;
               loop1:
               while(true)
               {
                  §7!2§ = false;
                  addr126:
                  while(true)
                  {
                     §7!o§ = null;
                     continue loop0;
                     addr56:
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §<7§ = 1;
            §§goto(addr92);
         }
      }
      
      public function §&!"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §5!2§() : Number
      {
         return §8#§ * §,!C§;
      }
      
      public static function §"!7§() : Number
      {
         return §'+§ * §3H§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§!§)
            {
               loop0:
               while(true)
               {
                  §!§ = true;
                  while(true)
                  {
                     §§push(§1"&§.§"!U§);
                     if(!(_loc2_ && §&!"§))
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(§1"&§.§"!U§);
                                 addr80:
                                 while(true)
                                 {
                                    §§pop().isPaused = true;
                                 }
                              }
                              addr78:
                           }
                           while(_loc1_)
                           {
                              if(_loc2_ && §&!"§)
                              {
                                 continue;
                              }
                              addr19:
                              return;
                              addr64:
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§push(§1"&§.§1i§);
                           if(_loc1_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr19);
                           }
                           else
                           {
                              addr55:
                              §§pop().§1J§(false);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr80);
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr78);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §&!"§))
         {
            if(§!§)
            {
               loop0:
               while(true)
               {
                  §!§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§1"&§.§"!U§);
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§1"&§.§"!U§);
                              addr97:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr99:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr85:
                        }
                        while(true)
                        {
                           §§push(§1"&§.§1i§);
                           if(!(_loc2_ && §&!"§))
                           {
                              if(§§pop())
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr85);
                                 }
                              }
                              §§goto(addr24);
                           }
                           else
                           {
                              addr69:
                           }
                           §§pop().§1J§(true);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr97);
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr99);
      }
      
      public static function get isPaused() : Boolean
      {
         return §!§;
      }
      
      public static function init(param1:§6!A§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §=!X§ = param1;
            loop0:
            while(true)
            {
               §8#§ = param2;
               while(true)
               {
                  §'+§ = param3;
                  continue loop0;
                  addr44:
                  if(!(_loc4_ && param2))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function §1!y§(param1:§5A§, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §1!D§.§1!y§(param1,param2);
         }
      }
      
      public static function loadLevel(param1:§5!0§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §1!D§.init(param1);
         }
      }
      
      public static function setController(param1:§6!z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §&!"§))
         {
            §+!=§ = param1;
         }
         do
         {
            §1!D§.setController(param1);
         }
         while(!_loc2_);
         
      }
      
      public static function get controller() : §6!z§
      {
         return §+!=§;
      }
      
      public static function §<8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §1Y§ = param1;
            do
            {
               §1!D§.background.§<8§(param1);
            }
            while(_loc2_);
            
         }
      }
      
      public static function §?!v§() : Boolean
      {
         return §1Y§;
      }
      
      public static function §4!_§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param4);
            if(_loc5_)
            {
               §§push(32);
               loop0:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr190:
                     if(_loc5_ || param1)
                     {
                        §§push(32);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr189:
                           while(true)
                           {
                              param4 = §§pop();
                           }
                        }
                        addr188:
                     }
                     while(true)
                     {
                     }
                     addr190:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!(_loc6_ && §&!"§))
                     {
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        loop7:
                        while(true)
                        {
                           param3 = §§pop();
                           loop8:
                           while(true)
                           {
                              addr125:
                              while(true)
                              {
                                 §<7§ = Math.min(param3 / §8#§,param4 / §'+§);
                                 loop6:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(§§findproperty(§,!C§));
                                       §§push(param3);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(§§pop() / §8#§);
                                       }
                                       §§pop().§,!C§ = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§findproperty(§3H§));
                                          §§push(param4);
                                          if(!(_loc6_ && §&!"§))
                                          {
                                             §§push(§§pop() / §'+§);
                                          }
                                          §§pop().§3H§ = §§pop();
                                          while(_loc5_ || param3)
                                          {
                                             §1"&§.§>!m§ = new Rectangle(param1,param2,param3,param4);
                                             while(true)
                                             {
                                                §1"&§.§"C§ = §,!C§ > §3H§;
                                                continue loop10;
                                             }
                                             if(_loc6_ && param2)
                                             {
                                                continue;
                                             }
                                             if(!(_loc5_ || §&!"§))
                                             {
                                                continue loop6;
                                             }
                                             if(!(_loc6_ && param1))
                                             {
                                                return;
                                             }
                                             §§goto(addr190);
                                          }
                                          continue loop8;
                                       }
                                       addr124:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(32);
                                          if(!_loc6_)
                                          {
                                             §§push(Number(§§pop()));
                                             continue loop7;
                                          }
                                          §§goto(addr188);
                                       }
                                       addr159:
                                    }
                                    §§goto(addr190);
                                 }
                                 continue loop8;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr189);
         }
         §§goto(addr124);
      }
   }
}

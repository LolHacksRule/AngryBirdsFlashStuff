package §]!A§
{
   import §#!e§.§1"B§;
   import §%Q§.§6G§;
   import §'6§.§"]§;
   import §-"6§.§3X§;
   import §3![§.§5!@§;
   import §6o§.§""5§;
   import §9"!§.§9"3§;
   import §>i§.§'!p§;
   import flash.geom.Rectangle;
   
   public class §#6§
   {
      
      public static var §;H§:int = 0;
      
      public static var §+P§:int = 0;
      
      public static var §6!z§:§9"3§;
      
      public static var §=_§:§""5§;
      
      public static var §4x§:Boolean = false;
      
      public static var §%"&§:§#6§ = null;
      
      public static var § q§:§3X§;
      
      public static var §4!n§:Boolean = true;
      
      public static var §!;§:Number = 1;
      
      public static var §>!F§:Number = 1.0;
      
      public static var §"e§:Number = 1.0;
      
      private static var §9F§:§5!@§ = null;
      
      private static var §+"2§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §;H§ = 0;
            while(true)
            {
               §+P§ = 0;
               loop1:
               while(true)
               {
                  §4x§ = false;
                  addr120:
                  while(true)
                  {
                     §%"&§ = null;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §4!n§ = true;
            §§goto(addr101);
         }
      }
      
      public function §#6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §7!-§() : Number
      {
         return §;H§ * §>!F§;
      }
      
      public static function §8h§() : Number
      {
         return §+P§ * §"e§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§+"2§)
            {
               loop0:
               while(true)
               {
                  §+"2§ = true;
                  while(true)
                  {
                     §§push(§"]§.§^!v§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           while(_loc1_ || _loc1_)
                           {
                              §§push(§"]§.§^!v§);
                              while(true)
                              {
                                 §§pop().isPaused = true;
                                 addr92:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    addr94:
                                 }
                              }
                              if(_loc1_ || _loc2_)
                              {
                                 addr19:
                                 return;
                                 addr74:
                              }
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§push(§"]§.§!X§);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(§§pop())
                              {
                                 if(_loc1_ || §#6§)
                                 {
                                    addr53:
                                    §"]§.§!X§.§@!f§(false);
                                 }
                                 if(_loc1_)
                                 {
                                    §§goto(addr57);
                                 }
                                 §§goto(addr92);
                              }
                              break;
                           }
                           §§goto(addr53);
                           §§goto(addr94);
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr90);
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr74);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§+"2§)
            {
               loop0:
               while(true)
               {
                  §+"2§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§"]§.§^!v§);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           addr99:
                           while(true)
                           {
                              §§push(§"]§.§^!v§);
                              addr101:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr103:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           addr99:
                        }
                        while(true)
                        {
                           §§push(§"]§.§!X§);
                           if(!(_loc1_ && §#6§))
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr20);
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 addr54:
                                 §"]§.§!X§.§@!f§(true);
                              }
                              if(_loc1_ && _loc1_)
                              {
                                 continue;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 continue loop0;
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr54);
                        }
                        continue;
                     }
                     §§goto(addr101);
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr99);
      }
      
      public static function get isPaused() : Boolean
      {
         return §+"2§;
      }
      
      public static function init(param1:§3X§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            § q§ = param1;
         }
         do
         {
            §;H§ = param2;
            do
            {
               §+P§ = param3;
               do
               {
                  §=_§ = new §""5§(true,param1.canvas);
               }
               while(!_loc5_);
               
            }
            while(!_loc5_);
            
         }
         while(_loc4_);
         
      }
      
      public static function §%!e§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §6G§.§%!e§(param1,param2);
         }
      }
      
      public static function §[!2§(param1:§'!p§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §#6§)
         {
            §6!z§.§[!2§(param1,param2,param3);
         }
      }
      
      public static function §-!4§(param1:§1"B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §6!z§.init(param1);
         }
      }
      
      public static function setController(param1:§5!@§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §#6§)
         {
            §9F§ = param1;
            do
            {
               §6!z§.setController(param1);
            }
            while(!(_loc2_ || §#6§));
            
         }
      }
      
      public static function get §'" §() : §5!@§
      {
         return §9F§;
      }
      
      public static function §'h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §4!n§ = param1;
            do
            {
               §6!z§.background.§'h§(param1);
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public static function §&9§() : Boolean
      {
         return §4!n§;
      }
      
      public static function §^9§(param1:Number, param2:Number, param3:Number, param4:Number) : void
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
                     addr196:
                     while(true)
                     {
                        §§push(32);
                        addr197:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr198:
                           while(true)
                           {
                              param4 = §§pop();
                              addr199:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr196:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc6_ || param2)
                     {
                        if(_loc6_)
                        {
                           §§push(32);
                           if(_loc5_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(32);
                                 if(_loc5_ && §#6§)
                                 {
                                    break;
                                    addr182:
                                 }
                                 §§push(Number(§§pop()));
                                 while(_loc6_)
                                 {
                                    param3 = §§pop();
                                    while(true)
                                    {
                                       if(!(_loc5_ && §#6§))
                                       {
                                          addr192:
                                          while(true)
                                          {
                                             §§push(§"]§.§!X§);
                                             if(_loc6_ || param2)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr140:
                                                      §§push(§"]§.§!X§);
                                                      while(true)
                                                      {
                                                         §§pop().§?!;§ = new Rectangle(param1,param2,param3,param4);
                                                      }
                                                      addr140:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§"]§.§!X§);
                                                      if(!_loc5_)
                                                      {
                                                         §§pop().setCanvasSize(param3,param4);
                                                         addr124:
                                                         while(true)
                                                         {
                                                         }
                                                         addr124:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                   }
                                                   addr147:
                                                }
                                                while(true)
                                                {
                                                   §!;§ = Math.min(param3 / §;H§,param4 / §+P§);
                                                   continue loop3;
                                                   §§goto(addr124);
                                                }
                                             }
                                             §§goto(addr140);
                                             §§goto(addr192);
                                          }
                                          addr125:
                                       }
                                       else
                                       {
                                          §§goto(addr196);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr182);
                  }
               }
            }
         }
         §§goto(addr196);
      }
   }
}

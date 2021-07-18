package §%c§
{
   import §""3§.§0Y§;
   import §"v§.§9"§;
   import §,I§.§7!K§;
   import §,a§.§<!m§;
   import §5!V§.§!w§;
   import §6p§.§?%§;
   import §;'§.§return§;
   import §=!M§.§!!X§;
   import flash.geom.Rectangle;
   
   public class §=!X§
   {
      
      public static var §^!N§:int = 0;
      
      public static var §5!P§:int = 0;
      
      public static var §!'§:§!w§;
      
      public static var §29§:§!!X§;
      
      public static var §>3§:Boolean = false;
      
      public static var §^"-§:§=!X§ = null;
      
      public static var §9'§:§0Y§;
      
      public static var §3!R§:Boolean = true;
      
      public static var §?!8§:Number = 1;
      
      public static var §@"6§:Number = 1.0;
      
      public static var § !4§:Number = 1.0;
      
      private static var §?b§:§return§ = null;
      
      private static var §9!d§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §=!X§))
         {
            §^!N§ = 0;
            loop0:
            while(true)
            {
               §5!P§ = 0;
               while(true)
               {
                  §>3§ = false;
                  loop2:
                  while(true)
                  {
                     §^"-§ = null;
                     loop3:
                     while(true)
                     {
                        §3!R§ = true;
                        loop4:
                        while(true)
                        {
                           §?!8§ = 1;
                           while(_loc1_)
                           {
                              while(_loc1_ || _loc2_)
                              {
                                 continue loop3;
                                 loop8:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    §?b§ = null;
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop8;
                                       addr60:
                                       §9!d§ = false;
                                       if(_loc1_ || _loc2_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §@"6§ = 1;
            §§goto(addr87);
         }
         §§goto(addr46);
      }
      
      public function §=!X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §7,§() : Number
      {
         return §^!N§ * §@"6§;
      }
      
      public static function §3?§() : Number
      {
         return §5!P§ * § !4§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§9!d§)
            {
               loop0:
               while(true)
               {
                  §9!d§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(§?%§.§",§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           addr80:
                           if(_loc2_)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(§?%§.§",§);
                                 break loop1;
                              }
                           }
                           while(true)
                           {
                           }
                           addr80:
                        }
                        while(true)
                        {
                           §§push(§?%§.§%b§);
                           if(_loc1_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 addr20:
                              }
                              else
                              {
                                 addr50:
                              }
                              if(_loc1_)
                              {
                                 continue;
                              }
                              continue loop0;
                              return;
                           }
                           §§goto(addr20);
                        }
                        addr48:
                        §§pop().§+H§(false);
                        §§goto(addr50);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§pop().isPaused = true;
                     §§goto(addr80);
                  }
               }
            }
            §§goto(addr50);
         }
         §§goto(addr66);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§9!d§)
            {
               loop0:
               while(true)
               {
                  §9!d§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§?%§.§",§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§?%§.§",§);
                              addr76:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr88:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    addr90:
                                 }
                              }
                           }
                           addr74:
                        }
                        while(true)
                        {
                           §§push(§?%§.§%b§);
                           if(_loc1_ && §=!X§)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 addr20:
                                 return;
                                 addr67:
                              }
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr74);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr20);
                           §§goto(addr90);
                        }
                        addr65:
                        §§pop().§+H§(true);
                        §§goto(addr67);
                     }
                     §§goto(addr76);
                  }
               }
            }
         }
         §§goto(addr20);
      }
      
      public static function get isPaused() : Boolean
      {
         return §9!d§;
      }
      
      public static function init(param1:§0Y§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §9'§ = param1;
            while(true)
            {
               §^!N§ = param2;
               addr53:
               if(_loc5_ && param3)
               {
                  continue;
               }
               return;
               addr60:
            }
         }
         while(true)
         {
            §5!P§ = param3;
            while(_loc4_ || param2)
            {
               §29§ = new §!!X§(true,param1.canvas);
               if(!(_loc4_ || §=!X§))
               {
                  continue;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr60);
      }
      
      public static function §0_§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §=!X§))
         {
            §<!m§.§0_§(param1,param2);
         }
      }
      
      public static function §2!2§(param1:§7!K§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §!'§.§2!2§(param1,param2,param3);
         }
      }
      
      public static function loadLevel(param1:§9"§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §!'§.init(param1);
         }
      }
      
      public static function §]T§(param1:§return§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §?b§ = param1;
         }
         do
         {
            §!'§.§]T§(param1);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public static function get §#H§() : §return§
      {
         return §?b§;
      }
      
      public static function §]D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §3!R§ = param1;
            do
            {
               §!'§.background.§]D§(param1);
            }
            while(_loc2_ && §=!X§);
            
         }
      }
      
      public static function §5$§() : Boolean
      {
         return §3!R§;
      }
      
      public static function §%" §(param1:Number, param2:Number, param3:Number, param4:Number) : void
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
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(32);
                        addr181:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr182:
                           while(true)
                           {
                              param4 = §§pop();
                              addr183:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr180:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        if(!_loc6_)
                        {
                           §§push(32);
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(32);
                                 if(!_loc5_)
                                 {
                                    break;
                                    addr163:
                                 }
                                 §§push(Number(§§pop()));
                                 while(!_loc6_)
                                 {
                                    param3 = §§pop();
                                    loop17:
                                    while(true)
                                    {
                                       addr131:
                                       while(true)
                                       {
                                          §§push(§?%§.§%b§);
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr141:
                                                   §§push(§?%§.§%b§);
                                                   while(true)
                                                   {
                                                      §§pop().§[A§ = new Rectangle(param1,param2,param3,param4);
                                                   }
                                                   addr141:
                                                }
                                                while(true)
                                                {
                                                   §§push(§?%§.§%b§);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§pop().setCanvasSize(param3,param4);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr141);
                                                   }
                                                }
                                                addr148:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §?!8§ = Math.min(param3 / §^!N§,param4 / §5!P§);
                                                   do
                                                   {
                                                      §§push(§§findproperty(§@"6§));
                                                      §§push(param3);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() / §^!N§);
                                                      }
                                                      §§pop().§@"6§ = §§pop();
                                                      loop13:
                                                      do
                                                      {
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§push(§§findproperty(§ !4§));
                                                            §§push(param4);
                                                            if(_loc5_ || param2)
                                                            {
                                                               §§push(§§pop() / §5!P§);
                                                            }
                                                            §§pop().§ !4§ = §§pop();
                                                            for(; _loc5_; §!'§.§=V§(param3,param4),if(!(_loc6_ && param2))
                                                            {
                                                               continue loop13;
                                                            })
                                                            {
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                      while(_loc6_);
                                                      
                                                   }
                                                   while(_loc6_);
                                                   
                                                   §§goto(addr39);
                                                }
                                                addr79:
                                             }
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop17;
                                                }
                                                §§goto(addr148);
                                                §§goto(addr71);
                                             }
                                             continue loop17;
                                          }
                                          §§goto(addr141);
                                          continue loop17;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr163);
                  }
               }
            }
         }
         addr39:
      }
   }
}

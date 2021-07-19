package §,"&§
{
   import § M§.§`"B§;
   import §#!b§.§'y§;
   import §'4§.§^g§;
   import §0N§.§="=§;
   import §5Q§.§^!e§;
   import §`!j§.§#b§;
   import §`",§.§'8§;
   import flash.geom.Rectangle;
   
   public class §9q§
   {
      
      public static var §?[§:int = 0;
      
      public static var §3!h§:int = 0;
      
      public static var §>!L§:§^g§;
      
      public static var §2!x§:§="=§;
      
      public static var §-"<§:Boolean = false;
      
      public static var §64§:§9q§ = null;
      
      public static var §=!!§:§'y§;
      
      public static var §9"2§:Boolean = true;
      
      public static var §&D§:Number = 1;
      
      public static var §9!$§:Number = 1.0;
      
      public static var §+w§:Number = 1.0;
      
      private static var §3! §:§`"B§ = null;
      
      private static var §%!q§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?[§ = 0;
            loop0:
            while(true)
            {
               §3!h§ = 0;
               loop1:
               while(true)
               {
                  §-"<§ = false;
                  while(true)
                  {
                     §64§ = null;
                     while(_loc2_ || _loc1_)
                     {
                        if(!_loc1_)
                        {
                           §9"2§ = true;
                           loop4:
                           for(; !_loc1_; if(!(_loc1_ && _loc2_))
                           {
                              §%!q§ = false;
                              addr56:
                              if(_loc1_ && §9q§)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(!_loc1_)
                                       {
                                          §3! § = null;
                                          continue loop8;
                                       }
                                       continue loop0;
                                       addr71:
                                    }
                                    §§goto(addr42);
                                 }
                              }
                              return;
                              addr35:
                           })
                           {
                              §&D§ = 1;
                              while(true)
                              {
                                 §9!$§ = 1;
                                 continue loop0;
                                 addr42:
                                 if(_loc2_ || _loc1_)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function §9q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §]8§() : Number
      {
         return §?[§ * §9!$§;
      }
      
      public static function §&"-§() : Number
      {
         return §3!h§ * §+w§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§%!q§)
            {
               if(_loc2_)
               {
                  §%!q§ = true;
                  addr96:
                  while(true)
                  {
                     §§push(§^!e§.§1!P§);
                     if(_loc2_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc1_ && §9q§))
                           {
                              addr74:
                              §^!e§.§1!P§.isPaused = true;
                           }
                           while(_loc2_)
                           {
                              if(!(_loc2_ || §9q§))
                              {
                                 continue;
                              }
                              addr51:
                              §^!e§.§`?§.§=!g§(false);
                              addr20:
                              return;
                              addr53:
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§push(§^!e§.§`?§);
                           if(!_loc1_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr32);
                                 }
                                 §§goto(addr53);
                              }
                              §§goto(addr20);
                           }
                           break;
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr74);
                  }
                  addr96:
               }
               §§goto(addr96);
            }
            §§goto(addr51);
         }
         §§goto(addr96);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§%!q§)
            {
               loop0:
               while(true)
               {
                  §%!q§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§^!e§.§1!P§);
                     if(_loc1_ || §9q§)
                     {
                        if(§§pop())
                        {
                           addr68:
                           while(true)
                           {
                              §§push(§^!e§.§1!P§);
                              addr70:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr82:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           addr68:
                        }
                        while(true)
                        {
                           §§push(§^!e§.§`?§);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    addr48:
                                    §^!e§.§`?§.§=!g§(true);
                                 }
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       §§goto(addr19);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr68);
                              }
                              §§goto(addr19);
                           }
                           §§goto(addr48);
                        }
                        continue loop0;
                     }
                     §§goto(addr70);
                  }
               }
            }
            addr19:
            return;
         }
         §§goto(addr68);
      }
      
      public static function get isPaused() : Boolean
      {
         return §%!q§;
      }
      
      public static function init(param1:§'y§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §=!!§ = param1;
            while(true)
            {
               §?[§ = param2;
               while(_loc4_ || param2)
               {
                  §3!h§ = param3;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        §2!x§ = new §="=§(true,param1.canvas);
                        if(_loc4_ || §9q§)
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
         §§goto(addr60);
      }
      
      public static function §&!&§(param1:§'8§, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §>!L§.§&!&§(param1,param2);
         }
      }
      
      public static function loadLevel(param1:§#b§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §9q§))
         {
            §>!L§.init(param1);
         }
      }
      
      public static function §15§(param1:§`"B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §3! § = param1;
         }
         do
         {
            §>!L§.§15§(param1);
         }
         while(!(_loc3_ || §9q§));
         
      }
      
      public static function get §&!$§() : §`"B§
      {
         return §3! §;
      }
      
      public static function §]i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9"2§ = param1;
            do
            {
               §>!L§.background.§]i§(param1);
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §&T§() : Boolean
      {
         return §9"2§;
      }
      
      public static function §<_§(param1:Number, param2:Number, param3:Number, param4:Number) : void
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
                     while(true)
                     {
                        §§push(32);
                        addr178:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr179:
                           while(true)
                           {
                              param4 = §§pop();
                              addr180:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr177:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(32);
                        if(_loc6_ && §9q§)
                        {
                           continue loop1;
                        }
                        if(§§pop() < §§pop())
                        {
                           while(true)
                           {
                              §§push(32);
                              if(_loc5_ || param1)
                              {
                                 §§push(Number(§§pop()));
                                 while(!_loc6_)
                                 {
                                    param3 = §§pop();
                                    loop11:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr173:
                                          while(true)
                                          {
                                             §&D§ = Math.min(param3 / §?[§,param4 / §3!h§);
                                             loop9:
                                             while(!_loc6_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§findproperty(§9!$§));
                                                   §§push(param3);
                                                   if(_loc5_ || §9q§)
                                                   {
                                                      §§push(§§pop() / §?[§);
                                                   }
                                                   §§pop().§9!$§ = §§pop();
                                                   loop13:
                                                   while(!_loc6_)
                                                   {
                                                      §§push(§§findproperty(§+w§));
                                                      §§push(param4);
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         §§push(§§pop() / §3!h§);
                                                      }
                                                      §§pop().§+w§ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_ || param2)
                                                            {
                                                               §^!e§.§;b§ = new Rectangle(param1,param2,param3,param4);
                                                               do
                                                               {
                                                                  §^!e§.§4""§ = §9!$§ > §+w§;
                                                                  continue loop14;
                                                               }
                                                               while(!(_loc5_ || param3));
                                                               
                                                               return;
                                                            }
                                                            break;
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                             §§goto(addr180);
                                             §§goto(addr173);
                                          }
                                          addr120:
                                       }
                                       else
                                       {
                                          §§goto(addr177);
                                       }
                                    }
                                 }
                                 §§goto(addr179);
                                 addr158:
                              }
                              break;
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr158);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr133);
      }
   }
}

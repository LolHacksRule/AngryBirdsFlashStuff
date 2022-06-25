package §2_§
{
   public class §@!6§
   {
      
      public static const §?R§:String = "damage";
      
      public static const §-1§:String = "removed";
      
      public static const §+W§:String = "extraBird";
      
      private static var §3P§:Array;
      
      private static var §;k§:Array;
      
      private static var §;t§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §@!6§)
         {
            §?R§ = "damage";
            do
            {
               §-1§ = "removed";
               do
               {
                  §+W§ = "extraBird";
               }
               while(!(_loc1_ || §@!6§));
               
            }
            while(!_loc1_);
            
         }
      }
      
      public function §@!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            do
            {
               init();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3P§ = [];
            while(true)
            {
               §;k§ = [];
               while(_loc1_)
               {
                  §;t§ = [];
                  if(_loc1_ || _loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1 == 0)
            {
               if(!(_loc5_ && §@!6§))
               {
                  §§goto(addr70);
               }
            }
            var _loc3_:* = param2;
            if(!(_loc5_ && param1))
            {
               §§push(§?R§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || param2)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              addr149:
                           }
                        }
                        else
                        {
                           addr153:
                           §§push(2);
                           if(_loc4_ || param2)
                           {
                              addr161:
                           }
                        }
                        §§goto(addr166);
                     }
                     else
                     {
                        §§push(§-1§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr128);
               }
               addr125:
               §§push(_loc3_);
               if(!_loc5_)
               {
                  addr128:
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || §@!6§)
                     {
                        addr146:
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr149);
                        }
                        else
                        {
                           §§goto(addr161);
                        }
                     }
                     else
                     {
                        §§goto(addr153);
                     }
                     §§goto(addr166);
                  }
                  else
                  {
                     addr151:
                     §§push(§+W§);
                     §§push(_loc3_);
                  }
                  §§goto(addr153);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr153);
               }
               else
               {
                  §§push(3);
               }
               addr166:
               switch(§§pop())
               {
                  case 0:
                     addr58:
                     §3P§.push(param1);
                     break;
                     addr57:
                     addr59:
                  case 1:
                     addr39:
                     §§push(§;k§);
                     if(!_loc5_)
                     {
                        addr42:
                        §§pop().push(param1);
                        if(!(_loc5_ && _loc3_))
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        break;
                     }
                     §§goto(addr57);
                     §§goto(addr59);
                  case 2:
                     §§push(§;t§);
                     if(_loc4_)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              §§pop().push(§§pop());
                              if(!_loc5_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              break;
                           }
                           §§goto(addr58);
                           §§goto(addr58);
                        }
                        else
                        {
                           §§goto(addr42);
                        }
                     }
                     else
                     {
                        §§goto(addr39);
                     }
                     §§goto(addr58);
               }
               return;
            }
            §§goto(addr146);
         }
         addr70:
      }
      
      public static function §!i§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(§3P§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§;k§);
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop5:
                              while(true)
                              {
                                 §§push(",0,");
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§;k§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop().toString());
                                                loop11:
                                                while(!(_loc3_ && _loc3_))
                                                {
                                                   _loc1_ = §§pop();
                                                   while(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                      addr74:
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               if(!(_loc3_ && §@!6§))
                                                               {
                                                                  break;
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr59:
                                                                  _loc1_ = §§pop();
                                                                  if(!(_loc2_ || §@!6§))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!(_loc3_ && §@!6§))
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§;t§);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(§§pop() + §§pop().toString());
                                                                              continue loop17;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop17;
                                                                        §§goto(addr59);
                                                                     }
                                                                     continue loop1;
                                                                     addr123:
                                                                  }
                                                                  addr67:
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§goto(addr74);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        continue loop9;
                                                                        §§goto(addr67);
                                                                     }
                                                                     addr103:
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                            return §§pop();
                                                            addr21:
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop5;
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
                           §§push(§;t§);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           if(§§pop().length > 0)
                           {
                              §§goto(addr103);
                           }
                           §§goto(addr21);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
   }
}

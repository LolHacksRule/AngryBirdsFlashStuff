package §!X§
{
   public class §7@§
   {
      
      public static const §0!3§:String = "damage";
      
      public static const §!!!§:String = "removed";
      
      public static const §3A§:String = "extraBird";
      
      private static var §%b§:Array;
      
      private static var §;6§:Array;
      
      private static var §48§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §0!3§ = "damage";
         }
         while(true)
         {
            §!!!§ = "removed";
            while(_loc2_)
            {
               §3A§ = "extraBird";
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §7@§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            do
            {
               init();
            }
            while(!_loc1_);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §%b§ = [];
            while(true)
            {
               §;6§ = [];
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §48§ = [];
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1 == 0)
            {
               if(!_loc4_)
               {
                  return;
               }
               addr92:
            }
            var _loc3_:* = param2;
            if(_loc5_ || param2)
            {
               §§push(§0!3§);
               if(_loc5_ || §7@§)
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc4_ && param1)
                           {
                              addr172:
                           }
                        }
                        else
                        {
                           addr147:
                           §§push(1);
                           if(_loc5_ || _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§!!!§);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && §7@§))
                                 {
                                    §§goto(addr147);
                                 }
                              }
                              else
                              {
                                 addr158:
                                 if(§3A§ !== _loc3_)
                                 {
                                    addr177:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr74:
                                          §%b§.push(param1);
                                          break;
                                          addr73:
                                          addr75:
                                       case 1:
                                          addr50:
                                          §§push(§;6§);
                                          if(!_loc4_)
                                          {
                                             addr53:
                                             §§pop().push(param1);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   break;
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr73);
                                          §§goto(addr75);
                                       case 2:
                                          §§push(§48§);
                                          if(_loc5_)
                                          {
                                             §§push(param1);
                                             if(_loc5_ || §7@§)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§pop().push(§§pop());
                                                   if(!(_loc4_ && §7@§))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr74);
                                                §§goto(addr74);
                                             }
                                             else
                                             {
                                                §§goto(addr53);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr50);
                                          }
                                          §§goto(addr74);
                                    }
                                    return;
                                    §§push(3);
                                 }
                              }
                              §§goto(addr177);
                              if(_loc5_)
                              {
                                 §§goto(addr172);
                              }
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr177);
                  }
               }
               §§goto(addr158);
            }
            §§goto(addr147);
         }
         §§goto(addr92);
      }
      
      public static function §1'§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(_loc2_)
         {
            §§push(§%b§);
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
                     §§push(§;6§);
                     loop3:
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           loop4:
                           while(_loc2_ || _loc1_)
                           {
                              §§push(_loc1_);
                              loop5:
                              while(true)
                              {
                                 §§push(",0,");
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop7:
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
                                             §§push(§;6§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop().toString());
                                                loop11:
                                                while(!_loc3_)
                                                {
                                                   _loc1_ = §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      addr96:
                                                      if(!(_loc2_ || §7@§))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         addr21:
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               addr30:
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§48§);
                                                                  if(!(_loc2_ || _loc1_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop().toString());
                                                                  §§goto(addr30);
                                                               }
                                                               continue loop10;
                                                               addr51:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr71:
                                                                     _loc1_ = §§pop();
                                                                     if(!(_loc3_ && §7@§))
                                                                     {
                                                                        addr89:
                                                                        if(_loc2_ || §7@§)
                                                                        {
                                                                           §§goto(addr96);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              addr116:
                                                                              while(true)
                                                                              {
                                                                                 §§push(",0,");
                                                                                 if(!(_loc2_ || _loc1_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 _loc1_ = §§pop();
                                                                              }
                                                                              continue loop6;
                                                                              §§goto(addr89);
                                                                           }
                                                                           addr115:
                                                                        }
                                                                     }
                                                                     while(_loc2_)
                                                                     {
                                                                        §§goto(addr51);
                                                                        §§push(_loc1_);
                                                                        §§goto(addr71);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr116);
                                                               continue loop19;
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(§48§);
                           if(!_loc2_)
                           {
                              continue loop3;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(§§pop().length > 0)
                           {
                              §§goto(addr115);
                           }
                           §§goto(addr21);
                        }
                        §§goto(addr46);
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
   }
}

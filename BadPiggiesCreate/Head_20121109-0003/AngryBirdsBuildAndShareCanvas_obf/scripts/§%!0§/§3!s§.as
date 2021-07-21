package §%!0§
{
   public class §3!s§
   {
      
      public static const § !?§:String = "damage";
      
      public static const §0`§:String = "removed";
      
      public static const §8!#§:String = "extraBird";
      
      private static var §9;§:Array;
      
      private static var §"A§:Array;
      
      private static var §,6§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !?§ = "damage";
         }
         while(true)
         {
            §0`§ = "removed";
            while(!(_loc2_ && _loc1_))
            {
               §8!#§ = "extraBird";
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §3!s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               init();
            }
            while(_loc2_);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9;§ = [];
            while(true)
            {
               §"A§ = [];
               while(_loc1_ || §3!s§)
               {
                  §,6§ = [];
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §3!s§)
         {
            if(param1 == 0)
            {
               if(!(_loc4_ && param2))
               {
                  §§goto(addr106);
               }
            }
            var _loc3_:* = param2;
            if(!_loc4_)
            {
               §§push(§ !?§);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(0);
                           if(!(_loc5_ || param2))
                           {
                              addr155:
                           }
                        }
                        else
                        {
                           addr152:
                           §§push(1);
                           if(!_loc4_)
                           {
                              §§goto(addr155);
                           }
                        }
                     }
                     else
                     {
                        §§push(§0`§);
                        if(!_loc4_)
                        {
                           addr141:
                           §§push(_loc3_);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr152);
                                 }
                                 else
                                 {
                                    addr159:
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                    }
                                    §§goto(addr177);
                                 }
                              }
                              else
                              {
                                 §§push(§8!#§);
                              }
                              §§goto(addr159);
                           }
                           addr158:
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr159);
                           }
                           else
                           {
                              addr177:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr77:
                                    §9;§.push(param1);
                                    addr76:
                                    if(_loc5_ || §3!s§)
                                    {
                                       addr49:
                                       break;
                                    }
                                    break;
                                 case 1:
                                    addr53:
                                    §§push(§"A§);
                                    if(!_loc4_)
                                    {
                                       addr56:
                                       §§push(param1);
                                       if(!(_loc4_ && param2))
                                       {
                                          §§pop().push(§§pop());
                                          if(!(_loc4_ && §3!s§))
                                          {
                                             break;
                                          }
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr76);
                                    }
                                    §§goto(addr77);
                                 case 2:
                                    §§push(§,6§);
                                    if(_loc5_ || §3!s§)
                                    {
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          §§pop().push(§§pop());
                                          if(_loc5_ || param2)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr56);
                                       §§goto(addr49);
                                    }
                                    else
                                    {
                                       §§goto(addr53);
                                    }
                              }
                              return;
                              §§push(3);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr158);
                        §§push(_loc3_);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr158);
               }
               §§goto(addr141);
            }
            §§goto(addr159);
         }
         addr106:
      }
      
      public static function §&E§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(§9;§);
            while(true)
            {
               §§push(§§pop().toString());
               addr177:
               while(true)
               {
                  _loc1_ = §§pop();
                  addr178:
                  while(true)
                  {
                     §§push(§"A§);
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop().length > 0)
                  {
                     loop5:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§push(_loc1_);
                           loop6:
                           while(_loc3_ || _loc1_)
                           {
                              §§push(",0,");
                              if(_loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc2_)
                                 {
                                    _loc1_ = §§pop();
                                    loop7:
                                    for(; !(_loc2_ && _loc1_); loop8:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue loop7;
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             continue loop8;
                                          }
                                       }
                                       continue loop5;
                                       §§goto(addr22);
                                    },§§goto(addr173))
                                    {
                                       §§push(_loc1_);
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       if(_loc3_ || _loc1_)
                                       {
                                          if(_loc3_ || _loc1_)
                                          {
                                             if(_loc3_ || §3!s§)
                                             {
                                                §§push(§,6§);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() + §§pop().toString());
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop().toString());
                                                   break loop6;
                                                }
                                                addr147:
                                             }
                                             else
                                             {
                                                §§goto(addr177);
                                             }
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             §§push(",0,");
                                             addr171:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr172:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr173:
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                   }
                                                }
                                                continue loop9;
                                             }
                                          }
                                          addr153:
                                          §§goto(addr100);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr147);
                                       }
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr171);
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                              break loop5;
                           }
                        }
                        break;
                        if(!(_loc3_ || _loc1_))
                        {
                           continue;
                        }
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr22);
                        }
                        §§goto(addr173);
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr153);
                        }
                        §§goto(addr159);
                     }
                  }
                  addr22:
                  return §§pop();
               }
            }
         }
         §§goto(addr159);
      }
   }
}

package §,!5§
{
   public class §;v§
   {
      
      public static const §+?§:String = "damage";
      
      public static const §-!A§:String = "removed";
      
      public static const §^!2§:String = "extraBird";
      
      private static var §+!n§:Array;
      
      private static var §4!V§:Array;
      
      private static var §;!C§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+?§ = "damage";
            while(true)
            {
               §-!A§ = "removed";
               loop1:
               while(!(_loc1_ && §;v§))
               {
                  while(true)
                  {
                     §^!2§ = "extraBird";
                     if(!(_loc1_ && §;v§))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §;v§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            init();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+!n§ = [];
            while(true)
            {
               §4!V§ = [];
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §;!C§ = [];
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
         §§goto(addr51);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1 == 0)
            {
               if(!(_loc4_ && param1))
               {
                  return;
               }
               addr92:
            }
            var _loc3_:* = param2;
            if(_loc5_)
            {
               §§push(§+?§);
               if(!(_loc4_ && param1))
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && param2))
                        {
                           addr124:
                           §§push(0);
                           if(!_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr157:
                           §§push(1);
                           if(_loc4_ && §;v§)
                           {
                              addr177:
                           }
                        }
                     }
                     else
                     {
                        §§push(§-!A§);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || _loc3_)
                           {
                              addr139:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || §;v§)
                                 {
                                    §§goto(addr157);
                                 }
                              }
                              else
                              {
                                 addr168:
                                 if(§^!2§ !== _loc3_)
                                 {
                                    addr182:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr69:
                                          §+!n§.push(param1);
                                          break;
                                          addr68:
                                          addr70:
                                       case 1:
                                          addr55:
                                          §§push(§4!V§);
                                          if(_loc5_)
                                          {
                                             addr58:
                                             §§pop().push(param1);
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr68);
                                          §§goto(addr70);
                                       case 2:
                                          §§push(§;!C§);
                                          if(!_loc4_)
                                          {
                                             §§push(param1);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc5_ || §;v§)
                                                {
                                                   §§pop().push(§§pop());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr69);
                                                §§goto(addr69);
                                             }
                                             else
                                             {
                                                §§goto(addr58);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr55);
                                          }
                                          §§goto(addr69);
                                    }
                                    return;
                                    §§push(3);
                                 }
                              }
                              §§goto(addr182);
                              §§goto(addr182);
                           }
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr139);
               }
               §§goto(addr168);
            }
            §§goto(addr124);
         }
         §§goto(addr92);
      }
      
      public static function §-1§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(§+!n§);
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
                     §§push(§4!V§);
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           addr136:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr137:
                              loop9:
                              while(true)
                              {
                                 §§push(",0,");
                                 addr138:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr139:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr140:
                                       while(_loc2_ || §;v§)
                                       {
                                          §§push(_loc1_);
                                          while(!(_loc2_ || _loc1_))
                                          {
                                             continue loop9;
                                          }
                                          _loc1_ = §§pop() + §4!V§.toString();
                                       }
                                       continue loop2;
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                           addr136:
                        }
                        while(true)
                        {
                           §§push(§;!C§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(§§pop().length > 0)
                           {
                              if(_loc2_)
                              {
                                 if(!(_loc3_ && §;v§))
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(_loc1_);
                                       loop5:
                                       while(!_loc3_)
                                       {
                                          §§push(",0,");
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc2_ || _loc2_)
                                             {
                                                _loc1_ = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§;!C§);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() + §§pop().toString());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc3_ && _loc1_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            _loc1_ = §§pop();
                                                            if(_loc3_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               return §§pop();
                                                               addr21:
                                                            }
                                                            §§goto(addr130);
                                                         }
                                                         addr38:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr126);
                                                      }
                                                      §§goto(addr129);
                                                   }
                                                   §§goto(addr38);
                                                }
                                                addr105:
                                             }
                                             else
                                             {
                                                §§goto(addr139);
                                             }
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr108);
                                    }
                                    else
                                    {
                                       §§goto(addr136);
                                    }
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr21);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
   }
}

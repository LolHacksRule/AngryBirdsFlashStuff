package §9T§
{
   public class §<!!§
   {
      
      public static const §3^§:String = "damage";
      
      public static const §;!$§:String = "removed";
      
      public static const §?l§:String = "extraBird";
      
      private static var §!s§:Array;
      
      private static var §'@§:Array;
      
      private static var §,!+§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3^§ = "damage";
         }
         while(true)
         {
            §;!$§ = "removed";
            while(_loc2_)
            {
               §?l§ = "extraBird";
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §<!!§()
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
            while(_loc2_ && this);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!s§ = [];
            while(true)
            {
               §'@§ = [];
               while(!(_loc2_ && _loc2_))
               {
                  §,!+§ = [];
                  if(_loc2_ && §<!!§)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            if(param1 == 0)
            {
               if(!_loc5_)
               {
                  return;
               }
               addr86:
            }
            var _loc3_:* = param2;
            if(_loc4_)
            {
               §§push(§3^§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(0);
                           if(_loc4_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr146:
                           §§push(1);
                           if(_loc5_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§;!$§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              addr143:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr146);
                                 }
                              }
                              else
                              {
                                 addr152:
                                 if(§?l§ !== _loc3_)
                                 {
                                    addr166:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr68:
                                          §!s§.push(param1);
                                          break;
                                          addr69:
                                          addr67:
                                       case 1:
                                          addr55:
                                          §§push(§'@§);
                                          §§push(param1);
                                          if(_loc4_)
                                          {
                                             §§pop().push(§§pop());
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr68);
                                          §§goto(addr69);
                                       case 2:
                                          §§push(§,!+§);
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || §<!!§)
                                             {
                                                §§push(param1);
                                                if(!_loc5_)
                                                {
                                                   §§pop().push(§§pop());
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr55);
                                                §§goto(addr68);
                                             }
                                             else
                                             {
                                                §§goto(addr67);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr55);
                                          }
                                          §§goto(addr55);
                                    }
                                    return;
                                    §§push(3);
                                 }
                              }
                              §§goto(addr166);
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr143);
               }
               §§goto(addr152);
            }
            §§goto(addr146);
         }
         §§goto(addr86);
      }
      
      public static function §#!1§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(!_loc2_)
         {
            §§push(§!s§);
            while(true)
            {
               _loc1_ = §§pop().toString();
               loop1:
               while(true)
               {
                  §§push(§'@§);
                  loop2:
                  while(true)
                  {
                     if(§§pop().length <= 0)
                     {
                        continue;
                     }
                     §§push(_loc1_);
                     §§push(",0,");
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr152:
                        addr92:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§'@§);
                              while(true)
                              {
                                 §§push(§§pop() + §§pop().toString());
                              }
                              addr132:
                           }
                           addr135:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              addr136:
                              while(_loc3_ || _loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                        §§push(",0,");
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_ = §§pop();
                           loop9:
                           for(; !(_loc2_ && _loc2_); while(true)
                           {
                              _loc1_ = §§pop();
                              if(!(_loc3_ || §<!!§))
                              {
                                 break;
                              }
                              §§goto(addr22);
                           })
                           {
                              §§push(_loc1_);
                              while(true)
                              {
                                 §§push(§,!+§);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop().toString());
                                 continue loop9;
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr136);
                           addr109:
                        }
                        else
                        {
                           §§goto(addr152);
                        }
                        §§goto(addr135);
                     }
                  }
               }
               if(_loc3_ || _loc3_)
               {
                  if(§§pop().length > 0)
                  {
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_ || §<!!§)
                           {
                              §§goto(addr92);
                           }
                           §§goto(addr135);
                        }
                        addr84:
                     }
                     §§goto(addr109);
                  }
                  addr22:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc2_ && _loc1_)
                     {
                        continue loop11;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr38);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr84);
      }
   }
}

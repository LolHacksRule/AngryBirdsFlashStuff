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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §;v§))
         {
            §+?§ = "damage";
         }
         while(true)
         {
            §-!A§ = "removed";
            while(_loc1_ || _loc1_)
            {
               §^!2§ = "extraBird";
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §;v§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         do
         {
            init();
         }
         while(_loc2_);
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!n§ = [];
            while(true)
            {
               §4!V§ = [];
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            §;!C§ = [];
            if(!_loc2_)
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1 == 0)
            {
               if(!(_loc5_ && §;v§))
               {
                  return;
               }
               addr86:
            }
            var _loc3_:* = param2;
            if(!_loc5_)
            {
               §§push(§+?§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || §;v§)
                        {
                           §§push(0);
                           if(_loc5_ && §;v§)
                           {
                           }
                           §§goto(addr166);
                        }
                        else
                        {
                           §§goto(addr146);
                        }
                     }
                     else
                     {
                        §§push(§-!A§);
                        if(_loc4_)
                        {
                           addr120:
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr146:
                                    §§push(1);
                                    if(!(_loc4_ || param2))
                                    {
                                       addr161:
                                    }
                                 }
                              }
                              else
                              {
                                 addr157:
                                 if(§^!2§ !== _loc3_)
                                 {
                                    addr166:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr56:
                                          §+!n§.push(param1);
                                          addr55:
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr38:
                                             break;
                                          }
                                          break;
                                       case 1:
                                          addr42:
                                          §§push(§4!V§);
                                          if(!_loc5_)
                                          {
                                             addr45:
                                             §§push(param1);
                                             if(!_loc5_)
                                             {
                                                §§pop().push(§§pop());
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr55);
                                          }
                                          §§goto(addr56);
                                       case 2:
                                          §§push(§;!C§);
                                          if(!(_loc5_ && §;v§))
                                          {
                                             §§push(param1);
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
                                             §§goto(addr45);
                                             §§goto(addr38);
                                          }
                                          else
                                          {
                                             §§goto(addr42);
                                          }
                                    }
                                    return;
                                    §§push(3);
                                 }
                              }
                              §§goto(addr166);
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr157);
               }
               §§goto(addr120);
            }
            §§goto(addr146);
         }
         §§goto(addr86);
      }
      
      public static function §-1§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc3_))
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
                           if(!(_loc3_ && _loc2_))
                           {
                              while(true)
                              {
                                 §§push(_loc1_);
                                 addr149:
                                 while(true)
                                 {
                                    §§push(",0,");
                                    addr150:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr151:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                       }
                                    }
                                 }
                              }
                              addr148:
                           }
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop5:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(§4!V§);
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop().toString());
                                       addr134:
                                       addr46:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          addr135:
                                          while(true)
                                          {
                                          }
                                       }
                                       §§push(§;!C§);
                                       if(_loc2_ || §;v§)
                                       {
                                          §§push(§§pop() + §§pop().toString());
                                          loop13:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                         addr26:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop13;
                                                      }
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr91:
                                                   while(!_loc3_)
                                                   {
                                                      §§push(_loc1_);
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(",0,");
                                                         if(_loc3_)
                                                         {
                                                            break loop5;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc2_)
                                                         {
                                                            _loc1_ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr151);
                                                         }
                                                      }
                                                      §§goto(addr134);
                                                   }
                                                   continue loop4;
                                                }
                                                while(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(_loc1_);
                                                   if(!_loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§goto(addr46);
                                                }
                                                §§goto(addr135);
                                             }
                                             §§goto(addr94);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr149);
                                 }
                              }
                              §§goto(addr150);
                           }
                        }
                        while(true)
                        {
                           §§push(§;!C§);
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr148);
      }
   }
}

package §+&§
{
   public class §;!8§
   {
      
      public static const §>X§:String = "damage";
      
      public static const §-"§:String = "removed";
      
      public static const §,!E§:String = "extraBird";
      
      private static var §6!3§:Array;
      
      private static var §0!9§:Array;
      
      private static var §?!S§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §;!8§))
         {
            §>X§ = "damage";
         }
         while(true)
         {
            §-"§ = "removed";
            while(_loc1_ || _loc1_)
            {
               §,!E§ = "extraBird";
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §;!8§()
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
            §6!3§ = [];
            while(true)
            {
               §0!9§ = [];
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            §?!S§ = [];
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
               if(!(_loc5_ && §;!8§))
               {
                  return;
               }
               addr86:
            }
            var _loc3_:* = param2;
            if(!_loc5_)
            {
               §§push(§>X§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || §;!8§)
                        {
                           §§push(0);
                           if(_loc5_ && §;!8§)
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
                        §§push(§-"§);
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
                                 if(§,!E§ !== _loc3_)
                                 {
                                    addr166:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr56:
                                          §6!3§.push(param1);
                                          addr55:
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr38:
                                             break;
                                          }
                                          break;
                                       case 1:
                                          addr42:
                                          §§push(§0!9§);
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
                                          §§push(§?!S§);
                                          if(!(_loc5_ && §;!8§))
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
      
      public static function §?!h§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc3_))
         {
            §§push(§6!3§);
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
                     §§push(§0!9§);
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
                                    §§push(§0!9§);
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
                                       §§push(§?!S§);
                                       if(_loc2_ || §;!8§)
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
                           §§push(§?!S§);
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

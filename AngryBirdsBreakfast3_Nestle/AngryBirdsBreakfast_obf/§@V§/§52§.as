package §@V§
{
   public class §52§
   {
      
      public static const §^Y§:String = "damage";
      
      public static const §[!g§:String = "removed";
      
      public static const §[1§:String = "extraBird";
      
      private static var §6x§:Array;
      
      private static var §'A§:Array;
      
      private static var §3N§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §52§))
         {
            §^Y§ = "damage";
            do
            {
               §[!g§ = "removed";
               do
               {
                  §[1§ = "extraBird";
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §52§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         do
         {
            init();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §52§))
         {
            §6x§ = [];
            while(true)
            {
               §'A§ = [];
               while(!(_loc1_ && §52§))
               {
                  §3N§ = [];
                  if(!(_loc2_ || §52§))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || §52§)
         {
            if(param1 == 0)
            {
               if(!(_loc5_ && param2))
               {
                  return;
               }
               addr101:
            }
            var _loc3_:* = param2;
            if(_loc4_ || _loc3_)
            {
               §§push(§^Y§);
               if(!(_loc5_ && §52§))
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(_loc4_ || §52§)
                           {
                           }
                        }
                        else
                        {
                           addr156:
                           §§push(1);
                           if(!_loc4_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§[!g§);
                        if(!(_loc5_ && param1))
                        {
                           addr145:
                           §§push(_loc3_);
                           if(!(_loc5_ && param1))
                           {
                              addr153:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr156);
                                 }
                                 else
                                 {
                                    addr163:
                                    §§push(2);
                                    if(!_loc4_)
                                    {
                                    }
                                    §§goto(addr181);
                                 }
                              }
                              else
                              {
                                 addr161:
                                 §§push(§[1§);
                                 §§push(_loc3_);
                              }
                              §§goto(addr163);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr163);
                           }
                           else
                           {
                              addr181:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr71:
                                    §6x§.push(param1);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr57:
                                       break;
                                    }
                                    break;
                                 case 1:
                                    addr62:
                                    §§push(§'A§);
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       §§pop().push(§§pop());
                                       break;
                                       addr65:
                                    }
                                    else
                                    {
                                       §§goto(addr71);
                                    }
                                    break;
                                 case 2:
                                    §§push(§3N§);
                                    if(_loc4_ || §52§)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(param1);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§pop().push(§§pop());
                                             if(!_loc5_)
                                             {
                                                if(!(_loc5_ && §52§))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr65);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr62);
                                          §§goto(addr57);
                                       }
                                       else
                                       {
                                          §§goto(addr71);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr62);
                                    }
                                    §§goto(addr62);
                              }
                              return;
                              §§push(3);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr153);
               }
               §§goto(addr145);
            }
            §§goto(addr163);
         }
         §§goto(addr101);
      }
      
      public static function §3^§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(!(_loc2_ && _loc1_))
         {
            §§push(§6x§);
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
                     §§push(§'A§);
                     for(; _loc3_; loop8:
                     while(true)
                     {
                        §§push(§3N§);
                        if(!(_loc3_ || _loc1_))
                        {
                           break;
                        }
                        if(§§pop().length > 0)
                        {
                           while(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc2_ && §52§)
                                 {
                                    continue loop2;
                                 }
                                 §§push(_loc1_);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(",0,");
                                    if(!(_loc2_ && §52§))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc3_ || §52§)
                                       {
                                          _loc1_ = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(§3N§);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() + §§pop().toString());
                                                   }
                                                   else
                                                   {
                                                      addr128:
                                                   }
                                                   §§push(§§pop() + §§pop().toString());
                                                   continue loop11;
                                                   break;
                                                }
                                                break;
                                                addr31:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr127:
                                                      while(true)
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                      addr133:
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         _loc1_ = §§pop();
                                                         continue loop8;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             if(!_loc3_)
                                             {
                                                §§goto(addr160);
                                             }
                                             §§goto(addr133);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    break;
                                 }
                                 §§goto(addr161);
                              }
                              else
                              {
                                 §§goto(addr149);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr127);
                           }
                           addr163:
                        }
                        §§goto(addr27);
                     })
                     {
                        if(§§pop().length <= 0)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           addr160:
                           while(true)
                           {
                              §§push(",0,");
                              addr161:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr162:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr163);
      }
   }
}

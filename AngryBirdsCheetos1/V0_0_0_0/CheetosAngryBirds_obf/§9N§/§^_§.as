package §9N§
{
   public class §^_§
   {
      
      public static const §][§:String = "damage";
      
      public static const §3F§:String = "removed";
      
      public static const §3B§:String = "extraBird";
      
      private static var §]M§:Array;
      
      private static var §&"§:Array;
      
      private static var §=!A§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §][§ = "damage";
            while(true)
            {
               §3F§ = "removed";
               while(_loc2_ || §^_§)
               {
                  §3B§ = "extraBird";
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §^_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            do
            {
               init();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §]M§ = [];
            do
            {
               §&"§ = [];
               do
               {
                  §=!A§ = [];
               }
               while(_loc1_ && §^_§);
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(param1 == 0)
            {
               if(!_loc5_)
               {
                  return;
               }
               addr101:
            }
            var _loc3_:* = param2;
            if(_loc4_ || §^_§)
            {
               §§push(§][§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           addr128:
                           §§push(0);
                           if(!(_loc4_ || _loc3_))
                           {
                              addr176:
                           }
                        }
                        else
                        {
                           addr158:
                           §§push(2);
                           if(_loc4_ || param2)
                           {
                              §§goto(addr176);
                           }
                        }
                        §§goto(addr181);
                     }
                     else
                     {
                        §§push(§3F§);
                        if(!_loc5_)
                        {
                           addr140:
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc5_ && param2)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr158);
                                 }
                                 §§goto(addr181);
                              }
                              else
                              {
                                 §§push(§3B§);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr157);
                        }
                        addr157:
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr158);
                        }
                        else
                        {
                           §§push(3);
                        }
                        addr181:
                        switch(§§pop())
                        {
                           case 0:
                              addr76:
                              §]M§.push(param1);
                              if(!(_loc5_ && §^_§))
                              {
                                 addr62:
                                 break;
                              }
                              break;
                           case 1:
                              addr67:
                              §§push(§&"§);
                              §§push(param1);
                              if(_loc4_)
                              {
                                 §§pop().push(§§pop());
                                 break;
                                 addr70:
                              }
                              else
                              {
                                 §§goto(addr76);
                              }
                              break;
                           case 2:
                              §§push(§=!A§);
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    §§push(param1);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§pop().push(§§pop());
                                       if(!(_loc5_ && param1))
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr70);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr67);
                                    §§goto(addr62);
                                 }
                                 else
                                 {
                                    §§goto(addr76);
                                 }
                              }
                              else
                              {
                                 §§goto(addr67);
                              }
                              §§goto(addr67);
                        }
                        return;
                        §§push(_loc3_);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr157);
               }
               §§goto(addr140);
            }
            §§goto(addr128);
         }
         §§goto(addr101);
      }
      
      public static function §%!5§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(§]M§);
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
                     §§push(§&"§);
                     loop3:
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           continue;
                        }
                        loop4:
                        while(true)
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
                                    while(!(_loc3_ && _loc1_))
                                    {
                                       §§push(_loc1_);
                                       loop9:
                                       for(; !(_loc3_ && §^_§); if(!(_loc2_ || §^_§))
                                       {
                                          continue;
                                       },§§push(",0,"),if(_loc3_)
                                       {
                                          continue loop6;
                                       },§§push(§§pop() + §§pop()),if(!_loc2_)
                                       {
                                          continue loop7;
                                       },_loc1_ = §§pop(),§§goto(addr135))
                                       {
                                          §§push(§&"§);
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop().toString());
                                             addr149:
                                             addr42:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                addr150:
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             §§push(§=!A§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() + §§pop().toString());
                                                loop17:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!(_loc2_ || _loc3_))
                                                      {
                                                         continue loop5;
                                                      }
                                                      _loc1_ = §§pop();
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!(_loc2_ || _loc1_))
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop17;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(_loc2_ || _loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(_loc1_);
                                                               while(_loc2_ || _loc2_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr149);
                                                            }
                                                            §§goto(addr150);
                                                            addr104:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            if(!(_loc2_ || _loc1_))
                                                            {
                                                               continue loop17;
                                                            }
                                                            §§goto(addr42);
                                                         }
                                                         addr135:
                                                      }
                                                   }
                                                   §§goto(addr114);
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
               if(§§pop().length > 0)
               {
                  §§goto(addr104);
               }
               §§goto(addr21);
            }
         }
         §§goto(addr79);
      }
   }
}

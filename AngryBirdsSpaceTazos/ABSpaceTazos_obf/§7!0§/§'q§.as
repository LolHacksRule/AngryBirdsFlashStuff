package §7!0§
{
   public class §'q§
   {
       
      
      public function §'q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §2!#§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || param1)
            {
               if(_loc6_)
               {
                  if(_loc6_)
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(_loc6_)
                        {
                           §§push(_loc2_);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 if(§§pop().length <= 0)
                                 {
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       §§push(§§pop().toString());
                                       addr85:
                                       while(true)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             if(_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      _loc3_++;
                                                      addr62:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            addr101:
                                                            loop2:
                                                            while(_loc6_ || param1)
                                                            {
                                                               §§push(_loc2_);
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() + ("-" + _loc4_.toString()));
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                     }
                                                                     addr122:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop().charCodeAt(_loc3_)));
                                                                        addr130:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              addr162:
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(7937);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 break loop2;
                                                                              }
                                                                              addr162:
                                                                           }
                                                                           §§push(§§pop() + §§pop() * (_loc3_ + 2));
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() % 65536);
                                                                           }
                                                                           §§goto(addr162);
                                                                        }
                                                                     }
                                                                     addr127:
                                                                  }
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§goto(addr109);
                                          }
                                          §§goto(addr122);
                                       }
                                    }
                                    addr73:
                                 }
                                 §§goto(addr101);
                              }
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr62);
                     }
                     else
                     {
                        §§push(param1);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr130);
               }
               §§goto(addr162);
            }
            §§goto(addr73);
         }
         return §§pop();
      }
      
      public static function §<"&§(param1:String) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = 0;
         var _loc2_:* = "";
         var _loc3_:Array = param1.split("-");
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc7_ && _loc3_))
            {
               if(_loc6_ || _loc3_)
               {
                  if(§§pop() >= _loc3_.length)
                  {
                     if(_loc6_ || §'q§)
                     {
                        if(_loc6_)
                        {
                           §§push(_loc2_);
                           if(!(_loc7_ && _loc2_))
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(§§pop() + String.fromCharCode(_loc5_));
                                 addr141:
                                 while(true)
                                 {
                                    continue loop1;
                                 }
                              }
                              addr93:
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 _loc4_++;
                                 addr81:
                                 while(true)
                                 {
                                    if(!(_loc6_ || param1))
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    addr161:
                                    while(true)
                                    {
                                       §§push(65536);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(§§pop() + _loc5_);
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(7937);
                                             if(!_loc7_)
                                             {
                                                addr139:
                                                §§push(§§pop() * (_loc4_ + 2));
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   §§push(§§pop() % 65536);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(65536);
                                                }
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   §§goto(addr141);
                                                }
                                                addr140:
                                             }
                                             §§push(§§pop() % §§pop());
                                          }
                                          §§goto(addr139);
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr81);
                  }
                  else
                  {
                     addr160:
                     _loc5_ = int(parseInt(_loc3_[_loc4_]));
                  }
                  §§goto(addr161);
               }
               §§goto(addr160);
            }
            §§goto(addr139);
         }
         return §§pop();
      }
   }
}

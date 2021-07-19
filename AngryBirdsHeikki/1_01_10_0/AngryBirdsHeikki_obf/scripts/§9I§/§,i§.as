package §9I§
{
   public class §,i§
   {
       
      
      public function §,i§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §8![§(param1:String) : String
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
               if(!_loc5_)
               {
                  if(§§pop() >= param1.length)
                  {
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                     if(!(_loc5_ && §,i§))
                     {
                        if(_loc6_ || _loc2_)
                        {
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 if(§§pop().length > 0)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_ && param1)
                                       {
                                          continue;
                                       }
                                       §§push(_loc2_);
                                    }
                                    break;
                                 }
                                 addr84:
                                 §§push(_loc4_);
                                 while(true)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().toString());
                                          while(_loc6_)
                                          {
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                addr123:
                                                §§push(§§pop() + ("-" + _loc4_.toString()));
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                addr67:
                                                _loc3_++;
                                                continue loop0;
                                                addr107:
                                             }
                                             else
                                             {
                                                addr134:
                                             }
                                             while(true)
                                             {
                                                §§push(int(§§pop().charCodeAt(_loc3_)));
                                                addr137:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc5_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(7937);
                                                      }
                                                      addr141:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop() * (_loc3_ + 2));
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() % 65536);
                                                      }
                                                      §§push(int(§§pop()));
                                                      addr162:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          _loc2_ = §§pop();
                                          break loop1;
                                          addr95:
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr67);
                              addr130:
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§goto(addr134);
               }
               §§goto(addr162);
            }
            §§goto(addr84);
         }
         return §§pop();
      }
      
      public static function §7!!§(param1:String) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = 0;
         var _loc2_:* = "";
         var _loc3_:Array = param1.split("-");
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(!(_loc7_ && _loc2_))
               {
                  if(§§pop() >= _loc3_.length)
                  {
                     if(!(_loc7_ && param1))
                     {
                        if(!_loc7_)
                        {
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                           addr69:
                        }
                        while(!_loc6_)
                        {
                           loop3:
                           for(; _loc7_ && _loc3_; _loc5_ = §§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(65536);
                                 addr85:
                                 while(true)
                                 {
                                    §§push(§§pop() + _loc5_);
                                    if(!_loc7_)
                                    {
                                       §§push(7937);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(§§pop() * (_loc4_ + 2));
                                          if(_loc6_ || param1)
                                          {
                                             §§push(§§pop() % 65536);
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(_loc6_ || _loc3_)
                                          {
                                             addr119:
                                             §§push(§§pop() % 65536);
                                          }
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          addr121:
                                       }
                                    }
                                    §§goto(addr119);
                                 }
                              }
                           }
                           §§push(_loc2_);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + String.fromCharCode(_loc5_));
                           }
                           §§goto(addr69);
                        }
                        _loc4_++;
                     }
                     continue;
                  }
                  §§push(int(parseInt(_loc3_[_loc4_])));
                  while(true)
                  {
                     _loc5_ = §§pop();
                     §§goto(addr156);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr121);
         }
         return §§pop();
      }
   }
}

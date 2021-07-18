package §]0§
{
   public class §!!K§
   {
       
      
      public function §!!K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §0E§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(!_loc6_)
               {
                  if(§§pop() >= param1.length)
                  {
                     if(_loc6_ && §!!K§)
                     {
                        continue;
                     }
                     if(_loc5_ || §!!K§)
                     {
                        if(!_loc6_)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              if(_loc5_ || §!!K§)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 addr138:
                                 §§push(int(§§pop().charCodeAt(_loc3_)));
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       _loc4_ = §§pop();
                                       while(true)
                                       {
                                          §§push(7937);
                                       }
                                       addr150:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop() * (_loc3_ + 2));
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() % 65536);
                                       }
                                       §§push(int(§§pop()));
                                       addr171:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             loop4:
                                             while(true)
                                             {
                                                if(§§pop().length > 0)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      break loop4;
                                                   }
                                                   addr124:
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   while(true)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(§§pop().toString());
                                                         while(true)
                                                         {
                                                            if(_loc6_ && _loc3_)
                                                            {
                                                               break loop4;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   addr70:
                                                }
                                             }
                                             addr125:
                                             while(true)
                                             {
                                                §§push(§§pop() + ("-" + _loc4_.toString()));
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 §§goto(addr132);
                                 §§goto(addr125);
                              }
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr111);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§goto(addr138);
               }
               §§goto(addr171);
            }
            §§goto(addr70);
         }
         return §§pop();
      }
      
      public static function §#8§(param1:String) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = 0;
         var _loc2_:* = "";
         var _loc3_:Array = param1.split("-");
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               if(_loc7_ || _loc3_)
               {
                  if(§§pop() >= _loc3_.length)
                  {
                     if(_loc7_ || §!!K§)
                     {
                        §§push(_loc2_);
                        if(_loc7_ || _loc3_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(§§pop() + String.fromCharCode(_loc5_));
                              addr142:
                           }
                           addr85:
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop3:
                           while(!(_loc6_ && param1))
                           {
                              _loc4_++;
                              while(!(_loc7_ || param1))
                              {
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           loop4:
                           for(; _loc6_; _loc5_ = §§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(65536);
                                 addr101:
                                 while(true)
                                 {
                                    §§push(§§pop() + _loc5_);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(7937);
                                       if(!_loc6_)
                                       {
                                          addr136:
                                          §§push(§§pop() * (_loc4_ + 2));
                                          if(_loc7_ || param1)
                                          {
                                             §§push(§§pop() % 65536);
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(65536);
                                          }
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             addr161:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                continue loop5;
                                             }
                                          }
                                          addr137:
                                       }
                                       §§push(§§pop() % §§pop());
                                    }
                                    §§goto(addr136);
                                 }
                              }
                           }
                           §§goto(addr142);
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr65);
                  }
                  else
                  {
                     §§push(int(parseInt(_loc3_[_loc4_])));
                  }
                  §§goto(addr161);
               }
               §§goto(addr101);
            }
            §§goto(addr137);
         }
         return §§pop();
      }
   }
}

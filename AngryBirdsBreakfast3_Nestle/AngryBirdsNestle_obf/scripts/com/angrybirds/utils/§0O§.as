package com.angrybirds.utils
{
   public class §0O§
   {
       
      
      public function §0O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §]U§(param1:String) : String
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
            if(_loc6_)
            {
               if(§§pop() >= param1.length)
               {
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        §§push(_loc2_);
                        if(!(_loc5_ && _loc2_))
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           addr104:
                           while(true)
                           {
                              §§push(§§pop() + ("-" + _loc4_.toString()));
                           }
                           addr104:
                        }
                        else
                        {
                           addr83:
                           if(!_loc5_)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       _loc3_++;
                                       addr50:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                    addr48:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§goto(addr104);
                                    }
                                    addr103:
                                 }
                                 addr111:
                                 while(true)
                                 {
                                    §§goto(addr48);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§goto(addr111);
                        }
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 if(§§pop().length <= 0)
                                 {
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       if(_loc5_ && param1)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr83);
                                       §§push(§§pop().toString());
                                    }
                                    addr64:
                                 }
                                 §§goto(addr103);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(int(§§pop().charCodeAt(_loc3_)));
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc5_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(7937);
                                       }
                                       §§push(§§pop() + §§pop() * (_loc3_ + 2));
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() % 65536);
                                       }
                                       §§push(int(§§pop()));
                                    }
                                    continue loop1;
                                 }
                                 addr115:
                              }
                           }
                           break;
                        }
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr50);
               }
               else
               {
                  §§push(param1);
               }
               §§goto(addr115);
            }
            §§goto(addr64);
         }
         return §§pop();
      }
      
      public static function §3m§(param1:String) : String
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
               if(_loc7_)
               {
                  if(§§pop() >= _loc3_.length)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc2_);
                              if(!(_loc6_ && _loc3_))
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr95:
                                 while(true)
                                 {
                                    _loc4_++;
                                    addr62:
                                    while(_loc6_ && §0O§)
                                    {
                                       while(true)
                                       {
                                          §§push(65536);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + _loc5_);
                                             if(_loc7_)
                                             {
                                                §§push(7937);
                                                if(_loc7_ || param1)
                                                {
                                                   addr131:
                                                   §§push(§§pop() * (_loc4_ + 2));
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(§§pop() % 65536);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr129:
                                                      §§push(§§pop() % 65536);
                                                   }
                                                   §§push(int(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr132:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(§§pop() + String.fromCharCode(_loc5_));
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   addr131:
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr131);
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr62);
                  }
                  else
                  {
                     addr151:
                     _loc5_ = int(parseInt(_loc3_[_loc4_]));
                  }
                  §§goto(addr152);
               }
               §§goto(addr151);
            }
            §§goto(addr131);
         }
         return §§pop();
      }
   }
}

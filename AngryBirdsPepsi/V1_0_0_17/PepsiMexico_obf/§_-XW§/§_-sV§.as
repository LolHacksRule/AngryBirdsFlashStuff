package §_-XW§
{
   import flash.utils.ByteArray;
   
   public class §_-sV§
   {
      
      private static var §_-GW§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-GW§ = §_-e1§();
         }
      }
      
      public function §_-sV§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      private static function §_-e1§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:uint = 0;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(!(_loc6_ && _loc1_))
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(256);
               loop2:
               while(§§pop() < §§pop())
               {
                  _loc4_ = uint(_loc2_);
                  §§push(0);
                  if(!_loc6_)
                  {
                     _loc3_ = uint(§§pop());
                     if(_loc6_ && _loc3_)
                     {
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(8);
                        if(!(_loc5_ || _loc2_))
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc5_ || §_-sV§)
                              {
                                 _loc1_.push(_loc4_);
                                 break;
                              }
                              break;
                           }
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              §§push(1);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() & §§pop());
                                 if(_loc5_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§push(3988292384);
                                          if(_loc5_ || _loc1_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() >>> 1);
                                             }
                                             §§push(§§pop() ^ §§pop());
                                             while(true)
                                             {
                                                §§push(uint(§§pop()));
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   _loc4_ = §§pop();
                                                   if(!(_loc5_ || §_-sV§))
                                                   {
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_ + 1);
                                                      if(!(_loc6_ && _loc1_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               _loc3_ = §§pop();
                                                               continue loop3;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr132:
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr176:
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc2_ = §§pop();
                                                if(!_loc5_)
                                                {
                                                   break loop2;
                                                }
                                                continue loop0;
                                             }
                                             addr95:
                                          }
                                          §§goto(addr132);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          §§push(1);
                                          if(_loc6_)
                                          {
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() >>> §§pop());
                                             if(!_loc6_)
                                             {
                                                §§push(uint(§§pop()));
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§goto(addr123);
                                                }
                                                addr120:
                                             }
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    addr73:
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr120);
                        }
                        §§push(_loc2_);
                        if(!(_loc5_ || _loc1_))
                        {
                           continue loop1;
                        }
                        §§goto(addr176);
                     }
                     continue;
                  }
                  §§goto(addr73);
               }
               return _loc1_;
            }
         }
      }
      
      public static function §_-mh§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = uint(0);
         if(param2 >= param1.length)
         {
            §§push(uint(param1.length));
            if(_loc7_)
            {
               param2 = §§pop();
               addr27:
               if(param3 == 0)
               {
                  §§push(param1.length - param2);
                  if(!_loc6_)
                  {
                     §§push(uint(§§pop()));
                     if(_loc7_ || param1)
                     {
                        param3 = §§pop();
                        if(!_loc6_)
                        {
                           addr47:
                           §§push(param3 + param2);
                           if(!_loc6_)
                           {
                              if(§§pop() > param1.length)
                              {
                                 addr71:
                                 §§push(param1.length - param2);
                                 if(!(_loc6_ && param3))
                                 {
                                    §§push(uint(§§pop()));
                                    if(!_loc6_)
                                    {
                                       param3 = §§pop();
                                    }
                                    addr72:
                                    var _loc5_:* = §§pop();
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(param2);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(uint(§§pop()));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc7_ || §_-sV§)
                                       {
                                          if(§§pop() < param3)
                                          {
                                             §§push(uint(§_-GW§[(_loc5_ ^ param1[_loc4_]) & 255]) ^ _loc5_ >>> 8);
                                             if(!_loc6_)
                                             {
                                                §§push(uint(§§pop()));
                                                if(!(_loc6_ && param1))
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc6_ && param2)
                                                   {
                                                      addr169:
                                                      §§push(_loc5_);
                                                   }
                                                   else
                                                   {
                                                      addr169:
                                                   }
                                                   §§push(_loc4_);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(uint(§§pop() + 1));
                                                      if(_loc6_ && param1)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   continue;
                                                   break;
                                                }
                                                break;
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr169);
                                       }
                                       break;
                                    }
                                    addr172:
                                    return §§pop();
                                    §§push(§§pop() ^ 4294967295);
                                 }
                                 §§goto(addr72);
                                 §§push(uint(§§pop()));
                              }
                           }
                           §§goto(addr71);
                        }
                        §§push(4294967295);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr71);
               }
               §§goto(addr47);
            }
            §§goto(addr72);
         }
         §§goto(addr27);
      }
      
      public static function §_-2K§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(param2 >= param1.length)
            {
               addr19:
               param2 = param1.length;
               if(!(_loc8_ && param1))
               {
                  §§goto(addr30);
               }
               §§goto(addr71);
            }
            addr30:
            if(param3 == 0)
            {
               if(_loc7_ || param3)
               {
                  §§push(param1.length - param2);
                  if(_loc7_)
                  {
                     param3 = §§pop();
                     §§goto(addr48);
                  }
                  §§goto(addr55);
               }
               §§goto(addr71);
            }
            addr48:
            §§push(param3);
            if(_loc7_)
            {
               §§push(§§pop() + param2);
               if(_loc7_)
               {
                  addr55:
                  if(§§pop() > param1.length)
                  {
                  }
                  §§goto(addr71);
               }
               param3 = §§pop();
               addr71:
               §§goto(addr72);
            }
            addr72:
            if(!(_loc8_ && param3))
            {
               §§push(param1.length - param2);
            }
            var _loc4_:uint = param2;
            var _loc5_:* = uint(1);
            var _loc6_:* = uint(0);
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_)
               {
                  §§push(param2);
                  while(§§pop() < §§pop() + param3)
                  {
                     §§push((_loc5_ + param1[_loc4_]) % 65521);
                     if(_loc7_)
                     {
                        §§push(uint(§§pop()));
                        §§push(uint(§§pop()));
                        if(_loc7_)
                        {
                           _loc5_ = §§pop();
                           if(_loc7_)
                           {
                              §§push(_loc6_);
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(§§pop() % 65521);
                                 if(_loc8_ && param2)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§push(uint(§§pop()));
                           }
                           _loc6_ = §§pop();
                           if(!(_loc7_ || param3))
                           {
                              break;
                           }
                           §§push(_loc4_ + 1);
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  addr147:
                  §§push(_loc6_);
                  break;
               }
               break;
            }
            §§push(§§pop() << 16);
            if(_loc7_ || param2)
            {
               §§push(§§pop() | _loc5_);
            }
            return §§pop();
         }
         §§goto(addr19);
      }
   }
}

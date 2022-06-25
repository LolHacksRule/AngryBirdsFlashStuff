package §5`§
{
   public class §8r§
   {
      
      private static var §4!W§:String = "0123456789abcdef";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §4!W§ = "0123456789abcdef";
         }
      }
      
      public function §8r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §2!>§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && §8r§))
         {
            §§push(param2);
            if(_loc3_ || param1)
            {
               §§goto(addr51);
            }
            §§push(§§pop() | §§pop() >>> 32 - param2);
         }
         addr51:
         §§push(§§pop() << §§pop());
         if(!_loc4_)
         {
            return param1;
         }
      }
      
      public static function §&t§(param1:int, param2:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(32);
         if(!_loc5_)
         {
            §§push(int(§§pop() - param2));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc4_)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               §§goto(addr48);
            }
            §§push(§§pop() | §§pop() >>> 32 - _loc3_);
         }
         addr48:
         §§push(§§pop() << §§pop());
         if(!_loc5_)
         {
            return param1;
         }
      }
      
      public static function §`f§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         if(_loc6_)
         {
            if(param2)
            {
               if(!(_loc7_ && _loc3_))
               {
                  addr268:
                  _loc4_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc6_ || §8r§)
                  {
                     §§push(4);
                     loop1:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc3_);
                           break;
                        }
                        loop2:
                        while(_loc6_)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc6_ || _loc3_)
                              {
                                 if(_loc6_)
                                 {
                                    return §§pop();
                                 }
                                 break loop1;
                              }
                              addr173:
                              while(_loc6_)
                              {
                                 _loc3_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    _loc5_++;
                                    while(true)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc7_ && param2))
                                             {
                                                break;
                                             }
                                             addr193:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                continue loop7;
                                             }
                                          }
                                          continue loop1;
                                          addr25:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr25);
                                       }
                                       addr43:
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              _loc3_ = §§pop();
                              break loop2;
                           }
                        }
                        _loc4_++;
                        continue loop0;
                     }
                     §§goto(addr203);
                     §§push(§4!W§);
                  }
               }
            }
            else
            {
               §§push(0);
            }
            §§goto(addr193);
         }
         §§goto(addr268);
      }
   }
}

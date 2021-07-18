package §^!m§
{
   import flash.net.URLVariables;
   
   public class §3! §
   {
       
      
      public function §3! §()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      private static function §,!2§(param1:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(_loc11_)
         {
            if(isNaN(param1) != false)
            {
               loop0:
               while(true)
               {
                  §§push(param1.toString() == "true");
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(param1.toString() == "false");
                              if(_loc10_)
                              {
                                 break;
                                 addr114:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§3h§(param1 as String));
                                       if(!(_loc11_ || _loc3_))
                                       {
                                          break loop3;
                                       }
                                       if(_loc11_)
                                       {
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             §§push(param1.toString().substr(1,param1.toString().length - 2));
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc11_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().substr(1,_loc2_.length - 2));
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                       continue loop1;
                                    }
                                    return param1.toString();
                                 }
                                 if(_loc11_)
                                 {
                                    §§push(true);
                                    break loop3;
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        return §§pop();
                     }
                     §§goto(addr114);
                  }
               }
            }
            §§goto(addr139);
         }
         §§goto(addr75);
      }
      
      private static function §3h§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               while(true)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(true);
                                 break loop5;
                              }
                           }
                        }
                        §§push(false);
                        if(!_loc2_)
                        {
                           break;
                        }
                        addr28:
                        if(!(_loc3_ && param1))
                        {
                           return §§pop();
                        }
                        addr63:
                        while(!_loc3_)
                        {
                           continue loop5;
                           §§goto(addr28);
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr71);
      }
      
      public static function § #§(param1:Object) : Object
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Object = new Object();
         if(_loc12_)
         {
            if(param1 is URLVariables)
            {
               addr45:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc12_ || _loc3_)
                  {
                     _loc2_[_loc4_] = §,!2§(_loc3_);
                  }
               }
               if(_loc11_ && param1)
               {
                  _loc5_ = (param1 as String).split("&");
                  addr91:
                  if(!(_loc11_ && param1))
                  {
                     var _loc9_:int = 0;
                     if(_loc12_ || _loc3_)
                     {
                        var _loc10_:* = _loc5_;
                        if(_loc12_ || _loc3_)
                        {
                           loop0:
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              loop1:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                    loop3:
                                    while(_loc12_)
                                    {
                                       _loc7_ = §§pop();
                                       while(_loc12_ || §3! §)
                                       {
                                          addr164:
                                          _loc8_ = §§pop();
                                          do
                                          {
                                             _loc2_[_loc7_] = _loc8_;
                                          }
                                          while(!_loc12_);
                                          
                                          if(_loc12_ || §3! §)
                                          {
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr164);
                                                }
                                                continue loop3;
                                                addr151:
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr209:
                           return _loc2_;
                           addr208:
                        }
                        while(true)
                        {
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr208);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr91);
            }
            §§goto(addr209);
         }
         §§goto(addr45);
      }
   }
}

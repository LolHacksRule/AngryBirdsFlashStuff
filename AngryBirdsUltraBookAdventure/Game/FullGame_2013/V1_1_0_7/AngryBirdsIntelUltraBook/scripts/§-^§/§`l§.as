package §-^§
{
   import flash.net.URLVariables;
   
   public class §`l§
   {
       
      
      public function §`l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      private static function §1!?§(param1:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(_loc11_ || _loc2_)
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
                              if(_loc11_)
                              {
                                 while(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§'B§(param1 as String));
                                       if(_loc11_ || _loc2_)
                                       {
                                          if(!(_loc11_ || param1))
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param1.toString().substr(1,param1.toString().length - 2));
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      if(_loc11_ || §`l§)
                                                      {
                                                         if(_loc11_ || §`l§)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc10_ && §`l§))
                                                            {
                                                               §§push(§§pop().substr(1,_loc2_.length - 2));
                                                            }
                                                            if(!(_loc11_ || §`l§))
                                                            {
                                                               break;
                                                            }
                                                            _loc2_ = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop3;
                                                   }
                                                   if(!(_loc11_ || _loc2_))
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       break loop3;
                                    }
                                    return param1.toString();
                                 }
                                 §§push(true);
                                 break;
                                 addr141:
                              }
                              break;
                           }
                           if(_loc11_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr141);
                  }
                  return §§pop();
               }
            }
            addr169:
            return Number(param1);
         }
         §§goto(addr154);
      }
      
      private static function §'B§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               addr104:
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§push(true);
                              break;
                           }
                           if(_loc2_ && §`l§)
                           {
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           return §§pop();
                        }
                        addr59:
                        while(_loc2_ && _loc3_)
                        {
                        }
                        if(!(_loc2_ && §`l§))
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     return §§pop();
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr98:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§goto(addr59);
               §§push(§§pop().toString().substr(-1,1) == "]");
            }
            else
            {
               §§goto(addr98);
            }
            §§goto(addr104);
         }
      }
      
      public static function §5[§(param1:Object) : Object
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Object = new Object();
         if(!_loc12_)
         {
            if(param1 is URLVariables)
            {
               addr44:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc11_)
                  {
                     _loc2_[_loc4_] = §1!?§(_loc3_);
                  }
               }
               if(!(_loc11_ || _loc3_))
               {
                  _loc5_ = (param1 as String).split("&");
                  addr85:
                  if(_loc11_)
                  {
                     var _loc9_:int = 0;
                     if(_loc11_ || _loc3_)
                     {
                        var _loc10_:* = _loc5_;
                        if(_loc11_ || _loc2_)
                        {
                           loop0:
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr153:
                                 if(!(_loc11_ || param1))
                                 {
                                    continue;
                                 }
                                 _loc8_ = §§pop();
                                 do
                                 {
                                    _loc2_[_loc7_] = _loc8_;
                                 }
                                 while(!(_loc11_ || _loc2_));
                                 
                                 if(_loc11_)
                                 {
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                       if(!_loc12_)
                                       {
                                          §§goto(addr153);
                                       }
                                       addr182:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                       }
                                    }
                                    continue;
                                    addr140:
                                 }
                                 while(true)
                                 {
                                    if(!(_loc12_ && §`l§))
                                    {
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr198:
                                    }
                                    §§goto(addr182);
                                 }
                              }
                           }
                           addr203:
                           return _loc2_;
                           addr202:
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr202);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr85);
            }
            §§goto(addr203);
         }
         §§goto(addr44);
      }
   }
}

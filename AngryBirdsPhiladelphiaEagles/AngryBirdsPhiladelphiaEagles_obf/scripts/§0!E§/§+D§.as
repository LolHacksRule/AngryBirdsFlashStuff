package §0!E§
{
   public class §+D§
   {
       
      
      public function §+D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §8!§(param1:String, param2:Boolean = false, param3:Boolean = false) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param1.replace(/\-\-\[\[[\s\S]*?\]\]/mg,""));
            while(true)
            {
               param1 = §§pop();
               param1 = param1.replace(/\-\-.*/g,"");
            }
            addr178:
         }
         while(true)
         {
            §§push(param1.replace(/\[\"(.*)\"\]/g,"$1"));
            loop2:
            while(true)
            {
               param1 = §§pop();
               param1 = param1.replace(/^\s*\}\s*$/mg,"},");
               if(!_loc6_)
               {
                  break;
               }
               §§push(param1);
               loop3:
               while(true)
               {
                  §§push(§§pop().replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,"));
                  loop4:
                  while(!_loc5_)
                  {
                     param1 = §§pop();
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop().replace(/([ \t\{]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":"));
                        addr108:
                        while(_loc6_)
                        {
                           param1 = §§pop();
                           §§push("{");
                           if(_loc6_)
                           {
                              §§push(§§pop() + param1);
                              if(_loc6_ || param3)
                              {
                                 addr95:
                                 §§push(§§pop() + "}");
                              }
                              param1 = §§pop();
                              while(true)
                              {
                                 continue loop3;
                                 addr44:
                                 param1 = §§pop();
                                 if(_loc5_ && param2)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    continue loop3;
                                 }
                                 var _loc4_:Object = JSON.parse(param1);
                                 if(_loc6_)
                                 {
                                    if(param3)
                                    {
                                       if(_loc6_)
                                       {
                                          addr191:
                                          _loc4_.debug = param1;
                                       }
                                    }
                                    return _loc4_;
                                 }
                                 §§goto(addr191);
                              }
                           }
                           §§goto(addr95);
                        }
                        continue loop4;
                        addr29:
                        if(!(_loc5_ && §+D§))
                        {
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr178);
               }
            }
         }
      }
      
      private static function §=$§(param1:String, param2:Boolean) : String
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         var _loc17_:* = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc3_:String = "{";
         var _loc4_:String = "}";
         var _loc5_:String = "[";
         var _loc6_:String = "]";
         var _loc7_:String = ":";
         var _loc8_:Vector.<int> = new Vector.<int>();
         var _loc9_:Vector.<int> = new Vector.<int>();
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc11_:*;
         §§push(_loc11_ = int(param1.indexOf(_loc3_)));
         if(_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:* = int(param1.indexOf(_loc4_));
         loop0:
         while(true)
         {
            §§push(_loc11_);
            if(_loc20_ || §+D§)
            {
               if(!(_loc21_ && param1))
               {
                  §§push(0);
                  if(_loc20_)
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc20_ || param1)
                     {
                        §§push(§§pop());
                        if(!(_loc21_ && _loc3_))
                        {
                           if(!§§pop())
                           {
                              if(!(_loc21_ && _loc3_))
                              {
                                 if(_loc20_)
                                 {
                                    §§pop();
                                    if(_loc20_ || _loc3_)
                                    {
                                       if(_loc20_)
                                       {
                                          if(true)
                                          {
                                             §§push(_loc13_);
                                             if(!_loc21_)
                                             {
                                                §§push(0);
                                                loop33:
                                                while(true)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   addr431:
                                                   loop30:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr411:
                                                         §§push(_loc11_);
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc21_ && §+D§))
                                                            {
                                                               break;
                                                            }
                                                            continue loop33;
                                                            §§goto(addr411);
                                                         }
                                                         addr421:
                                                         §§push(§§pop() >= §§pop());
                                                         §§push(§§pop() >= §§pop());
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc11_);
                                                               if(_loc20_ || param1)
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(_loc21_ && param2)
                                                                  {
                                                                     continue loop33;
                                                                  }
                                                                  §§push(§§pop() < §§pop());
                                                               }
                                                               addr433:
                                                               var _loc14_:* = §§pop();
                                                               addr435:
                                                               §§push(_loc14_);
                                                               if(!_loc21_)
                                                               {
                                                                  if(_loc20_ || param1)
                                                                  {
                                                                     if(§§pop() >= _loc9_.length)
                                                                     {
                                                                        if(!_loc21_)
                                                                        {
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc20_)
                                                                              {
                                                                                 if(!(_loc20_ || param1))
                                                                                 {
                                                                                    addr516:
                                                                                    §§push(_loc11_);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       addr519:
                                                                                       §§push(1);
                                                                                       if(!(_loc21_ && param1))
                                                                                       {
                                                                                          addr540:
                                                                                          _loc18_ = §§pop().substring(§§pop() + §§pop(),_loc13_);
                                                                                          addr541:
                                                                                          addr537:
                                                                                          §§push(param1);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      _loc19_ = §§pop().substring(§§pop());
                                                                                                      addr505:
                                                                                                      if(_loc20_ || param2)
                                                                                                      {
                                                                                                         §§push(_loc17_ + _loc5_ + _loc18_ + _loc6_ + _loc19_);
                                                                                                         if(_loc20_ || param1)
                                                                                                         {
                                                                                                            param1 = §§pop();
                                                                                                            _loc14_++;
                                                                                                            §§goto(addr435);
                                                                                                            addr488:
                                                                                                         }
                                                                                                         §§goto(addr540);
                                                                                                      }
                                                                                                      §§goto(addr541);
                                                                                                   }
                                                                                                   §§goto(addr537);
                                                                                                }
                                                                                                §§goto(addr519);
                                                                                             }
                                                                                             §§goto(addr516);
                                                                                          }
                                                                                          addr548:
                                                                                          _loc17_ = §§pop();
                                                                                          §§goto(addr516);
                                                                                          §§push(param1);
                                                                                       }
                                                                                       §§goto(addr548);
                                                                                       §§push(§§pop().substring(§§pop(),§§pop()));
                                                                                    }
                                                                                    §§goto(addr519);
                                                                                    return _loc11_;
                                                                                 }
                                                                              }
                                                                              §§goto(addr540);
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        §§goto(addr488);
                                                                     }
                                                                     §§push(int(_loc9_[_loc14_]));
                                                                  }
                                                                  _loc11_ = §§pop();
                                                                  §§push(int(_loc10_[_loc14_]));
                                                               }
                                                               _loc13_ = §§pop();
                                                               §§goto(addr516);
                                                               §§push(param1);
                                                               §§push(0);
                                                            }
                                                            if(§§pop())
                                                            {
                                                               _loc8_.push(_loc11_);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(_loc11_);
                                                                  if(!(_loc21_ && §+D§))
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        addr131:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 if(_loc20_ || param2)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc20_ || _loc3_)
                                                                                          {
                                                                                             §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                             if(_loc20_ || _loc3_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr433);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr188:
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       _loc13_ = int(§§pop().indexOf(§§pop(),§§pop()));
                                                                                       continue;
                                                                                    }
                                                                                    addr187:
                                                                                    §§push(1);
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().indexOf(§§pop(),1) > 0);
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          addr229:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc20_ || param2)
                                                                                                {
                                                                                                   _loc16_ = true;
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      if(_loc21_ && param1)
                                                                                                      {
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc9_.push(_loc11_);
                                                                                                               if(_loc21_ && param2)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               _loc10_.push(_loc13_);
                                                                                                            }
                                                                                                            addr210:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            if(!(_loc21_ && §+D§))
                                                                                                            {
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  addr183:
                                                                                                                  §§push(_loc4_);
                                                                                                                  while(_loc21_)
                                                                                                                  {
                                                                                                                     loop5:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop().indexOf(§§pop(),1) < 0)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc15_.indexOf(_loc7_,1) < 0)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(param2));
                                                                                                                                 §§push(Boolean(param2));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc21_ && param2)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr341:
                                                                                                                                       §§pop();
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().search(/[a..z,A..Z,0..9]+/g) >= 0);
                                                                                                                                          §§goto(addr341);
                                                                                                                                       }
                                                                                                                                       addr305:
                                                                                                                                    }
                                                                                                                                    loop11:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr313:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             _loc16_ = true;
                                                                                                                                          }
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr333:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr324:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc15_);
                                                                                                                           loop6:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc20_ || §+D§)
                                                                                                                              {
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    §§push(1);
                                                                                                                                    loop7:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().indexOf(§§pop(),§§pop()) < 0);
                                                                                                                                       addr297:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          addr298:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      addr242:
                                                                                                                                                      addr349:
                                                                                                                                                      while(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         continue loop7;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().substring(_loc11_,_loc13_ + 1));
                                                                                                                                                         break loop6;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr302:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr313);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc15_ = §§pop();
                                                                                                                              if(!(_loc20_ || param1))
                                                                                                                              {
                                                                                                                                 break loop5;
                                                                                                                              }
                                                                                                                              _loc16_ = false;
                                                                                                                              §§push(_loc15_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr283:
                                                                                                                        }
                                                                                                                        §§goto(addr305);
                                                                                                                     }
                                                                                                                     §§goto(addr433);
                                                                                                                     §§push(0);
                                                                                                                     §§goto(addr183);
                                                                                                                  }
                                                                                                                  §§goto(addr187);
                                                                                                                  §§push(_loc13_);
                                                                                                                  addr184:
                                                                                                               }
                                                                                                               §§goto(addr283);
                                                                                                            }
                                                                                                            §§goto(addr242);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr277);
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                   addr198:
                                                                                                }
                                                                                                §§goto(addr302);
                                                                                             }
                                                                                             §§goto(addr198);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr433);
                                                                              }
                                                                              §§goto(addr184);
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                     }
                                                                     addr384:
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr413);
                                                            }
                                                            else
                                                            {
                                                               _loc11_ = int(_loc8_.pop());
                                                               §§push(param1);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         addr413:
                                                      }
                                                      §§goto(addr432);
                                                   }
                                                }
                                                addr430:
                                             }
                                             §§goto(addr433);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr324);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr299);
                              }
                           }
                           §§goto(addr431);
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr430);
               }
               §§goto(addr384);
            }
            §§goto(addr433);
         }
      }
   }
}

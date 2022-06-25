package §4!H§
{
   public class §'!,§
   {
       
      
      public function §'!,§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §[L§(param1:String, param2:Boolean = false) : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            §§push(§§pop().replace(/\-\-\[\[[\s\S]*\]\]/mg,""));
            if(!(_loc3_ && _loc3_))
            {
               param1 = §§pop();
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop().replace(/\-\-.*/g,""));
               }
               param1 = §§pop();
               if(_loc4_ || param2)
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop().replace(/\[\"(.*)\"\]/g,"$1"));
                     if(_loc4_)
                     {
                        param1 = §§pop();
                        if(_loc4_ || §'!,§)
                        {
                           param1 = param1.replace(/^\s*\}\s*$/mg,"},");
                           if(!(_loc3_ && §'!,§))
                           {
                              §§push(param1);
                              if(_loc4_)
                              {
                                 §§push(§§pop().replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,"));
                                 if(!(_loc3_ && param2))
                                 {
                                    addr126:
                                    param1 = §§pop();
                                    param1 = param1.replace(/([ \t\{]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":");
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push("{");
                                       if(_loc4_ || §'!,§)
                                       {
                                          §§push(§§pop() + param1);
                                          if(_loc4_)
                                          {
                                             addr155:
                                             §§push(§§pop() + "}");
                                          }
                                          param1 = §§pop();
                                          §§goto(addr158);
                                       }
                                       §§goto(addr155);
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr198);
               }
               addr158:
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  addr176:
                  §§push(§§pop().replace(/,(\s*[\]\}$])/mg,"$1"));
               }
               param1 = §§pop();
               if(!(_loc3_ && param2))
               {
                  addr191:
                  §§push(§1!6§(param1,param2));
                  if(_loc4_)
                  {
                     addr198:
                     param1 = §§pop();
                  }
                  §§goto(addr198);
               }
               return JSON.parse(param1);
            }
         }
         §§goto(addr176);
      }
      
      private static function §1!6§(param1:String, param2:Boolean) : String
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc15_:* = null;
         var _loc16_:* = false;
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
            loop1:
            while(true)
            {
               §§push(0);
               if(_loc20_ || §'!,§)
               {
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc20_)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 if(_loc20_ || §'!,§)
                                 {
                                    §§push(_loc13_);
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() >= §§pop());
                                       addr430:
                                       while(§§pop())
                                       {
                                          §§push(_loc11_);
                                          if(_loc20_)
                                          {
                                             §§push(0);
                                             if(!_loc20_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop() >= §§pop());
                                             §§push(§§pop() >= §§pop());
                                             if(!_loc20_)
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop())
                                             {
                                                §§pop();
                                                §§push(_loc11_);
                                                §§push(_loc13_);
                                                if(_loc21_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§§pop() < §§pop());
                                                if(_loc20_)
                                                {
                                                   addr94:
                                                   if(!§§pop())
                                                   {
                                                      addr121:
                                                      _loc11_ = int(_loc8_.pop());
                                                      if(_loc20_ || _loc3_)
                                                      {
                                                         §§push(param1.substring(_loc11_,_loc13_ + 1));
                                                         if(_loc20_ || param2)
                                                         {
                                                            _loc15_ = §§pop();
                                                            if(_loc20_)
                                                            {
                                                               §§push(false);
                                                               if(_loc20_)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  §§push(_loc15_);
                                                                  if(_loc20_ || param2)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc20_ || param2)
                                                                     {
                                                                        if(§§pop().indexOf(§§pop(),1) < 0)
                                                                        {
                                                                           §§push(_loc15_);
                                                                           §§push(_loc7_);
                                                                           if(!(_loc21_ && _loc3_))
                                                                           {
                                                                              if(§§pop().indexOf(§§pop(),1) < 0)
                                                                              {
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§goto(addr185);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc15_);
                                                                           §§push(_loc7_);
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 §§goto(addr244);
                                                                                 §§push(§§pop().indexOf(§§pop(),§§pop()) < 0);
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                     §§goto(addr366);
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                      }
                                                      break loop4;
                                                   }
                                                   if(!_loc21_)
                                                   {
                                                      _loc8_.push(_loc11_);
                                                      if(_loc20_ || _loc3_)
                                                      {
                                                         _loc12_ = int(_loc11_);
                                                         if(_loc21_ && param1)
                                                         {
                                                         }
                                                         addr395:
                                                         §§push(param1);
                                                      }
                                                      else
                                                      {
                                                         addr308:
                                                         §§push(_loc15_);
                                                         if(!(_loc21_ && §'!,§))
                                                         {
                                                            addr316:
                                                            §§push(§§pop().indexOf(_loc3_,1) > 0);
                                                            if(!(_loc21_ && param2))
                                                            {
                                                               addr328:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc21_ && _loc3_))
                                                                  {
                                                                     addr337:
                                                                     _loc16_ = true;
                                                                     if(!_loc20_)
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                     addr340:
                                                                     §§push(_loc16_);
                                                                     if(!(_loc21_ && _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      addr400:
                                                      §§push(int(§§pop().indexOf(_loc3_,_loc12_ + 1)));
                                                      if(!_loc21_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr185:
                                                   §§push(Boolean(param2));
                                                   if(_loc20_ || §'!,§)
                                                   {
                                                      addr194:
                                                      §§push(§§pop());
                                                      if(_loc21_ && _loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc21_)
                                                         {
                                                            §§pop();
                                                            §§push(_loc15_);
                                                            if(_loc20_)
                                                            {
                                                               addr216:
                                                               if(§§pop().search(/[a..z,A..Z,0..9]+/g) >= 0)
                                                               {
                                                                  §§push(true);
                                                                  if(!(_loc20_ || _loc3_))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  _loc16_ = §§pop();
                                                                  if(_loc20_ || _loc3_)
                                                                  {
                                                                     addr233:
                                                                     §§goto(addr340);
                                                                  }
                                                                  _loc9_.push(_loc11_);
                                                                  _loc10_.push(_loc13_);
                                                                  §§push(param1);
                                                                  if(!(_loc21_ && param2))
                                                                  {
                                                                     addr363:
                                                                     §§push(_loc4_);
                                                                     if(_loc20_)
                                                                     {
                                                                        addr366:
                                                                        §§push(_loc13_);
                                                                        if(_loc20_ || param2)
                                                                        {
                                                                           §§push(1);
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc21_ && param2))
                                                                              {
                                                                                 §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                 if(_loc21_ && _loc3_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 _loc13_ = §§pop();
                                                                                 §§goto(addr395);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr400);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr337);
                                                         }
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   else
                                                   {
                                                      addr244:
                                                      §§push(§§pop());
                                                      if(!(_loc21_ && param1))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc20_ || param2)
                                                            {
                                                               §§pop();
                                                               §§push(_loc15_);
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!(_loc21_ && §'!,§))
                                                                  {
                                                                     addr283:
                                                                     §§push(§§pop().indexOf(§§pop(),1) > _loc15_.indexOf(_loc3_,1));
                                                                     §§push(§§pop().indexOf(§§pop(),1) > _loc15_.indexOf(_loc3_,1));
                                                                     if(!(_loc20_ || param1))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr297:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc20_ || §'!,§)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§goto(addr308);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               §§goto(addr363);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr94);
                                          }
                                          §§goto(addr121);
                                       }
                                       break loop4;
                                       if(!§§pop())
                                       {
                                       }
                                       §§goto(addr349);
                                    }
                                    addr429:
                                 }
                                 break;
                              }
                              var _loc14_:int = 0;
                              addr554:
                              if(_loc14_ < _loc9_.length)
                              {
                                 §§push(int(_loc9_[_loc14_]));
                                 if(_loc20_ || _loc3_)
                                 {
                                    _loc11_ = §§pop();
                                    if(_loc20_)
                                    {
                                       §§push(int(_loc10_[_loc14_]));
                                       if(!(_loc21_ && §'!,§))
                                       {
                                          _loc13_ = §§pop();
                                          if(_loc20_ || _loc3_)
                                          {
                                             §§push(param1);
                                             §§push(0);
                                             if(!(_loc21_ && param2))
                                             {
                                                §§push(_loc11_);
                                                if(_loc20_ || §'!,§)
                                                {
                                                   §§push(§§pop().substring(§§pop(),§§pop()));
                                                   if(_loc20_)
                                                   {
                                                      _loc17_ = §§pop();
                                                      §§push(param1);
                                                      §§push(_loc11_);
                                                      if(!_loc21_)
                                                      {
                                                         §§push(1);
                                                         if(_loc20_ || param2)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc21_)
                                                            {
                                                               _loc18_ = §§pop().substring(§§pop(),_loc13_);
                                                               if(!(_loc21_ && param2))
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc21_)
                                                                  {
                                                                     addr532:
                                                                     _loc19_ = §§pop().substring(_loc13_ + 1);
                                                                     §§push(_loc17_);
                                                                  }
                                                                  param1 = §§pop() + _loc5_ + _loc18_ + _loc6_ + _loc19_;
                                                                  addr546:
                                                                  _loc14_++;
                                                                  if(_loc20_ || param2)
                                                                  {
                                                                  }
                                                                  §§goto(addr559);
                                                               }
                                                               §§goto(addr554);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr532);
                                                   }
                                                   §§goto(addr559);
                                                }
                                             }
                                             §§goto(addr532);
                                          }
                                          addr559:
                                          return param1;
                                       }
                                       §§goto(addr554);
                                    }
                                    §§goto(addr546);
                                 }
                                 §§goto(addr554);
                              }
                              §§goto(addr546);
                           }
                        }
                     }
                     §§goto(addr430);
                  }
               }
               §§goto(addr429);
            }
         }
      }
   }
}

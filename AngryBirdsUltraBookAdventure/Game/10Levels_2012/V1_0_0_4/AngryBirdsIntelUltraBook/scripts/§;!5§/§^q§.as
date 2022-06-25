package §;!5§
{
   import flash.net.URLVariables;
   
   public class §^q§
   {
       
      
      public function §^q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      private static function §?b§(param1:*) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(!_loc11_)
         {
            if(isNaN(param1) != false)
            {
               loop0:
               while(true)
               {
                  §§push(param1.toString() == "true");
                  if(!(_loc11_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        addr156:
                        while(true)
                        {
                           §§pop();
                           addr157:
                           while(true)
                           {
                              §§push(param1.toString() == "false");
                           }
                        }
                        addr156:
                     }
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(§2-§(param1 as String));
                                 if(_loc10_)
                                 {
                                    if(!(_loc10_ || §^q§))
                                    {
                                       continue loop2;
                                    }
                                    if(!§§pop())
                                    {
                                       return param1.toString();
                                    }
                                    if(_loc10_ || §^q§)
                                    {
                                       §§push(param1.toString().substr(1,param1.toString().length - 2));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr113:
                                          §§push(_loc2_);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop().substr(1,_loc2_.length - 2));
                                          }
                                          if(_loc11_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          _loc2_ = §§pop();
                                          if(_loc11_ && param1)
                                          {
                                             while(!(_loc11_ && §^q§))
                                             {
                                                if(!(_loc11_ && param1))
                                                {
                                                   §§goto(addr113);
                                                }
                                                else
                                                {
                                                   addr121:
                                                   if(_loc11_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      break loop3;
                                                   }
                                                }
                                             }
                                             if(_loc10_ || _loc2_)
                                             {
                                                if(_loc11_)
                                                {
                                                   return Number(param1);
                                                }
                                                addr163:
                                                continue loop3;
                                             }
                                             continue loop0;
                                             addr99:
                                          }
                                          if(false)
                                          {
                                             continue loop3;
                                          }
                                          _loc3_ = new Array();
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             if(§2-§(_loc2_))
                                             {
                                                if(!_loc11_)
                                                {
                                                   _loc3_.push(§?b§(_loc2_));
                                                   if(_loc11_ && §^q§)
                                                   {
                                                      addr209:
                                                      _loc4_ = _loc2_.split("]},{[");
                                                      var _loc8_:int = 0;
                                                      var _loc9_:* = _loc4_;
                                                      addr414:
                                                      if(§§hasnext(_loc9_,_loc8_))
                                                      {
                                                         addr402:
                                                         _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                         addr405:
                                                         §§push(_loc5_.substr(0,1) == "{");
                                                         if(_loc10_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr412:
                                                               §§pop();
                                                               addr413:
                                                               §§push(_loc5_);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc10_ || §^q§)
                                                                  {
                                                                     §§push(§§pop().substr(§§pop().length - 1,1) == "}");
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        addr377:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 addr393:
                                                                                 _loc2_ = "[" + _loc5_ + "]";
                                                                                 _loc3_.push(§?b§(_loc2_));
                                                                                 addr218:
                                                                                 addr394:
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          addr245:
                                                                                          §§goto(addr218);
                                                                                       }
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                 }
                                                                                 addr391:
                                                                                 addr392:
                                                                                 addr390:
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                    addr329:
                                                                                    §§push("[");
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       addr340:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push("}]");
                                                                                       if(_loc10_ || §^q§)
                                                                                       {
                                                                                          addr348:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             addr351:
                                                                                             §§goto(addr245);
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                       }
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                                 §§goto(addr351);
                                                                                 addr389:
                                                                              }
                                                                              §§goto(addr413);
                                                                           }
                                                                           §§goto(addr218);
                                                                        }
                                                                        §§push(_loc5_);
                                                                        if(_loc10_)
                                                                        {
                                                                           if(!(_loc11_ && _loc2_))
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    if(§§pop().substr(§§pop(),§§pop()) == "{")
                                                                                    {
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    §§push("[{");
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!(_loc11_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc11_ && param1))
                                                                                                {
                                                                                                   addr276:
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      if(!(_loc11_ && §^q§))
                                                                                                      {
                                                                                                         if(!(_loc11_ && _loc3_))
                                                                                                         {
                                                                                                            §§push("]");
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr296:
                                                                                                               _loc2_ = §§pop() + §§pop();
                                                                                                               §§goto(addr391);
                                                                                                            }
                                                                                                            §§goto(addr340);
                                                                                                         }
                                                                                                         §§goto(addr389);
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                §§goto(addr296);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr329);
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr276);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr405);
                                                                        }
                                                                        §§goto(addr413);
                                                                     }
                                                                     §§goto(addr412);
                                                                  }
                                                               }
                                                               §§goto(addr402);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                      addr207:
                                                      addr208:
                                                   }
                                                   §§goto(addr418);
                                                }
                                                §§goto(addr207);
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                                if(_loc10_)
                                                {
                                                   §§push("]},{[");
                                                   if(!_loc11_)
                                                   {
                                                      if(§§pop().indexOf(§§pop()) > -1)
                                                      {
                                                         §§goto(addr207);
                                                      }
                                                      addr418:
                                                      if(!§2-§(_loc2_))
                                                      {
                                                         _loc6_ = _loc2_.split("},{");
                                                         if(!_loc11_)
                                                         {
                                                            _loc8_ = 0;
                                                            if(!_loc11_)
                                                            {
                                                               _loc9_ = _loc6_;
                                                               addr465:
                                                               for each(_loc7_ in _loc9_)
                                                               {
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     _loc3_.push(§?b§(_loc7_));
                                                                  }
                                                                  §§goto(addr465);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      return _loc3_;
                                                   }
                                                   §§goto(addr209);
                                                }
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr209);
                                       }
                                    }
                                    §§goto(addr99);
                                 }
                                 break;
                              }
                              while(!(_loc10_ || _loc2_))
                              {
                                 §§goto(addr156);
                              }
                              return §§pop();
                           }
                           §§goto(addr121);
                        }
                     }
                  }
                  §§goto(addr156);
               }
            }
            §§goto(addr163);
         }
         §§goto(addr123);
      }
      
      private static function §2-§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §§push(true);
                              }
                              addr74:
                           }
                           else
                           {
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue loop0;
                              }
                              addr19:
                              §§push(false);
                              if(_loc2_)
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                                 addr100:
                              }
                              return §§pop();
                           }
                           addr75:
                        }
                        §§goto(addr19);
                     }
                     if(_loc2_ || _loc3_)
                     {
                        break;
                     }
                     continue;
                     addr60:
                  }
                  §§goto(addr100);
               }
               return §§pop();
            }
         }
         §§goto(addr74);
      }
      
      public static function §!$§(param1:Object) : Object
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc2_:Object = new Object();
         if(_loc12_ || _loc2_)
         {
            if(param1 is URLVariables)
            {
               addr50:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc12_)
                  {
                     _loc2_[_loc4_] = §?b§(_loc3_);
                  }
               }
               if(_loc11_)
               {
                  addr96:
                  _loc5_ = (param1 as String).split("&");
                  if(_loc12_)
                  {
                     var _loc9_:int = 0;
                     if(!_loc11_)
                     {
                        var _loc10_:* = _loc5_;
                        if(!_loc11_)
                        {
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                    loop3:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       addr176:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           addr189:
                           return _loc2_;
                           addr185:
                           addr188:
                        }
                        while(true)
                        {
                           if(true)
                           {
                              §§goto(addr185);
                           }
                           §§goto(addr124);
                        }
                     }
                     §§goto(addr188);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr96);
            }
            §§goto(addr189);
         }
         §§goto(addr50);
      }
   }
}

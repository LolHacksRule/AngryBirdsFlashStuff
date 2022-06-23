package §%!6§
{
   public class §'"§
   {
       
      
      public function §'"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §+!8§(param1:String, param2:Boolean = false, param3:Boolean = false) : Object
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            §§push(param1);
            if(_loc5_ || param3)
            {
               §§push(§§pop().replace(/\-\-\[\[[\s\S]*?\]\]/mg,""));
               if(_loc5_ || param1)
               {
                  param1 = §§pop();
                  §§push(param1.replace(/\-\-.*/g,""));
                  if(_loc5_ || §'"§)
                  {
                     param1 = §§pop();
                     §§push(param1);
                     if(_loc5_)
                     {
                        param1 = §§pop().replace(/\[\"(.*)\"\]/g,"$1");
                        if(!_loc6_)
                        {
                           param1 = param1.replace(/^\s*\}\s*$/mg,"},");
                           addr76:
                           if(!_loc6_)
                           {
                              param1 = param1.replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,");
                              §§push(param1.replace(/([ \t\{]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":"));
                              if(!(_loc6_ && param3))
                              {
                                 param1 = §§pop();
                                 addr121:
                                 §§push("{");
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + param1);
                                    if(!(_loc6_ && §'"§))
                                    {
                                       addr133:
                                       §§push(§§pop() + "}");
                                    }
                                    param1 = §§pop();
                                    addr136:
                                    §§push(param1);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().replace(/,(\s*[\]\}$])/mg,"$1"));
                                       if(_loc5_)
                                       {
                                          §§goto(addr148);
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr171);
                           }
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr76);
                  }
               }
               addr148:
               param1 = §§pop();
               if(!(_loc6_ && param2))
               {
                  addr171:
                  param1 = §><§(param1,param2);
               }
               var _loc4_:Object = JSON.parse(param1);
               if(_loc5_ || param1)
               {
                  if(param3)
                  {
                     if(_loc5_)
                     {
                        _loc4_.debug = param1;
                     }
                  }
               }
               return _loc4_;
            }
            §§goto(addr171);
         }
         §§goto(addr121);
      }
      
      private static function §><§(param1:String, param2:Boolean) : String
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:String = null;
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
         if(_loc20_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:* = int(param1.indexOf(_loc4_));
         loop0:
         while(true)
         {
            §§push(_loc11_);
            §§push(0);
            if(!(_loc21_ && param2))
            {
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  §§push(§§pop() >= §§pop());
                  addr402:
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc20_)
                        {
                           addr405:
                           while(true)
                           {
                              §§pop();
                              addr406:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc13_);
                                 if(!_loc21_)
                                 {
                                    while(true)
                                    {
                                       §§push(0);
                                       addr410:
                                       while(true)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          addr411:
                                          addr390:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                break loop2;
                                             }
                                             §§push(_loc11_);
                                             if(!_loc20_)
                                             {
                                                break loop4;
                                             }
                                             continue loop1;
                                          }
                                          _loc11_ = §§pop();
                                          continue loop0;
                                       }
                                    }
                                    addr409:
                                 }
                                 break;
                              }
                              addr413:
                              var _loc14_:* = §§pop();
                              addr522:
                              if(_loc14_ < _loc9_.length)
                              {
                                 §§push(int(_loc9_[_loc14_]));
                                 if(_loc20_)
                                 {
                                    _loc11_ = §§pop();
                                    §§push(int(_loc10_[_loc14_]));
                                    if(!_loc21_)
                                    {
                                       _loc13_ = §§pop();
                                       if(_loc20_)
                                       {
                                          §§push(param1);
                                          if(_loc20_)
                                          {
                                             §§push(0);
                                             if(!_loc21_)
                                             {
                                                §§push(_loc11_);
                                                if(_loc20_)
                                                {
                                                   _loc17_ = §§pop().substring(§§pop(),§§pop());
                                                   §§push(param1);
                                                   if(!(_loc21_ && §'"§))
                                                   {
                                                      §§push(_loc11_);
                                                      if(!_loc21_)
                                                      {
                                                         §§push(1);
                                                         if(!(_loc21_ && §'"§))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc21_)
                                                            {
                                                               _loc18_ = §§pop().substring(§§pop(),_loc13_);
                                                               if(!(_loc21_ && param2))
                                                               {
                                                                  §§push(param1);
                                                                  if(!(_loc21_ && _loc3_))
                                                                  {
                                                                     addr498:
                                                                     _loc19_ = §§pop().substring(_loc13_ + 1);
                                                                     addr502:
                                                                     §§push(_loc17_ + _loc5_ + _loc18_ + _loc6_ + _loc19_);
                                                                     if(!(_loc21_ && param1))
                                                                     {
                                                                        addr518:
                                                                        param1 = §§pop();
                                                                        addr519:
                                                                        _loc14_++;
                                                                        if(_loc20_)
                                                                        {
                                                                           §§goto(addr522);
                                                                        }
                                                                        §§push(param1);
                                                                     }
                                                                     return §§pop();
                                                                     addr487:
                                                                     addr486:
                                                                  }
                                                                  §§goto(addr502);
                                                               }
                                                               §§goto(addr519);
                                                            }
                                                            §§goto(addr498);
                                                         }
                                                         §§goto(addr487);
                                                      }
                                                      §§goto(addr486);
                                                   }
                                                }
                                             }
                                             §§goto(addr498);
                                          }
                                          §§goto(addr518);
                                       }
                                       §§goto(addr498);
                                    }
                                 }
                                 §§goto(addr522);
                              }
                              §§goto(addr518);
                           }
                           addr405:
                        }
                     }
                     §§goto(addr411);
                  }
                  §§goto(addr413);
               }
            }
            §§goto(addr410);
         }
      }
   }
}

package §9@§
{
   public class §3,§
   {
       
      
      public function §3,§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §3!Y§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(_loc14_ || param3)
            {
               §§push(int(§§pop().length));
               if(_loc13_)
               {
               }
               addr72:
               §§push(int(§§pop()));
            }
            else
            {
               addr62:
               §§push(int(§§pop().indexOf(".")));
               if(_loc14_ || param3)
               {
                  §§goto(addr72);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc14_)
            {
               §§push(_loc8_);
               if(!(_loc13_ && param2))
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc13_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_ || param1)
                        {
                           addr96:
                           §§pop();
                           if(_loc14_ || param2)
                           {
                              §§push(param3);
                              if(!(_loc13_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(_loc14_)
                                 {
                                    addr115:
                                    if(§§pop())
                                    {
                                       if(_loc14_ || param3)
                                       {
                                          addr142:
                                          var _loc10_:* = (!(_loc13_ && §3,§) ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          §§push("");
                                          if(_loc14_ || §3,§)
                                          {
                                             if(param3)
                                             {
                                                if(_loc14_)
                                                {
                                                   addr197:
                                                   _loc11_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!(_loc13_ && §3,§))
                                                      {
                                                         §§push(param2);
                                                         if(!(_loc13_ && param2))
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  addr231:
                                                               }
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  break loop1;
                                                                  addr235:
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     §§push(".");
                                                                     if(_loc14_ || param2)
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        addr253:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        addr253:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                        if(!(_loc13_ && param2))
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(_loc13_ && param2)
                                                                           {
                                                                              §§push(_loc7_);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr328:
                                                                           }
                                                                           continue loop4;
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                               }
                                                               addr252:
                                                               §§goto(addr253);
                                                               §§push(",");
                                                               addr287:
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc14_ || param3)
                                                               {
                                                                  §§push(§§pop() + "0");
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(_loc14_)
                                                                     {
                                                                        _loc11_++;
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr231);
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                            }
                                                            addr329:
                                                            return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc13_ && §3,§))
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  addr314:
                                                                  if(_loc9_ < (!(_loc13_ && param3) ? §§pop() - 1 : §§pop()))
                                                                  {
                                                                     if(param4)
                                                                     {
                                                                        §§goto(addr235);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr252);
                                                                     }
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                         addr289:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr289);
                                                      §§goto(addr287);
                                                   }
                                                }
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr197);
                                       }
                                       else
                                       {
                                          addr135:
                                          §§push(",");
                                          if(!_loc13_)
                                          {
                                             §§goto(addr138);
                                          }
                                          else
                                          {
                                             addr141:
                                             §§push(§§pop());
                                          }
                                          §§goto(addr142);
                                       }
                                    }
                                    else
                                    {
                                       §§push(param4);
                                    }
                                    §§goto(addr135);
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr135);
                                 }
                                 else
                                 {
                                    §§push(".");
                                 }
                                 §§goto(addr141);
                              }
                           }
                           §§goto(addr135);
                        }
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr96);
            }
            §§goto(addr135);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr62);
      }
   }
}

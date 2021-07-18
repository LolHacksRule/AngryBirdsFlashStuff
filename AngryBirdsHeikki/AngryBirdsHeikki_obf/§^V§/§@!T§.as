package §^V§
{
   import flash.net.URLVariables;
   
   public class §@!T§
   {
       
      
      public function §@!T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      private static function §<y§(param1:*) : *
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
               while(true)
               {
                  §§push(param1.toString() == "true");
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr163:
                           while(true)
                           {
                              §§push(param1.toString() == "false");
                           }
                        }
                        addr162:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc10_ && param1))
                              {
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    return true;
                                 }
                                 else
                                 {
                                    §§goto(addr163);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§goto(addr80);
                                 }
                              }
                              return §§pop();
                           }
                           addr80:
                           §§goto(addr169);
                        }
                     }
                  }
               }
            }
         }
         addr169:
         while(true)
         {
            §§push(§ H§(param1 as String));
            if(_loc11_ || _loc2_)
            {
               if(!_loc11_)
               {
                  continue loop5;
               }
               if(!(_loc10_ && param1))
               {
                  if(!(_loc11_ || §@!T§))
                  {
                     continue loop1;
                  }
                  if(!§§pop())
                  {
                     return param1.toString();
                  }
                  if(!(_loc10_ && _loc3_))
                  {
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(param1.toString().substr(1,param1.toString().length - 2));
                     loop8:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr130:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc10_ && §@!T§))
                           {
                              §§push(§§pop().substr(1,_loc2_.length - 2));
                           }
                           if(!_loc10_)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc10_ && _loc2_))
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop8;
                        }
                        continue loop6;
                     }
                  }
                  §§goto(addr130);
               }
               else
               {
                  §§goto(addr162);
               }
            }
         }
         return Number(param1);
      }
      
      private static function § H§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               do
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    break loop5;
                                 }
                                 addr67:
                              }
                              else if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           if(_loc2_ || _loc2_)
                           {
                              return §§pop();
                           }
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop4;
                           }
                        }
                     }
                     continue;
                     addr63:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
               while(!(_loc2_ || _loc3_));
               
               return §§pop();
            }
         }
         §§goto(addr67);
      }
      
      public static function §,!§(param1:Object) : Object
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
         if(!_loc11_)
         {
            if(param1 is URLVariables)
            {
               addr45:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc12_ || _loc3_)
                  {
                     _loc2_[_loc4_] = §<y§(_loc3_);
                  }
               }
               if(!_loc12_)
               {
                  _loc5_ = (param1 as String).split("&");
                  addr86:
                  if(!(_loc11_ && §@!T§))
                  {
                     var _loc9_:int = 0;
                     if(_loc12_ || _loc2_)
                     {
                        var _loc10_:* = _loc5_;
                        if(_loc12_)
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
                                       while(_loc12_ || _loc2_)
                                       {
                                          loop7:
                                          while(_loc12_ || _loc2_)
                                          {
                                             _loc2_[_loc7_] = _loc8_;
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      _loc8_ = §§pop();
                                                      continue loop7;
                                                   }
                                                   continue loop3;
                                                   addr139:
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr204:
                           return _loc2_;
                           addr203:
                        }
                        while(true)
                        {
                           §§goto(addr139);
                        }
                     }
                     §§goto(addr203);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr86);
            }
            §§goto(addr204);
         }
         §§goto(addr45);
      }
   }
}

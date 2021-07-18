package §3"H§
{
   import §+!4§.§&"p§;
   
   public class §@!g§
   {
      
      private static var §#!^§:String = "{}";
      
      public static var §5#5§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#!^§ = "{}";
         }
         do
         {
            §5#5§ = true;
         }
         while(_loc2_);
         
      }
      
      public function §@!g§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §;!L§(param1:int, param2:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            var _loc3_:* = §§pop();
            if(_loc4_ || param1)
            {
               §§push(§&"p§.§"#&§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§push(0);
                           if(!(_loc5_ && param1))
                           {
                              addr124:
                           }
                        }
                        else
                        {
                           addr136:
                           §§push(1);
                           if(_loc4_)
                           {
                              addr149:
                           }
                        }
                        addr155:
                        switch(§§pop())
                        {
                           case 0:
                              §§push("");
                              if(_loc4_ || param2)
                              {
                                 §§push(§§pop() + param2[0]);
                              }
                              if(§§pop().indexOf("{}") > -1)
                              {
                                 if(_loc4_)
                                 {
                                    return §`"j§(param2);
                                 }
                              }
                              break;
                           case 1:
                           default:
                              §§push(param2);
                              §§push(param2);
                              if(_loc5_ && _loc3_)
                              {
                                 break;
                              }
                              §§push(" ");
                              if(_loc4_)
                              {
                                 return §§pop().join(§§pop());
                              }
                              §§goto(addr44);
                        }
                        addr44:
                        return §§pop().join(§§pop());
                        addr154:
                        §§push(" ");
                     }
                     else
                     {
                        §§push(§&"p§.NONE);
                        if(_loc4_ || §@!g§)
                        {
                           addr135:
                           if(§§pop() === _loc3_)
                           {
                              §§goto(addr136);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr154);
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr135);
               }
               §§goto(addr124);
            }
            §§goto(addr136);
         }
         §§goto(addr155);
      }
      
      private static function §`"j§(param1:Array) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:String = null;
         if(_loc8_ || param1)
         {
            §§push(param1);
            if(_loc8_)
            {
               if(§§pop().length < 2)
               {
                  if(!_loc9_)
                  {
                     §§push(param1);
                     if(!(_loc9_ && param1))
                     {
                        §§goto(addr42);
                     }
                  }
                  else
                  {
                     addr45:
                     §§push(param1);
                  }
                  var _loc2_:String = §§pop().shift();
                  var _loc3_:String = "";
                  var _loc4_:Array = _loc2_.split(§#!^§);
                  if(_loc4_[_loc4_.length - 1] == "")
                  {
                     if(_loc8_)
                     {
                        _loc4_.pop();
                        if(_loc8_ || _loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     _loc3_ = _loc4_.pop();
                  }
                  var _loc5_:Array = [];
                  var _loc6_:* = 0;
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc9_ && §@!g§))
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc8_ || _loc3_)
                           {
                              if(!_loc8_)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       _loc5_.push(", ");
                                       loop2:
                                       while(true)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(0);
                                             if(_loc8_)
                                             {
                                                _loc6_ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc9_ && param1)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!(_loc9_ && §@!g§))
                                                   {
                                                      break;
                                                   }
                                                   addr182:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_ || param1)
                                                         {
                                                            _loc5_.push(_loc3_);
                                                            while(!§5#5§)
                                                            {
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  continue;
                                                                  continue;
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§push(param1);
                                                            while(true)
                                                            {
                                                               if(§§pop().length > 0)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr162:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc5_.push(_loc4_[_loc6_] + _loc7_);
                                                               addr206:
                                                               while(true)
                                                               {
                                                                  _loc6_++;
                                                               }
                                                            }
                                                            addr227:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                                addr128:
                                             }
                                             while(§§pop() > _loc4_.length - 1)
                                             {
                                                §§goto(addr182);
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr206);
                                 }
                              }
                              break;
                           }
                           §§goto(addr128);
                        }
                        else
                        {
                           §§push("");
                           if(_loc8_)
                           {
                              §§push(§§pop() + param1.shift());
                           }
                           _loc7_ = §§pop();
                        }
                        §§goto(addr227);
                     }
                     §§goto(addr162);
                  }
                  return _loc5_.join("");
               }
               §§goto(addr45);
            }
            addr42:
            return §§pop().join(" ");
         }
         §§goto(addr45);
      }
   }
}

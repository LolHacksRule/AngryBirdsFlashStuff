package §;f§
{
   import flash.net.URLVariables;
   
   public class §=!<§
   {
       
      
      public function §=!<§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      private static function §&+§(param1:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(isNaN(param1) == false)
         {
            return Number(param1);
         }
         loop0:
         while(true)
         {
            §§push(param1.toString() == "true");
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     if(_loc10_)
                     {
                        break;
                        addr102:
                     }
                     §§push(param1.toString() == "false");
                     while(_loc11_)
                     {
                     }
                     continue loop1;
                  }
                  continue loop0;
                  addr118:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     break loop1;
                  }
                  while(true)
                  {
                     §§push(§!!9§(param1 as String));
                     if(!(_loc10_ && param1))
                     {
                        if(!_loc10_)
                        {
                           if(_loc11_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 return param1.toString();
                              }
                              continue;
                           }
                           §§goto(addr118);
                        }
                        break;
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr102);
               }
            }
            addr107:
            return §§pop();
         }
      }
      
      private static function §!!9§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               §§goto(addr94);
            }
            addr88:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§goto(addr69);
               §§push(§§pop().toString().substr(-1,1) == "]");
            }
            else
            {
               §§goto(addr88);
            }
            addr94:
            while(true)
            {
               if(!§§pop())
               {
                  do
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
                           if(!(_loc3_ || §=!<§))
                           {
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                  }
                  while(!_loc3_);
                  
                  if(_loc3_)
                  {
                     break;
                  }
                  continue;
                  addr69:
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
      
      public static function §]D§(param1:Object) : Object
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
         if(_loc11_ || param1)
         {
            if(param1 is URLVariables)
            {
               addr49:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(!(_loc12_ && param1))
                  {
                     _loc2_[_loc4_] = §&+§(_loc3_);
                  }
               }
               if(_loc12_ && param1)
               {
                  addr105:
                  _loc5_ = (param1 as String).split("&");
                  if(!(_loc12_ && _loc3_))
                  {
                     var _loc9_:int = 0;
                     if(_loc11_)
                     {
                        var _loc10_:* = _loc5_;
                        if(!_loc12_)
                        {
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
                                    while(_loc11_)
                                    {
                                       _loc7_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                          if(!(_loc11_ || param1))
                                          {
                                             break;
                                          }
                                          _loc8_ = §§pop();
                                          while(true)
                                          {
                                             if(_loc11_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             addr185:
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr198:
                           return _loc2_;
                           addr197:
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr197);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr105);
            }
            §§goto(addr198);
         }
         §§goto(addr49);
      }
   }
}

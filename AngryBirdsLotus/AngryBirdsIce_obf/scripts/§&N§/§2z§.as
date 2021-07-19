package §&N§
{
   import flash.net.URLVariables;
   
   public class §2z§
   {
       
      
      public function §2z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static function §?`§(param1:*) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(isNaN(param1) != false)
         {
            §§push(param1.toString() == "true");
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr136:
                     loop2:
                     while(true)
                     {
                        §§push(param1.toString() == "false");
                        if(!_loc11_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr118:
                                 §§push(true);
                                 break loop2;
                              }
                              addr58:
                              while(true)
                              {
                                 §§push(§3I§(param1 as String));
                                 if(!(_loc10_ || §2z§))
                                 {
                                    break loop2;
                                 }
                                 continue loop0;
                              }
                              continue loop0;
                           }
                           addr116:
                        }
                        break;
                     }
                     addr119:
                     while(true)
                     {
                        if(_loc10_ || §2z§)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  return §§pop();
               }
               §§goto(addr116);
            }
         }
         §§goto(addr142);
      }
      
      private static function §3I§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               loop1:
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
                              while(true)
                              {
                                 §§push(true);
                                 break loop5;
                              }
                              addr79:
                           }
                           else if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                        addr68:
                        while(_loc2_ || §2z§)
                        {
                           continue loop5;
                        }
                     }
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
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
         §§goto(addr79);
      }
      
      public static function §2=§(param1:Object) : Object
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
         if(_loc11_ || _loc2_)
         {
            if(param1 is URLVariables)
            {
               addr49:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(!_loc12_)
                  {
                     _loc2_[_loc4_] = §?`§(_loc3_);
                  }
               }
               if(_loc12_)
               {
                  _loc5_ = (param1 as String).split("&");
                  addr85:
                  if(_loc11_ || _loc2_)
                  {
                     var _loc9_:int = 0;
                     if(_loc11_ || _loc2_)
                     {
                        var _loc10_:* = _loc5_;
                        if(_loc11_ || _loc3_)
                        {
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr198:
                                 while(true)
                                 {
                                    §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                    addr189:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                    }
                                 }
                                 addr156:
                                 if(!(_loc11_ || §2z§))
                                 {
                                    continue;
                                 }
                                 _loc8_ = §§pop();
                                 while(true)
                                 {
                                    if(!_loc12_)
                                    {
                                       if(_loc12_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    addr190:
                                    while(true)
                                    {
                                       addr143:
                                       while(true)
                                       {
                                          §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                          if(_loc12_)
                                          {
                                             break;
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr189);
                                    }
                                 }
                                 §§goto(addr198);
                              }
                           }
                           addr203:
                           return _loc2_;
                           addr202:
                        }
                        §§goto(addr190);
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
         §§goto(addr49);
      }
   }
}

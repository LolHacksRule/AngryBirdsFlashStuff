package §2!&§
{
   import flash.net.URLVariables;
   
   public class §`!+§
   {
       
      
      public function §`!+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §@!&§(param1:*) : *
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(_loc11_ || param1)
         {
            if(isNaN(param1) != false)
            {
               loop0:
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
                           addr156:
                           while(_loc11_)
                           {
                              §§push(param1.toString() == "false");
                           }
                           continue loop0;
                        }
                        addr155:
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr136:
                              §§push(true);
                           }
                           else
                           {
                              addr85:
                              while(true)
                              {
                                 §§push(§4!=§(param1 as String));
                                 if(_loc10_ && §`!+§)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              addr85:
                           }
                           addr137:
                           if(_loc11_)
                           {
                              return §§pop();
                           }
                           §§goto(addr155);
                        }
                     }
                  }
               }
            }
            §§goto(addr164);
         }
         §§goto(addr147);
      }
      
      private static function §4!=§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §`!+§)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toString().substr(0,1) == "[");
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(true);
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(_loc2_ && §`!+§)
                           {
                              continue;
                           }
                           if(_loc3_ || param1)
                           {
                              break loop1;
                           }
                        }
                        return §§pop();
                        addr60:
                     }
                     return §§pop();
                  }
               }
               addr96:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr76:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§goto(addr60);
            }
            else
            {
               §§goto(addr76);
            }
         }
      }
      
      public static function §^!`§(param1:Object) : Object
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
                  if(!_loc11_)
                  {
                     _loc2_[_loc4_] = §@!&§(_loc3_);
                  }
               }
               if(!(_loc12_ || _loc3_))
               {
                  addr86:
                  _loc5_ = (param1 as String).split("&");
                  if(!_loc11_)
                  {
                     var _loc9_:int = 0;
                     if(_loc12_ || param1)
                     {
                        var _loc10_:* = _loc5_;
                        if(!(_loc11_ && _loc3_))
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
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                          if(_loc11_ && _loc3_)
                                          {
                                             break;
                                          }
                                          if(!_loc12_)
                                          {
                                             continue loop1;
                                          }
                                          _loc8_ = §§pop();
                                          do
                                          {
                                             _loc2_[_loc7_] = _loc8_;
                                          }
                                          while(_loc11_ && _loc2_);
                                          
                                          if(_loc12_ || §`!+§)
                                          {
                                             if(_loc12_ || _loc3_)
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                          addr186:
                                          while(true)
                                          {
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr209:
                           return _loc2_;
                           addr208:
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr208);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr86);
            }
            §§goto(addr209);
         }
         §§goto(addr45);
      }
   }
}

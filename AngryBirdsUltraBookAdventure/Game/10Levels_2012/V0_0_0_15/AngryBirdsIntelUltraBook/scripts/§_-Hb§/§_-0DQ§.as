package §_-Hb§
{
   import flash.net.URLVariables;
   
   public class §_-0DQ§
   {
       
      
      public function §_-0DQ§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static function set(param1:*) : *
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(_loc10_ || §_-0DQ§)
         {
            if(isNaN(param1) != false)
            {
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
                           addr147:
                           while(true)
                           {
                              §§push(param1.toString() == "false");
                           }
                        }
                        addr146:
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr122:
                              §§push(true);
                           }
                           else
                           {
                              addr67:
                              while(true)
                              {
                                 §§push(§_-00e§(param1 as String));
                                 if(_loc11_ && _loc3_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              addr67:
                           }
                           if(!(_loc11_ && _loc3_))
                           {
                              if(_loc10_ || _loc2_)
                              {
                                 return §§pop();
                              }
                              continue loop1;
                           }
                           §§goto(addr146);
                        }
                     }
                  }
               }
            }
            §§goto(addr153);
         }
         §§goto(addr114);
      }
      
      private static function §_-00e§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §_-0DQ§)
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
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 addr77:
                                 §§push(true);
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        addr69:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                        }
                     }
                     return §§pop();
                  }
               }
               addr91:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function §_-Rw§(param1:Object) : Object
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc2_:Object = new Object();
         if(_loc11_)
         {
            if(param1 is URLVariables)
            {
               addr44:
               for(_loc4_ in param1)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc11_ || _loc3_)
                  {
                     _loc2_[_loc4_] = set(_loc3_);
                  }
               }
               if(!(_loc11_ || _loc3_))
               {
                  _loc5_ = (param1 as String).split("&");
                  addr90:
                  if(!(_loc12_ && param1))
                  {
                     var _loc9_:int = 0;
                     if(_loc11_)
                     {
                        var _loc10_:* = _loc5_;
                        if(_loc11_ || _loc3_)
                        {
                           while(§§hasnext(_loc10_,_loc9_))
                           {
                              §§push(§§nextvalue(_loc9_,_loc10_));
                              loop1:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr208:
                                 while(true)
                                 {
                                    §§push(unescape(_loc6_.substring(0,_loc6_.indexOf("="))));
                                    loop3:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       addr200:
                                       while(true)
                                       {
                                          addr157:
                                          while(true)
                                          {
                                             §§push(unescape(_loc6_.substring(_loc6_.indexOf("=") + 1)));
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           addr213:
                           return _loc2_;
                           addr209:
                           addr212:
                        }
                        while(true)
                        {
                           _loc2_[_loc7_] = _loc8_;
                           if(_loc12_ && §_-0DQ§)
                           {
                              continue;
                           }
                           if(_loc11_ || param1)
                           {
                              if(!(_loc12_ && _loc2_))
                              {
                                 if(true)
                                 {
                                    §§goto(addr209);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr212);
                  }
               }
            }
            else if(param1 is String)
            {
               §§goto(addr90);
            }
            §§goto(addr213);
         }
         §§goto(addr44);
      }
   }
}

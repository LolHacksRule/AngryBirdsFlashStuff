package §8s§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §<5§ extends §`H§
   {
       
      
      public function §<5§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param3);
            do
            {
               this.§[;§(param1,param2);
            }
            while(_loc5_ && param1);
            
         }
      }
      
      protected function §[;§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§%e§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§8"§ = null;
         var _loc3_:Dictionary = this.§[!Y§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc19_ || this)
            {
               _loc6_ = §§pop();
               if(!_loc20_)
               {
                  addr113:
                  _loc7_ = _loc5_.@file;
                  loop17:
                  while(true)
                  {
                     addr100:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr106:
                        while(true)
                        {
                           _loc8_ = §§pop();
                           addr107:
                           while(_loc20_)
                           {
                              continue loop17;
                           }
                        }
                        continue loop17;
                     }
                  }
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(!_loc20_)
                  {
                     _loc9_ = §§pop();
                     if(_loc19_ || param2)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr106);
               }
               if((_loc10_ = _loc3_[this.§?!A§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc19_ || param1)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(!(_loc20_ && _loc3_))
                     {
                        _loc11_ = §§pop();
                        if(_loc19_ || param1)
                        {
                           addr246:
                           §§push(int(parseInt(_loc5_.@height)));
                           while(true)
                           {
                              _loc12_ = §§pop();
                              addr247:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 addr239:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                 }
                              }
                           }
                           addr246:
                        }
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(int(parseInt(_loc5_.@pivotY)));
                              while(!_loc20_)
                              {
                                 if(!_loc20_)
                                 {
                                    _loc14_ = §§pop();
                                    if(_loc19_)
                                    {
                                       if(_loc19_)
                                       {
                                          §§push(_loc11_);
                                          if(!(_loc20_ && param2))
                                          {
                                             if(!(_loc19_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(0);
                                             if(!_loc20_)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(!(_loc20_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc20_ && param2))
                                                      {
                                                         addr200:
                                                         §§pop();
                                                         if(_loc19_ || _loc3_)
                                                         {
                                                            if(_loc19_ || param2)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(_loc12_);
                                                               }
                                                               continue loop6;
                                                               break loop5;
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                         addr254:
                                                         _loc10_ = new §%e§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                         if(_loc10_)
                                                         {
                                                            addr266:
                                                            _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                            (_loc16_ = new §8"§()).mName = _loc6_;
                                                            if(_loc19_ || this)
                                                            {
                                                               _loc16_.§`!%§ = _loc15_;
                                                               while(true)
                                                               {
                                                                  _loc16_.§=;§ = _loc10_.pivotX;
                                                                  while(true)
                                                                  {
                                                                     _loc16_.§62§ = _loc10_.pivotY;
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        addr312:
                                                                        while(true)
                                                                        {
                                                                           _loc16_.§<!m§ = §@C§;
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr303:
                                                                  if(_loc20_ && param2)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §72§(_loc16_);
                                                               if(!_loc20_)
                                                               {
                                                                  §§goto(addr303);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr251:
                                                   if(§§pop())
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr251);
                                             §§push(§§pop() > §§pop());
                                          }
                                          break loop5;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr200);
                                 }
                                 else
                                 {
                                    §§goto(addr246);
                                 }
                              }
                              §§goto(addr239);
                           }
                        }
                        §§goto(addr250);
                        §§push(0);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr266);
               }
               §§goto(addr200);
            }
            §§goto(addr113);
         }
         if(_loc19_ || this)
         {
            mName = param1.@file;
         }
      }
      
      private function §?!A§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(!_loc4_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §[!Y§(param1:Vector.<XML>) : Dictionary
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:XMLList = null;
         var _loc6_:XML = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:int = 0;
         var _loc14_:XMLList = null;
         var _loc15_:XML = null;
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in param1)
         {
            if(!_loc21_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!_loc21_)
            {
               var _loc18_:int = 0;
               if(!(_loc21_ && this))
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!(_loc21_ && param1))
                     {
                        §§push(this.§?!A§(_loc4_,_loc6_.@name));
                        if(!_loc21_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        while(_loc2_[_loc7_] == null)
                        {
                           loop3:
                           for(; !(_loc21_ && _loc2_); if(!(_loc20_ || param1))
                           {
                              continue;
                           },while(true)
                           {
                              §§goto(addr130);
                           },addr170:)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              loop4:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(int(parseInt(_loc6_.@height)));
                                    loop6:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc6_.@pivotX)));
                                          loop8:
                                          while(!_loc21_)
                                          {
                                             _loc10_ = §§pop();
                                             while(!(_loc21_ && _loc3_))
                                             {
                                                if(!_loc21_)
                                                {
                                                   §§push(int(parseInt(_loc6_.@pivotY)));
                                                   loop10:
                                                   while(_loc20_ || _loc2_)
                                                   {
                                                      _loc11_ = §§pop();
                                                      while(_loc20_)
                                                      {
                                                         continue loop3;
                                                         if(!(_loc20_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         addr128:
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(int(parseInt(_loc6_.@x)));
                                                               addr136:
                                                               while(!_loc21_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               continue loop10;
                                                               §§goto(addr128);
                                                            }
                                                            addr238:
                                                            if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                            {
                                                               if(_loc20_)
                                                               {
                                                                  _loc15_ = _loc14_[0];
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(int(parseInt(_loc15_.@width)));
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        addr333:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(parseInt(_loc15_.@height)));
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                  }
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     addr288:
                                                                     while(true)
                                                                     {
                                                                        §§push(parseInt(_loc15_.@x) - _loc12_);
                                                                        addr295:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           addr296:
                                                                           while(true)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(_loc21_ && _loc2_)
                                                                              {
                                                                                 break loop2;
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr347:
                                                                  _loc13_ = 0;
                                                                  addr346:
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            else
                                                            {
                                                               addr335:
                                                               §§push(0);
                                                               if(!_loc21_)
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                            }
                                                            §§goto(addr347);
                                                            addr130:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop5;
                                             }
                                             continue loop7;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr170);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

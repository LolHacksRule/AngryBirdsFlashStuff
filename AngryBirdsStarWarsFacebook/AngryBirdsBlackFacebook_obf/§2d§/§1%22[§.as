package §2d§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §1"[§ extends §;H§
   {
       
      
      public function §1"[§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super(param3);
            do
            {
               this.§,Q§(param1,param2);
            }
            while(_loc5_ && param1);
            
         }
      }
      
      protected function §,Q§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§`!K§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§%$§ = null;
         var _loc3_:Dictionary = this.§,"^§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!_loc20_)
            {
               _loc6_ = §§pop();
               if(_loc19_ || param1)
               {
                  addr108:
                  _loc7_ = _loc5_.@file;
                  loop15:
                  while(true)
                  {
                     addr95:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr101:
                        while(true)
                        {
                           _loc8_ = §§pop();
                           addr102:
                           while(_loc20_)
                           {
                              continue loop15;
                           }
                        }
                        continue loop15;
                     }
                  }
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(!_loc20_)
                  {
                     _loc9_ = §§pop();
                     if(!_loc20_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr101);
               }
               if((_loc10_ = _loc3_[this.§@#9§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc19_ || param1)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc19_ || param2)
                     {
                        _loc11_ = §§pop();
                        if(_loc19_ || param1)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           loop5:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              if(_loc19_)
                              {
                                 while(true)
                                 {
                                    §§push(int(parseInt(_loc5_.@pivotX)));
                                    if(!(_loc20_ && this))
                                    {
                                       if(_loc19_)
                                       {
                                          _loc13_ = §§pop();
                                          if(_loc19_)
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                §§push(int(parseInt(_loc5_.@pivotY)));
                                                if(!(_loc20_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      _loc14_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(_loc19_)
                                                         {
                                                            §§push(0);
                                                            if(_loc19_)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               if(!_loc20_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc19_ || param2))
                                                                        {
                                                                           break loop5;
                                                                        }
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc12_);
                                                                           }
                                                                           continue loop14;
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                               addr236:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  addr251:
                                                                  _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                  (_loc16_ = new §%$§()).name = _loc6_;
                                                                  if(_loc19_)
                                                                  {
                                                                     _loc16_.rect = _loc15_;
                                                                  }
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     _loc16_.pivotX = _loc10_.pivotX;
                                                                     while(true)
                                                                     {
                                                                        _loc16_.pivotY = _loc10_.pivotY;
                                                                        while(_loc19_ || this)
                                                                        {
                                                                           continue loop8;
                                                                           loop12:
                                                                           while(_loc19_ || this)
                                                                           {
                                                                              §9!t§(_loc16_);
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 addr288:
                                                                                 if(false)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc16_.§>#P§ = §>">§;
                                                                                       continue loop12;
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    addr290:
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr251);
                                                            }
                                                            addr235:
                                                            §§goto(addr236);
                                                            §§push(§§pop() > §§pop());
                                                         }
                                                         break;
                                                      }
                                                      continue loop14;
                                                   }
                                                   addr203:
                                                }
                                             }
                                          }
                                          break loop5;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr235);
                                 }
                                 addr232:
                              }
                              break;
                           }
                        }
                        _loc10_ = new §`!K§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                        §§goto(addr236);
                     }
                     §§goto(addr203);
                  }
                  §§goto(addr232);
               }
               §§goto(addr236);
            }
            §§goto(addr108);
         }
         if(!_loc20_)
         {
            mName = param1.@file;
         }
      }
      
      private function §@#9§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(!_loc3_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §,"^§(param1:Vector.<XML>) : Dictionary
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
         var _loc13_:* = 0;
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
            if(!(_loc21_ && _loc2_))
            {
               var _loc18_:int = 0;
               if(_loc20_ || _loc2_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc20_ || param1)
                     {
                        §§push(this.§@#9§(_loc4_,_loc6_.@name));
                        if(_loc20_ || param1)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        while(_loc2_[_loc7_] == null)
                        {
                           loop3:
                           while(!_loc21_)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 addr227:
                                 while(true)
                                 {
                                    §§push(int(parseInt(_loc6_.@height)));
                                    addr201:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                    }
                                 }
                                 addr123:
                                 if(!(_loc20_ || this))
                                 {
                                    continue;
                                 }
                                 _loc13_ = §§pop();
                                 if(!_loc21_)
                                 {
                                    addr133:
                                    if(_loc20_ || _loc3_)
                                    {
                                       if(_loc20_ || _loc2_)
                                       {
                                          if(false)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(int(parseInt(_loc6_.@x)));
                                                addr155:
                                                loop13:
                                                while(_loc20_ || param1)
                                                {
                                                   _loc12_ = §§pop();
                                                   while(!_loc21_)
                                                   {
                                                      §§push(int(parseInt(_loc6_.@y)));
                                                      if(!(_loc20_ || _loc3_))
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         §§push(int(parseInt(_loc6_.@pivotY)));
                                                         break loop13;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc20_ || this)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         _loc11_ = §§pop();
                                                         break loop12;
                                                      }
                                                      break;
                                                   }
                                                   addr191:
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      §§goto(addr192);
                                                      continue loop10;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr201);
                                             }
                                             while(!_loc21_)
                                             {
                                                §§goto(addr149);
                                                §§goto(addr133);
                                             }
                                             addr149:
                                             §§goto(addr227);
                                             addr182:
                                          }
                                          if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                          {
                                             if(!(_loc21_ && _loc3_))
                                             {
                                                _loc15_ = _loc14_[0];
                                                if(_loc20_ || _loc3_)
                                                {
                                                   addr404:
                                                   _loc8_ = int(parseInt(_loc15_.@width));
                                                   addr390:
                                                   _loc9_ = int(parseInt(_loc15_.@height));
                                                   if(!(_loc20_ || _loc2_))
                                                   {
                                                      break loop2;
                                                   }
                                                   addr405:
                                                }
                                                addr372:
                                                §§push(int(parseInt(_loc15_.@x) - _loc12_));
                                                if(!(_loc21_ && _loc3_))
                                                {
                                                   _loc12_ = §§pop();
                                                   addr381:
                                                   if(_loc20_)
                                                   {
                                                      addr358:
                                                      §§push(int(parseInt(_loc15_.@y) - _loc13_));
                                                      if(_loc20_)
                                                      {
                                                         _loc13_ = §§pop();
                                                         if(_loc21_)
                                                         {
                                                            break loop2;
                                                         }
                                                         addr328:
                                                         §§push(_loc10_);
                                                         if(!(_loc21_ && param1))
                                                         {
                                                            addr339:
                                                            §§push(int(§§pop() - _loc12_));
                                                         }
                                                         if(!(_loc21_ && _loc2_))
                                                         {
                                                            _loc10_ = §§pop();
                                                            addr348:
                                                            if(!_loc21_)
                                                            {
                                                               §§push(_loc11_);
                                                               if(_loc20_ || this)
                                                               {
                                                                  if(!(_loc21_ && _loc3_))
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        §§push(_loc13_);
                                                                        if(_loc20_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              if(!_loc21_)
                                                                              {
                                                                                 if(_loc20_ || _loc2_)
                                                                                 {
                                                                                    addr316:
                                                                                    _loc11_ = int(§§pop());
                                                                                    if(_loc21_ && _loc2_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                       addr415:
                                                                                       _loc2_[_loc7_] = new §`!K§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                                       break loop2;
                                                                                    }
                                                                                    §§goto(addr348);
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              §§goto(addr358);
                                                                           }
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   §§goto(addr405);
                                                }
                                                §§goto(addr404);
                                             }
                                             else
                                             {
                                                addr414:
                                                _loc13_ = 0;
                                                addr413:
                                             }
                                             §§goto(addr415);
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(_loc20_)
                                             {
                                                _loc12_ = §§pop();
                                                if(_loc20_)
                                                {
                                                   §§goto(addr413);
                                                }
                                                §§goto(addr415);
                                             }
                                          }
                                          §§goto(addr414);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr191);
                                       }
                                       addr202:
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr163);
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr202);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

package §'!H§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'A§ extends §3^§
   {
       
      
      public function §'A§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param3);
            do
            {
               this.§+%§(param1,param2);
            }
            while(_loc4_ && param2);
            
         }
      }
      
      protected function §+%§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:§^!D§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§?m§ = null;
         var _loc3_:Dictionary = this.§64§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!_loc20_)
            {
               _loc6_ = §§pop();
               if(_loc19_)
               {
                  addr113:
                  _loc7_ = _loc5_.@file;
               }
               loop1:
               while(true)
               {
                  addr95:
                  addr115:
                  while(true)
                  {
                     §§push(int(parseInt(_loc5_.@x)));
                     addr101:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        continue loop1;
                     }
                  }
                  if((_loc10_ = _loc3_[this.§57§(_loc7_,_loc6_)]) == null)
                  {
                     if(_loc19_)
                     {
                        §§push(int(parseInt(_loc5_.@width)));
                        if(!(_loc20_ && this))
                        {
                           _loc11_ = §§pop();
                           if(_loc19_)
                           {
                              addr221:
                              _loc12_ = parseInt(_loc5_.@height);
                              addr222:
                              §§push(int(parseInt(_loc5_.@pivotX)));
                              if(!_loc20_)
                              {
                                 if(_loc19_)
                                 {
                                    _loc13_ = §§pop();
                                    if(!_loc20_)
                                    {
                                       addr193:
                                       _loc14_ = parseInt(_loc5_.@pivotY);
                                       addr187:
                                       if(!(_loc20_ && param1))
                                       {
                                          §§push(_loc11_);
                                          if(!_loc20_)
                                          {
                                             if(_loc19_)
                                             {
                                                §§push(0);
                                                if(_loc19_ || param1)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(!(_loc20_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            §§pop();
                                                            if(!_loc20_)
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr187);
                                                                  }
                                                                  addr226:
                                                                  if(_loc12_ > 0)
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        addr229:
                                                                        _loc10_ = new §^!D§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                        addr239:
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr241:
                                                                        _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                        (_loc16_ = new §?m§()).mName = _loc6_;
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc16_.§[!D§ = _loc15_;
                                                                        }
                                                                        _loc16_.§^D§ = _loc10_.pivotX;
                                                                        _loc16_.§%B§ = _loc10_.pivotY;
                                                                        addr294:
                                                                        addr311:
                                                                        if(!(_loc20_ && param1))
                                                                        {
                                                                           addr282:
                                                                           _loc16_.§9B§ = §4<§;
                                                                           if(!_loc20_)
                                                                           {
                                                                              §5!U§(_loc16_);
                                                                              if(_loc19_)
                                                                              {
                                                                                 if(_loc19_ || _loc3_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr282);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           §§goto(addr311);
                                                                        }
                                                                        addr307:
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr229);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr193);
                     }
                  }
                  §§goto(addr229);
               }
            }
            §§goto(addr113);
         }
         if(_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §57§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(!(_loc4_ && param1))
         {
            return §§pop() + param2;
         }
      }
      
      private function §64§(param1:Vector.<XML>) : Dictionary
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
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
            if(!(_loc20_ && this))
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc21_ || _loc3_)
            {
               var _loc18_:int = 0;
               if(_loc21_ || this)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!(_loc20_ && param1))
                     {
                        §§push(this.§57§(_loc4_,_loc6_.@name));
                        if(!(_loc20_ && this))
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        for(; _loc2_[_loc7_] == null; if(_loc20_ && _loc2_)
                        {
                           continue;
                        },§§push(int(parseInt(_loc6_.@y))),if(_loc21_)
                        {
                           §§goto(addr124);
                        },§§goto(addr149))
                        {
                           loop3:
                           while(true)
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
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc6_.@pivotX)));
                                          loop8:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             loop9:
                                             while(_loc21_)
                                             {
                                                if(!_loc20_)
                                                {
                                                   §§push(int(parseInt(_loc6_.@pivotY)));
                                                   loop10:
                                                   while(!_loc20_)
                                                   {
                                                      if(_loc21_ || param1)
                                                      {
                                                         _loc11_ = §§pop();
                                                         while(_loc21_ || param1)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(int(parseInt(_loc6_.@x)));
                                                               while(!(_loc20_ && this))
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     continue loop5;
                                                                     addr131:
                                                                     _loc13_ = §§pop();
                                                                     if(_loc20_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc20_)
                                                                     {
                                                                        while(false)
                                                                        {
                                                                           §§goto(addr143);
                                                                        }
                                                                        if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                                        {
                                                                           if(!_loc20_)
                                                                           {
                                                                              _loc15_ = _loc14_[0];
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(int(parseInt(_loc15_.@width)));
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(int(parseInt(_loc15_.@height)));
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          addr330:
                                                                                          while(!(_loc20_ && param1))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(parseInt(_loc15_.@x) - _loc12_);
                                                                                                addr297:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   continue loop18;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc21_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    _loc12_ = §§pop();
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    if(!(_loc20_ && _loc3_))
                                                                                    {
                                                                                       §§push(parseInt(_loc15_.@y) - _loc13_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             _loc13_ = §§pop();
                                                                                             if(_loc20_ && _loc2_)
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             while(false)
                                                                                             {
                                                                                                §§goto(addr290);
                                                                                             }
                                                                                             addr359:
                                                                                             _loc2_[_loc7_] = new §^!D§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                                             break loop2;
                                                                                             addr288:
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    §§goto(addr330);
                                                                                 }
                                                                              }
                                                                              §§goto(addr288);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc20_)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(!(_loc20_ && param1))
                                                                              {
                                                                                 §§push(0);
                                                                              }
                                                                              §§goto(addr359);
                                                                           }
                                                                           _loc13_ = §§pop();
                                                                        }
                                                                        §§goto(addr359);
                                                                        addr141:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr183);
                                                                     }
                                                                     §§goto(addr194);
                                                                  }
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                         continue loop9;
                                                         addr183:
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop3;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       addr124:
                                       if(!(_loc21_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr141);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

package §,"R§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §4"@§ extends §,!+§
   {
       
      
      public function §4"@§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param3);
         }
         do
         {
            this.§#"B§(param1,param2);
         }
         while(_loc4_ && param3);
         
      }
      
      protected function §#"B§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§3!o§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§2!J§ = null;
         var _loc3_:Dictionary = this.§]!0§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!(_loc19_ && this))
            {
               _loc6_ = §§pop();
               if(_loc20_ || param2)
               {
                  addr119:
                  _loc7_ = _loc5_.@file;
                  loop17:
                  while(true)
                  {
                     addr108:
                     loop2:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        while(true)
                        {
                           _loc8_ = §§pop();
                           while(true)
                           {
                              §§push(int(parseInt(_loc5_.@y)));
                              if(_loc19_)
                              {
                                 break;
                              }
                              _loc9_ = §§pop();
                              if(_loc20_)
                              {
                                 addr99:
                                 if(!(_loc19_ && this))
                                 {
                                    break loop2;
                                 }
                                 continue loop17;
                              }
                           }
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr108);
                  §§goto(addr99);
               }
               if((_loc10_ = _loc3_[this.§5!<§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc20_)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(!(_loc19_ && param1))
                     {
                        _loc11_ = §§pop();
                        if(!_loc19_)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           loop5:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 if(_loc20_)
                                 {
                                    _loc13_ = §§pop();
                                    if(_loc20_)
                                    {
                                       if(_loc19_ && param2)
                                       {
                                          continue;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc5_.@pivotY)));
                                          loop8:
                                          while(true)
                                          {
                                             if(!_loc19_)
                                             {
                                                _loc14_ = §§pop();
                                                if(_loc20_ || _loc3_)
                                                {
                                                   addr217:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(_loc20_ || param2)
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               if(!_loc19_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc19_ && this))
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc19_ && _loc3_))
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc12_);
                                                                           }
                                                                           continue loop7;
                                                                           break loop6;
                                                                        }
                                                                        break loop8;
                                                                     }
                                                                  }
                                                               }
                                                               addr247:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr260:
                                                                     break loop8;
                                                                  }
                                                                  _loc10_ = new §3!o§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                  addr260:
                                                                  if(_loc10_)
                                                                  {
                                                                     break loop8;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr247);
                                                         §§push(§§pop() > §§pop());
                                                      }
                                                      break loop6;
                                                   }
                                                   addr217:
                                                }
                                                break;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                    (_loc16_ = new §2!J§()).mName = _loc6_;
                                    if(_loc20_)
                                    {
                                       _loc16_.§-"Y§ = _loc15_;
                                       loop10:
                                       while(true)
                                       {
                                          _loc16_.§5'§ = _loc10_.pivotX;
                                          loop11:
                                          while(true)
                                          {
                                             _loc16_.§>K§ = _loc10_.pivotY;
                                             loop12:
                                             for(; !_loc19_; while(true)
                                             {
                                                if(_loc20_ || this)
                                                {
                                                   continue loop11;
                                                }
                                                continue loop12;
                                             })
                                             {
                                                while(true)
                                                {
                                                   _loc16_.§^! § = § !k§;
                                                   continue loop12;
                                                }
                                             }
                                             continue loop10;
                                             if(_loc19_ && this)
                                             {
                                                continue;
                                             }
                                             §#E§(_loc16_);
                                             if(!(_loc19_ && this))
                                             {
                                                while(false)
                                                {
                                                   §§goto(addr301);
                                                }
                                                continue loop0;
                                                addr299:
                                             }
                                             §§goto(addr305);
                                          }
                                       }
                                    }
                                    §§goto(addr299);
                                 }
                                 break;
                              }
                              §§goto(addr246);
                           }
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr217);
               }
               §§goto(addr260);
            }
            §§goto(addr119);
         }
         if(_loc20_)
         {
            mName = param1.@file;
         }
      }
      
      private function §5!<§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(_loc4_ || _loc3_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §]!0§(param1:Vector.<XML>) : Dictionary
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
            if(!_loc20_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!_loc20_)
            {
               var _loc18_:int = 0;
               if(!_loc20_)
               {
                  loop1:
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc21_)
                     {
                        §§push(this.§5!<§(_loc4_,_loc6_.@name));
                        if(_loc21_ || param1)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        while(_loc2_[_loc7_] == null)
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
                                    addr180:
                                    while(!_loc20_)
                                    {
                                       _loc9_ = §§pop();
                                       while(!_loc20_)
                                       {
                                          §§push(int(parseInt(_loc6_.@pivotX)));
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             addr161:
                                             while(!_loc20_)
                                             {
                                             }
                                             continue loop3;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        continue;
                        addr213:
                     }
                     while(true)
                     {
                        §§push(int(parseInt(_loc6_.@pivotY)));
                        loop11:
                        while(true)
                        {
                           _loc11_ = §§pop();
                           addr151:
                           while(!_loc20_)
                           {
                              do
                              {
                                 §§push(int(parseInt(_loc6_.@x)));
                                 continue loop11;
                              }
                              while(false);
                              
                              if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                              {
                                 if(_loc21_)
                                 {
                                    _loc15_ = _loc14_[0];
                                    if(_loc21_ || param1)
                                    {
                                       addr313:
                                       _loc8_ = int(parseInt(_loc15_.@width));
                                       addr314:
                                       §§push(int(parseInt(_loc15_.@height)));
                                       if(_loc21_ || _loc2_)
                                       {
                                          _loc9_ = §§pop();
                                          addr269:
                                          addr307:
                                          §§push(int(parseInt(_loc15_.@x) - _loc12_));
                                          if(_loc21_ || _loc3_)
                                          {
                                             _loc12_ = §§pop();
                                             addr285:
                                             if(!(_loc20_ && this))
                                             {
                                                §§push(parseInt(_loc15_.@y) - _loc13_);
                                                if(!_loc20_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!_loc20_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(_loc20_ && _loc3_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(!(_loc20_ && this))
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr269);
                                                            }
                                                            addr339:
                                                            _loc2_[_loc7_] = new §3!o§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                            continue loop1;
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                }
                                                §§goto(addr269);
                                                addr292:
                                             }
                                             §§goto(addr307);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr313);
                                    }
                                    §§goto(addr292);
                                 }
                                 else
                                 {
                                    addr338:
                                    _loc13_ = 0;
                                    addr337:
                                 }
                                 §§goto(addr339);
                              }
                              else
                              {
                                 §§push(0);
                                 if(_loc21_)
                                 {
                                    _loc12_ = §§pop();
                                    if(!(_loc20_ && param1))
                                    {
                                       §§goto(addr337);
                                    }
                                    §§goto(addr339);
                                 }
                              }
                              §§goto(addr338);
                           }
                           §§goto(addr161);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

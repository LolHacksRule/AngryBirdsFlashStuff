package §>i§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §5"7§ extends §]y§
   {
       
      
      public function §5"7§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param3);
            do
            {
               this.§1P§(param1,param2);
            }
            while(!_loc5_);
            
         }
      }
      
      protected function §1P§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§]!r§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§^J§ = null;
         var _loc3_:Dictionary = this.§51§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc19_ || param2)
            {
               _loc6_ = §§pop();
               if(!_loc20_)
               {
                  addr113:
                  _loc7_ = _loc5_.@file;
                  while(true)
                  {
                     addr102:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr108:
                        while(true)
                        {
                           _loc8_ = §§pop();
                        }
                     }
                  }
                  addr114:
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(_loc19_)
                  {
                     _loc9_ = §§pop();
                     if(_loc20_ && param1)
                     {
                        continue;
                     }
                     if(_loc19_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr114);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr108);
               }
               if((_loc10_ = _loc3_[this.§4!D§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc19_ || _loc3_)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc19_)
                     {
                        _loc11_ = §§pop();
                        if(_loc19_)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           loop2:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              if(_loc19_)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 loop3:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc5_.@pivotY)));
                                          loop6:
                                          while(true)
                                          {
                                             _loc14_ = §§pop();
                                             if(_loc19_ || param2)
                                             {
                                                if(_loc20_ && _loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(!(_loc20_ && param1))
                                                   {
                                                      if(_loc20_ && _loc3_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc19_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!_loc19_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(_loc20_)
                                                         {
                                                            addr249:
                                                            break;
                                                            addr236:
                                                         }
                                                         §§push(§§pop() > §§pop());
                                                         if(!(_loc20_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc20_)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     break loop14;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               break loop2;
                                                            }
                                                            break loop6;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            break loop6;
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr236);
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                   break;
                                                }
                                                §§goto(addr235);
                                                §§push(0);
                                             }
                                             break;
                                          }
                                          addr251:
                                          _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                          (_loc16_ = new §^J§()).mName = _loc6_;
                                          if(_loc19_)
                                          {
                                             _loc16_.§3!%§ = _loc15_;
                                             while(true)
                                             {
                                                _loc16_.§4!^§ = _loc10_.pivotX;
                                                loop8:
                                                for(; _loc19_ || _loc3_; loop10:
                                                while(_loc19_)
                                                {
                                                   do
                                                   {
                                                      _loc16_.§-"'§ = §#R§;
                                                      do
                                                      {
                                                         §+"=§(_loc16_);
                                                      }
                                                      while(_loc20_);
                                                      
                                                      if(_loc19_ || _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop10;
                                                   }
                                                   while(false);
                                                   
                                                   continue loop0;
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      _loc16_.§'?§ = _loc10_.pivotY;
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr327);
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           _loc10_ = new §]!r§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                           §§goto(addr249);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr215);
               }
               §§goto(addr249);
            }
            §§goto(addr113);
         }
         if(_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §4!D§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(!_loc3_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §51§(param1:Vector.<XML>) : Dictionary
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
            if(_loc20_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!_loc21_)
            {
               var _loc18_:int = 0;
               if(!_loc21_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!_loc21_)
                     {
                        §§push(this.§4!D§(_loc4_,_loc6_.@name));
                        if(_loc20_ || param1)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        for(; _loc2_[_loc7_] == null; while(!(_loc21_ && _loc3_))
                        {
                        })
                        {
                           while(true)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              addr209:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 continue loop2;
                              }
                              addr129:
                              if(_loc21_ && _loc2_)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(int(parseInt(_loc6_.@x)));
                                    loop14:
                                    while(!_loc21_)
                                    {
                                       _loc12_ = §§pop();
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc6_.@y)));
                                          if(!(_loc20_ || _loc2_))
                                          {
                                             continue loop14;
                                          }
                                          if(_loc20_)
                                          {
                                             addr110:
                                             if(_loc20_ || this)
                                             {
                                                if(!_loc20_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             addr196:
                                             while(true)
                                             {
                                                _loc9_ = §§pop();
                                                addr197:
                                                while(true)
                                                {
                                                   §§push(int(parseInt(_loc6_.@pivotX)));
                                                   break loop14;
                                                }
                                                §§goto(addr110);
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc11_ = §§pop();
                                             break loop13;
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       addr172:
                                       while(_loc20_ || this)
                                       {
                                          §§goto(addr154);
                                          §§push(int(parseInt(_loc6_.@pivotY)));
                                       }
                                       §§goto(addr197);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!(_loc21_ && _loc2_))
                                    {
                                       if(!_loc20_)
                                       {
                                          break;
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr172);
                                 }
                                 addr138:
                                 continue loop2;
                              }
                              if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                              {
                                 if(_loc20_ || _loc3_)
                                 {
                                    _loc15_ = _loc14_[0];
                                    if(!(_loc20_ || this))
                                    {
                                       break loop2;
                                    }
                                    addr337:
                                    _loc8_ = int(parseInt(_loc15_.@width));
                                    addr323:
                                    _loc9_ = int(parseInt(_loc15_.@height));
                                    if(!(_loc21_ && _loc2_))
                                    {
                                       addr313:
                                       _loc12_ = int(parseInt(_loc15_.@x) - _loc12_);
                                       addr305:
                                       addr312:
                                       if(!_loc21_)
                                       {
                                          §§push(parseInt(_loc15_.@y) - _loc13_);
                                          if(!_loc21_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc20_ || _loc3_)
                                             {
                                                if(!(_loc21_ && this))
                                                {
                                                   if(!_loc21_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(_loc21_ && _loc2_)
                                                      {
                                                         break loop2;
                                                      }
                                                      if(!(_loc21_ && _loc3_))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr305);
                                                         }
                                                         addr363:
                                                         _loc2_[_loc7_] = new §]!r§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                         break loop2;
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr313);
                                          }
                                          §§goto(addr312);
                                       }
                                       §§goto(addr337);
                                    }
                                    addr338:
                                    §§goto(addr338);
                                 }
                              }
                              else
                              {
                                 §§push(0);
                                 if(!_loc21_)
                                 {
                                    _loc12_ = §§pop();
                                    if(!(_loc21_ && _loc2_))
                                    {
                                       §§push(0);
                                    }
                                    §§goto(addr363);
                                 }
                                 _loc13_ = §§pop();
                              }
                              §§goto(addr363);
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr196);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

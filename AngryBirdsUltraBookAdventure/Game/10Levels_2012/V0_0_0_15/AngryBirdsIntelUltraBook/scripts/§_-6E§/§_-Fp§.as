package §_-6E§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-Fp§ extends §_-UU§
   {
       
      
      public function §_-Fp§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param3);
         }
         do
         {
            this.§_-EP§(param1,param2);
         }
         while(_loc4_);
         
      }
      
      protected function §_-EP§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§_-0U§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§_-0j§ = null;
         var _loc3_:Dictionary = this.§_-fW§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!_loc19_)
            {
               _loc6_ = §§pop();
               if(!(_loc19_ && param1))
               {
                  addr119:
                  _loc7_ = _loc5_.@file;
                  while(true)
                  {
                     addr108:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr114:
                        while(true)
                        {
                           _loc8_ = §§pop();
                        }
                     }
                  }
                  addr120:
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(_loc20_ || param1)
                  {
                     _loc9_ = §§pop();
                     if(_loc19_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc19_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr120);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr114);
               }
               if((_loc10_ = _loc3_[this.§_-0l§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc20_)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc20_ || param1)
                     {
                        _loc11_ = §§pop();
                        if(!_loc19_)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           loop8:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 loop10:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    loop11:
                                    while(!_loc19_)
                                    {
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc5_.@pivotY)));
                                          if(!(_loc19_ && _loc3_))
                                          {
                                             if(_loc19_)
                                             {
                                                continue loop10;
                                             }
                                             if(!_loc20_)
                                             {
                                                continue loop8;
                                             }
                                             _loc14_ = §§pop();
                                             if(_loc20_)
                                             {
                                                §§push(_loc11_);
                                                if(_loc20_ || this)
                                                {
                                                   §§push(0);
                                                   if(_loc20_)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(!_loc19_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  if(!_loc19_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§push(_loc12_);
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               addr235:
                                                               _loc10_ = new §_-0U§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                               if(_loc10_)
                                                               {
                                                                  addr247:
                                                                  _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                  (_loc16_ = new §_-0j§()).mName = _loc6_;
                                                                  if(_loc20_)
                                                                  {
                                                                     _loc16_.§_-vb§ = _loc15_;
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        _loc16_.§_-7r§ = _loc10_.pivotX;
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           _loc16_.§_-yG§ = _loc10_.pivotY;
                                                                           loop4:
                                                                           while(!_loc19_)
                                                                           {
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 _loc16_.§_-7B§ = §_-e1§;
                                                                                 while(_loc20_)
                                                                                 {
                                                                                    §_-Iw§(_loc16_);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       break loop5;
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(false)
                                                                  {
                                                                     §§goto(addr283);
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      addr232:
                                                      if(§§pop())
                                                      {
                                                         if(_loc20_)
                                                         {
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   addr231:
                                                   §§goto(addr232);
                                                   §§push(§§pop() > §§pop());
                                                }
                                                break;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr231);
                                       §§push(0);
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                           addr149:
                        }
                        §§goto(addr247);
                     }
                     §§goto(addr230);
                  }
                  §§goto(addr149);
               }
               §§goto(addr235);
            }
            §§goto(addr119);
         }
         if(!(_loc19_ && this))
         {
            mName = param1.@file;
         }
      }
      
      private function §_-0l§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(_loc4_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §_-fW§(param1:Vector.<XML>) : Dictionary
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
            if(!(_loc21_ && _loc2_))
            {
               var _loc18_:int = 0;
               if(_loc20_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc20_ || this)
                     {
                        §§push(this.§_-0l§(_loc4_,_loc6_.@name));
                        if(_loc20_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        for(; _loc2_[_loc7_] == null; if(!(_loc20_ || _loc3_))
                        {
                           continue;
                        },§§push(int(parseInt(_loc6_.@y))),if(_loc20_)
                        {
                           if(!_loc21_)
                           {
                              if(_loc20_)
                              {
                                 _loc13_ = §§pop();
                                 if(!_loc21_)
                                 {
                                    if(!_loc21_)
                                    {
                                       if(_loc20_)
                                       {
                                          while(false)
                                          {
                                             §§goto(addr126);
                                          }
                                          if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                          {
                                             if(_loc20_ || _loc2_)
                                             {
                                                _loc15_ = _loc14_[0];
                                                if(!(_loc21_ && _loc2_))
                                                {
                                                   §§push(int(parseInt(_loc15_.@width)));
                                                   loop16:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      addr318:
                                                      while(true)
                                                      {
                                                         §§push(int(parseInt(_loc15_.@height)));
                                                         addr310:
                                                         while(true)
                                                         {
                                                            _loc9_ = §§pop();
                                                            addr311:
                                                            while(true)
                                                            {
                                                               addr276:
                                                               while(true)
                                                               {
                                                                  §§push(parseInt(_loc15_.@x) - _loc12_);
                                                                  addr283:
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr303);
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(!(_loc21_ && param1))
                                             {
                                                _loc12_ = §§pop();
                                                if(_loc20_ || this)
                                                {
                                                   §§push(0);
                                                }
                                                §§goto(addr348);
                                             }
                                             _loc13_ = §§pop();
                                          }
                                          §§goto(addr348);
                                          addr124:
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr180);
                        },§§goto(addr132))
                        {
                           while(true)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 addr212:
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
                                          addr188:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             addr189:
                                             loop9:
                                             while(_loc20_)
                                             {
                                                §§push(int(parseInt(_loc6_.@pivotY)));
                                                while(true)
                                                {
                                                   _loc11_ = §§pop();
                                                   addr181:
                                                   while(true)
                                                   {
                                                      addr126:
                                                      while(true)
                                                      {
                                                         §§push(int(parseInt(_loc6_.@x)));
                                                         continue loop6;
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                              if(_loc20_ || param1)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr124);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

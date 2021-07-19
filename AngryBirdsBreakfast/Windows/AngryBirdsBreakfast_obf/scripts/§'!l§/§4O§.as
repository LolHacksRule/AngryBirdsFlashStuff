package §'!l§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §4O§ extends §9!#§
   {
       
      
      public function §4O§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param3);
            do
            {
               this.§8!0§(param1,param2);
            }
            while(_loc5_);
            
         }
      }
      
      protected function §8!0§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§;!g§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§5K§ = null;
         var _loc3_:Dictionary = this.§;"%§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc19_)
            {
               _loc6_ = §§pop();
               if(_loc19_)
               {
                  addr108:
                  _loc7_ = _loc5_.@file;
                  while(true)
                  {
                     addr97:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr103:
                        while(true)
                        {
                           _loc8_ = §§pop();
                        }
                     }
                  }
                  addr109:
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(_loc19_)
                  {
                     _loc9_ = §§pop();
                     if(!_loc19_)
                     {
                        continue;
                     }
                     if(_loc19_ || param1)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr103);
               }
               if((_loc10_ = _loc3_[this.§8R§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc19_)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc19_)
                     {
                        _loc11_ = §§pop();
                        if(_loc19_ || _loc3_)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           if(!_loc20_)
                           {
                              _loc12_ = §§pop();
                              loop13:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 loop9:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc5_.@pivotY)));
                                          addr205:
                                          addr212:
                                          while(_loc20_ && _loc3_)
                                          {
                                             continue loop9;
                                          }
                                          while(true)
                                          {
                                             _loc14_ = §§pop();
                                             if(!(_loc20_ && this))
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc19_)
                                                   {
                                                      if(_loc19_ || this)
                                                      {
                                                         §§push(0);
                                                         if(_loc19_ || param2)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc19_ || _loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc19_)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc20_ && this))
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           if(_loc19_ || param2)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                              }
                                                                              continue loop8;
                                                                              break;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     addr256:
                                                                     _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                     (_loc16_ = new §5K§()).name = _loc6_;
                                                                     if(!_loc20_)
                                                                     {
                                                                        _loc16_.rect = _loc15_;
                                                                        while(true)
                                                                        {
                                                                           _loc16_.pivotX = _loc10_.pivotX;
                                                                        }
                                                                        addr321:
                                                                     }
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        _loc16_.pivotY = _loc10_.pivotY;
                                                                        loop4:
                                                                        while(!_loc20_)
                                                                        {
                                                                           do
                                                                           {
                                                                              _loc16_.§'! § = §3!=§;
                                                                              while(_loc19_ || param1)
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §?!t§(_loc16_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           while(false);
                                                                           
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr241:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  _loc10_ = new §;!g§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                  addr254:
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         addr240:
                                                         §§goto(addr241);
                                                         §§push(§§pop() > §§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr205);
                                                      }
                                                   }
                                                   break;
                                                }
                                                addr239:
                                                §§goto(addr240);
                                                §§push(0);
                                                addr220:
                                             }
                                             §§goto(addr256);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr237:
                           }
                           §§goto(addr239);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr237);
               }
               §§goto(addr254);
            }
            §§goto(addr108);
         }
         if(_loc19_ || _loc3_)
         {
            mName = param1.@file;
         }
      }
      
      private function §8R§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(_loc4_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §;"%§(param1:Vector.<XML>) : Dictionary
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
            if(_loc20_ || _loc3_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc20_ || param1)
            {
               var _loc18_:int = 0;
               if(!_loc21_)
               {
                  loop1:
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc20_)
                     {
                        §§push(this.§8R§(_loc4_,_loc6_.@name));
                        if(!_loc21_)
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
                              addr216:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(int(parseInt(_loc6_.@height)));
                                    addr191:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       addr192:
                                       while(_loc20_)
                                       {
                                          §§push(int(parseInt(_loc6_.@pivotX)));
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             continue loop3;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        loop13:
                        do
                        {
                           §§push(int(parseInt(_loc6_.@x)));
                           loop14:
                           while(_loc20_)
                           {
                              _loc12_ = §§pop();
                              for(; _loc20_; _loc13_ = §§pop(),if(!(_loc20_ || _loc2_))
                              {
                                 continue;
                              },if(_loc20_ || _loc3_)
                              {
                                 continue loop13;
                              },§§goto(addr192))
                              {
                                 §§push(int(parseInt(_loc6_.@y)));
                                 if(!(_loc20_ || _loc2_))
                                 {
                                    continue loop14;
                                 }
                                 if(!_loc21_)
                                 {
                                    if(!_loc21_)
                                    {
                                       if(_loc20_ || this)
                                       {
                                          continue;
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr191);
                        }
                        while(false);
                        
                        if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                        {
                           if(!_loc21_)
                           {
                              _loc15_ = _loc14_[0];
                              if(_loc20_)
                              {
                                 §§push(int(parseInt(_loc15_.@width)));
                                 loop16:
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
                                          addr284:
                                          if(_loc21_ && this)
                                          {
                                             continue;
                                          }
                                          _loc11_ = §§pop();
                                          if(!(_loc20_ || _loc3_))
                                          {
                                             continue loop1;
                                          }
                                          if(!_loc21_)
                                          {
                                             if(false)
                                             {
                                                loop25:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§push(_loc12_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr309:
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(!(_loc21_ && this))
                                                            {
                                                               if(_loc20_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     if(!_loc21_)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(_loc20_)
                                                                        {
                                                                           §§push(_loc11_);
                                                                           if(_loc21_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr333:
                                                                     while(true)
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        addr334:
                                                                        while(_loc20_)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                                  addr280:
                                                                  if(!_loc20_)
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  if(!_loc21_)
                                                                  {
                                                                     §§goto(addr284);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        if(!_loc20_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        if(!(_loc20_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(parseInt(_loc15_.@y) - _loc13_);
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr333);
                                                                           continue loop28;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(parseInt(_loc15_.@x) - _loc12_);
                                                                        break loop28;
                                                                     }
                                                                     addr345:
                                                                     addr363:
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr345);
                                                         }
                                                         §§push(_loc13_);
                                                         if(_loc21_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc21_ && _loc3_)
                                                         {
                                                            §§goto(addr309);
                                                         }
                                                         §§goto(addr280);
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   continue loop18;
                                                }
                                             }
                                             addr390:
                                             _loc2_[_loc7_] = new §;!g§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                             continue loop1;
                                          }
                                          §§goto(addr334);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr363);
                           }
                        }
                        else
                        {
                           §§push(0);
                           if(_loc20_ || _loc2_)
                           {
                              _loc12_ = §§pop();
                              if(!(_loc21_ && this))
                              {
                                 §§push(0);
                              }
                              §§goto(addr390);
                           }
                           _loc13_ = §§pop();
                        }
                        §§goto(addr390);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

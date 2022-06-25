package §0!M§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §%!C§ extends §=!=§
   {
       
      
      public function §%!C§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param3);
         }
         do
         {
            this.§<0§(param1,param2);
         }
         while(!_loc4_);
         
      }
      
      protected function §<0§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§7!8§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§,'§ = null;
         var _loc3_:Dictionary = this.§<!c§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc19_)
            {
               _loc6_ = §§pop();
               if(!(_loc20_ && _loc3_))
               {
                  addr118:
                  _loc7_ = _loc5_.@file;
                  loop16:
                  while(true)
                  {
                     addr100:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        loop3:
                        while(true)
                        {
                           _loc8_ = §§pop();
                           while(true)
                           {
                              if(!(_loc19_ || param2))
                              {
                                 continue loop16;
                              }
                              §§push(int(parseInt(_loc5_.@y)));
                              if(!(_loc19_ || param2))
                              {
                                 continue loop3;
                              }
                              _loc9_ = §§pop();
                              if(!_loc19_)
                              {
                                 continue;
                              }
                           }
                           continue loop16;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr100);
               }
               if((_loc10_ = _loc3_[this.§18§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc19_ || param2)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc19_)
                     {
                        _loc11_ = §§pop();
                        if(!_loc20_)
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
                                 loop7:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    addr248:
                                    while(_loc19_ || param2)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc5_.@pivotY)));
                                          if(!(_loc20_ && _loc3_))
                                          {
                                             if(!_loc19_)
                                             {
                                                continue loop7;
                                             }
                                             _loc14_ = §§pop();
                                             if(_loc19_ || param1)
                                             {
                                                addr240:
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc20_ && param2)
                                                   {
                                                      break loop9;
                                                   }
                                                   continue loop5;
                                                }
                                                addr240:
                                             }
                                             _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                             (_loc16_ = new §,'§()).mName = _loc6_;
                                             if(!(_loc20_ && param2))
                                             {
                                                _loc16_.§;!a§ = _loc15_;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                _loc16_.§&5§ = _loc10_.pivotX;
                                                while(true)
                                                {
                                                   _loc16_.§1!O§ = _loc10_.pivotY;
                                                   loop12:
                                                   while(true)
                                                   {
                                                      addr339:
                                                      while(true)
                                                      {
                                                         _loc16_.§?![§ = §'!N§;
                                                         while(!_loc20_)
                                                         {
                                                            §5!w§(_loc16_);
                                                            if(!(_loc20_ && param1))
                                                            {
                                                               continue loop12;
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr266);
                  }
                  §§goto(addr240);
               }
               §§goto(addr284);
            }
            §§goto(addr118);
         }
         if(!(_loc20_ && param1))
         {
            mName = param1.@file;
         }
      }
      
      private function §18§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(!(_loc4_ && _loc3_))
         {
            return §§pop() + param2;
         }
      }
      
      private function §<!c§(param1:Vector.<XML>) : Dictionary
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
            if(_loc21_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc21_ || this)
            {
               var _loc18_:int = 0;
               if(!(_loc20_ && this))
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!_loc20_)
                     {
                        §§push(this.§18§(_loc4_,_loc6_.@name));
                        if(_loc21_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        for(; _loc2_[_loc7_] == null; while(!(_loc20_ && param1))
                        {
                        })
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
                                    while(!(_loc20_ && _loc3_))
                                    {
                                       _loc9_ = §§pop();
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc6_.@pivotX)));
                                          addr187:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             continue loop2;
                                          }
                                          loop15:
                                          while(_loc21_ || _loc3_)
                                          {
                                             continue loop3;
                                             _loc13_ = §§pop();
                                             if(_loc21_ || _loc3_)
                                             {
                                                if(!_loc20_)
                                                {
                                                   if(!_loc21_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(false)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(int(parseInt(_loc6_.@x)));
                                                         addr141:
                                                         while(true)
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc12_ = §§pop();
                                                               continue loop15;
                                                            }
                                                            addr167:
                                                            while(true)
                                                            {
                                                               _loc11_ = §§pop();
                                                               break loop13;
                                                            }
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      addr135:
                                                   }
                                                   else
                                                   {
                                                      if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                      {
                                                         if(!(_loc20_ && param1))
                                                         {
                                                            _loc15_ = _loc14_[0];
                                                            if(!_loc21_)
                                                            {
                                                               break loop2;
                                                            }
                                                            addr333:
                                                            _loc8_ = int(parseInt(_loc15_.@width));
                                                            addr334:
                                                            §§push(int(parseInt(_loc15_.@height)));
                                                            if(!(_loc20_ && this))
                                                            {
                                                               _loc9_ = §§pop();
                                                               addr287:
                                                               addr327:
                                                               §§push(int(parseInt(_loc15_.@x) - _loc12_));
                                                               if(!(_loc20_ && this))
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  if(_loc20_)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     §§push(parseInt(_loc15_.@y) - _loc13_);
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(_loc21_ || param1)
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           if(_loc20_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           if(!_loc20_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr287);
                                                                              }
                                                                              addr364:
                                                                              _loc2_[_loc7_] = new §7!8§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                              break loop2;
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                         if(_loc21_ || _loc2_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(!(_loc20_ && this))
                                                            {
                                                               §§push(0);
                                                            }
                                                            §§goto(addr364);
                                                         }
                                                         _loc13_ = §§pop();
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                }
                                                while(!_loc20_)
                                                {
                                                   §§goto(addr135);
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                       if(!(_loc21_ || this))
                                       {
                                          continue;
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr167);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

package §<8§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §!!o§ extends §,j§
   {
       
      
      public function §!!o§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param3);
         }
         do
         {
            this.§,7§(param1,param2);
         }
         while(!_loc5_);
         
      }
      
      protected function §,7§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§5J§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§!3§ = null;
         var _loc3_:Dictionary = this.§?b§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!(_loc19_ && param2))
            {
               _loc6_ = §§pop();
               if(!_loc19_)
               {
                  addr109:
                  _loc7_ = _loc5_.@file;
               }
               while(true)
               {
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
                           if(!_loc20_)
                           {
                              break;
                           }
                           _loc9_ = §§pop();
                           if(!_loc20_)
                           {
                              continue;
                           }
                           if(_loc19_)
                           {
                              break loop2;
                           }
                           if(false)
                           {
                              continue loop2;
                           }
                           if((_loc10_ = _loc3_[this.§'!l§(_loc7_,_loc6_)]) == null)
                           {
                              if(!_loc19_)
                              {
                                 §§push(int(parseInt(_loc5_.@width)));
                                 if(!_loc19_)
                                 {
                                    _loc11_ = §§pop();
                                    if(!_loc19_)
                                    {
                                       addr222:
                                       _loc12_ = parseInt(_loc5_.@height);
                                       addr213:
                                       _loc13_ = parseInt(_loc5_.@pivotX);
                                       addr223:
                                       if(_loc20_)
                                       {
                                          addr185:
                                          §§push(int(parseInt(_loc5_.@pivotY)));
                                          if(_loc20_ || param2)
                                          {
                                             if(_loc20_ || param1)
                                             {
                                                _loc14_ = §§pop();
                                                addr206:
                                                §§push(_loc11_);
                                                if(_loc20_)
                                                {
                                                   if(!(_loc19_ && _loc3_))
                                                   {
                                                      §§push(0);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc20_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc20_ || param2)
                                                               {
                                                                  §§pop();
                                                                  if(_loc20_ || _loc3_)
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        if(_loc20_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr185);
                                                                           }
                                                                           addr227:
                                                                           if(_loc12_ > 0)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr230:
                                                                                 _loc10_ = new §5J§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                                 addr240:
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                              (_loc16_ = new §!3§()).mName = _loc6_;
                                                                              if(_loc20_)
                                                                              {
                                                                                 _loc16_.§?!-§ = _loc15_;
                                                                                 _loc16_.§1!3§ = _loc10_.pivotX;
                                                                                 addr322:
                                                                              }
                                                                              _loc16_.§;V§ = _loc10_.pivotY;
                                                                              addr318:
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 addr276:
                                                                                 _loc16_.§"-§ = §1!w§;
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    if(!(_loc19_ && _loc3_))
                                                                                    {
                                                                                       §"n§(_loc16_);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§goto(addr240);
                                                                        }
                                                                        §§goto(addr223);
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr227);
                                          addr216:
                                       }
                                       §§goto(addr230);
                                       addr134:
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr230);
                        }
                     }
                  }
               }
            }
            §§goto(addr109);
         }
         if(_loc20_)
         {
            mName = param1.@file;
         }
      }
      
      private function §'!l§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(!(_loc4_ && param1))
         {
            return §§pop() + param2;
         }
      }
      
      private function §?b§(param1:Vector.<XML>) : Dictionary
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
            if(_loc21_)
            {
               var _loc18_:int = 0;
               if(!_loc20_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc21_ || param1)
                     {
                        §§push(this.§'!l§(_loc4_,_loc6_.@name));
                        if(!(_loc20_ && param1))
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
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
                                    loop6:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       loop7:
                                       while(!_loc20_)
                                       {
                                          if(_loc20_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(int(parseInt(_loc6_.@pivotX)));
                                          loop8:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(int(parseInt(_loc6_.@pivotY)));
                                                loop10:
                                                while(!_loc20_)
                                                {
                                                   _loc11_ = §§pop();
                                                   while(_loc21_ || this)
                                                   {
                                                      while(_loc21_ || param1)
                                                      {
                                                         if(!(_loc20_ && _loc3_))
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               §§push(int(parseInt(_loc6_.@y)));
                                                               if(!_loc20_)
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        if(!(_loc21_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr121:
                                                                        if(false)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(int(parseInt(_loc6_.@x)));
                                                                              continue loop8;
                                                                              §§goto(addr121);
                                                                           }
                                                                           addr229:
                                                                           if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                                           {
                                                                              if(!(_loc20_ && param1))
                                                                              {
                                                                                 _loc15_ = _loc14_[0];
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(int(parseInt(_loc15_.@width)));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       loop18:
                                                                                       for(; !(_loc20_ && _loc3_); while(_loc21_ || this)
                                                                                       {
                                                                                          _loc12_ = §§pop();
                                                                                          if(!(_loc21_ || param1))
                                                                                          {
                                                                                             break loop2;
                                                                                          }
                                                                                          §§push(parseInt(_loc15_.@y) - _loc13_);
                                                                                          if(_loc21_ || _loc3_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             _loc13_ = §§pop();
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             §§goto(addr273);
                                                                                          }
                                                                                          §§goto(addr289);
                                                                                       })
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          if(!(_loc21_ || param1))
                                                                                          {
                                                                                             break loop2;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(parseInt(_loc15_.@x) - _loc12_);
                                                                                             addr289:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                continue loop18;
                                                                                             }
                                                                                             addr273:
                                                                                             if(!(_loc21_ || param1))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(true)
                                                                                             {
                                                                                                _loc2_[_loc7_] = new §5J§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                                                break loop2;
                                                                                             }
                                                                                             addr359:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr358:
                                                                                 _loc13_ = 0;
                                                                                 addr357:
                                                                              }
                                                                              §§goto(addr359);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr336:
                                                                              §§push(0);
                                                                              if(_loc21_ || this)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 §§goto(addr359);
                                                                              }
                                                                           }
                                                                           §§goto(addr358);
                                                                           addr123:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr229);
                                                                        }
                                                                        §§goto(addr336);
                                                                        continue;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop6;
                                             }
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
                        §§goto(addr123);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

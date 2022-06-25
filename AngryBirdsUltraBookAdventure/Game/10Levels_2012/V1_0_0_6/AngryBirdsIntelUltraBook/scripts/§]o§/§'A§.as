package §]o§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'A§ extends §%!p§
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
               this.§!!E§(param1,param2);
            }
            while(_loc4_ && this);
            
         }
      }
      
      protected function §!!E§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:§=!^§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§^!9§ = null;
         var _loc3_:Dictionary = this.§]!5§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc20_ || _loc3_)
            {
               _loc6_ = §§pop();
               if(_loc20_)
               {
                  addr119:
                  _loc7_ = _loc5_.@file;
               }
               loop1:
               while(true)
               {
                  addr101:
                  addr121:
                  while(true)
                  {
                     §§push(int(parseInt(_loc5_.@x)));
                     addr107:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        continue loop1;
                     }
                  }
                  if((_loc10_ = _loc3_[this.§'+§(_loc7_,_loc6_)]) == null)
                  {
                     if(_loc20_ || _loc3_)
                     {
                        §§push(int(parseInt(_loc5_.@width)));
                        if(!(_loc19_ && this))
                        {
                           _loc11_ = §§pop();
                           if(!(_loc19_ && param1))
                           {
                              addr237:
                              _loc12_ = parseInt(_loc5_.@height);
                              addr238:
                              §§push(int(parseInt(_loc5_.@pivotX)));
                              if(!_loc19_)
                              {
                                 _loc13_ = §§pop();
                                 addr196:
                                 addr231:
                                 §§push(int(parseInt(_loc5_.@pivotY)));
                                 if(!(_loc19_ && param1))
                                 {
                                    if(!_loc19_)
                                    {
                                       _loc14_ = §§pop();
                                       if(!(_loc19_ && this))
                                       {
                                          if(!_loc19_)
                                          {
                                             §§push(_loc11_);
                                             if(_loc20_ || param2)
                                             {
                                                addr179:
                                                §§push(0);
                                                if(_loc20_)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(!_loc19_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc19_)
                                                         {
                                                            §§pop();
                                                            if(!_loc19_)
                                                            {
                                                               if(_loc20_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr196);
                                                                  }
                                                                  addr242:
                                                                  if(_loc12_ > 0)
                                                                  {
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        addr250:
                                                                        _loc10_ = new §=!^§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                        addr260:
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr262:
                                                                        _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                        (_loc16_ = new §^!9§()).mName = _loc6_;
                                                                        if(_loc20_ || param1)
                                                                        {
                                                                           _loc16_.§]!1§ = _loc15_;
                                                                           _loc16_.§`Q§ = _loc10_.pivotX;
                                                                           _loc16_.§-Z§ = _loc10_.pivotY;
                                                                           addr305:
                                                                           _loc16_.§[3§ = §0g§;
                                                                           addr338:
                                                                           addr332:
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              §8!U§(_loc16_);
                                                                              if(_loc20_)
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr305);
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 §§goto(addr332);
                                                                              }
                                                                              §§goto(addr305);
                                                                              addr316:
                                                                           }
                                                                           addr342:
                                                                           §§goto(addr342);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr242);
                                             addr221:
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr250);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr250);
               }
            }
            §§goto(addr119);
         }
         if(!(_loc19_ && param2))
         {
            mName = param1.@file;
         }
      }
      
      private function §'+§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(!(_loc4_ && param2))
         {
            return §§pop() + param2;
         }
      }
      
      private function §]!5§(param1:Vector.<XML>) : Dictionary
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
            if(_loc21_ || this)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!(_loc20_ && param1))
            {
               var _loc18_:int = 0;
               if(_loc21_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!_loc20_)
                     {
                        §§push(this.§'+§(_loc4_,_loc6_.@name));
                        if(!(_loc20_ && _loc2_))
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        while(_loc2_[_loc7_] == null)
                        {
                           loop7:
                           while(_loc21_ || _loc3_)
                           {
                              §§push(int(parseInt(_loc6_.@pivotX)));
                              loop8:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 loop9:
                                 while(_loc21_ || param1)
                                 {
                                    §§push(int(parseInt(_loc6_.@pivotY)));
                                    loop10:
                                    while(true)
                                    {
                                       _loc11_ = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(int(parseInt(_loc6_.@x)));
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc21_)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      _loc12_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(!(_loc20_ && _loc3_))
                                                         {
                                                            if(_loc21_ || _loc3_)
                                                            {
                                                               if(!(_loc21_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(int(parseInt(_loc6_.@y)));
                                                               if(!_loc20_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop11;
                                                         addr128:
                                                         _loc13_ = §§pop();
                                                         if(!(_loc21_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc21_)
                                                         {
                                                            break loop12;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                         {
                                                            if(_loc21_ || _loc3_)
                                                            {
                                                               _loc15_ = _loc14_[0];
                                                               if(!(_loc20_ && _loc3_))
                                                               {
                                                                  addr348:
                                                                  _loc8_ = int(parseInt(_loc15_.@width));
                                                                  addr349:
                                                                  §§push(int(parseInt(_loc15_.@height)));
                                                                  if(_loc21_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc20_ && param1)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     addr307:
                                                                     §§push(int(parseInt(_loc15_.@x) - _loc12_));
                                                                     if(!_loc20_)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        addr318:
                                                                        if(!(_loc20_ && _loc2_))
                                                                        {
                                                                           §§push(parseInt(_loc15_.@y) - _loc13_);
                                                                           if(!(_loc20_ && param1))
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(!_loc20_)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 if(_loc20_ && this)
                                                                                 {
                                                                                    break loop2;
                                                                                 }
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr305:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr307);
                                                                                    }
                                                                                    _loc2_[_loc7_] = new §=!^§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                                    break loop2;
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                           }
                                                                           §§goto(addr307);
                                                                        }
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            if(_loc21_ || param1)
                                                            {
                                                               _loc12_ = §§pop();
                                                               if(!(_loc20_ && _loc2_))
                                                               {
                                                                  §§push(0);
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            _loc13_ = §§pop();
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(int(parseInt(_loc6_.@height)));
                                                         break loop13;
                                                      }
                                                      addr233:
                                                   }
                                                   break;
                                                }
                                                continue loop10;
                                             }
                                             while(true)
                                             {
                                                _loc9_ = §§pop();
                                                break loop9;
                                             }
                                          }
                                          addr227:
                                          while(true)
                                          {
                                             §§push(int(parseInt(_loc6_.@width)));
                                             addr232:
                                             while(true)
                                             {
                                                _loc8_ = §§pop();
                                                §§goto(addr233);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr227);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

package §8! §
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §&$§ extends §9q§
   {
       
      
      public function §&$§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param3);
         }
         do
         {
            this.§8!x§(param1,param2);
         }
         while(_loc5_);
         
      }
      
      protected function §8!x§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§2f§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§^"-§ = null;
         var _loc3_:Dictionary = this.§`!0§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc20_ || this)
            {
               _loc6_ = §§pop();
               if(!(_loc19_ && this))
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
                  if(!_loc19_)
                  {
                     _loc9_ = §§pop();
                     if(!(_loc20_ || this))
                     {
                        continue;
                     }
                     if(_loc20_)
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
               if((_loc10_ = _loc3_[this.§-q§(_loc7_,_loc6_)]) == null)
               {
                  if(!(_loc19_ && _loc3_))
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc20_)
                     {
                        _loc11_ = §§pop();
                        if(_loc20_ || _loc3_)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           while(true)
                           {
                              _loc12_ = §§pop();
                              addr253:
                              loop13:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 addr238:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    addr239:
                                    while(_loc19_ && this)
                                    {
                                       continue loop13;
                                    }
                                 }
                              }
                              addr159:
                              if(!(_loc20_ || this))
                              {
                                 continue;
                              }
                              §§push(0);
                              if(!(_loc19_ && _loc3_))
                              {
                                 §§push(§§pop() > §§pop());
                                 if(!(_loc19_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc20_ || this)
                                       {
                                          §§pop();
                                          if(!_loc19_)
                                          {
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   §§push(int(parseInt(_loc5_.@pivotY)));
                                                   if(_loc20_)
                                                   {
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         _loc14_ = §§pop();
                                                         if(_loc20_)
                                                         {
                                                            if(_loc20_ || _loc3_)
                                                            {
                                                               §§push(_loc11_);
                                                               if(_loc20_)
                                                               {
                                                                  §§goto(addr159);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr239);
                                                         }
                                                         addr272:
                                                         _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                         (_loc16_ = new §^"-§()).name = _loc6_;
                                                         if(_loc20_ || _loc3_)
                                                         {
                                                            _loc16_.rect = _loc15_;
                                                            loop6:
                                                            while(true)
                                                            {
                                                               _loc16_.pivotX = _loc10_.pivotX;
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  _loc16_.pivotY = _loc10_.pivotY;
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     addr316:
                                                                     while(true)
                                                                     {
                                                                        _loc16_.§>!!§ = §49§;
                                                                        addr320:
                                                                        while(!_loc19_)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §-"#§(_loc16_);
                                                            if(_loc20_ || param1)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   break;
                                                }
                                                addr255:
                                                if(§§pop() > 0)
                                                {
                                                   if(_loc20_)
                                                   {
                                                      addr260:
                                                      _loc10_ = new §2f§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                      addr270:
                                                      if(!_loc10_)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr270);
                                                addr206:
                                             }
                                             §§goto(addr255);
                                             §§push(_loc12_);
                                          }
                                          §§goto(addr260);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr255);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr206);
                           §§goto(addr239);
                        }
                     }
                     §§goto(addr238);
                  }
                  §§goto(addr253);
               }
               §§goto(addr260);
            }
            §§goto(addr119);
         }
         if(!_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §-q§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(_loc3_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §`!0§(param1:Vector.<XML>) : Dictionary
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
            if(!(_loc21_ && this))
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!(_loc21_ && this))
            {
               var _loc18_:int = 0;
               if(!_loc21_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!_loc21_)
                     {
                        §§push(this.§-q§(_loc4_,_loc6_.@name));
                        if(_loc20_ || _loc3_)
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
                                 while(_loc20_)
                                 {
                                    §§push(int(parseInt(_loc6_.@height)));
                                    while(!(_loc21_ && _loc3_))
                                    {
                                       _loc9_ = §§pop();
                                       if(_loc21_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       _loc13_ = §§pop();
                                       if(!_loc20_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc21_)
                                       {
                                          if(_loc20_)
                                          {
                                             if(!_loc20_)
                                             {
                                                continue loop5;
                                             }
                                             if(false)
                                             {
                                                addr162:
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(int(parseInt(_loc6_.@x)));
                                                   addr137:
                                                   loop13:
                                                   while(_loc20_ || this)
                                                   {
                                                      if(!_loc21_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         continue loop3;
                                                      }
                                                      addr176:
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         addr177:
                                                         while(true)
                                                         {
                                                            §§push(int(parseInt(_loc6_.@pivotY)));
                                                            break loop13;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc11_ = §§pop();
                                                      break loop12;
                                                      §§goto(addr137);
                                                   }
                                                }
                                                while(!(_loc21_ && param1))
                                                {
                                                   §§goto(addr131);
                                                }
                                                addr131:
                                                while(true)
                                                {
                                                   §§goto(addr176);
                                                   §§goto(addr162);
                                                }
                                                addr162:
                                                addr192:
                                             }
                                             else
                                             {
                                                if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                {
                                                   if(_loc20_ || param1)
                                                   {
                                                      _loc15_ = _loc14_[0];
                                                      if(_loc20_)
                                                      {
                                                         addr384:
                                                         _loc8_ = int(parseInt(_loc15_.@width));
                                                         addr377:
                                                         _loc9_ = int(parseInt(_loc15_.@height));
                                                         addr367:
                                                         _loc12_ = int(parseInt(_loc15_.@x) - _loc12_);
                                                         addr368:
                                                         addr378:
                                                         addr366:
                                                         if(!_loc21_)
                                                         {
                                                            addr347:
                                                            §§push(parseInt(_loc15_.@y) - _loc13_);
                                                            if(_loc20_)
                                                            {
                                                               addr350:
                                                               §§push(int(§§pop()));
                                                               if(!(_loc21_ && this))
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  addr310:
                                                                  addr358:
                                                                  §§push(_loc10_);
                                                                  if(_loc20_ || _loc2_)
                                                                  {
                                                                     if(_loc20_ || param1)
                                                                     {
                                                                        addr328:
                                                                        §§push(int(§§pop() - _loc12_));
                                                                        if(_loc20_)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           addr332:
                                                                           if(!(_loc21_ && _loc3_))
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 if(!(_loc21_ && param1))
                                                                                 {
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(!(_loc21_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr284:
                                                                                                _loc11_ = int(§§pop());
                                                                                                if(!(_loc20_ || _loc3_))
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                if(_loc20_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(_loc20_ || _loc3_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr310);
                                                                                                         }
                                                                                                         addr405:
                                                                                                         _loc2_[_loc7_] = new §2f§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      §§goto(addr368);
                                                                                                   }
                                                                                                   §§goto(addr358);
                                                                                                }
                                                                                                §§goto(addr332);
                                                                                             }
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr284);
                                                                              addr339:
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr377);
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§goto(addr366);
                                                         }
                                                         addr385:
                                                         §§goto(addr385);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!(_loc21_ && _loc2_))
                                                   {
                                                      _loc12_ = §§pop();
                                                      if(_loc20_ || this)
                                                      {
                                                         §§push(0);
                                                      }
                                                      §§goto(addr405);
                                                   }
                                                   _loc13_ = §§pop();
                                                }
                                                §§goto(addr405);
                                             }
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr162);
                                    }
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr192);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

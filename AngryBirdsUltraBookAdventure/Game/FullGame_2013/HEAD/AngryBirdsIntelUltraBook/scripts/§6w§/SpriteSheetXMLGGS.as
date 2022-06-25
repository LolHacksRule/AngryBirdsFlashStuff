package §6w§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class SpriteSheetXMLGGS extends SpriteSheetBase
   {
       
      
      public function SpriteSheetXMLGGS(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param3);
         }
         do
         {
            this.§5!Q§(param1,param2);
         }
         while(_loc5_);
         
      }
      
      protected function §5!Q§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§1_§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§<>§ = null;
         var _loc3_:Dictionary = this.§5!k§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            if(_loc20_)
            {
               §§push(_loc5_.@name);
               while(true)
               {
                  _loc6_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc5_.@file);
                     if(!_loc20_)
                     {
                        break;
                     }
                     _loc7_ = §§pop();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(int(parseInt(_loc5_.@x)));
                           loop5:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              while(_loc20_)
                              {
                                 if(!_loc19_)
                                 {
                                    §§push(int(parseInt(_loc5_.@y)));
                                    if(!(_loc19_ && param2))
                                    {
                                       _loc9_ = §§pop();
                                       if(!(_loc19_ && this))
                                       {
                                          if(true)
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        _loc10_ = _loc3_[this.§];§(_loc7_,_loc6_)];
                        if(_loc20_ || this)
                        {
                           if(_loc10_ == null)
                           {
                              if(_loc20_)
                              {
                                 addr259:
                                 _loc11_ = parseInt(_loc5_.@width);
                                 if(!(_loc19_ && this))
                                 {
                                    addr240:
                                    _loc12_ = parseInt(_loc5_.@height);
                                    if(_loc20_ || this)
                                    {
                                       addr225:
                                       §§push(int(parseInt(_loc5_.@pivotX)));
                                       if(_loc20_ || this)
                                       {
                                          _loc13_ = §§pop();
                                          addr210:
                                          _loc14_ = parseInt(_loc5_.@pivotY);
                                          addr204:
                                          addr233:
                                          if(_loc20_ || param1)
                                          {
                                             §§push(_loc11_);
                                             if(_loc20_)
                                             {
                                                if(_loc20_ || this)
                                                {
                                                   if(_loc20_)
                                                   {
                                                      if(_loc20_ || _loc3_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc19_ && param2))
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(!_loc19_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc20_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc19_ && param2))
                                                                     {
                                                                        addr182:
                                                                        §§pop();
                                                                        if(_loc20_ || param2)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr204);
                                                                              }
                                                                              addr270:
                                                                              §§push(_loc12_ > 0);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc20_ || _loc3_)
                                                                                 {
                                                                                    addr281:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          addr284:
                                                                                          _loc10_ = new §1_§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                                          addr294:
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr297:
                                                                                          _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                                          _loc16_ = new §<>§();
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             _loc16_.mName = _loc6_;
                                                                                             _loc16_.§'?§ = _loc15_;
                                                                                             _loc16_.§1l§ = _loc10_.pivotX;
                                                                                             _loc16_.§%!N§ = _loc10_.pivotY;
                                                                                             addr353:
                                                                                             _loc16_.§!c§ = §+#§;
                                                                                             addr398:
                                                                                             addr389:
                                                                                             addr394:
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(_loc20_ || _loc3_)
                                                                                                {
                                                                                                   §0!L§(_loc16_);
                                                                                                   if(_loc20_ || param2)
                                                                                                   {
                                                                                                      if(_loc20_ || _loc3_)
                                                                                                      {
                                                                                                         if(!(_loc19_ && _loc3_))
                                                                                                         {
                                                                                                            addr351:
                                                                                                            if(true)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§goto(addr353);
                                                                                                         }
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   §§goto(addr353);
                                                                                                }
                                                                                                §§goto(addr394);
                                                                                             }
                                                                                             addr373:
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  §§goto(addr281);
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr270);
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr284);
                                    addr267:
                                 }
                                 §§goto(addr297);
                              }
                              §§goto(addr267);
                           }
                        }
                        §§goto(addr284);
                     }
                  }
               }
            }
            §§goto(addr114);
         }
         if(!(_loc19_ && _loc3_))
         {
            mName = param1.@file;
         }
      }
      
      private function §];§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(_loc4_ || this)
         {
            return §§pop() + param2;
         }
      }
      
      private function §5!k§(param1:Vector.<XML>) : Dictionary
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
            if(!(_loc21_ && param1))
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
                     if(_loc20_)
                     {
                        §§push(this.§];§(_loc4_,_loc6_.@name));
                        if(_loc20_ || param1)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        for(; _loc2_[_loc7_] == null; while(true)
                        {
                           if(!(_loc20_ || param1))
                           {
                              continue loop2;
                           }
                           §§goto(addr178);
                           §§push(int(parseInt(_loc6_.@pivotY)));
                        },§§goto(addr226))
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
                                       addr118:
                                       if(_loc21_ && this)
                                       {
                                          continue;
                                       }
                                       if(_loc21_ && param1)
                                       {
                                          continue loop4;
                                       }
                                       addr132:
                                       _loc13_ = §§pop();
                                       if(!(_loc21_ && param1))
                                       {
                                          if(!_loc21_)
                                          {
                                             if(_loc21_ && _loc2_)
                                             {
                                                continue loop5;
                                             }
                                             if(_loc21_)
                                             {
                                                continue loop3;
                                             }
                                             addr151:
                                             if(false)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(int(parseInt(_loc6_.@x)));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         if(_loc21_)
                                                         {
                                                            break;
                                                            addr164:
                                                         }
                                                         _loc12_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(!(_loc20_ || this))
                                                            {
                                                               while(!(_loc21_ && _loc3_))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop2;
                                                               addr179:
                                                            }
                                                            §§push(int(parseInt(_loc6_.@y)));
                                                            if(_loc21_ && _loc3_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            §§goto(addr118);
                                                            §§goto(addr132);
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr178:
                                                      while(true)
                                                      {
                                                         _loc11_ = §§pop();
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   addr203:
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             _loc14_ = _loc6_.child("spriteBounds");
                                             if(!_loc21_)
                                             {
                                                if(_loc14_.length() == 1)
                                                {
                                                   if(!(_loc21_ && _loc2_))
                                                   {
                                                      addr266:
                                                      _loc15_ = _loc14_[0];
                                                      if(_loc20_)
                                                      {
                                                         addr337:
                                                         _loc8_ = int(parseInt(_loc15_.@width));
                                                         if(!_loc20_)
                                                         {
                                                            break loop2;
                                                         }
                                                         addr321:
                                                         §§push(int(parseInt(_loc15_.@height)));
                                                         if(!(_loc21_ && param1))
                                                         {
                                                            _loc9_ = §§pop();
                                                            if(!_loc20_)
                                                            {
                                                               break loop2;
                                                            }
                                                            addr313:
                                                            _loc12_ = int(parseInt(_loc15_.@x) - _loc12_);
                                                            addr305:
                                                            addr314:
                                                            §§push(parseInt(_loc15_.@y) - _loc13_);
                                                            if(_loc20_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc20_)
                                                               {
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(!_loc20_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     if(!(_loc21_ && _loc2_))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr305);
                                                                        }
                                                                        addr381:
                                                                        _loc2_[_loc7_] = new §1_§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                        break loop2;
                                                                     }
                                                                     §§goto(addr314);
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                               §§goto(addr313);
                                                            }
                                                            addr312:
                                                            §§goto(addr312);
                                                            addr331:
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   else
                                                   {
                                                      addr376:
                                                      §§push(0);
                                                      if(!_loc21_)
                                                      {
                                                         addr380:
                                                         _loc13_ = int(§§pop());
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc20_ || _loc3_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc20_ || this)
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(!(_loc21_ && _loc3_))
                                                         {
                                                            §§goto(addr376);
                                                         }
                                                         §§goto(addr381);
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                }
                                                §§goto(addr380);
                                             }
                                             §§goto(addr266);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr203);
                                          }
                                          addr219:
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr219);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

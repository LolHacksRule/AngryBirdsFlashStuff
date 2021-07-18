package §=I§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §70§ extends §-§
   {
       
      
      public function §70§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param3);
         }
         do
         {
            this.§5Q§(param1,param2);
         }
         while(!(_loc5_ || param1));
         
      }
      
      protected function §5Q§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:§[]§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§5!B§ = null;
         var _loc3_:Dictionary = this.§>A§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc19_)
            {
               _loc6_ = §§pop();
               if(!(_loc20_ && param2))
               {
                  addr118:
                  _loc7_ = _loc5_.@file;
               }
               loop1:
               while(true)
               {
                  addr100:
                  addr120:
                  while(true)
                  {
                     §§push(int(parseInt(_loc5_.@x)));
                     addr106:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        continue loop1;
                     }
                  }
                  if((_loc10_ = _loc3_[this.§#n§(_loc7_,_loc6_)]) == null)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(!(_loc20_ && param2))
                     {
                        _loc11_ = §§pop();
                        if(_loc19_)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           if(_loc19_)
                           {
                              _loc12_ = §§pop();
                              addr202:
                              _loc13_ = parseInt(_loc5_.@pivotX);
                              addr184:
                              §§push(int(parseInt(_loc5_.@pivotY)));
                              if(_loc19_)
                              {
                                 if(_loc19_)
                                 {
                                    _loc14_ = §§pop();
                                    §§push(_loc11_);
                                    if(_loc19_)
                                    {
                                       §§push(0);
                                       if(!_loc20_)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(!(_loc20_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc20_ && this))
                                                {
                                                   addr181:
                                                   §§pop();
                                                   if(false)
                                                   {
                                                      §§goto(addr184);
                                                   }
                                                   §§push(_loc12_ > 0);
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                addr217:
                                                _loc10_ = new §[]§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                addr227:
                                                if(!_loc10_)
                                                {
                                                   continue loop0;
                                                }
                                                _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                (_loc16_ = new §5!B§()).mName = _loc6_;
                                                if(_loc19_)
                                                {
                                                   _loc16_.§7!N§ = _loc15_;
                                                   _loc16_.§%O§ = _loc10_.pivotX;
                                                   _loc16_.§&!I§ = _loc10_.pivotY;
                                                   addr305:
                                                   if(!(_loc20_ && param2))
                                                   {
                                                      addr272:
                                                      _loc16_.§;S§ = §@x§;
                                                      §0,§(_loc16_);
                                                      if(_loc19_)
                                                      {
                                                         if(!(_loc20_ && this))
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               if(true)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr272);
                                                            }
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      addr276:
                                                      §§goto(addr276);
                                                      addr299:
                                                   }
                                                   addr309:
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr227);
                                          }
                                       }
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr202);
                              }
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr217);
               }
            }
            §§goto(addr118);
         }
         if(_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §#n§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(_loc4_ || this)
         {
            return §§pop() + param2;
         }
      }
      
      private function §>A§(param1:Vector.<XML>) : Dictionary
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
         var _loc11_:int = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:XMLList = null;
         var _loc15_:XML = null;
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in param1)
         {
            if(!_loc21_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc20_)
            {
               var _loc18_:int = 0;
               if(_loc20_ || this)
               {
                  loop1:
                  for each(_loc6_ in _loc5_)
                  {
                     if(!_loc21_)
                     {
                        §§push(this.§#n§(_loc4_,_loc6_.@name));
                        if(!(_loc21_ && _loc3_))
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        while(_loc2_[_loc7_] == null)
                        {
                           while(true)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              addr203:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                              }
                           }
                        }
                        continue;
                        addr219:
                     }
                     loop5:
                     while(true)
                     {
                        §§push(int(parseInt(_loc6_.@height)));
                        loop6:
                        while(true)
                        {
                           _loc9_ = §§pop();
                           §§push(int(parseInt(_loc6_.@pivotX)));
                           loop7:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              if(!_loc21_)
                              {
                                 §§push(int(parseInt(_loc6_.@pivotY)));
                                 continue loop6;
                              }
                              §§goto(addr219);
                              addr133:
                              if(!(_loc21_ && _loc2_))
                              {
                                 if(_loc20_ || this)
                                 {
                                    _loc12_ = §§pop();
                                    loop11:
                                    while(true)
                                    {
                                       §§push(int(parseInt(_loc6_.@y)));
                                       if(_loc21_ && param1)
                                       {
                                          break;
                                       }
                                       _loc13_ = §§pop();
                                       if(_loc21_ && param1)
                                       {
                                          continue;
                                       }
                                       if(_loc21_)
                                       {
                                          break loop7;
                                       }
                                       addr123:
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             §§push(int(parseInt(_loc6_.@x)));
                                             break loop11;
                                             §§goto(addr123);
                                          }
                                          addr220:
                                          if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                          {
                                             if(!_loc21_)
                                             {
                                                _loc15_ = _loc14_[0];
                                                if(!(_loc21_ && param1))
                                                {
                                                   addr309:
                                                   _loc8_ = int(parseInt(_loc15_.@width));
                                                   addr300:
                                                   _loc9_ = int(parseInt(_loc15_.@height));
                                                   addr301:
                                                   if(!_loc21_)
                                                   {
                                                      addr273:
                                                      §§push(int(parseInt(_loc15_.@x) - _loc12_));
                                                      if(!_loc21_)
                                                      {
                                                         if(!_loc21_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            addr286:
                                                            if(!(_loc21_ && this))
                                                            {
                                                               §§push(parseInt(_loc15_.@y) - _loc13_);
                                                               if(!(_loc21_ && param1))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc21_)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(!(_loc20_ || param1))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(!_loc21_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr273);
                                                                        }
                                                                        addr340:
                                                                        _loc2_[_loc7_] = new §[]§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr300);
                                                      addr303:
                                                   }
                                                   addr310:
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr303);
                                             }
                                             else
                                             {
                                                addr339:
                                                _loc13_ = 0;
                                                addr338:
                                             }
                                             §§goto(addr340);
                                          }
                                          else
                                          {
                                             addr312:
                                             §§push(0);
                                             if(_loc20_ || _loc3_)
                                             {
                                                _loc12_ = §§pop();
                                                if(_loc20_ || _loc2_)
                                                {
                                                   §§goto(addr338);
                                                }
                                                §§goto(addr340);
                                             }
                                          }
                                          §§goto(addr339);
                                          addr125:
                                       }
                                       else
                                       {
                                          §§goto(addr220);
                                       }
                                       §§goto(addr312);
                                    }
                                    while(true)
                                    {
                                       if(!_loc20_)
                                       {
                                          continue loop6;
                                       }
                                       §§goto(addr133);
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           §§goto(addr198);
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

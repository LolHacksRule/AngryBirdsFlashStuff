package §_-2J§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-5A§ extends §_-Tz§
   {
       
      
      public function §_-5A§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(param3);
            if(!_loc5_)
            {
               addr32:
               this.§_-aJ§(param1,param2);
            }
            return;
         }
         §§goto(addr32);
      }
      
      protected function §_-aJ§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§_-Bz§ = null;
         var _loc11_:Rectangle = null;
         var _loc12_:§_-4w§ = null;
         var _loc3_:Dictionary = this.§_-jQ§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc16_)
            {
               _loc6_ = §§pop();
               if(_loc16_)
               {
                  addr69:
                  _loc7_ = _loc5_.@file;
                  if(_loc16_ || this)
                  {
                     §§push(int(parseInt(_loc5_.@x)));
                     if(!_loc15_)
                     {
                        _loc8_ = §§pop();
                        addr100:
                        if(!_loc15_)
                        {
                           addr94:
                           §§push(int(parseInt(_loc5_.@y)));
                        }
                        if(!(_loc10_ = _loc3_[this.§_-NC§(_loc7_,_loc6_)]))
                        {
                           continue;
                        }
                        _loc11_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                        (_loc12_ = new §_-4w§()).mName = _loc6_;
                        if(!(_loc15_ && this))
                        {
                           _loc12_.§_-ua§ = _loc11_;
                           if(!(_loc15_ && param2))
                           {
                              _loc12_.§_-ov§ = _loc10_.pivotX;
                              if(!_loc15_)
                              {
                                 addr156:
                                 _loc12_.§_-eM§ = _loc10_.pivotY;
                                 if(!_loc15_)
                                 {
                                    addr162:
                                    _loc12_.§_-6p§ = §_-wM§;
                                    if(_loc15_)
                                    {
                                       continue;
                                    }
                                 }
                                 §_-zc§(_loc12_);
                                 continue;
                              }
                              §§goto(addr162);
                           }
                        }
                        §§goto(addr156);
                     }
                     _loc9_ = §§pop();
                  }
                  §§goto(addr100);
               }
               §§goto(addr94);
            }
            §§goto(addr69);
         }
      }
      
      private function §_-NC§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(_loc3_ || param1)
         {
            §§push(§§pop() + param2);
         }
         return §§pop();
      }
      
      private function §_-jQ§(param1:Vector.<XML>) : Dictionary
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
            if(!_loc21_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc20_ || _loc2_)
            {
               var _loc18_:int = 0;
               if(!_loc21_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!_loc21_)
                     {
                        §§push(this.§_-NC§(_loc4_,_loc6_.@name));
                        if(_loc20_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        if(!(_loc21_ && _loc2_))
                        {
                           if(_loc2_[_loc7_] != null)
                           {
                              continue;
                           }
                           if(!(_loc21_ && param1))
                           {
                              addr124:
                              §§push(int(parseInt(_loc6_.@width)));
                              if(_loc20_ || this)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc20_ || param1)
                                 {
                                    §§push(int(parseInt(_loc6_.@height)));
                                    if(_loc20_)
                                    {
                                       _loc9_ = §§pop();
                                       addr152:
                                       §§push(int(parseInt(_loc6_.@pivotX)));
                                       if(_loc20_ || param1)
                                       {
                                          addr171:
                                          _loc10_ = §§pop();
                                          if(!_loc21_)
                                          {
                                             addr174:
                                             §§push(int(parseInt(_loc6_.@pivotY)));
                                             if(!_loc21_)
                                             {
                                                _loc11_ = §§pop();
                                                if(!(_loc21_ && _loc3_))
                                                {
                                                   addr189:
                                                   §§push(int(parseInt(_loc6_.@x)));
                                                   if(!(_loc21_ && _loc3_))
                                                   {
                                                      addr201:
                                                      _loc12_ = §§pop();
                                                      addr207:
                                                      _loc13_ = int(parseInt(_loc6_.@y));
                                                   }
                                                   §§goto(addr207);
                                                }
                                                if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                {
                                                   if(!_loc21_)
                                                   {
                                                      _loc15_ = _loc14_[0];
                                                      if(!_loc20_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(int(parseInt(_loc15_.@width)));
                                                      if(!(_loc21_ && param1))
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(_loc20_ || _loc2_)
                                                         {
                                                            §§push(int(parseInt(_loc15_.@height)));
                                                            if(!_loc21_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(_loc20_)
                                                               {
                                                                  addr256:
                                                                  §§push(parseInt(_loc15_.@x) - _loc12_);
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc20_ || _loc2_)
                                                                     {
                                                                        addr272:
                                                                        _loc12_ = §§pop();
                                                                        if(!(_loc21_ && this))
                                                                        {
                                                                           addr287:
                                                                           _loc13_ = int(parseInt(_loc15_.@y) - _loc13_);
                                                                           if(!_loc20_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc2_[_loc7_] = new §_-Bz§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!_loc21_)
                                                   {
                                                      _loc12_ = §§pop();
                                                      if(!_loc21_)
                                                      {
                                                         §§push(0);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   _loc13_ = §§pop();
                                                }
                                                §§goto(addr272);
                                             }
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr152);
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

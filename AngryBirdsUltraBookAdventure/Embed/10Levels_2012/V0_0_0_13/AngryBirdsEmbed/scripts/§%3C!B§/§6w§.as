package §<!B§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §6w§ extends §]!=§
   {
       
      
      public function §6w§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param3);
            if(!(_loc4_ && param1))
            {
               addr29:
               this.§+s§(param1,param2);
            }
            return;
         }
         §§goto(addr29);
      }
      
      protected function §+s§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:§ !!§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§#z§ = null;
         var _loc3_:Dictionary = this.§!!<§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc20_ || param2)
            {
               _loc6_ = §§pop();
               if(!_loc19_)
               {
                  addr85:
                  _loc7_ = _loc5_.@file;
                  if(!_loc19_)
                  {
                     §§push(int(parseInt(_loc5_.@x)));
                     if(_loc20_ || _loc3_)
                     {
                        _loc8_ = §§pop();
                        if(_loc20_ || this)
                        {
                           addr113:
                           _loc9_ = parseInt(_loc5_.@y);
                        }
                        if((_loc10_ = _loc3_[this.§<!5§(_loc7_,_loc6_)]) == null)
                        {
                           if(!_loc19_)
                           {
                              §§push(int(parseInt(_loc5_.@width)));
                              if(_loc20_)
                              {
                                 _loc11_ = §§pop();
                                 if(_loc20_)
                                 {
                                    §§push(int(parseInt(_loc5_.@height)));
                                    if(_loc20_)
                                    {
                                       _loc12_ = §§pop();
                                       if(!_loc19_)
                                       {
                                          addr157:
                                          §§push(int(parseInt(_loc5_.@pivotX)));
                                          if(!_loc19_)
                                          {
                                             _loc13_ = §§pop();
                                             if(_loc20_ || _loc3_)
                                             {
                                                addr172:
                                                §§push(int(parseInt(_loc5_.@pivotY)));
                                                if(_loc20_ || _loc3_)
                                                {
                                                   _loc14_ = §§pop();
                                                   if(_loc20_)
                                                   {
                                                      addr187:
                                                      §§push(_loc11_);
                                                      if(_loc20_ || param2)
                                                      {
                                                         addr195:
                                                         §§push(0);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc19_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc19_ && param2))
                                                                  {
                                                                     §§pop();
                                                                     addr218:
                                                                     §§push(_loc12_ > 0);
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc19_)
                                                               {
                                                                  _loc10_ = new § !!§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                  addr232:
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr234:
                                                                  _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                  (_loc16_ = new §#z§()).mName = _loc6_;
                                                                  if(!_loc19_)
                                                                  {
                                                                     _loc16_.§9!&§ = _loc15_;
                                                                     if(!_loc19_)
                                                                     {
                                                                        _loc16_.§^A§ = _loc10_.pivotX;
                                                                        if(_loc20_ || _loc3_)
                                                                        {
                                                                           addr285:
                                                                           _loc16_.§6W§ = _loc10_.pivotY;
                                                                           if(_loc20_ || param1)
                                                                           {
                                                                              addr296:
                                                                              _loc16_.§93§ = §>g§;
                                                                              if(!_loc20_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           §]+§(_loc16_);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr296);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr113);
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr85);
         }
         if(!_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §<!5§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(!(_loc3_ && param2))
         {
            §§push(§§pop() + param2);
         }
         return §§pop();
      }
      
      private function §!!<§(param1:Vector.<XML>) : Dictionary
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
            if(_loc21_ || this)
            {
               var _loc18_:int = 0;
               if(_loc21_ || _loc2_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     §§push(this.§<!5§(_loc4_,_loc6_.@name));
                     if(!_loc20_)
                     {
                        §§push(§§pop());
                     }
                     _loc7_ = §§pop();
                     if(_loc2_[_loc7_] != null)
                     {
                        continue;
                     }
                     if(_loc21_ || _loc2_)
                     {
                        §§push(int(parseInt(_loc6_.@width)));
                        if(_loc21_)
                        {
                           _loc8_ = §§pop();
                           if(!(_loc20_ && _loc3_))
                           {
                              §§push(int(parseInt(_loc6_.@height)));
                              if(_loc21_ || _loc3_)
                              {
                                 _loc9_ = §§pop();
                                 if(!(_loc20_ && this))
                                 {
                                    addr164:
                                    §§push(int(parseInt(_loc6_.@pivotX)));
                                    if(!_loc20_)
                                    {
                                       addr171:
                                       _loc10_ = §§pop();
                                       if(!(_loc20_ && this))
                                       {
                                          addr189:
                                          §§push(int(parseInt(_loc6_.@pivotY)));
                                          if(_loc21_)
                                          {
                                             _loc11_ = §§pop();
                                             if(!(_loc20_ && _loc2_))
                                             {
                                                §§push(int(parseInt(_loc6_.@x)));
                                                if(_loc21_ || _loc2_)
                                                {
                                                }
                                                addr222:
                                                _loc13_ = §§pop();
                                                addr223:
                                                if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                {
                                                   if(!(_loc20_ && param1))
                                                   {
                                                      _loc15_ = _loc14_[0];
                                                      if(!(_loc21_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(int(parseInt(_loc15_.@width)));
                                                      if(_loc21_ || param1)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(!_loc21_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(int(parseInt(_loc15_.@height)));
                                                         if(!(_loc20_ && param1))
                                                         {
                                                            _loc9_ = §§pop();
                                                            if(_loc21_ || this)
                                                            {
                                                               §§push(parseInt(_loc15_.@x) - _loc12_);
                                                               if(!(_loc20_ && param1))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc21_ || _loc2_)
                                                                  {
                                                                     addr307:
                                                                     _loc12_ = §§pop();
                                                                     if(!_loc21_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr316:
                                                                     §§push(int(parseInt(_loc15_.@y) - _loc13_));
                                                                  }
                                                                  _loc13_ = §§pop();
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     addr354:
                                                                     _loc2_[_loc7_] = new § !!§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                  }
                                                                  continue;
                                                               }
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!(_loc20_ && _loc2_))
                                                   {
                                                      _loc12_ = §§pop();
                                                      if(!(_loc20_ && this))
                                                      {
                                                         §§push(0);
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   _loc13_ = §§pop();
                                                }
                                                §§goto(addr354);
                                             }
                                             §§goto(addr223);
                                          }
                                          _loc12_ = §§pop();
                                       }
                                       §§goto(addr222);
                                       §§push(int(parseInt(_loc6_.@y)));
                                    }
                                 }
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr189);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

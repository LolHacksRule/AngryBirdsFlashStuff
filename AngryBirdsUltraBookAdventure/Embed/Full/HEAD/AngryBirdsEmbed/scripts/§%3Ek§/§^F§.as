package §>k§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §^F§ extends §`z§
   {
       
      
      public function §^F§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param3);
            if(_loc4_)
            {
               this.§ C§(param1,param2);
            }
         }
      }
      
      protected function § C§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§[!M§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§`-§ = null;
         var _loc3_:Dictionary = this.§each §(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc20_)
            {
               _loc6_ = §§pop();
               if(_loc20_)
               {
                  addr80:
                  _loc7_ = _loc5_.@file;
                  if(_loc20_)
                  {
                     §§push(int(parseInt(_loc5_.@x)));
                     if(!(_loc19_ && param2))
                     {
                        _loc8_ = §§pop();
                        addr109:
                        if(!(_loc19_ && _loc3_))
                        {
                           addr103:
                           §§push(int(parseInt(_loc5_.@y)));
                        }
                        if((_loc10_ = _loc3_[this.§6b§(_loc7_,_loc6_)]) == null)
                        {
                           §§push(int(parseInt(_loc5_.@width)));
                           if(_loc20_ || param2)
                           {
                              _loc11_ = §§pop();
                              if(_loc20_ || _loc3_)
                              {
                                 §§push(int(parseInt(_loc5_.@height)));
                                 if(!(_loc19_ && param1))
                                 {
                                    _loc12_ = §§pop();
                                    §§push(int(parseInt(_loc5_.@pivotX)));
                                    if(_loc20_)
                                    {
                                       _loc13_ = §§pop();
                                       addr171:
                                       §§push(int(parseInt(_loc5_.@pivotY)));
                                       if(!_loc19_)
                                       {
                                          addr178:
                                          _loc14_ = §§pop();
                                          if(!_loc19_)
                                          {
                                             §§push(_loc11_);
                                             if(_loc20_ || this)
                                             {
                                                addr189:
                                                §§push(0);
                                                if(!_loc19_)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(!(_loc19_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc20_)
                                                         {
                                                            addr204:
                                                            §§pop();
                                                            §§push(_loc12_ > 0);
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr209:
                                                         _loc10_ = new §[!M§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                         addr219:
                                                         if(!_loc10_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                         (_loc16_ = new §`-§()).mName = _loc6_;
                                                         if(!_loc20_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc16_.§@n§ = _loc15_;
                                                         if(_loc20_ || _loc3_)
                                                         {
                                                            _loc16_.§!!J§ = _loc10_.pivotX;
                                                            if(_loc20_)
                                                            {
                                                               addr272:
                                                               _loc16_.§[R§ = _loc10_.pivotY;
                                                               if(!(_loc20_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               _loc16_.§<c§ = §while§;
                                                               if(_loc19_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            §8!=§(_loc16_);
                                                            continue;
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                }
                                             }
                                             §§goto(addr204);
                                          }
                                          §§goto(addr209);
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr209);
                     }
                     _loc9_ = §§pop();
                  }
                  §§goto(addr109);
               }
               §§goto(addr103);
            }
            §§goto(addr80);
         }
         if(_loc20_)
         {
            mName = param1.@file;
         }
      }
      
      private function §6b§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() + param2);
         }
         return §§pop();
      }
      
      private function §each §(param1:Vector.<XML>) : Dictionary
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
            if(_loc21_ || _loc2_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!(_loc20_ && _loc3_))
            {
               var _loc18_:int = 0;
               if(!(_loc20_ && this))
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc21_ || this)
                     {
                        §§push(this.§6b§(_loc4_,_loc6_.@name));
                        if(_loc21_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        if(_loc21_ || this)
                        {
                           if(_loc2_[_loc7_] != null)
                           {
                              continue;
                           }
                           §§push(int(parseInt(_loc6_.@width)));
                           if(!(_loc20_ && _loc2_))
                           {
                              _loc8_ = §§pop();
                              if(!_loc20_)
                              {
                                 §§push(int(parseInt(_loc6_.@height)));
                                 if(_loc21_)
                                 {
                                    _loc9_ = §§pop();
                                    if(_loc21_)
                                    {
                                       addr171:
                                       §§push(int(parseInt(_loc6_.@pivotX)));
                                       if(_loc21_ || param1)
                                       {
                                          addr183:
                                          _loc10_ = §§pop();
                                          if(_loc21_)
                                          {
                                             addr186:
                                             §§push(int(parseInt(_loc6_.@pivotY)));
                                             if(!_loc20_)
                                             {
                                                addr193:
                                                _loc11_ = §§pop();
                                                §§push(int(parseInt(_loc6_.@x)));
                                                if(!_loc20_)
                                                {
                                                   addr201:
                                                   _loc12_ = §§pop();
                                                   addr215:
                                                   if(!(_loc20_ && _loc2_))
                                                   {
                                                      addr209:
                                                      §§push(int(parseInt(_loc6_.@y)));
                                                   }
                                                   if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                   {
                                                      if(_loc21_)
                                                      {
                                                         _loc15_ = _loc14_[0];
                                                         if(!(_loc20_ && _loc2_))
                                                         {
                                                            §§push(int(parseInt(_loc15_.@width)));
                                                            if(!_loc20_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(_loc21_ || this)
                                                               {
                                                                  §§push(int(parseInt(_loc15_.@height)));
                                                                  if(_loc21_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc21_)
                                                                     {
                                                                        addr263:
                                                                        §§push(parseInt(_loc15_.@x) - _loc12_);
                                                                        if(!(_loc20_ && param1))
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(_loc21_)
                                                                           {
                                                                              addr279:
                                                                              _loc12_ = §§pop();
                                                                              if(!_loc21_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr288:
                                                                              §§push(int(parseInt(_loc15_.@y) - _loc13_));
                                                                           }
                                                                           _loc13_ = §§pop();
                                                                           if(_loc21_)
                                                                           {
                                                                              addr311:
                                                                              _loc2_[_loc7_] = new §[!M§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                              addr302:
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(!_loc20_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(!_loc20_)
                                                         {
                                                            §§push(0);
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                      _loc13_ = §§pop();
                                                   }
                                                   §§goto(addr311);
                                                }
                                             }
                                             _loc13_ = §§pop();
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr171);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

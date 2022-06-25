package §<=§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §6@§ extends §66§
   {
       
      
      public function §6@§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(param3);
            if(!(_loc4_ && param2))
            {
               addr44:
               this.§1"§(param1,param2);
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function §1"§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§-L§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§#8§ = null;
         var _loc3_:Dictionary = this.§80§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc19_)
            {
               _loc6_ = §§pop();
               if(!(_loc20_ && this))
               {
                  addr84:
                  _loc7_ = _loc5_.@file;
                  if(!(_loc20_ && param2))
                  {
                     addr92:
                     §§push(int(parseInt(_loc5_.@x)));
                     if(!(_loc20_ && param2))
                     {
                        _loc8_ = §§pop();
                        addr113:
                        if(!_loc20_)
                        {
                           §§push(int(parseInt(_loc5_.@y)));
                        }
                        if((_loc10_ = _loc3_[this.§&t§(_loc7_,_loc6_)]) == null)
                        {
                           if(_loc19_ || _loc3_)
                           {
                              §§push(int(parseInt(_loc5_.@width)));
                              if(!(_loc20_ && param2))
                              {
                                 _loc11_ = §§pop();
                                 if(_loc19_ || this)
                                 {
                                    §§push(int(parseInt(_loc5_.@height)));
                                    if(_loc19_ || this)
                                    {
                                       _loc12_ = §§pop();
                                       if(_loc19_ || this)
                                       {
                                          addr181:
                                          §§push(int(parseInt(_loc5_.@pivotX)));
                                          if(!_loc20_)
                                          {
                                             _loc13_ = §§pop();
                                             if(_loc19_ || param2)
                                             {
                                                addr196:
                                                §§push(int(parseInt(_loc5_.@pivotY)));
                                                if(!(_loc20_ && param2))
                                                {
                                                   addr208:
                                                   _loc14_ = §§pop();
                                                   §§push(_loc11_);
                                                   if(_loc19_ || param1)
                                                   {
                                                      addr217:
                                                      §§push(0);
                                                      if(_loc19_ || this)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(!(_loc20_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  addr237:
                                                                  §§pop();
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr243:
                                                                     addr242:
                                                                     addr241:
                                                                     if(_loc12_ > 0)
                                                                     {
                                                                     }
                                                                     addr254:
                                                                     if(_loc10_)
                                                                     {
                                                                        addr256:
                                                                        _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                        (_loc16_ = new §#8§()).mName = _loc6_;
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           _loc16_.§%!<§ = _loc15_;
                                                                           if(_loc20_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc16_.§3!4§ = _loc10_.pivotX;
                                                                        if(!(_loc20_ && _loc3_))
                                                                        {
                                                                           _loc16_.§;!0§ = _loc10_.pivotY;
                                                                           if(_loc20_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           _loc16_.§!! § = §&q§;
                                                                           if(!(_loc19_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §'3§(_loc16_);
                                                                     }
                                                                     continue;
                                                                  }
                                                                  _loc10_ = new §-L§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                  §§goto(addr254);
                                                               }
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr196);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr243);
                     }
                     _loc9_ = §§pop();
                  }
                  §§goto(addr113);
               }
               §§goto(addr92);
            }
            §§goto(addr84);
         }
         if(!(_loc20_ && param2))
         {
            mName = param1.@file;
         }
      }
      
      private function §&t§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(!_loc3_)
         {
            §§push(§§pop() + param2);
         }
         return §§pop();
      }
      
      private function §80§(param1:Vector.<XML>) : Dictionary
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
            if(!(_loc20_ && _loc2_))
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!_loc20_)
            {
               var _loc18_:int = 0;
               if(!(_loc20_ && _loc3_))
               {
                  for each(_loc6_ in _loc5_)
                  {
                     §§push(this.§&t§(_loc4_,_loc6_.@name));
                     if(_loc21_)
                     {
                        §§push(§§pop());
                     }
                     _loc7_ = §§pop();
                     if(_loc2_[_loc7_] != null)
                     {
                        continue;
                     }
                     §§push(int(parseInt(_loc6_.@width)));
                     if(!(_loc20_ && param1))
                     {
                        _loc8_ = §§pop();
                        if(!(_loc20_ && _loc2_))
                        {
                           §§push(int(parseInt(_loc6_.@height)));
                           if(_loc21_)
                           {
                              _loc9_ = §§pop();
                              addr145:
                              §§push(int(parseInt(_loc6_.@pivotX)));
                              if(_loc21_ || param1)
                              {
                                 addr167:
                                 _loc10_ = §§pop();
                                 if(!_loc20_)
                                 {
                                    §§push(int(parseInt(_loc6_.@pivotY)));
                                    if(!(_loc20_ && _loc3_))
                                    {
                                       addr182:
                                       _loc11_ = §§pop();
                                       if(_loc21_ || this)
                                       {
                                          §§push(int(parseInt(_loc6_.@x)));
                                          if(!(_loc20_ && param1))
                                          {
                                             addr202:
                                             _loc12_ = §§pop();
                                             addr208:
                                             _loc13_ = int(parseInt(_loc6_.@y));
                                          }
                                          §§goto(addr208);
                                       }
                                       if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                       {
                                          if(!(_loc20_ && _loc2_))
                                          {
                                             _loc15_ = _loc14_[0];
                                             if(!_loc20_)
                                             {
                                                §§push(int(parseInt(_loc15_.@width)));
                                                if(_loc21_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(!_loc20_)
                                                   {
                                                      §§push(int(parseInt(_loc15_.@height)));
                                                      if(!(_loc20_ && _loc3_))
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!(_loc21_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(parseInt(_loc15_.@x) - _loc12_);
                                                         if(!_loc20_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc20_)
                                                            {
                                                               addr273:
                                                               _loc12_ = §§pop();
                                                               if(_loc20_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               addr281:
                                                               §§push(parseInt(_loc15_.@y) - _loc13_);
                                                            }
                                                            addr288:
                                                            _loc13_ = §§pop();
                                                            if(_loc21_ || _loc2_)
                                                            {
                                                               addr320:
                                                               _loc2_[_loc7_] = new §-L§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                               addr296:
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr288);
                                                         §§push(int(§§pop()));
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr288);
                                             }
                                             §§goto(addr281);
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc21_)
                                          {
                                             _loc12_ = §§pop();
                                             if(!(_loc20_ && param1))
                                             {
                                                §§push(0);
                                             }
                                             §§goto(addr320);
                                          }
                                          _loc13_ = §§pop();
                                       }
                                       §§goto(addr320);
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr167);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

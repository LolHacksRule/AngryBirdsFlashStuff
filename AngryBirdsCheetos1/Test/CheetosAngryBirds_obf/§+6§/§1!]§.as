package §+6§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §1!]§ extends §^j§
   {
       
      
      public function §1!]§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param3);
            do
            {
               this.§8!C§(param1,param2);
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      protected function §8!C§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§29§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§=!`§ = null;
         var _loc3_:Dictionary = this.§!!#§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!(_loc20_ && this))
            {
               _loc6_ = §§pop();
               if(!(_loc20_ && this))
               {
                  addr123:
                  _loc7_ = _loc5_.@file;
                  loop15:
                  while(true)
                  {
                     addr110:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr116:
                        while(true)
                        {
                           _loc8_ = §§pop();
                           addr117:
                           while(!_loc19_)
                           {
                              continue loop15;
                           }
                        }
                        continue loop15;
                     }
                  }
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(!(_loc20_ && param2))
                  {
                     _loc9_ = §§pop();
                     if(_loc19_ || this)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr116);
               }
               if((_loc10_ = _loc3_[this.§&?§(_loc7_,_loc6_)]) == null)
               {
                  if(!(_loc20_ && this))
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc19_ || param1)
                     {
                        _loc11_ = §§pop();
                        if(!_loc20_)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           loop8:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              if(_loc19_)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 loop9:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    if(_loc19_)
                                    {
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(int(parseInt(_loc5_.@pivotY)));
                                             if(_loc19_ || param2)
                                             {
                                                _loc14_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc19_)
                                                   {
                                                      if(!(_loc19_ || _loc3_))
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!_loc19_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(0);
                                                      if(_loc19_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(!(_loc20_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc19_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr266:
                                                                  addr266:
                                                                  addr266:
                                                                  _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                  (_loc16_ = new §=!`§()).mName = _loc6_;
                                                                  if(_loc19_)
                                                                  {
                                                                     _loc16_.§ k§ = _loc15_;
                                                                  }
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     _loc16_.§4!=§ = _loc10_.pivotX;
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        _loc16_.§>!D§ = _loc10_.pivotY;
                                                                        loop12:
                                                                        while(!_loc20_)
                                                                        {
                                                                           do
                                                                           {
                                                                              _loc16_.§03§ = §^4§;
                                                                              while(_loc19_ || this)
                                                                              {
                                                                                 §+!"§(_loc16_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           while(false);
                                                                           
                                                                           continue loop0;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr245:
                                                         §§push(§§pop() > §§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc19_ || param1)
                                                         {
                                                            addr254:
                                                            _loc10_ = new §29§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                            addr264:
                                                            if(!_loc10_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   else
                                                   {
                                                      addr244:
                                                      §§push(0);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr244);
                                          }
                                       }
                                       addr233:
                                    }
                                    §§goto(addr254);
                                 }
                              }
                              §§goto(addr266);
                           }
                           addr239:
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr239);
                  }
                  §§goto(addr266);
               }
               §§goto(addr254);
            }
            §§goto(addr123);
         }
         if(!_loc20_)
         {
            mName = param1.@file;
         }
      }
      
      private function §&?§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(!_loc4_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §!!#§(param1:Vector.<XML>) : Dictionary
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
            if(!_loc20_)
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
                     if(_loc21_)
                     {
                        §§push(this.§&?§(_loc4_,_loc6_.@name));
                        if(_loc21_ || this)
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
                                 while(_loc21_)
                                 {
                                    §§push(int(parseInt(_loc6_.@height)));
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       loop10:
                                       for(; _loc21_ || this; if(_loc20_ && _loc2_)
                                       {
                                          continue;
                                       },§§goto(addr111))
                                       {
                                          _loc11_ = §§pop();
                                          while(true)
                                          {
                                             if(_loc20_)
                                             {
                                                break;
                                                addr141:
                                             }
                                             while(true)
                                             {
                                                §§push(int(parseInt(_loc6_.@x)));
                                                loop13:
                                                while(true)
                                                {
                                                   _loc12_ = §§pop();
                                                   addr148:
                                                   while(true)
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         §§push(int(parseInt(_loc6_.@y)));
                                                         if(!_loc20_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         continue loop13;
                                                      }
                                                      addr175:
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             addr128:
                                             if(!(_loc21_ || param1))
                                             {
                                                continue;
                                             }
                                             if(_loc21_)
                                             {
                                                if(_loc20_)
                                                {
                                                   continue loop3;
                                                }
                                                if(false)
                                                {
                                                   §§goto(addr141);
                                                }
                                                else
                                                {
                                                   if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                   {
                                                      if(_loc21_ || _loc2_)
                                                      {
                                                         _loc15_ = _loc14_[0];
                                                         if(_loc20_ && _loc3_)
                                                         {
                                                            break loop2;
                                                         }
                                                         addr333:
                                                         _loc8_ = int(parseInt(_loc15_.@width));
                                                         addr312:
                                                         addr334:
                                                         §§push(int(parseInt(_loc15_.@height)));
                                                         if(_loc21_ || this)
                                                         {
                                                            _loc9_ = §§pop();
                                                            addr320:
                                                            if(!(_loc20_ && _loc3_))
                                                            {
                                                               addr289:
                                                               §§push(int(parseInt(_loc15_.@x) - _loc12_));
                                                               if(_loc21_ || _loc2_)
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  addr305:
                                                                  §§push(parseInt(_loc15_.@y) - _loc13_);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc21_ || _loc2_)
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        if(_loc20_ && _loc2_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        if(!_loc20_)
                                                                        {
                                                                           if(!(_loc20_ && this))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr289);
                                                                              }
                                                                              addr349:
                                                                              _loc2_[_loc7_] = new §29§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                              break loop2;
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            §§goto(addr334);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      else
                                                      {
                                                         addr348:
                                                         _loc13_ = 0;
                                                         addr347:
                                                      }
                                                      §§goto(addr349);
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(!(_loc20_ && _loc3_))
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(_loc21_)
                                                         {
                                                            §§goto(addr347);
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                   }
                                                   §§goto(addr348);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(int(parseInt(_loc6_.@pivotX)));
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      addr111:
                                                      if(_loc20_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc21_ || this))
                                                      {
                                                         continue loop4;
                                                      }
                                                      _loc13_ = §§pop();
                                                      if(_loc21_)
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                }
                                                addr193:
                                             }
                                             §§goto(addr175);
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr193);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

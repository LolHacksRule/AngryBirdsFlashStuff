package §`g§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §0K§ extends §&_§
   {
       
      
      public function §0K§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param3);
         }
         do
         {
            this.§94§(param1,param2);
         }
         while(!_loc4_);
         
      }
      
      protected function §94§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§;!6§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§]!3§ = null;
         var _loc3_:Dictionary = this.§@%§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!_loc19_)
            {
               _loc6_ = §§pop();
               if(!_loc19_)
               {
                  addr119:
                  _loc7_ = _loc5_.@file;
                  loop17:
                  while(true)
                  {
                     addr101:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr107:
                        while(true)
                        {
                           _loc8_ = §§pop();
                           addr108:
                           while(!(_loc20_ || this))
                           {
                              continue loop17;
                           }
                        }
                        continue loop17;
                     }
                  }
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(!(_loc19_ && this))
                  {
                     _loc9_ = §§pop();
                     if(!(_loc20_ || param1))
                     {
                        continue;
                     }
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr107);
               }
               if((_loc10_ = _loc3_[this.§&e§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc20_ || _loc3_)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc20_ || param1)
                     {
                        _loc11_ = §§pop();
                        if(_loc20_)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           while(true)
                           {
                              _loc12_ = §§pop();
                              if(_loc20_)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 continue;
                              }
                              addr265:
                              _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                              (_loc16_ = new §]!3§()).mName = _loc6_;
                              if(_loc20_)
                              {
                                 _loc16_.§<-§ = _loc15_;
                                 loop11:
                                 while(true)
                                 {
                                    _loc16_.§3e§ = _loc10_.pivotX;
                                    while(true)
                                    {
                                       _loc16_.§>9§ = _loc10_.pivotY;
                                       while(!_loc19_)
                                       {
                                          continue loop11;
                                          loop16:
                                          while(!(_loc19_ && _loc3_))
                                          {
                                             §>j§(_loc16_);
                                             if(_loc20_)
                                             {
                                                addr297:
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      _loc16_.§!o§ = § k§;
                                                      continue loop16;
                                                      §§goto(addr297);
                                                   }
                                                   addr299:
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr299);
                              }
                           }
                           addr238:
                           addr154:
                        }
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(int(parseInt(_loc5_.@pivotY)));
                              loop7:
                              while(true)
                              {
                                 _loc14_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc11_);
                                    if(!(_loc19_ && _loc3_))
                                    {
                                       if(_loc19_ && param1)
                                       {
                                          continue loop7;
                                       }
                                       if(_loc20_)
                                       {
                                          §§push(0);
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc20_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc20_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         if(!(_loc19_ && _loc3_))
                                                         {
                                                            if(true)
                                                            {
                                                               §§push(_loc12_);
                                                            }
                                                            continue loop6;
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue;
                                                   }
                                                }
                                             }
                                             addr245:
                                             if(§§pop())
                                             {
                                                if(_loc20_ || param2)
                                                {
                                                   _loc10_ = new §;!6§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                   addr263:
                                                   if(!_loc10_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr265);
                                             }
                                             §§goto(addr263);
                                          }
                                          addr244:
                                          §§goto(addr245);
                                          §§push(§§pop() > §§pop());
                                       }
                                       else
                                       {
                                          §§goto(addr224);
                                       }
                                       §§goto(addr265);
                                    }
                                    break;
                                 }
                                 §§goto(addr244);
                              }
                           }
                        }
                     }
                     §§goto(addr238);
                  }
                  §§goto(addr154);
               }
               §§goto(addr263);
            }
            §§goto(addr119);
         }
         if(!_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §&e§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(_loc3_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §@%§(param1:Vector.<XML>) : Dictionary
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
         var _loc13_:int = 0;
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
            if(!(_loc20_ && this))
            {
               var _loc18_:int = 0;
               if(_loc21_ || _loc2_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc21_ || _loc3_)
                     {
                        §§push(this.§&e§(_loc4_,_loc6_.@name));
                        if(_loc21_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        while(_loc2_[_loc7_] == null)
                        {
                           §§push(int(parseInt(_loc6_.@width)));
                           loop3:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              while(true)
                              {
                                 §§push(int(parseInt(_loc6_.@height)));
                                 while(true)
                                 {
                                    _loc9_ = §§pop();
                                    if(!_loc21_)
                                    {
                                       break;
                                    }
                                    addr174:
                                    loop7:
                                    while(!(_loc20_ && _loc3_))
                                    {
                                       _loc10_ = §§pop();
                                       if(_loc20_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(int(parseInt(_loc6_.@pivotY)));
                                       loop8:
                                       while(true)
                                       {
                                          _loc11_ = §§pop();
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(int(parseInt(_loc6_.@x)));
                                                while(true)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      if(!_loc21_)
                                                      {
                                                         break;
                                                      }
                                                      _loc12_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(int(parseInt(_loc6_.@y)));
                                                         if(_loc20_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc20_)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr174);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

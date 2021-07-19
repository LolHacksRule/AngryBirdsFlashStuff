package §@b§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §?H§ extends §;%§
   {
       
      
      public function §?H§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param3);
         }
         do
         {
            this.§ 4§(param1,param2);
         }
         while(_loc4_ && param1);
         
      }
      
      protected function § 4§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§4#§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§0!W§ = null;
         var _loc3_:Dictionary = this.§!<§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!(_loc19_ && _loc3_))
            {
               _loc6_ = §§pop();
               if(_loc20_)
               {
                  addr124:
                  _loc7_ = _loc5_.@file;
                  while(true)
                  {
                     addr113:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr119:
                        while(true)
                        {
                           _loc8_ = §§pop();
                        }
                     }
                  }
                  addr125:
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(_loc20_ || param2)
                  {
                     _loc9_ = §§pop();
                     if(!(_loc20_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc20_ || this)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr125);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr119);
               }
               if((_loc10_ = _loc3_[this.§,!]§(_loc7_,_loc6_)]) == null)
               {
                  if(!_loc19_)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(!_loc19_)
                     {
                        _loc11_ = §§pop();
                        if(_loc20_ || this)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           loop11:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              if(_loc20_ || param1)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 while(_loc19_)
                                 {
                                    continue loop11;
                                    §§goto(addr253);
                                 }
                                 addr253:
                                 _loc13_ = §§pop();
                                 addr239:
                                 loop3:
                                 while(true)
                                 {
                                    §§push(int(parseInt(_loc5_.@pivotY)));
                                    if(_loc20_ || param2)
                                    {
                                       _loc14_ = §§pop();
                                       if(_loc20_ || this)
                                       {
                                          if(_loc20_ || this)
                                          {
                                             §§push(_loc11_);
                                             if(_loc20_)
                                             {
                                                if(_loc20_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(_loc20_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc19_ && param2))
                                                            {
                                                               addr191:
                                                               §§pop();
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§push(_loc12_);
                                                                     }
                                                                     continue loop3;
                                                                     §§goto(addr191);
                                                                  }
                                                                  addr199:
                                                               }
                                                               addr277:
                                                               _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                               (_loc16_ = new §0!W§()).mName = _loc6_;
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  _loc16_.§,-§ = _loc15_;
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     _loc16_.§?!Q§ = _loc10_.pivotX;
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        _loc16_.§+9§ = _loc10_.pivotY;
                                                                        while(!_loc19_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc16_.§-!C§ = §^d§;
                                                                              do
                                                                              {
                                                                                 §%3§(_loc16_);
                                                                              }
                                                                              while(_loc19_);
                                                                              
                                                                              if(!(_loc20_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                               }
                                                               while(false)
                                                               {
                                                                  §§goto(addr330);
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      addr257:
                                                      if(§§pop())
                                                      {
                                                         if(_loc20_ || param2)
                                                         {
                                                            break loop11;
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                      if(!_loc10_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   addr256:
                                                   §§goto(addr257);
                                                   §§push(§§pop() > §§pop());
                                                }
                                                else
                                                {
                                                   §§goto(addr236);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr239);
                                       }
                                       break loop11;
                                    }
                                    break;
                                 }
                                 addr236:
                                 §§goto(addr256);
                                 §§push(0);
                              }
                              break;
                           }
                           addr265:
                           _loc10_ = new §4#§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                           §§goto(addr257);
                           addr245:
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr265);
               }
               §§goto(addr257);
            }
            §§goto(addr124);
         }
         if(!(_loc19_ && param1))
         {
            mName = param1.@file;
         }
      }
      
      private function §,!]§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(!_loc3_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §!<§(param1:Vector.<XML>) : Dictionary
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:XMLList = null;
         var _loc6_:XML = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:XMLList = null;
         var _loc15_:XML = null;
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in param1)
         {
            if(!(_loc20_ && _loc3_))
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!(_loc20_ && _loc3_))
            {
               var _loc18_:int = 0;
               if(!(_loc20_ && _loc2_))
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!(_loc20_ && param1))
                     {
                        §§push(this.§,!]§(_loc4_,_loc6_.@name));
                        if(_loc21_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        while(_loc2_[_loc7_] == null)
                        {
                           while(!(_loc20_ && _loc3_))
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              loop4:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 addr233:
                                 while(true)
                                 {
                                    §§push(int(parseInt(_loc6_.@height)));
                                    continue loop4;
                                 }
                              }
                              if(!(_loc21_ || param1))
                              {
                                 continue;
                              }
                              §§push(int(parseInt(_loc6_.@y)));
                              if(!_loc20_)
                              {
                                 if(_loc21_)
                                 {
                                    §§goto(addr126);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr146);
                           }
                        }
                        continue;
                     }
                     §§goto(addr198);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

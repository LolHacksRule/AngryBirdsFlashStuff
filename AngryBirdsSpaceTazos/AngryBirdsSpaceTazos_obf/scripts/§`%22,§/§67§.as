package §`",§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §67§ extends §?" §
   {
       
      
      public function §67§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super(param3);
         }
         do
         {
            this.§ !a§(param1,param2);
         }
         while(_loc5_);
         
      }
      
      protected function § !a§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§#!5§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§1!v§ = null;
         var _loc3_:Dictionary = this.§<!,§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!_loc19_)
            {
               _loc6_ = §§pop();
               if(!(_loc19_ && this))
               {
                  addr124:
                  _loc7_ = _loc5_.@file;
                  loop17:
                  while(true)
                  {
                     addr113:
                     loop2:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        while(true)
                        {
                           _loc8_ = §§pop();
                           while(true)
                           {
                              §§push(int(parseInt(_loc5_.@y)));
                              if(!(_loc20_ || param2))
                              {
                                 break;
                              }
                              _loc9_ = §§pop();
                              if(_loc20_ || _loc3_)
                              {
                                 addr104:
                                 if(!(_loc19_ && _loc3_))
                                 {
                                    break loop2;
                                 }
                                 continue loop17;
                              }
                           }
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr113);
                  §§goto(addr104);
               }
               if((_loc10_ = _loc3_[this.§;!M§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc20_)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc20_)
                     {
                        _loc11_ = §§pop();
                        if(_loc20_ || param2)
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           loop11:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              addr248:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 continue loop11;
                              }
                           }
                           addr247:
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr219);
               }
               §§goto(addr255);
            }
            §§goto(addr124);
         }
         if(!_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §;!M§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(_loc4_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §<!,§(param1:Vector.<XML>) : Dictionary
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
            if(_loc20_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!_loc21_)
            {
               var _loc18_:int = 0;
               if(!(_loc21_ && this))
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc20_)
                     {
                        §§push(this.§;!M§(_loc4_,_loc6_.@name));
                        if(!(_loc21_ && param1))
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        while(_loc2_[_loc7_] == null)
                        {
                           loop5:
                           while(!(_loc21_ && param1))
                           {
                              §§push(int(parseInt(_loc6_.@height)));
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop7:
                                 while(_loc20_)
                                 {
                                    §§push(int(parseInt(_loc6_.@pivotX)));
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc6_.@pivotY)));
                                          loop10:
                                          while(true)
                                          {
                                             _loc11_ = §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc20_)
                                                {
                                                   continue loop9;
                                                }
                                                if(!(_loc20_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                loop12:
                                                do
                                                {
                                                   §§push(int(parseInt(_loc6_.@x)));
                                                   loop13:
                                                   while(!(_loc21_ && _loc3_))
                                                   {
                                                      _loc12_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc20_ || this)
                                                         {
                                                            if(!(_loc20_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(int(parseInt(_loc6_.@y)));
                                                            if(!(_loc21_ && param1))
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop11;
                                                         addr129:
                                                         _loc13_ = §§pop();
                                                         if(!(_loc21_ && this))
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr224:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      break loop7;
                                                   }
                                                }
                                                while(false);
                                                
                                                if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                                {
                                                   if(!(_loc21_ && param1))
                                                   {
                                                      _loc15_ = _loc14_[0];
                                                      if(_loc20_ || _loc2_)
                                                      {
                                                         addr379:
                                                         _loc8_ = int(parseInt(_loc15_.@width));
                                                         addr370:
                                                         _loc9_ = int(parseInt(_loc15_.@height));
                                                         addr371:
                                                         if(!_loc21_)
                                                         {
                                                            addr362:
                                                            _loc12_ = int(parseInt(_loc15_.@x) - _loc12_);
                                                            addr363:
                                                            §§push(parseInt(_loc15_.@y) - _loc13_);
                                                            if(!_loc21_)
                                                            {
                                                               addr352:
                                                               _loc13_ = int(§§pop());
                                                               addr324:
                                                               addr353:
                                                               §§push(int(_loc10_ - _loc12_));
                                                               if(_loc20_)
                                                               {
                                                                  if(!(_loc21_ && param1))
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     addr339:
                                                                     if(_loc20_)
                                                                     {
                                                                        §§push(_loc11_);
                                                                        if(_loc20_)
                                                                        {
                                                                           if(_loc20_)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       if(!(_loc21_ && _loc2_))
                                                                                       {
                                                                                          addr299:
                                                                                          §§push(int(§§pop()));
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                if(!(_loc20_ || this))
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(_loc20_ || _loc3_)
                                                                                                      {
                                                                                                         addr322:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr324);
                                                                                                         }
                                                                                                         _loc2_[_loc7_] = new §#!5§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      §§goto(addr371);
                                                                                                   }
                                                                                                   §§goto(addr363);
                                                                                                }
                                                                                                §§goto(addr339);
                                                                                             }
                                                                                             §§goto(addr370);
                                                                                          }
                                                                                          §§goto(addr324);
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                              §§goto(addr379);
                                                                           }
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr299);
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                                  §§goto(addr362);
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            addr361:
                                                            §§goto(addr361);
                                                         }
                                                         addr380:
                                                         §§goto(addr380);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!(_loc21_ && _loc2_))
                                                   {
                                                      _loc12_ = §§pop();
                                                      if(_loc20_)
                                                      {
                                                         §§push(0);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   _loc13_ = §§pop();
                                                }
                                                §§goto(addr322);
                                             }
                                             addr219:
                                             while(true)
                                             {
                                                §§goto(addr224);
                                                §§goto(addr177);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                                 if(_loc21_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr129);
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

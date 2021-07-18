package §,-§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class § set§ extends §]M§
   {
       
      
      public function § set§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param3);
            do
            {
               this.§5!I§(param1,param2);
            }
            while(_loc5_);
            
         }
      }
      
      protected function §5!I§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:§+Y§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§!>§ = null;
         var _loc3_:Dictionary = this.§-!>§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc20_ || param2)
            {
               _loc6_ = §§pop();
               if(!(_loc19_ && param1))
               {
                  addr119:
                  _loc7_ = _loc5_.@file;
               }
               loop1:
               while(true)
               {
                  addr101:
                  addr121:
                  while(true)
                  {
                     §§push(int(parseInt(_loc5_.@x)));
                     addr107:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        continue loop1;
                     }
                  }
                  if((_loc10_ = _loc3_[this.§?!4§(_loc7_,_loc6_)]) == null)
                  {
                     if(_loc20_)
                     {
                        §§push(int(parseInt(_loc5_.@width)));
                        if(_loc20_)
                        {
                           _loc11_ = §§pop();
                           if(_loc20_ || param1)
                           {
                              addr227:
                              _loc12_ = parseInt(_loc5_.@height);
                              addr149:
                           }
                           addr228:
                           §§push(int(parseInt(_loc5_.@pivotX)));
                           if(_loc20_ || param1)
                           {
                              addr220:
                              _loc13_ = §§pop();
                              addr195:
                              addr221:
                              §§push(int(parseInt(_loc5_.@pivotY)));
                              if(_loc20_)
                              {
                                 _loc14_ = §§pop();
                                 if(_loc20_)
                                 {
                                    §§push(_loc11_);
                                    if(_loc20_ || param1)
                                    {
                                       if(!_loc19_)
                                       {
                                          §§push(0);
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc19_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      addr186:
                                                      §§pop();
                                                      if(!_loc19_)
                                                      {
                                                         if(_loc20_)
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr195);
                                                               }
                                                               addr232:
                                                               if(_loc12_ > 0)
                                                               {
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     addr240:
                                                                     _loc10_ = new §+Y§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                     addr250:
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr252:
                                                                     _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                     (_loc16_ = new §!>§()).mName = _loc6_;
                                                                     if(_loc20_)
                                                                     {
                                                                        _loc16_.§1!f§ = _loc15_;
                                                                     }
                                                                     _loc16_.§var § = _loc10_.pivotX;
                                                                     _loc16_.§9!K§ = _loc10_.pivotY;
                                                                     addr300:
                                                                     _loc16_.§?7§ = §=!=§;
                                                                     addr322:
                                                                     addr318:
                                                                     if(_loc20_)
                                                                     {
                                                                        §,E§(_loc16_);
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           if(_loc20_)
                                                                           {
                                                                              if(_loc20_ || this)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§goto(addr318);
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                     addr312:
                                                                     §§goto(addr312);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr240);
               }
            }
            §§goto(addr119);
         }
         if(!_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §?!4§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(_loc4_ || param2)
         {
            return §§pop() + param2;
         }
      }
      
      private function §-!>§(param1:Vector.<XML>) : Dictionary
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
            if(!(_loc20_ && _loc2_))
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc21_)
            {
               var _loc18_:int = 0;
               if(_loc21_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc21_)
                     {
                        §§push(this.§?!4§(_loc4_,_loc6_.@name));
                        if(_loc21_ || this)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        for(; _loc2_[_loc7_] == null; if(_loc20_ && _loc3_)
                        {
                           continue;
                        },§§goto(addr142))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              loop4:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 while(true)
                                 {
                                    §§push(int(parseInt(_loc6_.@height)));
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc6_.@pivotX)));
                                          loop8:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             addr195:
                                             while(_loc21_)
                                             {
                                                §§push(int(parseInt(_loc6_.@pivotY)));
                                                while(true)
                                                {
                                                   _loc11_ = §§pop();
                                                   addr168:
                                                   while(_loc21_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                   addr109:
                                                   if(_loc21_ || _loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                       while(_loc21_ || this)
                                       {
                                          if(_loc20_)
                                          {
                                             continue loop4;
                                          }
                                          _loc12_ = §§pop();
                                          §§goto(addr158);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr160);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

package §,I§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §&">§ extends §5i§
   {
       
      
      public function §&">§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param3);
            do
            {
               this.§<!#§(param1,param2);
            }
            while(!_loc4_);
            
         }
      }
      
      protected function §<!#§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§+!a§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§7!c§ = null;
         var _loc3_:Dictionary = this.§&!=§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc20_)
            {
               _loc6_ = §§pop();
               if(!(_loc19_ && this))
               {
                  addr114:
                  _loc7_ = _loc5_.@file;
               }
               while(true)
               {
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
                           if(!(_loc20_ || _loc3_))
                           {
                              break;
                           }
                           _loc9_ = §§pop();
                           if(_loc19_)
                           {
                              continue;
                           }
                           if(_loc19_)
                           {
                              break loop2;
                           }
                           if(false)
                           {
                              continue loop2;
                           }
                           if((_loc10_ = _loc3_[this.§=!E§(_loc7_,_loc6_)]) == null)
                           {
                              if(!(_loc19_ && param1))
                              {
                                 §§push(int(parseInt(_loc5_.@width)));
                                 if(_loc20_ || param2)
                                 {
                                    _loc11_ = §§pop();
                                    if(_loc20_)
                                    {
                                       addr247:
                                       _loc12_ = parseInt(_loc5_.@height);
                                       addr240:
                                       _loc13_ = parseInt(_loc5_.@pivotX);
                                       addr205:
                                       addr248:
                                       addr241:
                                       §§push(int(parseInt(_loc5_.@pivotY)));
                                       if(_loc20_ || param2)
                                       {
                                          _loc14_ = §§pop();
                                          if(_loc20_ || _loc3_)
                                          {
                                             if(!(_loc19_ && param2))
                                             {
                                                §§push(_loc11_);
                                                if(_loc20_)
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         §§push(0);
                                                         if(!(_loc19_ && _loc3_))
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc19_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc19_)
                                                                     {
                                                                        if(!_loc19_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr205);
                                                                           }
                                                                           addr252:
                                                                           if(_loc12_ > 0)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr255:
                                                                                 _loc10_ = new §+!a§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                                 addr265:
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr267:
                                                                                 _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                                 (_loc16_ = new §7!c§()).mName = _loc6_;
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    _loc16_.§5l§ = _loc15_;
                                                                                    _loc16_.§>!v§ = _loc10_.pivotX;
                                                                                    addr332:
                                                                                 }
                                                                                 _loc16_.§>!J§ = _loc10_.pivotY;
                                                                                 addr313:
                                                                                 if(_loc20_ || param1)
                                                                                 {
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       addr301:
                                                                                       _loc16_.§9!U§ = §%!y§;
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §0!2§(_loc16_);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    §§goto(addr332);
                                                                                 }
                                                                                 addr328:
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr267);
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr252);
                                                addr233:
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr255);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr267);
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr255);
                        }
                     }
                  }
               }
            }
            §§goto(addr114);
         }
         if(!_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §=!E§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(!(_loc3_ && this))
         {
            return §§pop() + param2;
         }
      }
      
      private function §&!=§(param1:Vector.<XML>) : Dictionary
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
         var _loc11_:int = 0;
         var _loc12_:* = 0;
         var _loc13_:int = 0;
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
            if(!_loc20_)
            {
               var _loc18_:int = 0;
               if(!_loc20_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!(_loc20_ && param1))
                     {
                        §§push(this.§=!E§(_loc4_,_loc6_.@name));
                        if(!_loc20_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                     }
                     loop2:
                     while(_loc2_[_loc7_] == null)
                     {
                        while(true)
                        {
                           §§push(int(parseInt(_loc6_.@width)));
                           loop4:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc6_.@height)));
                                 while(!_loc20_)
                                 {
                                    _loc9_ = §§pop();
                                    while(_loc21_ || param1)
                                    {
                                       §§push(int(parseInt(_loc6_.@pivotX)));
                                       loop8:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          addr193:
                                          while(true)
                                          {
                                             §§push(int(parseInt(_loc6_.@pivotY)));
                                             continue loop8;
                                          }
                                       }
                                    }
                                    continue loop5;
                                    if(_loc21_ || _loc2_)
                                    {
                                       _loc12_ = §§pop();
                                       while(true)
                                       {
                                          if(!_loc20_)
                                          {
                                             if(_loc20_)
                                             {
                                                break;
                                             }
                                             §§push(int(parseInt(_loc6_.@y)));
                                             if(!_loc20_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr173);
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
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

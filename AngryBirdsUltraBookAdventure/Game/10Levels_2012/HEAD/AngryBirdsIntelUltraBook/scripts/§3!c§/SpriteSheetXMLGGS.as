package §3!c§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class SpriteSheetXMLGGS extends SpriteSheetBase
   {
       
      
      public function SpriteSheetXMLGGS(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param3);
         }
         do
         {
            this.§?-§(param1,param2);
         }
         while(!(_loc5_ || param2));
         
      }
      
      protected function §?-§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§'i§ = null;
         var _loc11_:int = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§33§ = null;
         var _loc3_:Dictionary = this.§3!%§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            if(_loc20_ || _loc3_)
            {
               §§push(_loc5_.@name);
               while(true)
               {
                  _loc6_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc5_.@file);
                     if(_loc19_ && param1)
                     {
                        break;
                     }
                     _loc7_ = §§pop();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(int(parseInt(_loc5_.@x)));
                           loop5:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              while(!_loc19_)
                              {
                                 §§push(int(parseInt(_loc5_.@y)));
                                 if(_loc20_ || param1)
                                 {
                                    _loc9_ = §§pop();
                                    if(_loc20_)
                                    {
                                       if(_loc20_ || param2)
                                       {
                                          if(true)
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                        _loc10_ = _loc3_[this.§?!i§(_loc7_,_loc6_)];
                        if(!(_loc19_ && _loc3_))
                        {
                           if(_loc10_ == null)
                           {
                              if(!_loc19_)
                              {
                                 addr266:
                                 _loc11_ = parseInt(_loc5_.@width);
                                 addr252:
                                 addr267:
                                 §§push(int(parseInt(_loc5_.@height)));
                                 if(!_loc19_)
                                 {
                                    _loc12_ = §§pop();
                                    addr255:
                                    §§push(int(parseInt(_loc5_.@pivotX)));
                                    if(_loc20_ || _loc3_)
                                    {
                                       _loc13_ = §§pop();
                                       addr200:
                                       addr245:
                                       §§push(int(parseInt(_loc5_.@pivotY)));
                                       if(_loc20_)
                                       {
                                          _loc14_ = §§pop();
                                          if(!(_loc19_ && param1))
                                          {
                                             if(_loc20_ || param1)
                                             {
                                                if(_loc20_ || _loc3_)
                                                {
                                                   §§push(_loc11_);
                                                   if(!(_loc19_ && _loc3_))
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         §§push(0);
                                                         if(_loc20_)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc20_ || param2)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc20_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc19_)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              addr198:
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr200);
                                                                              }
                                                                              addr270:
                                                                              §§push(_loc12_ > 0);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 addr273:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc19_ && this))
                                                                                 {
                                                                                    addr281:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc19_ && _loc3_))
                                                                                       {
                                                                                          addr289:
                                                                                          _loc10_ = new §'i§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                                          addr299:
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                                       _loc16_ = new §33§();
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          _loc16_.mName = _loc6_;
                                                                                       }
                                                                                       _loc16_.§+!W§ = _loc15_;
                                                                                       _loc16_.§@!h§ = _loc10_.pivotX;
                                                                                       _loc16_.§#O§ = _loc10_.pivotY;
                                                                                       addr393:
                                                                                       addr384:
                                                                                       if(!(_loc19_ && this))
                                                                                       {
                                                                                          addr341:
                                                                                          _loc16_.§6B§ = §@!j§;
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §7W§(_loc16_);
                                                                                                if(_loc20_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§goto(addr341);
                                                                                                   }
                                                                                                   §§goto(addr393);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                             §§goto(addr384);
                                                                                          }
                                                                                          §§goto(addr393);
                                                                                       }
                                                                                       addr389:
                                                                                       §§goto(addr389);
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           §§goto(addr245);
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                  }
                                                                  §§goto(addr281);
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr289);
                                       }
                                    }
                                    §§goto(addr270);
                                 }
                                 §§goto(addr266);
                              }
                           }
                           §§goto(addr289);
                        }
                        §§goto(addr198);
                     }
                  }
               }
            }
            §§goto(addr124);
         }
         if(!(_loc19_ && param1))
         {
            mName = param1.@file;
         }
      }
      
      private function §?!i§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(_loc3_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §3!%§(param1:Vector.<XML>) : Dictionary
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
            if(_loc21_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc21_ || param1)
            {
               var _loc18_:int = 0;
               if(_loc21_ || _loc3_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc21_)
                     {
                        §§push(this.§?!i§(_loc4_,_loc6_.@name));
                        if(!_loc20_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        for(; _loc2_[_loc7_] == null; while(_loc21_ || this)
                        {
                           §§goto(addr212);
                           §§push(int(parseInt(_loc6_.@height)));
                        })
                        {
                           while(true)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              addr225:
                              addr180:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 continue loop2;
                              }
                              if(_loc20_ && param1)
                              {
                                 continue;
                              }
                              do
                              {
                                 §§push(int(parseInt(_loc6_.@x)));
                                 addr144:
                                 loop13:
                                 while(!(_loc20_ && _loc3_))
                                 {
                                    _loc12_ = §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc21_)
                                       {
                                          §§push(int(parseInt(_loc6_.@y)));
                                          if(!(_loc21_ || this))
                                          {
                                             continue loop13;
                                          }
                                          if(_loc20_)
                                          {
                                             break;
                                          }
                                          if(_loc21_ || _loc3_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr225);
                                       }
                                       addr164:
                                       while(true)
                                       {
                                          if(!(_loc20_ && _loc2_))
                                          {
                                             if(_loc21_ || param1)
                                             {
                                                if(!_loc21_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr180);
                                             }
                                             else
                                             {
                                                addr213:
                                                while(true)
                                                {
                                                   §§push(int(parseInt(_loc6_.@pivotX)));
                                                   break loop14;
                                                }
                                                addr213:
                                             }
                                          }
                                          addr205:
                                          while(true)
                                          {
                                             §§push(int(parseInt(_loc6_.@pivotY)));
                                             break loop13;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       §§goto(addr205);
                                    }
                                 }
                                 while(_loc21_)
                                 {
                                    _loc11_ = §§pop();
                                    §§goto(addr164);
                                    §§goto(addr144);
                                 }
                                 while(true)
                                 {
                                    _loc9_ = §§pop();
                                    §§goto(addr213);
                                 }
                              }
                              while(false);
                              
                              _loc14_ = _loc6_.child("spriteBounds");
                              if(_loc21_ || _loc3_)
                              {
                                 if(_loc14_.length() == 1)
                                 {
                                    if(_loc21_ || _loc2_)
                                    {
                                       addr267:
                                       _loc15_ = _loc14_[0];
                                       if(_loc21_)
                                       {
                                          addr343:
                                          _loc8_ = int(parseInt(_loc15_.@width));
                                          if(_loc20_ && _loc3_)
                                          {
                                             break loop2;
                                          }
                                          addr334:
                                          §§push(int(parseInt(_loc15_.@height)));
                                          if(!_loc20_)
                                          {
                                             _loc9_ = §§pop();
                                             addr326:
                                             _loc12_ = int(parseInt(_loc15_.@x) - _loc12_);
                                             addr318:
                                             addr337:
                                             addr327:
                                             §§push(parseInt(_loc15_.@y) - _loc13_);
                                             if(_loc21_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc21_ || _loc2_)
                                                {
                                                   if(!(_loc20_ && _loc2_))
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(!_loc21_)
                                                      {
                                                         break loop2;
                                                      }
                                                      if(_loc21_ || this)
                                                      {
                                                         if(_loc21_ || _loc2_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr318);
                                                            }
                                                            addr387:
                                                            _loc2_[_loc7_] = new §'i§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                            break loop2;
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr334);
                                                }
                                                §§goto(addr326);
                                             }
                                             addr325:
                                             §§goto(addr325);
                                          }
                                          §§goto(addr343);
                                       }
                                       §§goto(addr326);
                                    }
                                    else
                                    {
                                       addr382:
                                       §§push(0);
                                       if(_loc21_)
                                       {
                                          addr385:
                                          §§push(int(§§pop()));
                                       }
                                       _loc13_ = §§pop();
                                    }
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(!(_loc20_ && param1))
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc20_)
                                       {
                                          addr364:
                                          _loc12_ = §§pop();
                                          if(!(_loc20_ && this))
                                          {
                                             §§goto(addr382);
                                          }
                                          §§goto(addr387);
                                       }
                                       §§goto(addr385);
                                    }
                                    §§goto(addr364);
                                 }
                                 §§goto(addr387);
                              }
                              §§goto(addr267);
                           }
                        }
                        continue;
                     }
                     §§goto(addr213);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

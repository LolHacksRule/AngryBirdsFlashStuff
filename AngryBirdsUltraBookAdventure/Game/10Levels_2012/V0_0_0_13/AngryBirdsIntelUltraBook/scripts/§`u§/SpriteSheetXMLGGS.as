package §`u§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class SpriteSheetXMLGGS extends SpriteSheetBase
   {
       
      
      public function SpriteSheetXMLGGS(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super(param3);
            do
            {
               this.§-g§(param1,param2);
            }
            while(!_loc4_);
            
         }
      }
      
      protected function §-g§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§+!R§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§#!7§ = null;
         var _loc3_:Dictionary = this.§2I§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         loop0:
         for each(_loc5_ in _loc4_)
         {
            if(_loc19_)
            {
               §§push(_loc5_.@name);
               loop1:
               while(true)
               {
                  _loc6_ = §§pop();
                  addr118:
                  loop2:
                  while(true)
                  {
                     §§push(_loc5_.@file);
                     if(_loc20_ && param1)
                     {
                        continue loop1;
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
                              while(_loc19_)
                              {
                                 §§push(int(parseInt(_loc5_.@y)));
                                 if(!_loc19_)
                                 {
                                    continue loop5;
                                 }
                                 _loc9_ = §§pop();
                                 if(_loc20_)
                                 {
                                    continue;
                                 }
                                 if(_loc20_ && _loc3_)
                                 {
                                    break loop4;
                                 }
                                 if(false)
                                 {
                                    continue loop4;
                                 }
                                 _loc10_ = _loc3_[this.§'h§(_loc7_,_loc6_)];
                                 if(_loc19_ || this)
                                 {
                                    if(_loc10_ == null)
                                    {
                                       if(!(_loc20_ && _loc3_))
                                       {
                                          addr260:
                                          _loc11_ = parseInt(_loc5_.@width);
                                       }
                                       addr243:
                                       _loc12_ = parseInt(_loc5_.@height);
                                       addr261:
                                       addr244:
                                       §§push(int(parseInt(_loc5_.@pivotX)));
                                       if(_loc19_)
                                       {
                                          _loc13_ = §§pop();
                                          if(!(_loc20_ && param1))
                                          {
                                             if(!(_loc20_ && param2))
                                             {
                                                addr194:
                                                §§push(int(parseInt(_loc5_.@pivotY)));
                                                if(_loc19_)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      _loc14_ = §§pop();
                                                      if(_loc19_ || this)
                                                      {
                                                         §§push(_loc11_);
                                                         if(_loc19_ || _loc3_)
                                                         {
                                                            if(_loc19_ || param1)
                                                            {
                                                               §§push(0);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!_loc20_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc20_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc19_ || param2)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc20_ && _loc3_))
                                                                              {
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr194);
                                                                                    }
                                                                                    addr264:
                                                                                    §§push(_loc12_ > 0);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr267:
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          addr270:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc19_ || this)
                                                                                             {
                                                                                                addr278:
                                                                                                _loc10_ = new §+!R§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                                                                addr288:
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                addr291:
                                                                                                _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                                                                _loc16_ = new §#!7§();
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   _loc16_.mName = _loc6_;
                                                                                                   _loc16_.§4!E§ = _loc15_;
                                                                                                   _loc16_.§0!>§ = _loc10_.pivotX;
                                                                                                   addr372:
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      _loc16_.§+<§ = _loc10_.pivotY;
                                                                                                      addr336:
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         if(_loc19_ || this)
                                                                                                         {
                                                                                                            addr325:
                                                                                                            _loc16_.§4!P§ = §%!J§;
                                                                                                            §^!E§(_loc16_);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                               §§goto(addr336);
                                                                                                            }
                                                                                                            addr330:
                                                                                                            §§goto(addr330);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr372);
                                                                                                   }
                                                                                                   addr368:
                                                                                                   §§goto(addr368);
                                                                                                }
                                                                                                §§goto(addr325);
                                                                                             }
                                                                                             §§goto(addr291);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr288);
                                                                                 }
                                                                                 §§goto(addr261);
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr264);
                                    }
                                    §§goto(addr278);
                                 }
                                 §§goto(addr243);
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr118);
         }
         if(_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §'h§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(!_loc4_)
         {
            return §§pop() + param2;
         }
      }
      
      private function §2I§(param1:Vector.<XML>) : Dictionary
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
            if(!_loc20_)
            {
               var _loc18_:int = 0;
               if(_loc21_ || param1)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(_loc21_)
                     {
                        §§push(this.§'h§(_loc4_,_loc6_.@name));
                        if(!(_loc20_ && param1))
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        while(_loc2_[_loc7_] == null)
                        {
                        }
                        continue;
                        addr243:
                     }
                     loop3:
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
                              loop6:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop7:
                                 while(!(_loc20_ && _loc2_))
                                 {
                                    §§push(int(parseInt(_loc6_.@pivotX)));
                                    loop8:
                                    for(; _loc21_ || param1; while(!(_loc20_ && _loc3_))
                                    {
                                       _loc12_ = §§pop();
                                       §§goto(addr153);
                                    })
                                    {
                                       _loc10_ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(int(parseInt(_loc6_.@pivotY)));
                                          addr174:
                                          addr153:
                                          while(true)
                                          {
                                             _loc11_ = §§pop();
                                             addr175:
                                             while(true)
                                             {
                                                addr139:
                                                while(true)
                                                {
                                                   §§push(int(parseInt(_loc6_.@x)));
                                                   continue loop8;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!(_loc21_ || this))
                                             {
                                                continue loop9;
                                             }
                                             if(_loc20_ && _loc2_)
                                             {
                                                break;
                                             }
                                             §§push(int(parseInt(_loc6_.@y)));
                                             if(_loc20_ && param1)
                                             {
                                                continue loop8;
                                             }
                                             if(_loc21_)
                                             {
                                                continue loop6;
                                             }
                                             §§goto(addr174);
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
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

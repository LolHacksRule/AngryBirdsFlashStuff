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
         if(_loc4_)
         {
            super(param3);
            do
            {
               this.§-g§(param1,param2);
            }
            while(!(_loc4_ || param3));
            
         }
      }
      
      protected function §-g§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:§+!R§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§#!7§ = null;
         var _loc3_:Dictionary = this.§2I§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            if(_loc20_)
            {
               §§push(_loc5_.@name);
               loop1:
               while(true)
               {
                  _loc6_ = §§pop();
                  addr124:
                  loop2:
                  while(true)
                  {
                     §§push(_loc5_.@file);
                     if(!_loc20_)
                     {
                        continue loop1;
                     }
                     _loc7_ = §§pop();
                     loop3:
                     while(true)
                     {
                        addr97:
                        while(true)
                        {
                           §§push(int(parseInt(_loc5_.@x)));
                           addr103:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr124);
         }
         if(!_loc19_)
         {
            mName = param1.@file;
         }
      }
      
      private function §'h§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(_loc3_ || param2)
         {
            return §§pop() + param2;
         }
      }
      
      private function §2I§(param1:Vector.<XML>) : Dictionary
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
            if(!_loc21_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(!(_loc21_ && _loc3_))
            {
               var _loc18_:int = 0;
               if(_loc20_ || this)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!_loc21_)
                     {
                        §§push(this.§'h§(_loc4_,_loc6_.@name));
                        if(_loc20_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        for(; _loc2_[_loc7_] == null; while(!(_loc21_ && this))
                        {
                           §§goto(addr121);
                        })
                        {
                           if(!_loc21_)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              while(true)
                              {
                                 _loc8_ = §§pop();
                              }
                              addr231:
                           }
                           loop4:
                           while(true)
                           {
                              §§push(int(parseInt(_loc6_.@height)));
                              loop5:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 addr210:
                                 while(true)
                                 {
                                    if(!(_loc20_ || param1))
                                    {
                                       continue loop4;
                                    }
                                    §§push(int(parseInt(_loc6_.@pivotX)));
                                    while(!_loc21_)
                                    {
                                       _loc10_ = §§pop();
                                       continue loop2;
                                    }
                                    §§goto(addr231);
                                 }
                                 addr150:
                                 if(!(_loc20_ || this))
                                 {
                                    continue;
                                 }
                                 _loc12_ = §§pop();
                                 loop14:
                                 while(_loc20_ || this)
                                 {
                                    §§push(int(parseInt(_loc6_.@y)));
                                    if(_loc20_ || _loc2_)
                                    {
                                       _loc13_ = §§pop();
                                       if(_loc21_)
                                       {
                                          continue;
                                       }
                                       if(_loc21_ && this)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc20_ || this)
                                       {
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(int(parseInt(_loc6_.@x)));
                                                addr143:
                                                while(true)
                                                {
                                                   if(_loc20_ || _loc2_)
                                                   {
                                                      §§goto(addr150);
                                                   }
                                                   else
                                                   {
                                                      while(!_loc21_)
                                                      {
                                                         _loc11_ = §§pop();
                                                         break loop14;
                                                      }
                                                      §§goto(addr192);
                                                      addr172:
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             addr243:
                                             _loc14_ = _loc6_.child("spriteBounds");
                                             if(!_loc21_)
                                             {
                                                if(_loc14_.length() == 1)
                                                {
                                                   if(!(_loc21_ && _loc2_))
                                                   {
                                                      _loc15_ = _loc14_[0];
                                                      if(!_loc20_)
                                                      {
                                                         break loop2;
                                                      }
                                                      addr334:
                                                      _loc8_ = int(parseInt(_loc15_.@width));
                                                      addr325:
                                                      _loc9_ = int(parseInt(_loc15_.@height));
                                                      addr326:
                                                      if(_loc20_)
                                                      {
                                                         addr307:
                                                         §§push(int(parseInt(_loc15_.@x) - _loc12_));
                                                         if(!_loc21_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            addr318:
                                                            §§push(parseInt(_loc15_.@y) - _loc13_);
                                                            if(!(_loc21_ && _loc3_))
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!(_loc21_ && _loc3_))
                                                               {
                                                                  if(!(_loc21_ && _loc2_))
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(!_loc20_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     if(!_loc21_)
                                                                     {
                                                                        if(_loc20_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr307);
                                                                           }
                                                                           addr371:
                                                                           _loc2_[_loc7_] = new §+!R§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                                           break loop2;
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      addr335:
                                                      §§goto(addr335);
                                                   }
                                                   else
                                                   {
                                                      addr366:
                                                      §§push(0);
                                                      if(!_loc21_)
                                                      {
                                                         addr369:
                                                         §§push(int(§§pop()));
                                                      }
                                                      _loc13_ = §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc20_ || this)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!(_loc21_ && this))
                                                      {
                                                         addr363:
                                                         _loc12_ = §§pop();
                                                         if(_loc20_)
                                                         {
                                                            §§goto(addr366);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                   §§goto(addr363);
                                                }
                                                §§goto(addr371);
                                             }
                                             addr137:
                                          }
                                          else
                                          {
                                             §§goto(addr243);
                                          }
                                          §§goto(addr366);
                                       }
                                       else
                                       {
                                          §§goto(addr210);
                                       }
                                    }
                                    §§goto(addr143);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr137);
                                    §§goto(addr158);
                                 }
                                 addr158:
                              }
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr172);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

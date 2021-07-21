package §7U§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §,!=§ extends §`L§
   {
       
      
      public function §,!=§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param3);
            if(!_loc5_)
            {
               this.§#!d§(param1,param2);
            }
         }
      }
      
      protected function §#!d§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§]!9§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§@!4§ = null;
         var _loc3_:Dictionary = this.§+%§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(!_loc20_)
            {
               _loc6_ = §§pop();
               if(_loc19_)
               {
                  addr79:
                  _loc7_ = _loc5_.@file;
                  if(_loc19_)
                  {
                     §§push(int(parseInt(_loc5_.@x)));
                     if(_loc19_ || _loc3_)
                     {
                        _loc8_ = §§pop();
                        addr103:
                        if(!_loc20_)
                        {
                           addr97:
                           §§push(int(parseInt(_loc5_.@y)));
                        }
                        if((_loc10_ = _loc3_[this.§5!H§(_loc7_,_loc6_)]) == null)
                        {
                           §§push(int(parseInt(_loc5_.@width)));
                           if(!_loc20_)
                           {
                              _loc11_ = §§pop();
                              if(!(_loc20_ && param2))
                              {
                                 §§push(int(parseInt(_loc5_.@height)));
                                 if(_loc19_)
                                 {
                                    _loc12_ = §§pop();
                                    §§push(int(parseInt(_loc5_.@pivotX)));
                                    if(!_loc20_)
                                    {
                                       addr154:
                                       _loc13_ = §§pop();
                                       if(_loc19_)
                                       {
                                          §§push(int(parseInt(_loc5_.@pivotY)));
                                          if(!_loc20_)
                                          {
                                             _loc14_ = §§pop();
                                             if(_loc19_ || this)
                                             {
                                                §§push(_loc11_);
                                                if(_loc19_)
                                                {
                                                   addr175:
                                                   §§push(0);
                                                   if(_loc19_)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(!_loc20_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc19_ || _loc3_)
                                                            {
                                                               addr190:
                                                               §§pop();
                                                               addr204:
                                                               if(_loc19_)
                                                               {
                                                                  addr195:
                                                                  §§push(_loc12_ > 0);
                                                               }
                                                               _loc10_ = new §]!9§(0,0,_loc11_,_loc12_,_loc13_,_loc14_);
                                                               if(!_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr216:
                                                               _loc15_ = new Rectangle(_loc8_ + _loc10_.x,_loc9_ + _loc10_.y,_loc10_.width,_loc10_.height);
                                                               (_loc16_ = new §@!4§()).mName = _loc6_;
                                                               if(!_loc20_)
                                                               {
                                                                  _loc16_.§>Q§ = _loc15_;
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     _loc16_.§-!V§ = _loc10_.pivotX;
                                                                     if(_loc19_)
                                                                     {
                                                                        _loc16_.§;!A§ = _loc10_.pivotY;
                                                                        if(_loc20_ && param2)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr278:
                                                                        _loc16_.§5G§ = §<!j§;
                                                                        if(!_loc19_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §"!P§(_loc16_);
                                                                  continue;
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc20_ && param2))
                                                            {
                                                               §§goto(addr204);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr190);
                     }
                     _loc9_ = §§pop();
                  }
                  §§goto(addr103);
               }
               §§goto(addr97);
            }
            §§goto(addr79);
         }
         if(!(_loc20_ && this))
         {
            mName = param1.@file;
         }
      }
      
      private function §5!H§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1 + "#");
         if(_loc3_)
         {
            §§push(§§pop() + param2);
         }
         return §§pop();
      }
      
      private function §+%§(param1:Vector.<XML>) : Dictionary
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
            if(!(_loc20_ && param1))
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc21_ || _loc3_)
            {
               var _loc18_:int = 0;
               if(_loc21_ || _loc2_)
               {
                  for each(_loc6_ in _loc5_)
                  {
                     §§push(this.§5!H§(_loc4_,_loc6_.@name));
                     if(!(_loc20_ && param1))
                     {
                        §§push(§§pop());
                     }
                     _loc7_ = §§pop();
                     if(!_loc20_)
                     {
                        if(_loc2_[_loc7_] != null)
                        {
                           continue;
                        }
                        §§push(int(parseInt(_loc6_.@width)));
                        if(_loc21_)
                        {
                           _loc8_ = §§pop();
                           §§push(int(parseInt(_loc6_.@height)));
                           if(_loc21_ || _loc2_)
                           {
                              addr149:
                              _loc9_ = §§pop();
                              if(_loc21_)
                              {
                                 §§push(int(parseInt(_loc6_.@pivotX)));
                                 if(!(_loc20_ && _loc3_))
                                 {
                                    _loc10_ = §§pop();
                                    §§push(int(parseInt(_loc6_.@pivotY)));
                                    if(!_loc20_)
                                    {
                                       addr182:
                                       _loc11_ = §§pop();
                                       if(!_loc20_)
                                       {
                                          §§push(int(parseInt(_loc6_.@x)));
                                          if(!(_loc20_ && this))
                                          {
                                             _loc12_ = §§pop();
                                             addr198:
                                             §§push(int(parseInt(_loc6_.@y)));
                                          }
                                       }
                                       §§goto(addr198);
                                    }
                                 }
                                 _loc13_ = §§pop();
                                 addr204:
                                 if((_loc14_ = _loc6_.child("spriteBounds")).length() == 1)
                                 {
                                    if(_loc21_ || this)
                                    {
                                       _loc15_ = _loc14_[0];
                                       if(!_loc20_)
                                       {
                                          §§push(int(parseInt(_loc15_.@width)));
                                          if(_loc21_)
                                          {
                                             _loc8_ = §§pop();
                                             if(!(_loc21_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             addr242:
                                             §§push(int(parseInt(_loc15_.@height)));
                                             if(!(_loc20_ && _loc3_))
                                             {
                                                _loc9_ = §§pop();
                                                if(_loc21_)
                                                {
                                                   §§push(parseInt(_loc15_.@x) - _loc12_);
                                                   if(!(_loc20_ && this))
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc21_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(!(_loc21_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         addr281:
                                                         §§push(parseInt(_loc15_.@y) - _loc13_);
                                                      }
                                                      addr288:
                                                      _loc13_ = §§pop();
                                                      if(_loc21_)
                                                      {
                                                         addr320:
                                                         _loc2_[_loc7_] = new §]!9§(_loc12_,_loc13_,_loc8_,_loc9_,_loc10_,_loc11_);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr288);
                                                   §§push(int(§§pop()));
                                                }
                                                §§goto(addr281);
                                             }
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr242);
                                    }
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(_loc21_ || this)
                                    {
                                       _loc12_ = §§pop();
                                       if(_loc21_ || param1)
                                       {
                                          §§push(0);
                                       }
                                       §§goto(addr320);
                                    }
                                    _loc13_ = §§pop();
                                 }
                                 §§goto(addr320);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr204);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

package §`",§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §4[§ extends §?" §
   {
      
      public static var §[!b§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §4[§))
         {
            §[!b§ = false;
         }
      }
      
      public function §4[§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2);
         }
         do
         {
            this.§ !a§(param1);
         }
         while(_loc4_);
         
      }
      
      private static function §,!r§(param1:§1!v§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            if(param1.§+#§.top < 0)
            {
               if(!(_loc5_ && param3))
               {
                  param1.§+#§.top = 0;
               }
               while(true)
               {
                  loop4:
                  while(_loc4_ || param3)
                  {
                     loop5:
                     while(param1.§+#§.right > param2)
                     {
                        if(!_loc5_)
                        {
                           addr36:
                           if(_loc4_ || param1)
                           {
                              param1.§+#§.right = param2;
                           }
                           else
                           {
                              while(true)
                              {
                                 param1.§+#§.left = 0;
                                 addr102:
                                 loop6:
                                 while(true)
                                 {
                                    addr50:
                                    while(true)
                                    {
                                       if(param1.§+#§.bottom > param3)
                                       {
                                          if(_loc4_ || param3)
                                          {
                                             if(_loc4_ || param2)
                                             {
                                                param1.§+#§.bottom = param3;
                                                continue loop4;
                                             }
                                             continue loop6;
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr36);
                              }
                              addr98:
                           }
                        }
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue loop4;
                     }
                     return;
                  }
               }
               addr129:
            }
            while(true)
            {
               if(param1.§+#§.left < 0)
               {
                  §§goto(addr98);
               }
               §§goto(addr50);
               §§goto(addr129);
            }
         }
         §§goto(addr102);
      }
      
      protected function § !a§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§1!v§ = null;
         var _loc2_:* = false;
         if(_loc10_)
         {
            §§push(§[!b§);
            if(!(_loc9_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§push(true);
                     if(_loc10_ || this)
                     {
                        _loc2_ = §§pop();
                        if(!_loc10_)
                        {
                        }
                        addr58:
                        _loc2_ = true;
                        var _loc3_:Number = 1;
                        if(_loc10_)
                        {
                           if(param1.scale)
                           {
                              if(!_loc9_)
                              {
                                 addr69:
                                 _loc3_ = parseFloat(param1.scale);
                                 if(!_loc9_)
                                 {
                                    addr77:
                                    this.scale = _loc3_;
                                 }
                              }
                              var _loc7_:int = 0;
                              var _loc8_:* = param1;
                              loop0:
                              while(§§hasnext(_loc8_,_loc7_))
                              {
                                 §§push(§§nextname(_loc7_,_loc8_));
                                 if(!_loc9_)
                                 {
                                    §§push(_loc4_ = §§pop());
                                    if(!_loc9_)
                                    {
                                       if(§§pop().indexOf("sprite_") != -1)
                                       {
                                          if(_loc10_ || param1)
                                          {
                                             _loc5_ = param1[_loc4_];
                                             (_loc6_ = new §1!v§()).mName = _loc5_.id;
                                             if(!_loc9_)
                                             {
                                                _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                loop1:
                                                while(true)
                                                {
                                                   _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                                   while(true)
                                                   {
                                                      _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                      addr275:
                                                      while(!_loc9_)
                                                      {
                                                      }
                                                      continue loop1;
                                                      loop9:
                                                      for(; !(_loc9_ && _loc2_); if(!(_loc10_ || this))
                                                      {
                                                         continue;
                                                      },if(!(_loc9_ && _loc2_))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr161);
                                                         }
                                                         continue loop0;
                                                      },§§goto(addr211))
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            _loc6_.§%l§ = § e§;
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  addr167:
                                                                  if(!(_loc10_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §%D§(_loc6_);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  continue;
                                                               }
                                                               addr199:
                                                               addr265:
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc6_.§+!H§ = _loc5_.height / 2;
                                                                     continue loop9;
                                                                  }
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     _loc6_.§+!H§ = _loc5_.pivoty / _loc3_;
                                                                     addr211:
                                                                     while(_loc9_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc6_.§;o§ = _loc5_.pivotx / _loc3_;
                                                                           continue loop13;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     addr213:
                                                                     if(_loc9_ && param1)
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc6_.§+#§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                                  break loop11;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §,!r§(_loc6_,§ e§.width,§ e§.height);
                                                               break loop10;
                                                               §§goto(addr167);
                                                            }
                                                         }
                                                         while(_loc10_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               _loc6_.§;o§ = _loc5_.width / 2;
                                                               §§goto(addr199);
                                                            }
                                                            §§goto(addr224);
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                §§goto(addr265);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr299:
                                          if(_loc4_ != "image")
                                          {
                                             continue;
                                          }
                                          if(!(_loc10_ || _loc2_))
                                          {
                                             continue;
                                          }
                                       }
                                       mName = param1[_loc4_];
                                       continue;
                                    }
                                 }
                                 §§goto(addr299);
                              }
                              return;
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr69);
                        addr57:
                     }
                     §§goto(addr58);
                  }
               }
               if(param1.usePivot)
               {
                  if(_loc10_)
                  {
                     §§goto(addr57);
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}

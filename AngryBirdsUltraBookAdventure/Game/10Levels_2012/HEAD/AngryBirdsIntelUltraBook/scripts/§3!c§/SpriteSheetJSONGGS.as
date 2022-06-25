package §3!c§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class SpriteSheetJSONGGS extends SpriteSheetBase
   {
      
      public static var §;w§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §;w§ = false;
         }
      }
      
      public function SpriteSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param2);
         }
         do
         {
            this.§?-§(param1);
         }
         while(!_loc4_);
         
      }
      
      private static function §%,§(param1:§33§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.§+!W§.top < 0)
            {
               while(true)
               {
                  param1.§+!W§.top = 0;
                  addr114:
                  while(true)
                  {
                  }
                  addr54:
                  if(!(_loc4_ || param2))
                  {
                     continue;
                  }
                  addr19:
                  return;
                  addr61:
               }
            }
            loop2:
            while(true)
            {
               if(param1.§+!W§.left < 0)
               {
                  if(_loc4_)
                  {
                     param1.§+!W§.left = 0;
                  }
                  while(true)
                  {
                  }
                  addr104:
               }
               loop4:
               while(true)
               {
                  if(param1.§+!W§.bottom > param3)
                  {
                     while(_loc4_ || SpriteSheetJSONGGS)
                     {
                        param1.§+!W§.bottom = param3;
                        while(!_loc5_)
                        {
                        }
                        continue loop4;
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr54);
                     }
                     continue loop2;
                  }
                  while(param1.§+!W§.right > param2)
                  {
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           param1.§+!W§.right = param2;
                           §§goto(addr37);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr37);
                  }
                  §§goto(addr19);
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function §?-§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§33§ = null;
         §§push(false);
         if(_loc10_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc9_ && param1))
         {
            §§push(§;w§);
            if(_loc10_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(true);
                     if(_loc10_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc9_ && _loc3_))
                        {
                           _loc2_ = §§pop();
                           if(!_loc9_)
                           {
                              addr74:
                              §§push(Boolean(param1.usePivot));
                              if(!(_loc9_ && this))
                              {
                                 if(§§pop())
                                 {
                                    addr97:
                                    if(!_loc9_)
                                    {
                                       addr87:
                                       §§push(true);
                                       if(!(_loc9_ && param1))
                                       {
                                          addr95:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    var _loc3_:Number = 1;
                                    if(_loc10_)
                                    {
                                       if(param1.scale)
                                       {
                                          if(!_loc9_)
                                          {
                                             _loc3_ = parseFloat(param1.scale);
                                             if(!_loc9_)
                                             {
                                                addr116:
                                                this.scale = _loc3_;
                                             }
                                             var _loc7_:int = 0;
                                             var _loc8_:* = param1;
                                             loop0:
                                             while(§§hasnext(_loc8_,_loc7_))
                                             {
                                                §§push(§§nextname(_loc7_,_loc8_));
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   _loc4_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc4_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push("sprite_");
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop().indexOf(§§pop()) != -1)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                            _loc5_ = param1[_loc4_];
                                                            _loc6_ = new §33§();
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               _loc6_.mName = _loc5_.id;
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                                  while(true)
                                                                  {
                                                                     _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                                                     addr331:
                                                                     while(true)
                                                                     {
                                                                        _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                                        addr320:
                                                                        while(true)
                                                                        {
                                                                           _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                                           addr309:
                                                                           while(true)
                                                                           {
                                                                              _loc6_.§+!W§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                                              addr298:
                                                                              while(true)
                                                                              {
                                                                                 §%,§(_loc6_,§@!j§.width,§@!j§.height);
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr248:
                                                                     if(_loc9_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        _loc6_.§6B§ = §@!j§;
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §7W§(_loc6_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_.§#O§ = _loc5_.pivoty / _loc3_;
                                                                                             break loop12;
                                                                                          }
                                                                                          addr265:
                                                                                       }
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_.§@!h§ = _loc5_.pivotx / _loc3_;
                                                                                       }
                                                                                       addr259:
                                                                                    }
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr236:
                                                                              while(_loc10_)
                                                                              {
                                                                                 _loc6_.§#O§ = _loc5_.height / 2;
                                                                                 while(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              continue loop1;
                                                                              §§goto(addr309);
                                                                           }
                                                                           §§goto(addr222);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              break loop11;
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  _loc6_.§@!h§ = _loc5_.width / 2;
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr360:
                                                            §§push(_loc4_);
                                                            §§push("image");
                                                         }
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            mName = param1[_loc4_];
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr360);
                                             }
                                             return;
                                          }
                                       }
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr97);
                        }
                        _loc2_ = §§pop();
                        §§goto(addr97);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr87);
               }
               §§goto(addr74);
            }
            §§goto(addr95);
         }
         §§goto(addr97);
      }
   }
}

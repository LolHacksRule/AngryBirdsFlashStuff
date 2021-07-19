package §2d§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §3"_§ extends §;H§
   {
      
      public static var §2#9§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2#9§ = false;
         }
      }
      
      public function §3"_§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param2);
            do
            {
               this.§,Q§(param1);
            }
            while(_loc4_);
            
         }
      }
      
      private static function §&# §(param1:§%$§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.rect.top < 0)
            {
               while(true)
               {
                  param1.rect.top = 0;
                  addr119:
                  while(true)
                  {
                  }
               }
               addr115:
            }
            loop1:
            while(true)
            {
               if(param1.rect.left < 0)
               {
                  while(true)
                  {
                     param1.rect.left = 0;
                     addr92:
                     while(!(_loc5_ && param2))
                     {
                     }
                     continue loop1;
                  }
                  addr88:
               }
               while(true)
               {
                  if(param1.rect.bottom > param3)
                  {
                     if(!(_loc5_ && param3))
                     {
                        if(_loc4_ || param1)
                        {
                           param1.rect.bottom = param3;
                           loop5:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 while(param1.rect.right > param2)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       if(_loc4_)
                                       {
                                          param1.rect.right = param2;
                                       }
                                       else
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 return;
                                 addr23:
                              }
                           }
                           addr79:
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr23);
               }
            }
         }
         §§goto(addr119);
      }
      
      protected function §,Q§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§%$§ = null;
         var _loc2_:* = false;
         if(!_loc10_)
         {
            §§push(§2#9§);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(_loc9_ || _loc2_)
                  {
                     §§push(true);
                     if(_loc9_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc10_ && this))
                        {
                           addr51:
                           if(param1.usePivot)
                           {
                              if(!_loc10_)
                              {
                                 addr57:
                                 _loc2_ = true;
                              }
                           }
                        }
                     }
                     §§goto(addr57);
                  }
                  var _loc3_:Number = 1;
                  if(_loc9_ || this)
                  {
                     if(param1.scale)
                     {
                        if(_loc9_)
                        {
                           _loc3_ = parseFloat(param1.scale);
                           if(_loc10_ && _loc3_)
                           {
                           }
                           §§goto(addr89);
                        }
                     }
                     this.scale = _loc3_;
                  }
                  addr89:
                  var _loc7_:int = 0;
                  var _loc8_:* = param1;
                  while(§§hasnext(_loc8_,_loc7_))
                  {
                     §§push(§§nextname(_loc7_,_loc8_));
                     if(!(_loc10_ && this))
                     {
                        §§push(_loc4_ = §§pop());
                        if(!(_loc10_ && _loc2_))
                        {
                           addr116:
                           if(§§pop().indexOf("sprite_") != -1)
                           {
                              if(_loc9_ || _loc3_)
                              {
                                 _loc5_ = param1[_loc4_];
                                 (_loc6_ = new §%$§()).name = _loc5_.id;
                                 if(_loc9_ || param1)
                                 {
                                    _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                    while(true)
                                    {
                                       _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                       while(true)
                                       {
                                          _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                          loop3:
                                          while(true)
                                          {
                                             _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                             loop4:
                                             while(true)
                                             {
                                                _loc6_.rect = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                loop5:
                                                while(true)
                                                {
                                                   §&# §(_loc6_,§>">§.width,§>">§.height);
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         _loc6_.pivotX = _loc5_.width / 2;
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc6_.pivotY = _loc5_.height / 2;
                                                            loop8:
                                                            while(true)
                                                            {
                                                               addr208:
                                                               while(true)
                                                               {
                                                                  _loc6_.§>#P§ = §>">§;
                                                                  addr212:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc6_.§#"?§ = _loc3_;
                                                                           continue loop8;
                                                                        }
                                                                        continue;
                                                                        addr165:
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc6_.pivotX = _loc5_.pivotx / _loc3_;
                                                         continue loop4;
                                                      }
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr163);
                              }
                           }
                           else
                           {
                              addr340:
                              if(_loc4_ != "image")
                              {
                                 continue;
                              }
                              if(_loc10_ && this)
                              {
                                 continue;
                              }
                           }
                           mName = param1[_loc4_];
                           continue;
                        }
                        §§goto(addr340);
                     }
                     §§goto(addr116);
                  }
                  return;
               }
               §§goto(addr51);
            }
            §§goto(addr57);
         }
         §§goto(addr51);
      }
   }
}

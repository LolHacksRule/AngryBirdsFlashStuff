package §'!H§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §8!-§ extends §3^§
   {
      
      public static var §<!B§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!B§ = false;
         }
      }
      
      public function §8!-§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2);
         }
         do
         {
            this.§+%§(param1);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      private static function §^!@§(param1:§?m§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.§[!D§.top < 0)
            {
               if(_loc4_ || param2)
               {
                  param1.§[!D§.top = 0;
               }
               while(true)
               {
               }
               addr119:
            }
            loop1:
            while(true)
            {
               if(param1.§[!D§.left < 0)
               {
                  loop2:
                  while(true)
                  {
                     param1.§[!D§.left = 0;
                     addr90:
                     while(_loc4_)
                     {
                     }
                     continue loop1;
                     loop7:
                     while(true)
                     {
                        if(!(_loc5_ && param2))
                        {
                           while(true)
                           {
                              if(param1.§[!D§.right > param2)
                              {
                                 if(_loc4_)
                                 {
                                    addr68:
                                    if(_loc4_)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          param1.§[!D§.right = param2;
                                          addr44:
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr19);
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr90);
                                    }
                                    while(true)
                                    {
                                       param1.§[!D§.bottom = param3;
                                       continue loop7;
                                    }
                                    addr68:
                                 }
                                 §§goto(addr44);
                              }
                              addr19:
                              return;
                              continue loop7;
                           }
                           addr23:
                        }
                        continue loop2;
                     }
                  }
               }
               while(true)
               {
                  if(param1.§[!D§.bottom > param3)
                  {
                     §§goto(addr68);
                  }
                  §§goto(addr23);
               }
            }
         }
         §§goto(addr68);
      }
      
      protected function §+%§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§?m§ = null;
         var _loc2_:* = false;
         if(!_loc9_)
         {
            §§push(§<!B§);
            if(_loc10_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     addr46:
                     §§push(true);
                     if(!_loc9_)
                     {
                        _loc2_ = §§pop();
                        if(_loc10_)
                        {
                           addr52:
                           if(param1.usePivot)
                           {
                              if(_loc9_ && param1)
                              {
                              }
                              addr64:
                              var _loc3_:Number = 1;
                              if(_loc10_ || this)
                              {
                                 if(param1.scale)
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       _loc3_ = parseFloat(param1.scale);
                                       if(_loc10_ || _loc2_)
                                       {
                                          addr97:
                                          this.scale = _loc3_;
                                       }
                                    }
                                    var _loc7_:int = 0;
                                    var _loc8_:* = param1;
                                    loop0:
                                    while(§§hasnext(_loc8_,_loc7_))
                                    {
                                       §§push(§§nextname(_loc7_,_loc8_));
                                       if(_loc10_)
                                       {
                                          §§push(_loc4_ = §§pop());
                                          if(!_loc9_)
                                          {
                                             addr117:
                                             if(§§pop().indexOf("sprite_") != -1)
                                             {
                                                if(_loc10_)
                                                {
                                                   _loc5_ = param1[_loc4_];
                                                   (_loc6_ = new §?m§()).mName = _loc5_.id;
                                                   if(_loc10_)
                                                   {
                                                      _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                      loop1:
                                                      while(true)
                                                      {
                                                         _loc5_.height = Math.ceil(_loc5_.height / _loc3_);
                                                         while(true)
                                                         {
                                                            _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                            while(_loc10_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                               loop11:
                                                               while(!(_loc9_ && _loc2_))
                                                               {
                                                                  _loc6_.§%B§ = _loc5_.height / 2;
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              _loc6_.§9B§ = §4<§;
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §5!U§(_loc6_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr234:
                                                                                 while(_loc10_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 while(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    _loc6_.§%B§ = _loc5_.pivoty / _loc3_;
                                                                                    §§goto(addr204);
                                                                                 }
                                                                                 addr204:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          _loc6_.§^D§ = _loc5_.pivotx / _loc3_;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    _loc6_.§^D§ = _loc5_.width / 2;
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr218:
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc6_.§[!D§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                                           }
                                                                           addr258:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §^!@§(_loc6_,§4<§.width,§4<§.height);
                                                                        §§goto(addr234);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr258);
                                                }
                                             }
                                             else
                                             {
                                                addr294:
                                                if(_loc4_ != "image")
                                                {
                                                   continue;
                                                }
                                                if(!_loc10_)
                                                {
                                                   continue;
                                                }
                                             }
                                             mName = param1[_loc4_];
                                             continue;
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr117);
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr64);
                        }
                        addr63:
                        _loc2_ = true;
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr64);
               }
               §§goto(addr52);
            }
            §§goto(addr63);
         }
         §§goto(addr46);
      }
   }
}
